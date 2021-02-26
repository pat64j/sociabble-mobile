import 'package:flutter/material.dart';
final ThemeData sociableTheme = ThemeData(
  primarySwatch: MaterialColor(4286229941,{50: Color( 0xffeff5f6 )
    , 100: Color( 0xffdeebed )
    , 200: Color( 0xffbdd7db )
    , 300: Color( 0xff9dc2c8 )
    , 400: Color( 0xff7caeb6 )
    , 500: Color( 0xff5b9aa4 )
    , 600: Color( 0xff497b83 )
    , 700: Color( 0xff375c62 )
    , 800: Color( 0xff243e42 )
    , 900: Color( 0xff121f21 )
  }),
  brightness: Brightness.light,
  primaryColor: Color( 0xff7aadb5 ),
  primaryColorBrightness: Brightness.light,
  primaryColorLight: Color( 0xffdeebed ),
  primaryColorDark: Color( 0xff375c62 ),
  accentColor: Color( 0xff5b9aa4 ),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color( 0xfffafafa ),
  scaffoldBackgroundColor: Color( 0xfffafafa ),
  bottomAppBarColor: Color( 0xffffffff ),
  cardColor: Color( 0xffffffff ),
  dividerColor: Color( 0x1f000000 ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  highlightColor: Color( 0x66bcbcbc ),
  splashColor: Color( 0x66c8c8c8 ),
  selectedRowColor: Color( 0xfff5f5f5 ),
  unselectedWidgetColor: Color( 0x8a000000 ),
  disabledColor: Color( 0x61000000 ),
  buttonColor: Color( 0xffe0e0e0 ),
  toggleableActiveColor: Color( 0xff497b83 ),
  secondaryHeaderColor: Color( 0xffeff5f6 ),
  textSelectionColor: Color( 0xffbdd7db ),
  cursorColor: Color( 0xff4285f4 ),
  textSelectionHandleColor: Color( 0xff9dc2c8 ),
  backgroundColor: Color( 0xffbdd7db ),
  dialogBackgroundColor: Color( 0xffffffff ),
  indicatorColor: Color( 0xff5b9aa4 ),
  hintColor: Color( 0x8a000000 ),
  errorColor: Color( 0xffd32f2f ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88.0,
    height: 36.0,
    padding: EdgeInsets.only(top:0.0,bottom:0.0,left:16.0, right:16.0),
    shape:     RoundedRectangleBorder(
      side: BorderSide(color: Color( 0xff000000 ), width: 0.0, style: BorderStyle.none, ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
    ,
    alignedDropdown: false ,
    buttonColor: Color( 0xffe0e0e0 ),
    disabledColor: Color( 0x61000000 ),
    highlightColor: Color( 0x29000000 ),
    splashColor: Color( 0x1f000000 ),
    focusColor: Color( 0x1f000000 ),
    hoverColor: Color( 0x0a000000 ),
    colorScheme: ColorScheme(
      primary: Color( 0xff7aadb5 ),
      primaryVariant: Color( 0xff375c62 ),
      secondary: Color( 0xff5b9aa4 ),
      secondaryVariant: Color( 0xff375c62 ),
      surface: Color( 0xffffffff ),
      background: Color( 0xffbdd7db ),
      error: Color( 0xffd32f2f ),
      onPrimary: Color( 0xff000000 ),
      onSecondary: Color( 0xffffffff ),
      onSurface: Color( 0xff000000 ),
      onBackground: Color( 0xff000000 ),
      onError: Color( 0xffffffff ),
      brightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 96,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 60,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 48,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline4: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 24,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline6: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.4,
    ),
    button: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.25,
    ),
    overline: TextStyle(
      color: Color( 0xff000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.5,
    ),
  ),
  primaryTextTheme: TextTheme(
    headline1: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 96,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 60,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 48,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline4: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 24,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline6: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      color: Color(0xff000000),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.4,
    ),
    button: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.25,
    ),
    overline: TextStyle(
      color: Color( 0xff000000 ),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.5,
    ),
  ),
  accentTextTheme: TextTheme(
    headline1: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: 96,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: 60,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: 48,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline4: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 25,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.0,
    ),
    headline6: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
    ),
    caption: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.4,
    ),
    button: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.25,
    ),
    overline: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 1.5,
    ),
  ),
  inputDecorationTheme:   InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    isDense: false,
    contentPadding: EdgeInsets.only(top:12.0,bottom:12.0,left:0.0, right:0.0),
    isCollapsed : false,
    prefixStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color( 0x00000000 ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1.0, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: IconThemeData(
    color: Color( 0xdd000000 ),
    opacity: 1.0,
    size: 24.0,
  ),
  primaryIconTheme: IconThemeData(
    color: Color( 0xff000000 ),
    opacity: 1.0,
    size: 24.0,
  ),
  accentIconTheme: IconThemeData(
    color: Color( 0xffffffff ),
    opacity: 1.0,
    size: 24.0,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color( 0xdd000000 ),
    unselectedLabelColor: Color( 0xb2000000 ),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color( 0x1f000000 ),
    brightness: Brightness.light,
    deleteIconColor: Color( 0xde000000 ),
    disabledColor: Color( 0x0c000000 ),
    labelPadding: EdgeInsets.only(top:0.0,bottom:0.0,left:8.0, right:8.0),
    labelStyle: TextStyle(
      color: Color( 0xde000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top:4.0,bottom:4.0,left:4.0, right:4.0),
    secondaryLabelStyle: TextStyle(
      color: Color( 0x3d000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color( 0x3d7aadb5 ),
    selectedColor: Color( 0x3d000000 ),
    shape: StadiumBorder( side: BorderSide(color: Color( 0xff000000 ), width: 0.0, style: BorderStyle.none, ) ),
  ),
  dialogTheme: DialogTheme(
      shape:     RoundedRectangleBorder(
        side: BorderSide(color: Color( 0xff000000 ), width: 0.0, style: BorderStyle.none, ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      )

  ),
);