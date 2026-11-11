part of '../onboarding_page.dart';

class _LanguageSectionHeader extends StatelessWidget {
  const _LanguageSectionHeader(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 10, 2, 8),
      child: Text(
        label,
        style: AppTypography.caption(
          context,
          color: AppColors.softGold.withValues(alpha: .92),
          size: 12,
          weight: FontWeight.w900,
        ).copyWith(letterSpacing: .7),
      ),
    );
  }
}

class _LanguageSearchField extends StatelessWidget {
  const _LanguageSearchField({
    required this.controller,
    required this.query,
    required this.hintText,
    required this.onChanged,
    required this.onClear,
  });

  final TextEditingController controller;
  final String query;
  final String hintText;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        color: AppColors.quranDarkBg.withValues(alpha: .72),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.softGold.withValues(alpha: .48)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .16),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: AppTypography.body(context, color: Colors.white, size: 14),
        cursorColor: AppColors.softGold,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 17),
          hintText: hintText,
          hintStyle: AppTypography.body(
            context,
            color: Colors.white.withValues(alpha: .58),
            size: 13,
          ),
          prefixIcon: Container(
            width: 38,
            height: 38,
            margin: const EdgeInsets.fromLTRB(10, 8, 10, 8),
            decoration: BoxDecoration(
              color: AppColors.softGold.withValues(alpha: .16),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              AppIcons.search,
              color: AppColors.softGold,
              size: 20,
            ),
          ),
          suffixIcon: query.isEmpty
              ? null
              : IconButton(
                  onPressed: onClear,
                  icon: Icon(
                    AppIcons.close,
                    color: Colors.white.withValues(alpha: .74),
                    size: 19,
                  ),
                ),
        ),
      ),
    );
  }
}

class _LanguageChromeCopy {
  const _LanguageChromeCopy({
    required this.searchLanguage,
    required this.suggested,
    required this.allLanguages,
    required this.noLanguagesFound,
  });

  final String searchLanguage;
  final String suggested;
  final String allLanguages;
  final String noLanguagesFound;

  static const _english = _LanguageChromeCopy(
    searchLanguage: 'Search language',
    suggested: 'Suggested',
    allLanguages: 'All languages',
    noLanguagesFound: 'No languages found',
  );

  static _LanguageChromeCopy resolve(String languageCode) {
    return switch (languageCode) {
      'ar' => const _LanguageChromeCopy(
        searchLanguage: 'ابحث عن اللغة',
        suggested: 'مقترح',
        allLanguages: 'كل اللغات',
        noLanguagesFound: 'لم يتم العثور على لغات',
      ),
      'id' => const _LanguageChromeCopy(
        searchLanguage: 'Cari bahasa',
        suggested: 'Disarankan',
        allLanguages: 'Semua bahasa',
        noLanguagesFound: 'Bahasa tidak ditemukan',
      ),
      'tr' => const _LanguageChromeCopy(
        searchLanguage: 'Dil ara',
        suggested: 'Onerilen',
        allLanguages: 'Tum diller',
        noLanguagesFound: 'Dil bulunamadi',
      ),
      'vi' => const _LanguageChromeCopy(
        searchLanguage: 'Tìm ngôn ngữ',
        suggested: 'Đề xuất',
        allLanguages: 'Tất cả ngôn ngữ',
        noLanguagesFound: 'Không tìm thấy ngôn ngữ',
      ),
      _ => _english,
    };
  }
}
