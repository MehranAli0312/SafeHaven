import 'package:flutter/material.dart';
import 'package:safe_haven/clean/presentation/widgets/common/uihelper.dart';
import 'package:safe_haven/utils/map_utils.dart';
import 'package:safe_haven/utils/quotes.dart';

class LiveSafe extends StatelessWidget {
  const LiveSafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 120,
        child: ListView.builder(
            itemCount: liveSafe.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, itemIndex) {
              final item = liveSafe[itemIndex];
              return LiveSafeItem(
                name: item.name.toString(),
                imagePath: item.imagePath,
                mapUrl: item.mapUrl,
                onTap: () {
                  MapUtils.openMap(item.mapUrl);
                },
              );
            }),
      ),
    );
  }
}

class LiveSafeItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final String mapUrl;
  final VoidCallback onTap;

  const LiveSafeItem({
    super.key,
    required this.name,
    required this.imagePath,
    required this.mapUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                height: 50,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Center(
                    child: UiHelper.CustomImage(img: imagePath),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5),
              child: UiHelper.CustomText(
                text: name,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
