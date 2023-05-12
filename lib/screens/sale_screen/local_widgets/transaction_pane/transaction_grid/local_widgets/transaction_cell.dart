import 'package:flutter/material.dart';
import 'package:tech_scale/utils/constant.dart';

enum TransactionCellImageId {
  remove,
  item,
  discount,
  edit;
}

const kCellDecoration = InputDecoration(
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(2),
      ),
      borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.only(left: 0, bottom: 5));

class TransactionCell extends StatefulWidget {
  const TransactionCell(
      {Key? key,
      required this.isSelected,
      this.cellText,
      this.cellTextStyle,
      required this.isExpanded,
      required this.hasKey,
      this.imageId,
      required this.isActiveTextField})
      : super(key: key);
  final bool isSelected;
  final bool isExpanded;
  final String? cellText;
  final TextStyle? cellTextStyle;
  final bool hasKey;
  final TransactionCellImageId? imageId;
  final bool? isActiveTextField;

  @override
  State<TransactionCell> createState() => _TransactionCellState();
}

class _TransactionCellState extends State<TransactionCell> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  Color fillColor = Colors.transparent;
  Color textColor = Colors.black;
  Color hoverColor = Colors.white;
  bool hasFocused = false;
  bool hovered = false;

  @override
  void initState() {
    _controller.text = widget.cellText!;
    _controller.addListener(() {});
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        hasFocused = true;
        _controller.selection =
            TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
        setState(() {
          fillColor = Colors.white;
          textColor = Colors.black;
        });
      } else {
        setState(() {
          fillColor = Colors.transparent;
          hasFocused = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    textColor = (widget.isSelected || widget.isExpanded == false) &&
            hasFocused == false &&
            hovered == false
        ? Colors.white
        : Colors.black;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 3,
        ),
        MouseRegion(
          onEnter: (pos) {
            setState(() {
              hovered = true;
              if (hasFocused) {
              } else {
                fillColor = Colors.white;
                textColor = Colors.black;
                hoverColor=Colors.white;
              }
            });
          },
          onExit: (pos) {
            setState(() {
              hovered = false;
              if (hasFocused) {
              } else {
                textColor = Colors.white;
                fillColor = widget.isExpanded ? Colors.transparent : kSelectedRowColor;
                hoverColor = Colors.transparent;
              }
            });
          },
          child: SizedBox(
            height: 20,
            child: widget.isSelected == false && widget.isExpanded == false
                ? Text(
                    widget.cellText!,
                    style: widget.cellTextStyle,
                  )
                : TextField(
                    onSubmitted: (text) {
                      setState(() {
                        hovered=false;
                        fillColor = Colors.black;
                        textColor=Colors.white;
                        hoverColor=kSelectedRowColor;
                      });

                    },
                    enabled: widget.isActiveTextField,
                    style: widget.cellTextStyle == null
                        ? kCellTextStyle.copyWith(color: textColor)
                        : widget.cellTextStyle!.copyWith(color: textColor),
                    controller: _controller,
                    focusNode: _focusNode,
                    decoration: kCellDecoration.copyWith(fillColor: fillColor,hoverColor: hoverColor),
                  ),
          ),
        ),
        (widget.isSelected || widget.isExpanded) && widget.hasKey
            ? const SizedBox(
                height: 3,
              )
            : Container(),
        (widget.isSelected || widget.isExpanded) && widget.hasKey
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SizedBox(
                  height: 39,
                  width: 65,
                  child: getImage(),
                ),
              )
            : Container(),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }

  getImage() {
    switch (widget.imageId) {
      case TransactionCellImageId.edit:
        return Image.asset('assets/images/edit.png');
      case TransactionCellImageId.item:
        return Image.asset('assets/images/item.png');
      case TransactionCellImageId.remove:
        return Image.asset('assets/images/remove.png');
      case TransactionCellImageId.discount:
        return Image.asset('assets/images/discount.png');
      default:
        return null;
    }
  }
}
