import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Messages",
              style: TextStyle(
                color: AppColors.offWhite,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  const MessageTile(
                    name: "Sarah Jhonson",
                    message: "Is the appartment still available",
                    time: "2m ago",
                  ),
                  MessageTile(
                    name: "John Smith",
                    message: "Can I schedule a viewing tomorrow?",
                    time: "15m ago",
                  ),
                  MessageTile(
                    name: "David Wilson",
                    message: "What's the final price?",
                    time: "1h ago",
                  ),
                  MessageTile(
                    name: "Emily Brown",
                    message: "Thank you for the information.",
                    time: "3h ago",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Message tile
class MessageTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const MessageTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withOpacity(0.2)),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: AppColors.gold,
          child: Icon(Icons.person, color: AppColors.navyDark),
        ),
        title: Text(
          name,
          style: TextStyle(
            color: AppColors.offWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: AppColors.goldLight),
        ),
        trailing: Text(
          time,
          style: TextStyle(color: AppColors.goldLight, fontSize: 12),
        ),
      ),
    );
  }
}
