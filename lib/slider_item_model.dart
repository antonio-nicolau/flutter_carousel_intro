import 'package:flutter/material.dart';

/// A model to represent each Slide item
///
/// e.g
///
/// ```dart
/// SlideItem(title: '', subtitle: '', widget: Image.asset())
///
/// ```
class SliderItem {
  /// **[widget]** the required slide widget
  final Widget widget;

  /// [title] optional slide title
  final String? title;

  /// [titleTextStyle] optional title TextStyle, if set it override the
  /// /// top-level title textStyle
  final TextStyle? titleTextStyle;

  ///  [titleTextAlign] optional title TextAlign, if set it override the
  /// top-level title textAlign
  final TextAlign? titleTextAlign;

  /// [subtitle] optional slide subtile
  final String? subtitle;

  ///  [subtitle] optional subtitle TextStyle, if set it override the
  /// top-level subtitle textStyle
  final TextStyle? subtitleTextStyle;

  ///  [subtitleTextAlign] optional subtitle TextAlign, if set it override the
  /// top-level subtitle textAlign
  final TextAlign? subtitleTextAlign;

  const SliderItem({
    this.title,
    this.titleTextStyle,
    this.titleTextAlign,
    this.subtitle,
    this.subtitleTextStyle,
    this.subtitleTextAlign,
    required this.widget,
  });
}
