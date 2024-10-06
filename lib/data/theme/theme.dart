import "package:flutter/material.dart";

class MaterialTheme {
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff193b83),
      surfaceTint: Color(0xff3d5ba4),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4260a9),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff466275),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff97b3c9),
      onSecondaryContainer: Color(0xff072739),
      tertiary: Color(0xff556257),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb8c6b9),
      onTertiaryContainer: Color(0xff2a362d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff444651),
      outline: Color(0xff747782),
      outlineVariant: Color(0xffc4c6d2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xffb2c5ff),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001847),
      primaryFixedDim: Color(0xffb2c5ff),
      onPrimaryFixedVariant: Color(0xff22438b),
      secondaryFixed: Color(0xffc9e6fe),
      onSecondaryFixed: Color(0xff001e2e),
      secondaryFixedDim: Color(0xffaecae1),
      onSecondaryFixedVariant: Color(0xff2e4a5d),
      tertiaryFixed: Color(0xffd8e6d8),
      onTertiaryFixed: Color(0xff121e16),
      tertiaryFixedDim: Color(0xffbccabd),
      onTertiaryFixedVariant: Color(0xff3d4a40),
      surfaceDim: Color(0xffdcd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
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
