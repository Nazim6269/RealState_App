import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/app_colors.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saved Properties",
                style: TextStyle(
                  color: AppColors.offWhite,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: [
                    SavedPropertyCard(
                      title: "Modern Apartment",

                      location: "Dhaka, Bangladesh",

                      price: "\$1,200/month",
                    ),

                    SizedBox(height: 16),

                    SavedPropertyCard(
                      title: "Luxury Villa",

                      location: "Gulshan, Dhaka",

                      price: "\$3,500/month",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//================ Saved Property card==============
class SavedPropertyCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  const SavedPropertyCard({
    super.key,
    required this.title,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.2)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: AppColors.navyLight,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.home_work_outlined,
                color: AppColors.gold,
                size: 40,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.offWhite,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(location, style: TextStyle(color: AppColors.goldLight)),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
                      color: AppColors.goldLight,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.favorite, color: AppColors.gold),
          ],
        ),
      ),
    );
  }
}
