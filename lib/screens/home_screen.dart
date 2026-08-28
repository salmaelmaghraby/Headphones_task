import 'package:first_project/core/constants/app_colors.dart';
import 'package:first_project/core/constants/button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isAddedToCart = false;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        width: 315,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1.5,
            ),
            boxShadow: [
        BoxShadow(
        color: Colors.black.withValues(alpha: 0.04),
        blurRadius: 10,
      ),],),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.asset("assets/images/Headphoenes image.webp" , width: 270,height: 170),
              ),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16.0,
                children: [
                  Text("Wireless Headphones",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      fontStyle: FontStyle.normal,


                    ),
                  ),
                  Text("High quality sound with deep bass",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black.withValues(alpha: 0.9),
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(r'$59.99',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text('Enjoy your favorite music with our premium\nwireless headphones.',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black.withValues(alpha: 0.9),
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  ButtonWidget(),

                ],
              ),
            ],
          ),
        ),
      ),

        );
  }
}
