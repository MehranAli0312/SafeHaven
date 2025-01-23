import 'package:flutter/cupertino.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/emergencies/ambulance_emergency.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/emergencies/army_emergency.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/emergencies/firebrigade_emergency.dart';
import 'package:safe_haven/clean/presentation/widgets/home_widgets/emergencies/policeemergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FirebrigadeEmergency(),
          ArmyEmergency(),
        ],
      ),
    );
  }
}
