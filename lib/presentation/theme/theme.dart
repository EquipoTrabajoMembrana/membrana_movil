import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF14213d),
      surfaceTint: Color(0xFF3E5F90),
      onPrimary: Color(0xFFf3f3f3),
      primaryContainer: Color(0xFFD5E3FF),
      onPrimaryContainer: Color(0xFF001B3C),
      secondary: Color(0xFF236488),
      onSecondary: Color(0xFFf3f3f3),
      secondaryContainer: Color(4291291135),
      onSecondaryContainer: Color(4278197806),
      tertiary: Color(4280312967),
      onTertiary: Color(0xFFf3f3f3),
      tertiaryContainer: Color(4291225599),
      onTertiaryContainer: Color(4278197805),
      error: Color(4287646281),
      onError: Color(0xFFf3f3f3),
      errorContainer: Color(4294957784),
      onErrorContainer: Color(4282058764),
      surface: Color(0xFFf3f3f3),
      onSurface: Color(4279770392),
      onSurfaceVariant: Color(4282402893),
      outline: Color(4285626493),
      outlineVariant: Color(4290824141),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197052),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280567671),
      secondaryFixed: Color(4291291135),
      onSecondaryFixed: Color(4278197806),
      secondaryFixedDim: Color(4287876598),
      onSecondaryFixedVariant: Color(4278209644),
      tertiaryFixed: Color(4291225599),
      onTertiaryFixed: Color(4278197805),
      tertiaryFixedDim: Color(4287745781),
      onTertiaryFixedVariant: Color(4278209643),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFf3f3f3),
      surfaceTint: Color(4289186047),
      onPrimary: Color(0xFF004e98),
      primaryContainer: Color(4280567671),
      onPrimaryContainer: Color(0xFFD5E3FF),
      secondary: Color(0xFF91918E),
      onSecondary: Color(4278203468),
      secondaryContainer: Color(0xFF004C6C),
      onSecondaryContainer: Color(0xFFC7E7FF),
      tertiary: Color(0xFFf9f7f3),
      onTertiary: Color(4278203467),
      tertiaryContainer: Color(4278209643),
      onTertiaryContainer: Color(4291225599),
      error: Color(4294947761),
      onError: Color(4283899167),
      errorContainer: Color(4285739827),
      onErrorContainer: Color(4294957784),
      surface: Color(0xFF212529),
      onSurface: Color(0xFFDFE4DC),
      onSurfaceVariant: Color(4290824141),
      outline: Color(4287271575),
      outlineVariant: Color(4282402893),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(0xFFDFE4DC),
      inversePrimary: Color(4282277776),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278197052),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4280567671),
      secondaryFixed: Color(4291291135),
      onSecondaryFixed: Color(4278197806),
      secondaryFixedDim: Color(4287876598),
      onSecondaryFixedVariant: Color(4278209644),
      tertiaryFixed: Color(4291225599),
      onTertiaryFixed: Color(4278197805),
      tertiaryFixedDim: Color(4287745781),
      onTertiaryFixedVariant: Color(4278209643),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

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
        navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.all(
          TextStyle(fontFamily: 'Teachers'),
        )),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily dark;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark,
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
