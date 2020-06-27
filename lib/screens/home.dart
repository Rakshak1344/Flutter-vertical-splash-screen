import 'package:flutter/material.dart';
import 'package:gstore/utils/images.dart';
import 'package:gstore/utils/myColors.dart';
import 'package:gstore/utils/strings.dart';
import 'package:gstore/utils/textStyle.dart';

class Home extends StatelessWidget {
  AppBar appBar() {
    return AppBar(
      backgroundColor: MyColors.backgroundColor,
      elevation: 0,
      title: Text(
        Strings.gstore,
        style: TextStyles.appNameTextStyle,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.green,
            size: 35,
          ),
          onPressed: () {},
        ),
        // InkWell(
        //   borderRadius: BorderRadius.circular(10),
        //   onTap: () => print("profile tapped"),
        //   splashColor: Color(0xff5D2BDA),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // child: Container(
        //   width: 35,
        //   height: 35,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     image: DecorationImage(
        //       image: Images.defaultProfileImage,
        //     ),
        //   ),
        // ),
        //   ),
        // ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: MyColors.backgroundColor,
      body: Container(
        child: Image.asset("../../assets/images/default_profile_image.png"),
      ),
    );
  }
}
