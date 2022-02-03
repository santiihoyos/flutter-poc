import 'package:flutter_poc/l10n/strings.dart';
import 'package:flutter_poc/ui/feature/welcome/welcome_controller.dart';
import 'package:flutter_poc/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  final WelcomeController welcomeController;

  const WelcomePage({
    Key? key,
    required this.welcomeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.STORE_NAME.toUpperCase(),
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 43,
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 21,
                        left: 13,
                        bottom: 3,
                        right: 13,
                      ),
                      child: TextButton(
                        onPressed: welcomeController.onMakeABookingClicked,
                        autofocus: true,
                        child: Text(
                          getAppLocalizationsOf(context).make_booking,
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: const ButtonStyle(),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      child: TextButton(
                        onPressed: welcomeController.onCancelABookingClicked,
                        autofocus: false,
                        child: Text(
                          getAppLocalizationsOf(context).cancel_booking,
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: const ButtonStyle(),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildRRSSTextButtonButton(
                    imagePath: 'assets/images/icons/ic_instagram.png',
                    onPressed: welcomeController.onInstagramClicked,
                  ),
                  _buildRRSSTextButtonButton(
                    imagePath: 'assets/images/icons/ic_twitter.png',
                    onPressed: welcomeController.onTwitterClicked,
                  ),
                  _buildRRSSTextButtonButton(
                    imagePath: 'assets/images/icons/ic_facebook.png',
                    onPressed: welcomeController.onFacebookClicked,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 34,
                    child: Text(
                      getAppLocalizationsOf(context).app_name_footer,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRRSSTextButtonButton({
    required String imagePath,
    required Function() onPressed,
  }) {
    return Container(
      height: 28,
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 10,
      ),
      child: TextButton(
        child: Image(
          image: AssetImage(imagePath),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
