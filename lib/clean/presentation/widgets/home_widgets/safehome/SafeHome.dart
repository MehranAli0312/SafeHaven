import 'package:flutter/material.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';

class SafeHome extends StatelessWidget {
  const SafeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {} //showModelSafeHome(context),
      ,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              const Expanded(
                  child: Column(
                children: [
                  ListTile(
                    title: Text("Send Location"),
                    subtitle: Text("Share Location"),
                  ),
                ],
              )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: UiHelper.CustomImage(img: "route.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}
