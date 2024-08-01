import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

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
                    Container(
                      width: double.infinity,
                      height: 500,
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
                              Text("ورود",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: greenDarkText)),
                              const Text("ثبت نام",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Column(
                            children: [
                              const CustomTextField(hintText: "ایمیل خود را وارد کنید...",icon: Icons.email),
                              const SizedBox(height: 24),
                              const CustomTextField(hintText: "رمز عبور خود را وارد کنید...",icon: Icons.password),

                              ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    minimumSize: const WidgetStatePropertyAll(Size(250,40)),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    backgroundColor: WidgetStatePropertyAll(greenDarkText)
                                  ),
                                  child: const Text("ورود",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              )
                            ],
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


