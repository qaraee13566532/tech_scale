import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tech_scale/utils/constant.dart';

class TilesConfiguration {
  int? width;
  int? height;
  BoxDecoration? decoration;
}

class TaskPadBuilder extends StatefulWidget {
  const TaskPadBuilder({
    Key? key,
    required this.crossAxisCount,
    required this.mainAxisCount,
    this.tilesConfiguration,
    required this.onTap,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
  }) : super(key: key);
  final int crossAxisCount;
  final int mainAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;
  final List<TilesConfiguration>? tilesConfiguration;
  final List<VoidCallback> onTap;

  @override
  State<TaskPadBuilder> createState() => _TaskPadBuilderState();
}

class _TaskPadBuilderState extends State<TaskPadBuilder> {
  double? minWidth;
  bool isSelected = false;
  List<TilesConfiguration> localTilesConfiguration = [];
  int selectedWidget = 0;
  Color? selectedColor;

  @override
  void initState() {
    localTilesConfiguration = widget.tilesConfiguration!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFcbe2ff),
        border: Border(
          right: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, right: 4, left: 4),
        child: LayoutBuilder(builder: (context, constraints) {
          minWidth = (2 +
                  constraints.maxHeight -
                  ((widget.mainAxisCount - 1) * widget.mainAxisSpacing!)) /
              widget.mainAxisCount;
          return SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: widget.crossAxisCount,
              mainAxisSpacing: widget.mainAxisSpacing ?? 0,
              crossAxisSpacing: widget.crossAxisSpacing ?? 0,
              children: getStaggeredGridTile(),
            ),
          );
        }),
      ),
    );
  }

  getStaggeredGridTile() =>
      localTilesConfiguration.asMap().entries.map((tileConfig) {
        return StaggeredGridTile.extent(
          mainAxisExtent: tileConfig.value.height! * minWidth!.toDouble(),
          crossAxisCellCount: tileConfig.value.width!,
          child: GestureDetector(
            onHorizontalDragDown: (exit) {
              widget.onTap[tileConfig.key]();
              setState(() {
                isSelected = true;
                selectedWidget = tileConfig.key;
                selectedColor = tileConfig.value.decoration == null
                    ? kSelectedBoxDecoration.gradient!.colors[0]
                    : tileConfig.value.decoration!.gradient!.colors[1];
              });
            },
            onHorizontalDragEnd: (exit) {
              setState(() {
                isSelected = false;
                selectedWidget == tileConfig.key;
              });
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration:
                    decorateTile(tileConfig.value.decoration, tileConfig.key),
              ),
            ),
          ),
        );
      }).toList();

  decorateTile(BoxDecoration? tileDecoration, int selectedTile) {
    if (tileDecoration == null) {
      if (isSelected == true && selectedTile == selectedWidget) {
        return kSelectedBoxDecoration;
      } else {
        return kBoxDecoration;
      }
    } else {
      if (isSelected == true && selectedTile == selectedWidget) {
        return tileDecoration.copyWith(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            selectedColor!
                .withRed((selectedColor!.red * 0.65).round())
                .withGreen((selectedColor!.green * 0.65).round())
                .withBlue((selectedColor!.blue * 0.65).round()),
            selectedColor!,
            //  selectedColor!.withOpacity(0.3),
          ],
        ));
      } else {
        return tileDecoration;
      }
    }
  }
}
