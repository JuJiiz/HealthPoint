import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healtpoint/general/app_version_text_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
     _delayBeforeNext(_navigateToHome);
  }

  _delayBeforeNext(Function() onSuccess) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    onSuccess();
  }

  _navigateToHome() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: SvgPicture.asset('assets/images/ic_splash_logo.svg'),
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: AppVersionTextView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
