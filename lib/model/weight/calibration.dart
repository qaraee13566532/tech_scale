class WeightInfoLabel {
  String? unit;
  bool? isOverThousand;
  int? value;

  WeightInfoLabel(int input) {
    value = input;
    isOverThousand = input >= 1000 ? true : false;
    if (isOverThousand!) {
      value = (value! / 1000).round();
      unit = 'kg';
    } else {
      unit = 'g';
    }
  }
}

class CalibrationInfo {
  int? maxFirstCapacity;
  int? maxSecondCapacity;
  int? zeroAdc;
  int? calibrationWeight;
  int? weightFirstDivision;
  int? weightSecondDivision;
  double? weightFactor;
  int? pointNumber;
  bool? isCalibrated;

  String makeDeviceInfo() {
    WeightInfoLabel minimumWeight =
        WeightInfoLabel(this.weightFirstDivision! * 20);
    WeightInfoLabel maxFirstCapacity = WeightInfoLabel(this.maxFirstCapacity!);
    WeightInfoLabel maxSecondCapacity =
        WeightInfoLabel(this.maxSecondCapacity!);
    WeightInfoLabel weightFirstDivision =
        WeightInfoLabel(this.weightFirstDivision!);
    WeightInfoLabel weightSecondDivision =
        WeightInfoLabel(this.weightSecondDivision!);
    String info =
        'Min = ${minimumWeight.value} ${minimumWeight.unit}   Max = ${maxFirstCapacity.value}/${maxSecondCapacity.value} ${maxSecondCapacity.unit}   e= ${weightFirstDivision.value}/${weightSecondDivision.value} ${weightSecondDivision.unit} III';
    return info;
  }
}

class WeightParameters {
  CalibrationInfo? calibrationInfo;
  int? filteringLevel;
  int? zeroPercentage;
  int? stableTimeMillisecond;
  int? stableLevelDivisions;
  int? lockedLevelDivisions;
  bool? isLocked;
  int? adcNumber;
  int? realWeight;
  int? roundWeight;
  int? taredWeight;
  int? adcOffsetNumber;
  int? adcPureNumber;
  int? viewWeight;
  int? currentMinimumAdcNumber;
  int? currentMaximumAdcNumber;
  List<int>? weightSamples;
  int? driftTimeMillisecond;
  int? driftLevelAdcNumber;
  bool? isZero;
  bool? isTared;
  bool? isStable;
  bool? isFirstInterval;
  bool? isSecondInterval;
  bool? isNegative;
  bool? isOverWeight;
  bool? isUnderWeight;
  bool? isWeightReady;
}
