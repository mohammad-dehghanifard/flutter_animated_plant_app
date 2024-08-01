import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/pages/home_page.dart';
import 'package:animated_plant_app/widgets/custom_text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthPageState state = AuthPageState.login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/plantbg.jpg"),fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: double.infinity,
                      height: state == AuthPageState.login? 280 : 450,
                      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: backgroundColor.withOpacity(0.70)
                      ),
                      child: Column(
                        children: [
                          // header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    state = AuthPageState.login;
                                  });
                                },
                                  child: AnimatedDefaultTextStyle(style: TextStyle(fontFamily: 'shabnam',fontSize: 20,fontWeight: FontWeight.bold,color: state == AuthPageState.login ? greenDarkText : Colors.white), duration: const Duration(milliseconds: 500), child:  const Text("ورود"))),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    state = AuthPageState.register;
                                  });
                                },
                                  child: AnimatedDefaultTextStyle(style: TextStyle(fontFamily: 'shabnam',fontSize: 20,fontWeight: FontWeight.bold,color: state == AuthPageState.register ? greenDarkText : Colors.white), duration: const Duration(milliseconds: 500), child:   const Text("ثبت نام"))),
                            ],
                          ),
                          const SizedBox(height: 12),
                          AnimatedCrossFade(
                            firstChild: const LoginFormsWidget(),
                            secondChild: const RegisterFormsWidget(),
                            crossFadeState:  state == AuthPageState.login? CrossFadeState.showFirst : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 450),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }




}

class RegisterFormsWidget extends StatelessWidget {
  const RegisterFormsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
            hintText: "نام کاربری خود را وارد کنید...", icon: Icons.person),
        const SizedBox(height: 24),
        const CustomTextField(
            hintText: "ایمیل خود را وارد کنید...", icon: Icons.email),
        const SizedBox(height: 24),
        const CustomTextField(
            hintText: "شماره تماس خود را وارد کنید...", icon: CupertinoIcons.device_phone_portrait),
        const SizedBox(height: 24),
        const CustomTextField(
            hintText: "رمز عبور خود را وارد کنید...", icon: Icons.password),
        const SizedBox(height: 32),

        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
          },
          style: ButtonStyle(
              minimumSize: const WidgetStatePropertyAll(Size(250, 40)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(greenDarkText)),
          child: const Text(
            "ثبت نام",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class LoginFormsWidget extends StatelessWidget {
  const LoginFormsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
            hintText: "ایمیل خود را وارد کنید...", icon: Icons.email),
        const SizedBox(height: 24),
        const CustomTextField(
            hintText: "رمز عبور خود را وارد کنید...", icon: Icons.password),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
          },
          style: ButtonStyle(
              minimumSize: const WidgetStatePropertyAll(Size(250, 40)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(greenDarkText)),
          child: const Text(
            "ورود",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}


enum AuthPageState {login,register}