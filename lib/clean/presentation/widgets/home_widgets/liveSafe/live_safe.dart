import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';
import 'package:safe_haven/utils/quotes.dart';
import 'package:url_launcher/url_launcher.dart';

class LiveSafe extends StatelessWidget {
  openMap(String location) async {
    String googleUrl = 'https://www.google.com/maps/search/$location';

    if (Platform.isAndroid) {
      if (await canLaunchUrl(Uri.parse(googleUrl))) {
        await launchUrl(Uri.parse(googleUrl));
      } else {
        throw 'Could not launch $googleUrl';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          itemBuilder: (context, itemIndex) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Fluttertoast.showToast(
                        msg: "This is a Toast message",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    openMap(liveSafe[itemIndex].mapUrl);
                  },
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Center(
                              child: UiHelper.CustomImage(
                                  img: liveSafe[itemIndex].imagePath)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(5),
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
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
