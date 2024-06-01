import "package:flutter/material.dart";

final ThemeData theme = ThemeData.from(colorScheme: MaterialTheme.lightScheme().toColorScheme());

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() => const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff196585),
      surfaceTint: Color(0xff196585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc2e8ff),
      onPrimaryContainer: Color(0xff001e2c),
      secondary: Color(0xff006874),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9eeffd),
      onSecondaryContainer: Color(0xff001f24),
      tertiary: Color(0xff31628d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcfe5ff),
      onTertiaryContainer: Color(0xff001d33),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff171c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff171c1f),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff40484d),
      outline: Color(0xff71787d),
      outlineVariant: Color(0xffc0c7cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffedf1f5),
      inversePrimary: Color(0xff8ecff2),
      primaryFixed: Color(0xffc2e8ff),
      onPrimaryFixed: Color(0xff001e2c),
      primaryFixedDim: Color(0xff8ecff2),
      onPrimaryFixedVariant: Color(0xff004d67),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001f24),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff004f58),
      tertiaryFixed: Color(0xffcfe5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xff9ccbfb),
      onTertiaryFixedVariant: Color(0xff114a73),
      surfaceDim: Color(0xffd6dade),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );

  ThemeData light() => theme(lightScheme().toColorScheme());

  static MaterialScheme lightMediumContrastScheme() => const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004862),
      surfaceTint: Color(0xff196585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff387c9c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004a53),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff25808c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0a466f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4978a4),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff171c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff171c1f),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff3d4449),
      outline: Color(0xff596065),
      outlineVariant: Color(0xff747c81),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffedf1f5),
      inversePrimary: Color(0xff8ecff2),
      primaryFixed: Color(0xff387c9c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff156382),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff25808c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006671),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4978a4),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2e5f8a),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dade),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );

  ThemeData lightMediumContrast() => theme(lightMediumContrastScheme().toColorScheme());

  static MaterialScheme lightHighContrastScheme() => const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002535),
      surfaceTint: Color(0xff196585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004862),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00272c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004a53),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00243e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff0a466f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff171c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff1e2529),
      outline: Color(0xff3d4449),
      outlineVariant: Color(0xff3d4449),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd8efff),
      primaryFixed: Color(0xff004862),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003143),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004a53),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003238),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff0a466f),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff002f4e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dade),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );

  ThemeData lightHighContrast() => theme(lightHighContrastScheme().toColorScheme());

  static MaterialScheme darkScheme() => const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ecff2),
      surfaceTint: Color(0xff8ecff2),
      onPrimary: Color(0xff003548),
      primaryContainer: Color(0xff004d67),
      onPrimaryContainer: Color(0xffc2e8ff),
      secondary: Color(0xff82d3e0),
      onSecondary: Color(0xff00363d),
      secondaryContainer: Color(0xff004f58),
      onSecondaryContainer: Color(0xff9eeffd),
      tertiary: Color(0xff9ccbfb),
      onTertiary: Color(0xff003354),
      tertiaryContainer: Color(0xff114a73),
      onTertiaryContainer: Color(0xffcfe5ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffdfe3e7),
      surfaceVariant: Color(0xff40484d),
      onSurfaceVariant: Color(0xffc0c7cd),
      outline: Color(0xff8a9297),
      outlineVariant: Color(0xff40484d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff196585),
      primaryFixed: Color(0xffc2e8ff),
      onPrimaryFixed: Color(0xff001e2c),
      primaryFixedDim: Color(0xff8ecff2),
      onPrimaryFixedVariant: Color(0xff004d67),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001f24),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff004f58),
      tertiaryFixed: Color(0xffcfe5ff),
      onTertiaryFixed: Color(0xff001d33),
      tertiaryFixedDim: Color(0xff9ccbfb),
      onTertiaryFixedVariant: Color(0xff114a73),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
    );

  ThemeData dark() => theme(darkScheme().toColorScheme());

  static MaterialScheme darkMediumContrastScheme() => const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff92d3f7),
      surfaceTint: Color(0xff8ecff2),
      onPrimary: Color(0xff001924),
      primaryContainer: Color(0xff5798ba),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff86d7e5),
      onSecondary: Color(0xff001a1d),
      secondaryContainer: Color(0xff499ca9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa1cfff),
      onTertiary: Color(0xff00182b),
      tertiaryContainer: Color(0xff6695c2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xfff8fbff),
      surfaceVariant: Color(0xff40484d),
      onSurfaceVariant: Color(0xffc4ccd1),
      outline: Color(0xff9da4a9),
      outlineVariant: Color(0xff7d8489),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff262b2e),
      inversePrimary: Color(0xff004e69),
      primaryFixed: Color(0xffc2e8ff),
      onPrimaryFixed: Color(0xff00131d),
      primaryFixedDim: Color(0xff8ecff2),
      onPrimaryFixedVariant: Color(0xff003b50),
      secondaryFixed: Color(0xff9eeffd),
      onSecondaryFixed: Color(0xff001417),
      secondaryFixedDim: Color(0xff82d3e0),
      onSecondaryFixedVariant: Color(0xff003c44),
      tertiaryFixed: Color(0xffcfe5ff),
      onTertiaryFixed: Color(0xff001223),
      tertiaryFixedDim: Color(0xff9ccbfb),
      onTertiaryFixedVariant: Color(0xff00395d),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
    );

  ThemeData darkMediumContrast() => theme(darkMediumContrastScheme().toColorScheme());

  static MaterialScheme darkHighContrastScheme() => const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff8fbff),
      surfaceTint: Color(0xff8ecff2),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff92d3f7),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff1fdff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff86d7e5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffafaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa1cfff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff40484d),
      onSurfaceVariant: Color(0xfff8fbff),
      outline: Color(0xffc4ccd1),
      outlineVariant: Color(0xffc4ccd1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002e40),
      primaryFixed: Color(0xffccebff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff92d3f7),
      onPrimaryFixedVariant: Color(0xff001924),
      secondaryFixed: Color(0xffaaf3ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff86d7e5),
      onSecondaryFixedVariant: Color(0xff001a1d),
      tertiaryFixed: Color(0xffd7e9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa1cfff),
      onTertiaryFixedVariant: Color(0xff00182b),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff171c1f),
      surfaceContainer: Color(0xff1b2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
    );

  ThemeData darkHighContrast() => theme(darkHighContrastScheme().toColorScheme());


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => <ExtendedColor>[
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() => ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
