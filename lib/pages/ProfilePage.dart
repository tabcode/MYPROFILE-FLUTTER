import 'package:flutter/material.dart';
import 'package:myprofile/common/myInfo.dart';
import 'package:myprofile/common/profileInfoBigCard.dart';
import 'package:myprofile/common/profileInfoCard.dart';
import 'package:myprofile/pages/super_likes_me.dart';
import 'package:myprofile/style/colors.dart';
import 'package:myprofile/style/text_style.dart';
import 'package:myprofile/common/opaqueImage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Mi Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            fisrtText: "13",
                            secondText: "New matches",
                            icon: Icon(Icons.star, size: 32, color: blueColor),
                          ),
                          ProfileInfoBigCard(
                            fisrtText: "21",
                            secondText: "Unmatches me",
                            icon: Image.asset("assets/icons/sad_smiley.png",
                                width: 32, color: blueColor),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            fisrtText: "264",
                            secondText: "All matches",
                            icon: Image.asset("assets/icons/checklist.png",
                                width: 32, color: blueColor),
                          ),
                          ProfileInfoBigCard(
                            fisrtText: "42",
                            secondText: "Rematches",
                            icon:
                                Icon(Icons.refresh, size: 32, color: blueColor),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            fisrtText: "404",
                            secondText: "Profile Visitors",
                            icon: Icon(Icons.remove_red_eye,
                                size: 32, color: blueColor),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SuperLikes(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              fisrtText: "42",
                              secondText: "Super likes",
                              icon: Icon(Icons.favorite,
                                  size: 32, color: blueColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfileInfoCard(
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  SizedBox(
                    width:10
                  ),
                  ProfileInfoCard(
                    hasImage:true,
                    imagePath:"assets/icons/pulse.png"
                  ),
                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "Level",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
