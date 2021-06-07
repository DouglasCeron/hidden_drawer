import 'package:flutter/material.dart';

import '../settings/configuration.dart';

class AnimalCard extends StatelessWidget {
  final Color backGroundCardColor;
  final String animalImage;
  const AnimalCard({
    @required this.animalImage,
    @required this.backGroundCardColor,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: backGroundCardColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: shadowList,
                  ),
                  margin: EdgeInsets.only(top: 40),
                ),
                Align(
                  child: Image.asset(
                    animalImage,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 60, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: shadowList,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
