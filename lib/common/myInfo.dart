import 'package:flutter/material.dart';
import 'package:myprofile/common/roundedIamge.dart';
import 'package:myprofile/style/text_style.dart';

import 'radialProgress.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialProgress(
            width: 4,
            goalCompleted: 0.9,
            child: RoundedImage(
              imagePath: "assets/images/anne.jpeg",
              size: Size.fromWidth(120.0),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Anne Grethe", style: whiteNameTextStyle),
              Text(", 24", style: whiteNameTextStyle),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icons/location_pin.png",
                width: 20.0,
                color: Colors.white,
              ),
              Text(" 34 Kilometers", style: whiteSubHeadingTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
