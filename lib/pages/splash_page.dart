import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 750));
    animation = Tween<double>(begin: 0,end: 1.0).animate(animationController);
    animationController.forward();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const Spacer(),
                // logo
                AnimatedBuilder(animation: animation, builder: (context, child) => AnimatedOpacity(
                    duration: animationController.duration!,
                    opacity: animation.value,
                    child: Column(
                      children: [
                        Image.asset("assets/images/logo.png",height: 160),
                      ],
                    )),),
                SizedBox(
                  height: 16,
                    width: 16,
                    child: CircularProgressIndicator(color: greenDark,strokeWidth: 2,)),
                const Spacer(),
                const Text("ورژن 1.0.0",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
