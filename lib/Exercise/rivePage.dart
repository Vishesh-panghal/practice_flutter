// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart' as rive;

class rivePage extends StatefulWidget {
  const rivePage({super.key});

  @override
  State<rivePage> createState() => _rivePageState();
}

class _rivePageState extends State<rivePage> {
  var rivePath = 'assets/riv/star.riv';
  // Declare controller...😮‍💨
  rive.StateMachineController? mController;
  // Declare Artboard...⚙️
  rive.Artboard? mainArtboard;
  rive.SMIInput<bool>? riveInput;
  var opcty = 0.0;

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      opcty = 1.0;
      setState(() {});
    });
    // Extract:- jo kuch b system h path me (for Future i,e then💬)
    rootBundle.load(rivePath).then((riveByteData) {
      // set file
      var file = rive.RiveFile.import(riveByteData);
      // set artboard
      var artBoard = file.mainArtboard;
      // set artboard name
      mController =
          rive.StateMachineController.fromArtboard(artBoard, "FavStar");
      // assign artboard controller to main controller...💪
      if (mController != null) {
        // check ki humne stateMachine ka name sahi dala h ?
        artBoard.addController(mController!);
        riveInput = mController!.findInput("check");
        mainArtboard = artBoard;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffa6c1ee), Color(0xfffbc2eb)],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opcty,
              child: Text(
                'Rive Animation',
                style: TextStyle(
                  fontFamily: 'Courgette',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            mainArtboard == null
                ? Container(
                    decoration: BoxDecoration(),
                    child: Text(
                      'StateMachine is not performing Well..😮‍💨',
                    ),
                  )
                : InkWell(
                    onTap: () {
                      if (riveInput != null) {
                        if (riveInput!.value == false &&
                            mController!.isActive == false) {
                          riveInput!.value = true;
                          // we can't take else here becouse here there are 3 stantment produces as TT,TF,FT, but we to check only of TF...🎃
                        } else if (riveInput!.value == true &&
                            mController!.isActive == false) {
                          riveInput!.value = false;
                        }
                      }
                    },
                    child: SizedBox(
                      height: 200,
                      child: rive.Rive(artboard: mainArtboard!),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
