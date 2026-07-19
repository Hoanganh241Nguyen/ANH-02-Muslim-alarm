import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/gamification_provider.dart';

class GamificationPage extends StatelessWidget {
  const GamificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Consumer<GamificationProvider>(
          builder: (context, provider, child) {
            final stats = provider.stats;
            
            return CustomScrollView(
              slivers: [
                _buildSliverHeader(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        _buildHasanatCard(stats?.hasanat ?? 0),
                        const SizedBox(height: 24),
                        _buildStreakSection(stats?.streakCount ?? 0),
                        const SizedBox(height: 32),
                        _buildDailyQuestsHeader(),
                        const SizedBox(height: 16),
                        _buildQuestItem(
                          'Quran Recitation',
                          'Listen to or read any Ayah today',
                          '10',
                          true,
                        ),
                        _buildQuestItem(
                          'Daily Tasbih',
                          'Complete at least 33 dhikr',
                          '20',
                          false,
                        ),
                        _buildQuestItem(
                          'Qibla Finder',
                          'Calibrate your direction',
                          '5',
                          false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSliverHeader() {
    return SliverAppBar(
      expandedHeight: 120,
      backgroundColor: Colors.transparent,
      floating: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        centerTitle: false,
        title: const Text(
          'Hasanat Hub',
          style: TextStyle(
            color: AppColors.primaryText,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Serif',
          ),
        ),
      ),
    );
  }

  Widget _buildHasanatCard(int amount) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFBBF24), Color(0xFFD97706)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFD97706).withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'TOTAL HASANAT',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.stars_rounded, color: Colors.white, size: 40),
              const SizedBox(width: 12),
              Text(
                '$amount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Keep it up! You\'re doing great.',
              style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakSection(int streak) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFFEF3C7).withOpacity(0.5), width: 2),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFEF3C7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.local_fire_department_rounded, color: Color(0xFFD97706), size: 30),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$streak DAYS',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryText,
                      ),
                    ),
                    const Text(
                      'Current Streak',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.secondaryText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDailyQuestsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Daily Quests',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('View All', style: TextStyle(color: AppColors.emerald)),
        ),
      ],
    );
  }

  Widget _buildQuestItem(String title, String desc, String reward, bool isDone) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        border: isDone ? Border.all(color: AppColors.emerald.withOpacity(0.3), width: 1) : null,
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isDone ? AppColors.emerald.withOpacity(0.1) : Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              isDone ? Icons.check_circle_rounded : Icons.radio_button_off_rounded,
              color: isDone ? AppColors.emerald : AppColors.secondaryText,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: isDone ? AppColors.secondaryText : AppColors.primaryText,
                    decoration: isDone ? TextDecoration.lineThrough : null,
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(fontSize: 12, color: AppColors.secondaryText),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFFEF3C7),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '+$reward',
              style: const TextStyle(
                color: Color(0xFFD97706),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

