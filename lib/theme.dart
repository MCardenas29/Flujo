import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281950351),
      surfaceTint: Color(4281950351),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292076799),
      onPrimaryContainer: Color(4278197304),
      secondary: Color(4283719536),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292338680),
      onSecondaryContainer: Color(4279245867),
      tertiary: Color(4285290103),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294236671),
      onTertiaryContainer: Color(4280685617),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282599246),
      outline: Color(4285757311),
      outlineVariant: Color(4291020495),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4288924158),
      primaryFixed: Color(4292076799),
      onPrimaryFixed: Color(4278197304),
      primaryFixedDim: Color(4288924158),
      onPrimaryFixedVariant: Color(4280174709),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4279245867),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4282140504),
      tertiaryFixed: Color(4294236671),
      onTertiaryFixed: Color(4280685617),
      tertiaryFixedDim: Color(4292394467),
      onTertiaryFixedVariant: Color(4283645790),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279780465),
      surfaceTint: Color(4281950351),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283463591),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281877588),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285166983),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283382618),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286803086),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282336074),
      outline: Color(4284178279),
      outlineVariant: Color(4286020483),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4288924158),
      primaryFixed: Color(4283463591),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281753228),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285166983),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283522414),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286803086),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285158517),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278199107),
      surfaceTint: Color(4281950351),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279780465),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279706418),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281877588),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281146168),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283382618),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294507007),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296491),
      outline: Color(4282336074),
      outlineVariant: Color(4282336074),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217077),
      inversePrimary: Color(4293127679),
      primaryFixed: Color(4279780465),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201941),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281877588),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280429885),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283382618),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281869635),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993768),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288924158),
      surfaceTint: Color(4288924158),
      onPrimary: Color(4278202715),
      primaryContainer: Color(4280174709),
      onPrimaryContainer: Color(4292076799),
      secondary: Color(4290496475),
      onSecondary: Color(4280693057),
      secondaryContainer: Color(4282140504),
      onSecondaryContainer: Color(4292338680),
      tertiary: Color(4292394467),
      onTertiary: Color(4282132807),
      tertiaryContainer: Color(4283645790),
      onTertiaryContainer: Color(4294236671),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309336),
      onSurface: Color(4292993768),
      onSurfaceVariant: Color(4291020495),
      outline: Color(4287467929),
      outlineVariant: Color(4282599246),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inversePrimary: Color(4281950351),
      primaryFixed: Color(4292076799),
      onPrimaryFixed: Color(4278197304),
      primaryFixedDim: Color(4288924158),
      onPrimaryFixedVariant: Color(4280174709),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4279245867),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4282140504),
      tertiaryFixed: Color(4294236671),
      onTertiaryFixed: Color(4280685617),
      tertiaryFixedDim: Color(4292394467),
      onTertiaryFixedVariant: Color(4283645790),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289318399),
      surfaceTint: Color(4288924158),
      onPrimary: Color(4278196015),
      primaryContainer: Color(4285371333),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290825184),
      onSecondary: Color(4278916901),
      secondaryContainer: Color(4287009188),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292723176),
      onTertiary: Color(4280290859),
      tertiaryContainer: Color(4288710828),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309336),
      onSurface: Color(4294638335),
      onSurfaceVariant: Color(4291283923),
      outline: Color(4288652203),
      outlineVariant: Color(4286546827),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inversePrimary: Color(4280240503),
      primaryFixed: Color(4292076799),
      onPrimaryFixed: Color(4278194726),
      primaryFixedDim: Color(4288924158),
      onPrimaryFixedVariant: Color(4278400868),
      secondaryFixed: Color(4292338680),
      onSecondaryFixed: Color(4278587936),
      secondaryFixedDim: Color(4290496475),
      onSecondaryFixedVariant: Color(4281022279),
      tertiaryFixed: Color(4294236671),
      onTertiaryFixed: Color(4279961894),
      tertiaryFixedDim: Color(4292394467),
      onTertiaryFixedVariant: Color(4282527565),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294638335),
      surfaceTint: Color(4288924158),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289318399),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294638335),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290825184),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965755),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292723176),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309336),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294638335),
      outline: Color(4291283923),
      outlineVariant: Color(4291283923),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993768),
      inversePrimary: Color(4278201168),
      primaryFixed: Color(4292536575),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289318399),
      onPrimaryFixedVariant: Color(4278196015),
      secondaryFixed: Color(4292667644),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290825184),
      onSecondaryFixedVariant: Color(4278916901),
      tertiaryFixed: Color(4294434815),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292723176),
      onTertiaryFixedVariant: Color(4280290859),
      surfaceDim: Color(4279309336),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098852),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
