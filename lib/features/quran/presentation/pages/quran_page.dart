import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../provider/quran_provider.dart';
import '../../domain/entities/surah.dart';
import 'surah_detail_page.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Refresh to update view based on tab
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Reveal global background
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: _buildContinueReading()),
                  SliverToBoxAdapter(child: _buildQuickAccess()),
                  SliverToBoxAdapter(child: _buildSegmentedTabs()),
                  _buildSurahList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              if (!_isSearching)
                const Text(
                  'Quran',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryText,
                    letterSpacing: -0.5,
                  ),
                )
              else
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search Surah...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: AppColors.secondaryText.withOpacity(0.5)),
                    ),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    onChanged: (value) {
                      context.read<QuranProvider>().searchSurah(value);
                    },
                  ),
                ),
              const Spacer(),
              _buildHeaderIcon(
                _isSearching ? Icons.close_rounded : Icons.search_rounded,
                () {
                  setState(() {
                    _isSearching = !_isSearching;
                    if (!_isSearching) {
                      _searchController.clear();
                      context.read<QuranProvider>().searchSurah('');
                    }
                  });
                },
              ),
              const SizedBox(width: 12),
              _buildHeaderIcon(Icons.bookmark_outline_rounded, () {
                _tabController.animateTo(0); // For now, or implement a bookmarks filter
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderIcon(IconData icon, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.primaryText, size: 22),
        onPressed: onTap,
      ),
    );
  }

  Widget _buildContinueReading() {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        final lastSurah = provider.lastReadSurah ?? provider.surahs.firstOrNull;
        if (lastSurah == null) return const SizedBox.shrink();

        return Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.emerald, Color(0xFF1ABC9C)],
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: AppColors.emerald.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.menu_book_rounded, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Continue Reading',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                lastSurah.englishName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Ayah No: ${provider.lastReadAyah ?? 1}',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: (provider.lastReadAyah ?? 1) / lastSurah.numberOfAyahs,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                        minHeight: 6,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurahDetailPage(surah: lastSurah),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.emerald,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Continue', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildQuickAccess() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.6,
        children: [
          _buildQuickAccessItem('Surah', Icons.format_list_bulleted_rounded, AppColors.emerald, () => _tabController.animateTo(0)),
          _buildQuickAccessItem('Juz', Icons.grid_view_rounded, Colors.orange, () => _tabController.animateTo(1)),
          _buildQuickAccessItem('Bookmarks', Icons.bookmark_rounded, Colors.redAccent, () => _tabController.animateTo(2)),
          _buildQuickAccessItem('Recent', Icons.history_rounded, Colors.blueAccent, () {
             // Future: Implement recent
          }),
        ],
      ),
    );
  }

  Widget _buildQuickAccessItem(String title, IconData icon, Color color, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color, size: 24),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSegmentedTabs() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 45,
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        indicatorColor: AppColors.emerald,
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: AppColors.emerald,
        unselectedLabelColor: AppColors.secondaryText,
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        tabs: const [
          Tab(text: 'Surah'),
          Tab(text: 'Juz'),
          Tab(text: 'Bookmarks'),
          Tab(text: 'Page'),
        ],
      ),
    );
  }

  Widget _buildSurahList() {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading && provider.surahs.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator(color: AppColors.emerald)),
          );
        }

        if (_tabController.index == 0) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final surah = provider.surahs[index];
                  return _buildSurahItem(surah, provider);
                },
                childCount: provider.surahs.length,
              ),
            ),
          );
        } else if (_tabController.index == 1) {
          // Tab Juz
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final juzNumber = index + 1;
                  return _buildJuzItem(juzNumber, provider);
                },
                childCount: 30,
              ),
            ),
          );
        } else if (_tabController.index == 2) {
          // Tab Bookmarks
          if (provider.bookmarks.isEmpty) {
            return const SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bookmark_border_rounded, size: 64, color: AppColors.secondaryText),
                    SizedBox(height: 16),
                    Text('No bookmarks yet', style: TextStyle(color: AppColors.secondaryText)),
                  ],
                ),
              ),
            );
          }
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final ayah = provider.bookmarks[index];
                  final surah = provider.surahs.firstWhere((s) => s.number == ayah.surahNumber);
                  return _buildBookmarkItem(ayah, surah, provider);
                },
                childCount: provider.bookmarks.length,
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Center(
                child: Text(
                  'Coming Soon...',
                  style: TextStyle(color: AppColors.secondaryText),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget _buildSurahItem(Surah surah, QuranProvider provider) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Stack(
          alignment: Alignment.center,
          children: [
            const Icon(Icons.star_outline_rounded, color: AppColors.emerald, size: 40),
            Text(
              '${surah.number}',
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
        title: Text(
          surah.englishName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.primaryText,
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              surah.revelationType.toUpperCase(),
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.secondaryText),
            ),
            const SizedBox(width: 8),
            Container(width: 3, height: 3, decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
            const SizedBox(width: 8),
            Text(
              '${surah.numberOfAyahs} AYAHS',
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.secondaryText),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              surah.name,
              style: const TextStyle(
                fontFamily: 'Arabic',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.emerald,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.chevron_right_rounded, color: AppColors.secondaryText),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurahDetailPage(surah: surah),
            ),
          );
        },
      ),
    );
  }

  Widget _buildJuzItem(int juzNumber, QuranProvider provider) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Logic to go to first surah of Juz
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Juz $juzNumber selected')),
            );
          },
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: AppColors.accentEmerald,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '$juzNumber',
                    style: const TextStyle(
                      color: AppColors.emerald,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'JUZ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryText,
                  letterSpacing: 1,
                ),
              ),
              Text(
                'Part $juzNumber',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.secondaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookmarkItem(dynamic ayah, Surah surah, QuranProvider provider) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.accentEmerald,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.bookmark_rounded, color: AppColors.emerald, size: 20),
        ),
        title: Text(
          '${surah.englishName} : ${ayah.number}',
          style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryText),
        ),
        subtitle: Text(
          ayah.text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontFamily: 'Arabic', color: AppColors.secondaryText),
        ),
        trailing: const Icon(Icons.chevron_right_rounded, color: AppColors.secondaryText),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurahDetailPage(surah: surah),
            ),
          );
        },
      ),
    );
  }
}
