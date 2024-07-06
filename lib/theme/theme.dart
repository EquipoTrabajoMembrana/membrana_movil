import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282277776),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292207615),
      onPrimaryContainer: Color(4278197052),
      secondary: Color(4280509576),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291291135),
      onSecondaryContainer: Color(4278197806),
      tertiary: Color(4280312967),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291225599),
      onTertiaryContainer: Color(4278197805),
      error: Color(4287646281),
      onError: Color(4294967295),
      errorContainer: Color(4294957784),
      onErrorContainer: Color(4282058764),
      surface: Color(4294376435),
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

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280304498),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283790760),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278208615),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282284959),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278208613),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282153886),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411120),
      onError: Color(4294967295),
      errorContainer: Color(4289355614),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4279770392),
      onSurfaceVariant: Color(4282205257),
      outline: Color(4284047461),
      outlineVariant: Color(4285824129),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4289186047),
      primaryFixed: Color(4283790760),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282146189),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282284959),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280246917),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282153886),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280050308),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198856),
      surfaceTint: Color(4282277776),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280304498),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278199608),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278208615),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199607),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278208613),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650386),
      onError: Color(4294967295),
      errorContainer: Color(4285411120),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280165673),
      outline: Color(4282205257),
      outlineVariant: Color(4282205257),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152044),
      inversePrimary: Color(4293192959),
      primaryFixed: Color(4280304498),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201690),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278208615),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278202439),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278208613),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202438),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289186047),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278464607),
      primaryContainer: Color(4280567671),
      onPrimaryContainer: Color(4292207615),
      secondary: Color(4287876598),
      onSecondary: Color(4278203468),
      secondaryContainer: Color(4278209644),
      onSecondaryContainer: Color(4291291135),
      tertiary: Color(4287745781),
      onTertiary: Color(4278203467),
      tertiaryContainer: Color(4278209643),
      onTertiaryContainer: Color(4291225599),
      error: Color(4294947761),
      onError: Color(4283899167),
      errorContainer: Color(4285739827),
      onErrorContainer: Color(4294957784),
      surface: Color(4279244048),
      onSurface: Color(4292863196),
      onSurfaceVariant: Color(4290824141),
      outline: Color(4287271575),
      outlineVariant: Color(4282402893),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
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

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289711359),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278195762),
      primaryContainer: Color(4285698758),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4288140026),
      onSecondary: Color(4278196262),
      secondaryContainer: Color(4284258237),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288008953),
      onTertiary: Color(4278196518),
      tertiaryContainer: Color(4284127420),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949303),
      onError: Color(4281598983),
      errorContainer: Color(4291525241),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294507764),
      onSurfaceVariant: Color(4291087569),
      outline: Color(4288455849),
      outlineVariant: Color(4286416009),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
      inversePrimary: Color(4280699000),
      primaryFixed: Color(4292207615),
      onPrimaryFixed: Color(4278194473),
      primaryFixedDim: Color(4289186047),
      onPrimaryFixedVariant: Color(4279121509),
      secondaryFixed: Color(4291291135),
      onSecondaryFixed: Color(4278194975),
      secondaryFixedDim: Color(4287876598),
      onSecondaryFixedVariant: Color(4278205012),
      tertiaryFixed: Color(4291225599),
      onTertiaryFixed: Color(4278194974),
      tertiaryFixedDim: Color(4287745781),
      onTertiaryFixedVariant: Color(4278205011),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289186047),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289711359),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294507519),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4288140026),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294507519),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288008953),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949303),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294441983),
      outline: Color(4291087569),
      outlineVariant: Color(4291087569),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
      inversePrimary: Color(4278200917),
      primaryFixed: Color(4292667391),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289711359),
      onPrimaryFixedVariant: Color(4278195762),
      secondaryFixed: Color(4291881727),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4288140026),
      onSecondaryFixedVariant: Color(4278196262),
      tertiaryFixed: Color(4291816447),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288008953),
      onTertiaryFixedVariant: Color(4278196518),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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
