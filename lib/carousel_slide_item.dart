import 'package:flutter/material.dart';
import 'package:flutter_carousel_intro/slider_item_model.dart';

class CarouselSlideItem extends StatelessWidget {
  final SliderItem slide;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextAlign? titleTextAlign;
  final TextAlign? subtitleTextAlign;

  const CarouselSlideItem({
    super.key,
    required this.slide,
    required this.titleTextStyle,
    required this.subtitleTextStyle,
    required this.titleTextAlign,
    required this.subtitleTextAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(
            height: _getSlideWidgetHeight(context, slide.title, slide.subtitle),
            child: slide.widget,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (slide.title != null)
                  Text(
                    slide.title ?? '',
                    style: titleTextStyle ??
                        slide.titleTextStyle ??
                        Theme.of(context).textTheme.titleLarge,
                    textAlign: titleTextAlign ??
                        slide.titleTextAlign ??
                        TextAlign.center,
                  ),
                if (slide.subtitle != null)
                  Expanded(
                    child: Text(
                      slide.subtitle ?? '',
                      style: subtitleTextStyle ??
                          slide.subtitleTextStyle ??
                          Theme.of(context).textTheme.titleMedium,
                      textAlign: subtitleTextAlign ??
                          slide.subtitleTextAlign ??
                          TextAlign.center,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  double? _getSlideWidgetHeight(
    BuildContext context,
    String? title,
    String? subtitle,
  ) {
    if (title == null && subtitle == null) {
      return MediaQuery.sizeOf(context).height * 0.8;
    }
    return MediaQuery.sizeOf(context).height * 0.6;
  }
}
