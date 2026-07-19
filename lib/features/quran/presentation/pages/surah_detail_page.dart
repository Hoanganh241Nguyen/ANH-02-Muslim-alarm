import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../provider/quran_provider.dart';
import '../../domain/entities/ayah.dart';
import '../../domain/entities/surah.dart';

class SurahDetailPage extends StatefulWidget {
  final Surah surah;
  const SurahDetailPage({super.key, required this.surah});

  @override
  State<SurahDetailPage> createState() => _SurahDetailPageState();
}

class _SurahDetailPageState extends State<SurahDetailPage> {
  final Map<int, GlobalKey> _itemKeys = {};
  Ayah? _lastScrolledAyah;

  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<QuranProvider>(context, listen: false).loadSurahDetail(widget.surah));
  }

  void _scrollToCurrentAyah(Ayah? currentAyah, List<Ayah> ayahs) {
    if (currentAyah == null || ayahs.isEmpty) return;
    if (_lastScrolledAyah?.number == currentAyah.number &&
        _lastScrolledAyah?.surahNumber == currentAyah.surahNumber) {
      return;
    }

    final index = ayahs.indexWhere((a) =>
        a.number == currentAyah.number && a.surahNumber == currentAyah.surahNumber);

    if (index != -1) {
      _lastScrolledAyah = currentAyah;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final key = _itemKeys[index];
        if (key?.currentContext != null) {
          Scrollable.ensureVisible(
            key!.currentContext!,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOutCubic,
            alignment: 0.3,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        final ayahs = provider.ayahs;
        _scrollToCurrentAyah(provider.currentAyah, ayahs);

        return Scaffold(
          backgroundColor: AppColors.ivory,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.primaryText, size: 20),
              onPressed: () => Navigator.pop(context),
            ),
            title: Column(
              children: [
                Text(
                  widget.surah.englishName,
                  style: const TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.surah.englishTranslate,
                  style: const TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.search_rounded, color: AppColors.primaryText),
                onPressed: () {},
              ),
            ],
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator(color: AppColors.emerald))
              : ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: ayahs.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _buildBismillah();
                    }
                    final ayahIndex = index - 1;
                    final ayah = ayahs[ayahIndex];
                    final isPlaying = provider.currentAyah?.number == ayah.number &&
                        provider.currentAyah?.surahNumber == ayah.surahNumber;

                    _itemKeys[ayahIndex] ??= GlobalKey();

                    return Container(
                      key: _itemKeys[ayahIndex],
                      margin: const EdgeInsets.only(bottom: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.accentEmerald.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    color: AppColors.emerald,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${ayah.number}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: Icon(
                                    provider.isBookmarked(ayah)
                                        ? Icons.bookmark_rounded
                                        : Icons.bookmark_border_rounded,
                                    color: AppColors.emerald,
                                    size: 20,
                                  ),
                                  onPressed: () => provider.toggleBookmark(ayah),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isPlaying && provider.isPlaying
                                        ? Icons.pause_circle_filled_rounded
                                        : Icons.play_circle_fill_rounded,
                                    color: AppColors.emerald,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    provider.saveLastRead(widget.surah, ayah.number);
                                    if (isPlaying) {
                                      provider.togglePlay();
                                    } else {
                                      provider.playAyah(ayah);
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            ayah.text,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              height: 2.2,
                              fontFamily: 'Arabic',
                              color: AppColors.primaryText,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            ayah.translation,
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.secondaryText,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Divider(color: Colors.black12),
                        ],
                      ),
                    );
                  },
                ),
        );
      },
    );
  }

  Widget _buildBismillah() {
    if (widget.surah.number == 1 || widget.surah.number == 9) return const SizedBox.shrink();
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: const Text(
        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontFamily: 'Arabic',
          fontWeight: FontWeight.bold,
          color: AppColors.primaryText,
        ),
      ),
    );
  }
}
