import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/base_app_bar.dart';
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
                _buildSliverHeader(context),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        _buildHasanatCard(context, stats?.hasanat ?? 0),
                        const SizedBox(height: 24),
                        _buildStreakSection(context, stats?.streakCount ?? 0),
                        const SizedBox(height: 32),
                        _buildDailyQuestsHeader(context),
                        const SizedBox(height: 16),
                        _buildQuestItem(
                          context,
                          AppLocalizations.of(context).quranRecitation,
                          AppLocalizations.of(context).listenToOrReadAnyAyahToday,
                          '10',
                          true,
                        ),
                        _buildQuestItem(
                          context,
                          AppLocalizations.of(context).dailyTasbih,
                          AppLocalizations.of(context).completeAtLeast33Dhikr,
                          '20',
                          false,
                        ),
                        _buildQuestItem(
                          context,
                          AppLocalizations.of(context).qiblaFinder,
                          AppLocalizations.of(context).calibrateYourDirection,
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

  Widget _buildSliverHeader(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120,
      backgroundColor: Colors.transparent,
      floating: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        centerTitle: false,
        title: Text(
          AppLocalizations.of(context).hasanatHub,
          style: AppBarTextStyles.title(
            context,
            color: AppColors.adaptiveText(context),
          ),
        ),
      ),
    );
  }

  Widget _buildHasanatCard(BuildContext context, int amount) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.hasanatGold, AppColors.amber],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.amber.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context).totalHasanat,
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
              const Icon(AppIcons.stars, color: Colors.white, size: 40),
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
              color: Colors.black.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              AppLocalizations.of(context).keepItUpYouReDoingGreat,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakSection(BuildContext context, int streak) {
    final isDark = AppColors.isDark(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.adaptiveCard(context, lightAlpha: 0.7),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: AppColors.adaptiveBorder(context, alpha: 0.1),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.softGold.withValues(alpha: 0.12)
                        : AppColors.streakBg,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    AppIcons.localFireDepartment,
                    color: isDark ? AppColors.softGold : AppColors.amber,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$streak DAYS',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.adaptiveText(context),
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context).currentStreak,
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.adaptiveSecondaryText(context),
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

  Widget _buildDailyQuestsHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppLocalizations.of(context).dailyQuests,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.adaptiveText(context),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            AppLocalizations.of(context).viewAll,
            style: TextStyle(color: AppColors.emerald),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestItem(
    BuildContext context,
    String title,
    String desc,
    String reward,
    bool isDone,
  ) {
    final isDark = AppColors.isDark(context);
    final textColor = AppColors.adaptiveText(context);
    final secondaryTextColor = AppColors.adaptiveSecondaryText(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.7),
        borderRadius: BorderRadius.circular(20),
        border: isDone
            ? Border.all(
                color: AppColors.emerald.withValues(alpha: 0.3),
                width: 1,
              )
            : Border.all(color: AppColors.adaptiveBorder(context), width: 1),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isDone
                  ? AppColors.emerald.withValues(alpha: 0.1)
                  : AppColors.adaptiveMutedSurface(context),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              isDone
                  ? AppIcons.checkCircle
                  : AppIcons.radioButtonOff,
              color: isDone ? AppColors.emerald : secondaryTextColor,
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
                    color: isDone ? secondaryTextColor : textColor,
                    decoration: isDone ? TextDecoration.lineThrough : null,
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(fontSize: 12, color: secondaryTextColor),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.softGold.withValues(alpha: 0.15)
                  : AppColors.streakBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '+$reward',
              style: TextStyle(
                color: isDark ? AppColors.softGold : AppColors.amber,
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
