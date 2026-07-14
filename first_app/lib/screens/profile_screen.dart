import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.screenGradientTop,
              AppColors.screenGradientBottom,
            ],
            stops: [0.0, 0.35],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTopBar(context),
                const SizedBox(height: 12),
                const SizedBox(height: 12),
                _buildProfileHeader(),
                const SizedBox(height: 12),
                const Divider(thickness: 1),
                const SizedBox(height: 12),
                _buildPromoCardsRow(),
                const SizedBox(height: 12),
                const Divider(thickness: 1),
                const SizedBox(height: 12),
                Text('Quick Overview', style: AppTextStyles.topic),
                const SizedBox(height: 12),
                _buildQuickOverview(),
                const SizedBox(height: 12),
                const Divider(thickness: 1),
                const SizedBox(height: 12),
                _buildPremiumCard(),
                const SizedBox(height: 12),
                const Divider(thickness: 1),
                const SizedBox(height: 12),
                Text('Account', style: AppTextStyles.topic),
                const SizedBox(height: 12),
                _buildInfoListCard(),
                const SizedBox(height: 12),
                const Divider(thickness: 1),
                const SizedBox(height: 12),
                Text('Support', style: AppTextStyles.topic),
                const SizedBox(height: 12),
                _buildSupportList(),
                const SizedBox(height: 20),
                Center(child: Text('Version 1.0.0', style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent))),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).maybePop(),
          borderRadius: BorderRadius.circular(20),
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.arrow_back_ios_new, size: 20, color: AppColors.textPrimary),
          ),
        ),
        Text('Profile', style: AppTextStyles.topic),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: AppColors.bgPrimary,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6, offset: const Offset(0, 2)),
            ],
          ),
          child: const Icon(Icons.settings_outlined, size: 20, color: AppColors.textPrimary),
        ),
      ],
    );
  }

  Widget _buildAvatarAndGreeting() {
    return Column(
      children: [
        CircleAvatar(
          radius: 42,
          backgroundColor: AppColors.purpleIconBg,
          backgroundImage: const AssetImage('assets/images/profile_picture.jpg'),
          onBackgroundImageError: (_, __) {},
          child: const Align(
            alignment: Alignment.center,
            child: SizedBox.shrink(),
          ),
        ),
        const SizedBox(height: 12),
        Text('Hello, Michael', style: AppTextStyles.topic.copyWith(fontSize: 20)),
        const SizedBox(height: 4),
        Text('michael89@gmail.com', style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent)),
      ],
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.bgPrimary,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 44,
                backgroundColor: AppColors.purpleIconBg,
                backgroundImage: const AssetImage('assets/images/profile_picture.jpg'),
                onBackgroundImageError: (_, __) {},
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(color: AppColors.pinkAccent, shape: BoxShape.circle),
                  child: const Icon(Icons.edit, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text('Welcome Back 👋', style: AppTextStyles.topic.copyWith(fontSize: 18)),
          const SizedBox(height: 6),
          Text('Kiki', style: AppTextStyles.topic.copyWith(fontSize: 20)),
          const SizedBox(height: 6),
          Text('kiki@mail.com', style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent)),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit, size: 16),
            label: const Text('Edit Profile'),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: AppColors.pinkAccent.withOpacity(0.8)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickOverview() {
    Widget item(IconData icon, String value, String label, Color bg) {
      return Expanded(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
              child: Icon(icon, size: 20, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(value, style: AppTextStyles.detail.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            Text(label, style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent)),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.bgPrimary, borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          item(Icons.shopping_bag_outlined, '24', 'Orders', AppColors.pinkAccent),
          const SizedBox(width: 12),
          item(Icons.favorite_border, '12', 'Wishlist', AppColors.primaryColor),
          const SizedBox(width: 12),
          item(Icons.card_giftcard, '6', 'Coupons', AppColors.purpleIconBg),
          const SizedBox(width: 12),
          item(Icons.star_border, '1,250', 'Points', AppColors.secondaryColor),
        ],
      ),
    );
  }

  Widget _buildPromoCardsRow() {
    return Row(
      children: [
        Expanded(
          child: _PromoCard(
            badgeText: 'Coupon',
            title: 'Your Coupons',
            subtitle: 'Available discounts for you',
            icon: Icons.local_offer_outlined,
            iconBg: AppColors.pinkIconBg,
            iconColor: AppColors.pinkAccent,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _PromoCard(
            badgeText: 'Orders',
            title: 'Recent Orders',
            subtitle: 'Stay updated on your orders',
            icon: Icons.receipt_long,
            iconBg: AppColors.purpleIconBg,
            iconColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoListCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgPrimary,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        children: [
          _InfoTile(
            icon: Icons.person_outline,
            title: 'Personal Information',
            subtitle: 'Manage your account details',
            iconBg: AppColors.purpleIconBg,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.link,
            title: 'Linked accounts',
            subtitle: 'Manage your security',
            iconBg: AppColors.pinkIconBg,
            iconColor: AppColors.pinkAccent,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.location_on_outlined,
            title: 'Addresses',
            subtitle: 'Manage your delivery addresses',
            iconBg: AppColors.secondaryColor,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.credit_card,
            title: 'Payment Methods',
            subtitle: 'Manage your payment options',
            iconBg: AppColors.purpleIconBg,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.notifications_none,
            title: 'Notifications',
            subtitle: 'Manage your notification preferences',
            iconBg: AppColors.pinkIconBg,
            iconColor: AppColors.pinkAccent,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.lock_outline,
            title: 'Security',
            subtitle: 'Manage your security settings',
            iconBg: AppColors.secondaryColor,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.bgPrimary,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.workspace_premium, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Premium Membership', style: AppTextStyles.detail.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 6),
                Text('Enjoy exclusive perks and offers', style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent)),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Join')),
        ],
      ),
    );
  }

  Widget _buildSupportList() {
    return Container(
      decoration: BoxDecoration(color: AppColors.bgPrimary, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          _InfoTile(
            icon: Icons.help_outline,
            title: 'Help Center',
            subtitle: 'Get help and support',
            iconBg: AppColors.purpleIconBg,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.info_outline,
            title: 'About App',
            subtitle: 'Information about the app',
            iconBg: AppColors.secondaryColor,
            iconColor: AppColors.primaryColor,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          _InfoTile(
            icon: Icons.star_border,
            title: 'Rate App',
            subtitle: 'Leave a rating',
            iconBg: AppColors.pinkIconBg,
            iconColor: AppColors.pinkAccent,
            onTap: () {},
          ),
          const Divider(height: 1, indent: 64, endIndent: 16),
          ListTile(
            onTap: () {},
            leading: Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: AppColors.pinkIconBg, shape: BoxShape.circle), child: const Icon(Icons.logout, size: 18, color: Colors.red)),
            title: Text('Logout', style: AppTextStyles.detail.copyWith(fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: 3,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.textAccent,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: 'Collection'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}

 

class _PromoCard extends StatelessWidget {
  final String? badgeText;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBg;
  final Color iconColor;

  const _PromoCard({
    required this.badgeText,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.bgPrimary,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (badgeText != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.pinkAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    badgeText!,
                    style: AppTextStyles.subTopic.copyWith(color: Colors.white, fontSize: 10),
                  ),
                )
              else
                const SizedBox.shrink(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: iconBg, shape: BoxShape.circle),
                child: Icon(icon, size: 18, color: iconColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: AppTextStyles.detail.copyWith(fontWeight: FontWeight.w600),
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconBg;
  final Color iconColor;
  final VoidCallback onTap;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconBg,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: iconBg, shape: BoxShape.circle),
        child: Icon(icon, size: 18, color: iconColor),
      ),
      title: Text(title, style: AppTextStyles.detail.copyWith(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: AppTextStyles.subTopic.copyWith(color: AppColors.textAccent)),
      trailing: const Icon(Icons.chevron_right, color: AppColors.textAccent),
    );
  }
}