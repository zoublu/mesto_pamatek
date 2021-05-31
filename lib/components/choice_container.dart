import 'package:flutter/material.dart';
import 'package:dolni_kounice/constants/constants.dart';


class ChoiceContainer extends StatelessWidget {
  ///Výchozí Container pro výběr různých sekcí a kapitol
  ChoiceContainer({@required this.assetImageOfChoice,@required this.textOfChoice, @required this.onTap});

  final String assetImageOfChoice;
  final String textOfChoice;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      borderOnForeground: false,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.only(left: kDefaultMargin, right: kDefaultMargin, bottom: kDefaultMargin),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Ink.image(
                image: AssetImage(assetImageOfChoice),
                height: 165.0,
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: onTap,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/5*3,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: kDefaultTextBackgroundTransparent,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kDefaultPadding),
                            child: Text(
                              textOfChoice,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: kDefaultFontSizeText,
                                fontFamily: kDefaultFontFamily,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
