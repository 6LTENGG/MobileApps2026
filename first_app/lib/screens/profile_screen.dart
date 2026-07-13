import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 30, color: AppColors.textPrimary),
        title: Text('Profile Settings', style: AppTextStyles.topic),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Profile Screen', style: AppTextStyles.topic)),
          const SizedBox(height: 16),
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.accentColor,
            backgroundImage: const AssetImage('assets/images/profile_picture.jpg'),
          ),

          SizedBox(height: 20),
          Text('Kiki Monroe', style: AppTextStyles.detail),
          SizedBox(height: 8),
          Text('kiki.monroe@example.com', style: AppTextStyles.detail),
  
        ],
      ),
    );
  }
}