/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontGen {
  const $AssetsFontGen();
}

class $AssetsGifGen {
  const $AssetsGifGen();

  /// File path: assets/gif/cmic_loading.gif
  AssetGenImage get cmicLoading =>
      const AssetGenImage('assets/gif/cmic_loading.gif');

  /// File path: assets/gif/cmrt_loading.gif
  AssetGenImage get cmrtLoading =>
      const AssetGenImage('assets/gif/cmrt_loading.gif');

  /// File path: assets/gif/loading_success.gif
  AssetGenImage get loadingSuccess =>
      const AssetGenImage('assets/gif/loading_success.gif');

  /// File path: assets/gif/success.gif
  AssetGenImage get success => const AssetGenImage('assets/gif/success.gif');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cmicLoading, cmrtLoading, loadingSuccess, success];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/icon_splash_screen.png
  AssetGenImage get iconSplashScreen =>
      const AssetGenImage('assets/png/icon_splash_screen.png');

  /// File path: assets/png/logo_luncher_icon.png
  AssetGenImage get logoLuncherIcon =>
      const AssetGenImage('assets/png/logo_luncher_icon.png');

  /// File path: assets/png/nie_logo.png
  AssetGenImage get nieLogo => const AssetGenImage('assets/png/nie_logo.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [iconSplashScreen, logoLuncherIcon, nieLogo];
}

class Assets {
  Assets._();

  static const $AssetsFontGen font = $AssetsFontGen();
  static const $AssetsGifGen gif = $AssetsGifGen();
  static const $AssetsPngGen png = $AssetsPngGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
