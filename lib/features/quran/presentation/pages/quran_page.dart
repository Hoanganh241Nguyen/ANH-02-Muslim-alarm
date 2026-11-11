import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../language/generated/app_localizations.dart';
import '../provider/quran_provider.dart';
import '../../domain/entities/surah.dart';
import '../widgets/continue_reading_card.dart';
import '../widgets/quran_header.dart';
import '../widgets/quran_surah_list.dart';
import '../widgets/surah_picker_sheet.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _tabsKey = GlobalKey();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    AnalyticsService().trackScreenView('quran_page', source: 'page_init');
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        AnalyticsService().trackButtonTap(
          'quran',
          'tab_${_quranTabName(_tabController.index)}',
        );
      }
      setState(() {}); // Refresh to update view based on tab
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  String _quranTabName(int index) {
    switch (index) {
      case 0:
        return 'surah';
      case 1:
        return 'juz';
      case 2:
        return 'bookmarks';
      case 3:
        return 'page';
      default:
        return 'unknown';
    }
  }

  void _scrollToQuranList() {
    final tabsContext = _tabsKey.currentContext;
    if (tabsContext == null) return;
    Scrollable.ensureVisible(
      tabsContext,
      duration: const Duration(milliseconds: 420),
      curve: Curves.easeOutCubic,
    );
  }

  Future<void> _showSurahPicker(
    QuranProvider provider,
    Surah selectedSurah,
  ) async {
    AnalyticsService().trackButtonTap(
      'quran',
      'continue_surah_picker_open',
      params: {'current_surah': selectedSurah.number},
    );
    final picked = await showModalBottomSheet<Surah>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SurahPickerSheet(
        surahs: provider.surahs,
        selectedSurah: selectedSurah,
      ),
    );
    if (picked == null) return;
    AnalyticsService().trackButtonTap(
      'quran',
      'continue_surah_select',
      params: {
        'from_surah': selectedSurah.number,
        'to_surah': picked.number,
        'to_surah_name': picked.englishName,
      },
    );
    provider.saveLastRead(picked, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Reveal global background
      body: SafeArea(
        child: Column(
          children: [
            QuranHeader(
              isSearching: _isSearching,
              searchController: _searchController,
              tabIndex: _tabController.index,
              onSearchToggle: () {
                HapticFeedback.lightImpact();
                AnalyticsService().trackButtonTap(
                  'quran',
                  _isSearching ? 'search_close' : 'search_open',
                );
                if (_isSearching) {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                }

                setState(() {
                  _isSearching = !_isSearching;
                  if (!_isSearching) {
                    _searchController.clear();
                    context.read<QuranProvider>().searchSurah('');
                  }
                });
              },
              onSearchChanged: (value) {
                if (value.trim().length == 1) {
                  AnalyticsService().trackButtonTap('quran', 'search_type');
                }
                context.read<QuranProvider>().searchSurah(value);
              },
              onBookmarkTap: () {
                HapticFeedback.lightImpact();
                AnalyticsService().trackButtonTap('quran', 'bookmark_tab_open');
                if (_isSearching) {
                  setState(() {
                    _isSearching = false;
                    _searchController.clear();
                    context.read<QuranProvider>().searchSurah('');
                  });
                }
                _tabController.animateTo(2);
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _scrollToQuranList();
                });
              },
            ),
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: _isSearching
                          ? const SizedBox.shrink()
                          : ContinueReadingCard(
                              onShowSurahPicker: _showSurahPicker,
                            ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: KeyedSubtree(
                      key: _tabsKey,
                      child: _buildSegmentedTabs(),
                    ),
                  ),
                  // Listen here so the list fills in once surahs finish
                  // loading, even if this tab was built before that.
                  Consumer<QuranProvider>(
                    builder: (context, provider, _) => QuranSurahList(
                      provider: provider,
                      tabIndex: _tabController.index,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegmentedTabs() {
    final accent = AppColors.adaptiveAccent(context);
    final l10n = AppLocalizations.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      height: 45,
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        indicatorColor: accent,
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: accent,
        unselectedLabelColor: AppColors.adaptiveSecondaryText(context),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        tabs: [
          Tab(text: l10n.surah),
          Tab(text: l10n.juz2),
          Tab(text: l10n.bookmarks),
          // l10n.page is upper case for the page grid; match the other tabs.
          Tab(
            text:
                l10n.page.substring(0, 1).toUpperCase() +
                l10n.page.substring(1).toLowerCase(),
          ),
        ],
      ),
    );
  }
}
