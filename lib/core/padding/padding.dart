import 'package:flutter/cupertino.dart';

class ApplyPadding {
  static ApplyPadding? _instace;
  static ApplyPadding get instance {
    if (_instace != null) return _instace!;
    _instace = ApplyPadding._init();
    return _instace!;
  }

  ApplyPadding._init();

  final EdgeInsets paddingLeftTwenty = EdgeInsets.only(left: 20);
  final EdgeInsets paddingLeftSixteen = EdgeInsets.only(left: 16);
  final EdgeInsets paddingLeftTwelf = EdgeInsets.only(left: 12);


  final EdgeInsets paddingOnlyBottomThirtyFive = EdgeInsets.only(bottom: 35);
  final EdgeInsets paddingOnlyBottomFour = EdgeInsets.only(bottom:4);

  final EdgeInsets paddingL20TR10B = EdgeInsets.fromLTRB(20, 0, 10, 0);
  final EdgeInsets paddingL44T4RB = EdgeInsets.fromLTRB(44, 4, 0, 0);
  final EdgeInsets paddingLT10R12B =EdgeInsets.fromLTRB(0, 10, 12, 0);

  final EdgeInsets paddingAllSixteen = EdgeInsets.all(16);

  final EdgeInsets paddingHorizontalFive =
      EdgeInsets.symmetric(horizontal: 5.0);
}
