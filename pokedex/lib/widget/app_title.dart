import 'package:flutter/material.dart';
import 'package:pokedex/contants/contants.dart';
import 'package:pokedex/ui_helper/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    String pokeballimageurl = Constants.url;
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              pokeballimageurl,
              width: UIHelper.getAppTitleWidth(),
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
