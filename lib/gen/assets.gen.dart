/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/arrow_backward_ios.png
  AssetGenImage get arrowBackwardIos =>
      const AssetGenImage('assets/png/arrow_backward_ios.png');

  /// File path: assets/png/arrow_forward_ios.png
  AssetGenImage get arrowForwardIos =>
      const AssetGenImage('assets/png/arrow_forward_ios.png');

  /// File path: assets/png/first_page.png
  AssetGenImage get firstPage =>
      const AssetGenImage('assets/png/first_page.png');

  /// File path: assets/png/last_page.png
  AssetGenImage get lastPage => const AssetGenImage('assets/png/last_page.png');

  /// File path: assets/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/png/logo.png');

  /// File path: assets/png/notifications.png
  AssetGenImage get notifications =>
      const AssetGenImage('assets/png/notifications.png');

  /// File path: assets/png/settings.png
  AssetGenImage get settings => const AssetGenImage('assets/png/settings.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        arrowBackwardIos,
        arrowForwardIos,
        firstPage,
        lastPage,
        logo,
        notifications,
        settings
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow_backward_ios.svg
  String get arrowBackwardIos => 'assets/svg/arrow_backward_ios.svg';

  /// File path: assets/svg/arrow_forward_ios.svg
  String get arrowForwardIos => 'assets/svg/arrow_forward_ios.svg';

  /// File path: assets/svg/attach_file.svg
  String get attachFile => 'assets/svg/attach_file.svg';

  /// File path: assets/svg/barcode.svg
  String get barcode => 'assets/svg/barcode.svg';

  /// File path: assets/svg/device_reset.svg
  String get deviceReset => 'assets/svg/device_reset.svg';

  /// File path: assets/svg/filter.svg
  String get filter => 'assets/svg/filter.svg';

  /// File path: assets/svg/first_page.svg
  String get firstPage => 'assets/svg/first_page.svg';

  /// File path: assets/svg/last_page.svg
  String get lastPage => 'assets/svg/last_page.svg';

  /// File path: assets/svg/move_group.svg
  String get moveGroup => 'assets/svg/move_group.svg';

  /// File path: assets/svg/print.svg
  String get print => 'assets/svg/print.svg';

  /// File path: assets/svg/touch_app.svg
  String get touchApp => 'assets/svg/touch_app.svg';

  /// List of all assets
  List<String> get values => [
        arrowBackwardIos,
        arrowForwardIos,
        attachFile,
        barcode,
        deviceReset,
        filter,
        firstPage,
        lastPage,
        moveGroup,
        print,
        touchApp
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
