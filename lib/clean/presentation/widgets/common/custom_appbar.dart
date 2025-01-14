import 'package:flutter/cupertino.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';
import 'package:safe_haven/utils/quotes.dart';

class CustomAppbar extends StatelessWidget {
  Function? onTap;
  int? quoteIndex;

  CustomAppbar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        child: UiHelper.CustomText(
            text: sweetSayings[quoteIndex!],
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ),
    );
  }
}
