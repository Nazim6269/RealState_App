import 'package:flutter/material.dart';
import './core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyDark,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [
                      Text(
                        "Welcome Back 👋",
                        style: TextStyle(
                          color: AppColors.goldLight,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        "Find Your Dream Home",
                        style: TextStyle(
                          color: AppColors.offWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: AppColors.gold,
                    child: Icon(Icons.person, color: AppColors.navyDark),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Search
              TextField(
                style: const TextStyle(color: AppColors.offWhite),

                decoration: InputDecoration(
                  hintText: "Search properties...",
                  hintStyle: TextStyle(
                    color: AppColors.offWhite.withOpacity(0.6),
                  ),

                  prefixIcon: const Icon(Icons.search, color: AppColors.gold),

                  filled: true,
                  fillColor: AppColors.navy,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: AppColors.gold),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // Categories
              const Text(
                "Categories",
                style: TextStyle(
                  color: AppColors.offWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _CategoryChip("House"),
                    _CategoryChip("Apartment"),
                    _CategoryChip("Villa"),
                    _CategoryChip("Office"),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // Featured Properties
              const Text(
                "Featured Properties",
                style: TextStyle(
                  color: AppColors.offWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const PropertyCard(
                title: "Modern Apartment",
                location: "Dhaka, Bangladesh",
                price: "\$1,200/month",
              ),

              const SizedBox(height: 16),

              const PropertyCard(
                title: "Luxury Villa",
                location: "Gulshan, Dhaka",
                price: "\$3,500/month",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= Category Chip =================

class _CategoryChip extends StatelessWidget {
  final String title;

  const _CategoryChip(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),

      child: Chip(
        backgroundColor: AppColors.navy,

        shape: StadiumBorder(
          side: BorderSide(color: AppColors.gold.withOpacity(0.4)),
        ),

        label: Text(
          title,
          style: const TextStyle(
            color: AppColors.goldLight,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

// ================= Property Card =================

class PropertyCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;

  const PropertyCard({
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

        border: Border.all(color: AppColors.gold.withOpacity(0.25)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 180,

            decoration: const BoxDecoration(
              color: AppColors.navyLight,

              borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            ),

            child: const Center(
              child: Icon(
                Icons.home_work_rounded,
                size: 60,
                color: AppColors.gold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,

                  style: const TextStyle(
                    color: AppColors.offWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  location,

                  style: const TextStyle(color: AppColors.goldLight),
                ),

                const SizedBox(height: 12),

                Text(
                  price,

                  style: const TextStyle(
                    color: AppColors.gold,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
