import 'package:animated_plant_app/constants/app_colors.dart';
import 'package:animated_plant_app/models/plant_model.dart';
import 'package:animated_plant_app/widgets/icon_button_widget.dart';
import 'package:animated_plant_app/widgets/text_info_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.plant});
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(plant.title,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700)),
                        Text("${plant.price} تومان",style: TextStyle(color: greenDark,fontSize: 18),),
                      ],
                    ),
                    const Spacer(),
                    IconButtonWidget(
                        onTap: () => Navigator.pop(context),
                        icon: Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              // info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextInfoWidget(title: "سایز",info: plant.size),
                  TextInfoWidget(title: "جنس برگ",info: plant.crust),
                  TextInfoWidget(title: "زمان تحویل",info: plant.delivery),
                ],
              ),
              const SizedBox(height: 32),
              // plant
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: _buildPlantCard(),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: _buildButtons(),
                      ),
                      const SizedBox(height: 12,),
                      Container(
                        width: 60,
                        height: 120,
                        decoration: BoxDecoration(
                            color: greenLight,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RotatedBox(
                              quarterTurns: -1,
                                child: Text("گیاهان مشابه",style: TextStyle(fontSize: 14))),
                              Icon(Icons.arrow_forward_ios_rounded,size: 14,)
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 24),
              // related plants
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("محصولات مرتبط",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700)),
              ),
              Row(
                children: List.generate(
                  plant.relatedImagePath.length,
                      (index) => SizedBox(
                            width: 120,
                          height: 120,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right:  index == 0 ? 20.0 : 0,
                              left: 12
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                  plant.relatedImagePath[index],
                                  fit: BoxFit.cover,
                              ),
                            ),
                          )
                      ),
                ),
              ),
              const SizedBox(height: 32,)
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtons() {
    return Column(
      children: [
        IconButtonWidget(icon: Icons.share,color: greenDark),
        const SizedBox(height: 8),
        const IconButtonWidget(icon: Icons.favorite_border,color: Colors.grey),
      ],
    );
  }

  Widget _buildPlantCard() {
    return Center(
      child: Container(
        width: 280,
        height: 380,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration:  BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: greenLight,
                  blurRadius: 1,
                  offset:  const Offset(5, 0)
              )
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            )
        ),
        child:      Hero(
            tag: plant.imagePath,
            child: Image.asset(plant.imagePath)),
      ),
    );
  }

}


