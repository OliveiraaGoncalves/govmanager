import 'package:flutter/cupertino.dart';

class CardItemProperties {
  final IconData? iconStart;
  final String label;
  final String? description;
  final IconData? iconEnd;
  final Color? background;
  final EdgeInsetsGeometry? margin;

  CardItemProperties({this.iconStart, required this.label, this.description, this.iconEnd,
    this.background, this.margin});
}
