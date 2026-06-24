import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile page")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.offWhite,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.navy,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.gold.withValues(alpha: 0.3)),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundColor: AppColors.gold,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: AppColors.navyDark,
                      ),
                    ),

                    const SizedBox(height: 12),
                    const Text(
                      "Nazim Uddin",
                      style: TextStyle(
                        color: AppColors.offWhite,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),

                    const Text(
                      "nazimdev10022001@gmail.com",
                      style: TextStyle(color: AppColors.goldLight),
                    ),
                    const SizedBox(height: 12),

                    _ProfileTile(
                      icon: Icons.home_work_outlined,
                      title: "My Properties",
                    ),
                    _ProfileTile(
                      icon: Icons.favorite_outline,
                      title: "Saved Properties",
                    ),

                    _ProfileTile(
                      icon: Icons.notifications_none,
                      title: "Notifications",
                    ),

                    _ProfileTile(
                      icon: Icons.settings_outlined,
                      title: "Settings",
                    ),

                    _ProfileTile(
                      icon: Icons.help_outline,
                      title: "Help & Support",
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.gold,
                          foregroundColor: AppColors.navyDark,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Logout",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
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

//================= _ProfileTitle================
class _ProfileTile extends StatelessWidget {
  const _ProfileTile({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withValues(alpha: 0.2)),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.gold),
        title: Text(
          title,
          style: TextStyle(color: AppColors.offWhite, fontSize: 16),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: AppColors.goldLight,
        ),
      ),
    );
  }
}
