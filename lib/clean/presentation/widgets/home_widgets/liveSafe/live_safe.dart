import 'package:flutter/material.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';
import 'package:safe_haven/utils/quotes.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, itemIndex) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Column(children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child:
                      UiHelper.CustomImage(img: liveSafe[itemIndex].imagePath),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: UiHelper.CustomText(
                      text: liveSafe[itemIndex].name.toString(),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ]),
            ));
      },
      itemCount: liveSafe.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
