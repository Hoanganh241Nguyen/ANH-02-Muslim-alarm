// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get week => 'Εβδομάδα';

  @override
  String get month => 'Μήνας';

  @override
  String get lifetime => 'Συνολικά';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Κάνε μια παύση από τη δουλειά σου και αφιέρωσε χρόνο στον Αλλάχ.';

  @override
  String get prayerAlarmDefaultName => 'Προσευχή';

  @override
  String productUnavailable(Object id) {
    return 'Το προϊόν $id δεν είναι διαθέσιμο για αγορά.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Η αγορά του $productId ολοκληρώθηκε!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Η αγορά του $productId αποκαταστάθηκε!';
  }

  @override
  String daysCount(Object count) {
    return '$count ημέρες';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ΕΠΕΡΧΟΜΕΝΗ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Απόσταση από τη Μέκκα: $distance χλμ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Υπενθύμιση σε $minutes λεπτά';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Ήρθε η ώρα για την προσευχή $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Γύρος: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Επιλέχθηκε: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Τζουζ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Σελίδα $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Χιζμπ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Εδάφιο $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count άγια';
  }

  @override
  String ayahNo(Object ayah) {
    return 'Ayah No: $ayah';
  }

  @override
  String readingProgressAyahCount(Object current, Object total) {
    return '$current of $total Ayahs';
  }

  @override
  String get selectSurah => 'Select Surah';

  @override
  String get meccan => 'MECCAN';

  @override
  String get medinan => 'MEDINAN';

  @override
  String levelNumber(Object level) {
    return 'ΕΠΙΠΕΔΟ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Σούρα Αλ-Μπάκαρα 2:238)';

  @override
  String get text1juz => '1 τζουζ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 σελίδες';

  @override
  String get text100dhikr => '100 ζικρ';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 σελίδες';

  @override
  String get text28cclearsky => '28°C - Καθαρός ουρανός';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 σελίδες';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Σχετικά';

  @override
  String get aboutQuranPro => 'Σχετικά με το Quran Pro';

  @override
  String get activity => 'Δραστηριότητα';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Η διαφήμιση φορτώνει. Δοκιμάστε ξανά σύντομα.';

  @override
  String get addCustomDhikr => 'Προσθήκη προσαρμοσμένου ζικρ';

  @override
  String get addCustomDhikr2 => 'Προσθήκη Προσαρμοσμένου Ζικρ';

  @override
  String get addDhikr => 'Προσθήκη Ζικρ';

  @override
  String get adjustPosition => 'ΡΥΘΜΙΣΗ ΘΕΣΗΣ';

  @override
  String get afternoon => 'ΑΠΟΓΕΥΜΑ';

  @override
  String get alMasjidAlHaram => 'Αλ-Μάστζιντ αλ-Χαράμ';

  @override
  String get alhamdulillahiRabbilAlamin => 'Αλχάμντου λιλλάχι Ράμπιλ Άλαμιν';

  @override
  String get alignedToQibla => 'ΕΥΘΥΓΡΑΜΜΙΣΜΕΝΟ ΜΕ ΤΗΝ ΚΙΜΠΛΑ';

  @override
  String get allPraiseIsDueToAllah => 'Κάθε έπαινος ανήκει στον Αλλάχ';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Όλες οι premium λειτουργίες σε μειωμένη τιμή';

  @override
  String get allInOneQuranApp => 'Ολοκληρωμένη εφαρμογή Κορανίου';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Ο Αλλάχ μου αρκεί· δεν υπάρχει θεότητα εκτός από Αυτόν';

  @override
  String get allahIsTheGreatest => 'Ο Αλλάχ είναι ο Μέγιστος';

  @override
  String get allahuAkbar => 'Αλλάχου Άκμπαρ';

  @override
  String get allahummaSalliAlaMuhammad => 'Αλλάχουμα σάλι αλά Μουχάμμαντ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Δώστε άδεια τοποθεσίας ή πατήστε επανάληψη για να χρησιμοποιηθεί το εφεδρικό πρόγραμμα.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Επιτρέψτε τις ειδοποιήσεις για να λαμβάνετε ώρες προσευχής και ημερήσιες υπενθυμίσεις.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Επιτρέψτε στην εφαρμογή να λειτουργεί στο παρασκήνιο';

  @override
  String get app => 'Εφαρμογή';

  @override
  String get arabic => 'Αραβικά';

  @override
  String get asr => 'Ασρ';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Αούζου μπιλλάχι μιν ας-σαϊτάνιρ ρατζίμ';

  @override
  String get avg => 'Μ.Ο.';

  @override
  String get ayah => 'Άγια';

  @override
  String get batteryOptimization => 'Βελτιστοποίηση μπαταρίας';

  @override
  String get beautifulWidgets => 'Όμορφα widget';

  @override
  String get bestValue => 'ΚΑΛΥΤΕΡΗ ΑΞΙΑ';

  @override
  String get blackOnyx => 'Μαύρος Όνυχας';

  @override
  String get bookmarks => 'Σελιδοδείκτες';

  @override
  String get brightIvoryInterface => 'Φωτεινό περιβάλλον σε ιβουάρ';

  @override
  String get calculatingDistance => 'Υπολογισμός απόστασης...';

  @override
  String get calibrateYourDirection => 'Βαθμονομήστε την κατεύθυνσή σας';

  @override
  String get cancel => 'Άκυρο';

  @override
  String get change => 'Αλλαγή';

  @override
  String get changeTasbihMode => 'Αλλαγή λειτουργίας τασμπίχ;';

  @override
  String get chooseDhikr => 'Επιλογή Ζικρ';

  @override
  String get chooseDisplayLanguage => 'Επιλέξτε γλώσσα εμφάνισης';

  @override
  String get chooseTheme => 'Επιλογή Θέματος';

  @override
  String get chooseYourPreferredLanguage => 'Επιλέξτε τη γλώσσα που προτιμάτε';

  @override
  String get clickOrSwipeToCount => 'Πατήστε ή σύρετε για μέτρηση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get closeCustomGoal => 'Κλείσιμο προσαρμοσμένου στόχου';

  @override
  String get completeAtLeast33Dhikr => 'Ολοκληρώστε τουλάχιστον 33 ζικρ';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Συνδέστε την καρδιά σας με το Ιερό Κοράνι.';

  @override
  String get continueReading => 'Συνέχεια ανάγνωσης';

  @override
  String get countsPerRound => 'Μετρήσεις ανά γύρο';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Δημιουργήστε τη συλλογή σας με αριστοτεχνικούς πνευματικούς λίθους.';

  @override
  String get current => 'ΤΡΕΧΟΝ';

  @override
  String get current2 => 'Τρέχον';

  @override
  String get currentLocationToMecca => 'Τρέχουσα τοποθεσία προς Μέκκα';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Η τρέχουσα πρόοδος θα μηδενιστεί για τη νέα λειτουργία.';

  @override
  String get currentStreak => 'Τρέχον σερί';

  @override
  String get custom => 'Προσαρμοσμένο';

  @override
  String get customDhikr => 'Προσαρμοσμένο ζικρ';

  @override
  String get customGoal => 'Προσαρμοσμένος Στόχος';

  @override
  String get customPrayerSounds => 'Προσαρμοσμένοι Ήχοι Προσευχής';

  @override
  String get dailyGoal => 'Ημερήσιος Στόχος';

  @override
  String get dailyQuests => 'Ημερήσιες Αποστολές';

  @override
  String get dailyQuranReminder => 'Ημερήσια υπενθύμιση Κορανίου';

  @override
  String get dailyReminders => 'Ημερήσιες Υπενθυμίσεις';

  @override
  String get dailyTasbih => 'Ημερήσιο Τασμπίχ';

  @override
  String get dark => 'Σκούρο';

  @override
  String get dawn => 'ΑΥΓΗ';

  @override
  String get debug => 'Εντοπισμός σφαλμάτων';

  @override
  String get dhikr => 'Ζικρ';

  @override
  String get dhikrActivity => 'Δραστηριότητα ζικρ';

  @override
  String get dhuAlHijjah => 'Ντου αλ-Χίτζα';

  @override
  String get dhuAlQadah => 'Ντου αλ-Κάαντα';

  @override
  String get dhuhr => 'Ζουχρ';

  @override
  String get direction => 'ΚΑΤΕΥΘΥΝΣΗ';

  @override
  String get disableBatteryOptimization =>
      'Απενεργοποίηση βελτιστοποίησης μπαταρίας';

  @override
  String get disableOptimization => 'ΑΠΕΝΕΡΓΟΠΟΙΗΣΗ ΒΕΛΤΙΣΤΟΠΟΙΗΣΗΣ';

  @override
  String get distance => 'ΑΠΟΣΤΑΣΗ';

  @override
  String get e => 'Α';

  @override
  String get eGHasbunallah => 'π.χ. Χάσμπουναλλαχ';

  @override
  String get east => 'Ανατολή';

  @override
  String get enableAutoStart => 'Ενεργοποίηση αυτόματης εκκίνησης';

  @override
  String get enableNotifications => 'Ενεργοποίηση Ειδοποιήσεων';

  @override
  String get enableReminders => 'Ενεργοποίηση Υπενθυμίσεων';

  @override
  String get english => 'Αγγλικά';

  @override
  String get enterYourName => 'Εισαγάγετε το όνομά σας';

  @override
  String get equipped => 'ΕΝΕΡΓΟ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Ό,τι χρειάζεστε για μια καλύτερη εμπειρία με το Κοράνι.';

  @override
  String get fajr => 'Φατζρ';

  @override
  String get feedback => 'Σχόλια';

  @override
  String get first => 'Πρώτο';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Για τα πιο ακριβή αποτελέσματα, κρατήστε το τηλέφωνο οριζόντια και μακριά από μαγνητικά αντικείμενα.';

  @override
  String get free => 'Δωρεάν';

  @override
  String get fullBundle => 'Πλήρες Πακέτο';

  @override
  String get getAnAdFreeExperienceForever =>
      'Αποκτήστε εμπειρία χωρίς διαφημίσεις για πάντα';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Λάβετε υπενθυμίσεις για ανάγνωση και μείνετε συνεπείς.';

  @override
  String get getStarted => 'Ας ξεκινήσουμε';

  @override
  String get gloryAndPraiseBeToAllah => 'Δόξα και έπαινος στον Αλλάχ';

  @override
  String get gloryBeToAllah => 'Δόξα στον Αλλάχ';

  @override
  String get gloryBeToAllahTheMagnificent => 'Δόξα στον Αλλάχ, τον Μεγαλειώδη';

  @override
  String get goToHome => 'Μετάβαση στην Αρχική';

  @override
  String get goldenEngraved => 'Χρυσό Σκαλιστό';

  @override
  String get greenJade => 'Πράσινος Νεφρίτης';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ανόι, Βιετνάμ';

  @override
  String get haptic => 'Δόνηση';

  @override
  String get hasanatHub => 'Κέντρο Χασανάτ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Χάσμπιγιαλλάχου λα ιλάχα ίλα Χούα';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Αρχική';

  @override
  String get howYourDataIsHandled => 'Πώς διαχειριζόμαστε τα δεδομένα σας';

  @override
  String get iSeekForgivenessFromAllah => 'Ζητώ συγχώρεση από τον Αλλάχ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Ζητώ καταφύγιο στον Αλλάχ από τον καταραμένο Σατανά';

  @override
  String get immediateAlerts => 'Άμεσες ειδοποιήσεις';

  @override
  String get inTheNameOfAllah => 'Στο όνομα του Αλλάχ';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Πράγματι στον Αλλάχ ανήκουμε και σε Αυτόν επιστρέφουμε';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Ίννα λιλλάχι ουα ίννα ιλάιχι ρατζιούν';

  @override
  String get isha => 'Ίσα';

  @override
  String get jumadaAlAwwal => 'Τζουμάντα αλ-Άουαλ';

  @override
  String get jumadaAlThani => 'Τζουμάντα αλ-Θάνι';

  @override
  String get juz => 'ΤΖΟΥΖ';

  @override
  String get juz2 => 'Τζουζ';

  @override
  String get keepAdhanAlarmsReliable =>
      'Διατηρήστε αξιόπιστες τις ειδοποιήσεις αζάν';

  @override
  String get keepItUpYouReDoingGreat => 'Συνεχίστε έτσι! Τα πάτε υπέροχα.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Διατηρήστε αξιόπιστο το κάλεσμα σε προσευχή ακόμα και όταν η εφαρμογή είναι κλειστή.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Λα χάουλα ουα λα κούουατα ίλα μπιλλάχ';

  @override
  String get laIlahaIllallah => 'Λα ιλάχα ίλαλλαχ';

  @override
  String get language => 'Γλώσσα';

  @override
  String get lapisLazuli => 'Λάπις Λάζουλι';

  @override
  String get last7Days => 'Τελευταίες 7 ημέρες';

  @override
  String get later => 'ΑΡΓΟΤΕΡΑ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Ας ξεκινήσουμε το όμορφο ταξίδι σας με το Κοράνι.';

  @override
  String get letSPersonalizeYourExperience =>
      'Ας προσαρμόσουμε\nτην εμπειρία σας';

  @override
  String get light => 'Ανοιχτό';

  @override
  String get lightMode => 'Ανοιχτή Λειτουργία';

  @override
  String get listenToOrReadAnyAyahToday => 'Ακούστε ή διαβάστε ένα άγια σήμερα';

  @override
  String get locating => 'Εντοπισμός...';

  @override
  String get location => 'Τοποθεσία';

  @override
  String get locationPermissionsAreDenied =>
      'Οι άδειες τοποθεσίας απορρίφθηκαν';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Οι άδειες τοποθεσίας έχουν απορριφθεί οριστικά.';

  @override
  String get locationServicesAreDisabled =>
      'Οι υπηρεσίες τοποθεσίας είναι απενεργοποιημένες.';

  @override
  String get longestStreak => 'Μεγαλύτερο σερί';

  @override
  String get maghrib => 'Μαγκρίμπ';

  @override
  String get maybeLater => 'Ίσως αργότερα';

  @override
  String get meccaSaudiArabia => 'Μέκκα, Σαουδική Αραβία';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Κύριέ μου, συγχώρεσε και ελέησε';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Κύριέ μου, έχω ανάγκη από κάθε καλό που στέλνεις';

  @override
  String get myLordIncreaseMeInKnowledge => 'Κύριέ μου, αύξησέ μου τη γνώση';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Κύριέ μου, κάνε το εύκολο και μην το κάνεις δύσκολο';

  @override
  String get n => 'Β';

  @override
  String get nameOptional => 'Όνομα (Προαιρετικό)';

  @override
  String get next => 'Επόμενο';

  @override
  String get nextDhikr => 'Επόμενο ζικρ';

  @override
  String get nextPrayer => 'ΕΠΟΜΕΝΗ ΠΡΟΣΕΥΧΗ';

  @override
  String get night => 'ΝΥΧΤΑ';

  @override
  String get nightEmeraldInterface => 'Νυχτερινό περιβάλλον σε σμαραγδί';

  @override
  String get noBookmarksYet => 'Δεν υπάρχουν σελιδοδείκτες ακόμη';

  @override
  String get noon => 'ΜΕΣΗΜΕΡΙ';

  @override
  String get north => 'Βορράς';

  @override
  String get northeast => 'Βορειοανατολικά';

  @override
  String get northwest => 'Βορειοδυτικά';

  @override
  String get notificationsAlarm => 'Ειδοποιήσεις & Ξυπνητήρι';

  @override
  String get notificationsForPrayerTimes =>
      'Ειδοποιήσεις για τις ώρες προσευχής';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Ω Αλλάχ, στείλε ευλογίες στον Μουχάμμαντ';

  @override
  String get oEverLivingOSustainer => 'Ω Αιώνια Ζωντανέ, Ω Συντηρητή';

  @override
  String get openAutoStart => 'ΑΝΟΙΓΜΑ ΑΥΤΟΜΑΤΗΣ ΕΚΚΙΝΗΣΗΣ';

  @override
  String get optimizeAdhanPerformance => 'Βελτιστοποίηση απόδοσης αζάν';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Κύριέ μας, χάρισέ μας το καλό σε αυτόν τον κόσμο';

  @override
  String get page => 'ΣΕΛΙΔΑ';

  @override
  String get pearl => 'Μαργαριτάρι';

  @override
  String get personalizeYourAdhanNotifications =>
      'Προσαρμόστε τις ειδοποιήσεις αζάν';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Δόξα στον Αλλάχ, Κύριο των κόσμων';

  @override
  String get prayerAlarms => 'Ειδοποιήσεις Προσευχής';

  @override
  String get prayerSchedule => 'Πρόγραμμα Προσευχών';

  @override
  String get prayerTimeNotifications => 'Ειδοποιήσεις ωρών προσευχής';

  @override
  String get prayerTimesAreLoading => 'Οι ώρες προσευχής φορτώνουν';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Ώρες προσευχής, κίμπλα, ανάγνωση Κορανίου και τασμπίχ σε έναν καθημερινό σύντροφο.';

  @override
  String get prayerQuranQibla => 'ΠΡΟΣΕΥΧΗ • ΚΟΡΑΝΙ • ΚΙΜΠΛΑ';

  @override
  String get premiumThemes => 'Premium Θέματα';

  @override
  String get preparingYourSpiritualJourney =>
      'Προετοιμασία του πνευματικού σας ταξιδιού...';

  @override
  String get previousDhikr => 'Προηγούμενο ζικρ';

  @override
  String get privacyPolicy => 'Πολιτική Απορρήτου';

  @override
  String get qibla => 'Κίμπλα';

  @override
  String get qiblaFinder => 'Εύρεση Κίμπλα';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Κοράνι';

  @override
  String get quranPlayback => 'Αναπαραγωγή Κορανίου';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Το Quran Pro ενώνει τις ώρες προσευχής, την κίμπλα, την ανάγνωση Κορανίου και το τασμπίχ σε έναν απλό καθημερινό σύντροφο.';

  @override
  String get quranProPreferences => 'Προτιμήσεις Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Το Quran Pro αποθηκεύει τις προτιμήσεις εισαγωγής και προόδου τοπικά σε αυτή τη συσκευή. Ενδέχεται να χρησιμοποιηθούν αναλυτικά στοιχεία για τη βελτίωση της σταθερότητας και της ποιότητας.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Το Quran Pro αποθηκεύει την πρόοδο του τασμπίχ σας τοπικά σε αυτή τη συσκευή. Ενδέχεται να χρησιμοποιηθούν αναλυτικά στοιχεία για τη βελτίωση της σταθερότητας και της ποιότητας της εφαρμογής.';

  @override
  String get quranRecitation => 'Απαγγελία Κορανίου';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Ράμπανα άτινα φιντ-ντούνια χάσανα';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Ράμπι ίννι λιμά άνζαλτα ιλάγια μιν χάιριν φακίρ';

  @override
  String get rabbiYassirWaLaTuassir => 'Ράμπι γιάσιρ ουα λα τουάσιρ';

  @override
  String get rabbiZidniIlma => 'Ράμπι ζίντνι ίλμα';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Ράμπιγφιρ ουάρχαμ ουα άντα χάιρουρ ραχιμίν';

  @override
  String get rabiAlAwwal => 'Ραμπί αλ-Άουαλ';

  @override
  String get rabiAlThani => 'Ραμπί αλ-Θάνι';

  @override
  String get rateApp => 'Αξιολόγηση εφαρμογής';

  @override
  String get rateQuranPro => 'Αξιολογήστε το Quran Pro';

  @override
  String get readListen => 'Ανάγνωση & Ακρόαση';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Διαβάστε το Κοράνι με όμορφες απαγγελίες.';

  @override
  String get recent => 'Πρόσφατα';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Συνιστάται για Xiaomi, Oppo, Vivo και Huawei';

  @override
  String get redCarnelian => 'Κόκκινος Καρνεόλιος';

  @override
  String get remindMeAt => 'Υπενθύμιση στις';

  @override
  String get removeAds => 'Κατάργηση Διαφημίσεων';

  @override
  String get requestingLocationPermission => 'Αίτημα άδειας τοποθεσίας...';

  @override
  String get reset => 'Επαναφορά';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get returnToCompass => 'Επιστροφή στην πυξίδα';

  @override
  String get s => 'Ν';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get saveGoal => 'Αποθήκευση Στόχου';

  @override
  String get searchSurahNumberArabic => 'Αναζήτηση σούρα, αριθμός, αραβικά...';

  @override
  String get searchSurah => 'Αναζήτηση σούρα...';

  @override
  String get selectLanguage => 'Επιλογή Γλώσσας';

  @override
  String get selectTheThemeYouLike => 'Επιλέξτε το θέμα που σας αρέσει';

  @override
  String get selectYourBead => 'Επιλέξτε τη Χάντρα σας';

  @override
  String get shop => 'Κατάστημα';

  @override
  String get shopCustomization => 'Κατάστημα & Προσαρμογή';

  @override
  String get sound => 'Ήχος';

  @override
  String get south => 'Νότος';

  @override
  String get southeast => 'Νοτιοανατολικά';

  @override
  String get southwest => 'Νοτιοδυτικά';

  @override
  String get specialOccasionsAndMore => 'Ειδικές περιστάσεις και άλλα';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Η αξιολόγηση στο κατάστημα θα ενεργοποιηθεί όταν είναι έτοιμη η καταχώριση παραγωγής.';

  @override
  String get subhanallahiWaBihamdihi => 'Σουμπχάναλλαχι ουα μπιχάμντιχι';

  @override
  String get subhanallahilAzim => 'Σουμπχάναλλαχιλ Αζίμ';

  @override
  String get sunset => 'ΔΥΣΗ';

  @override
  String get supportQuranProOnTheStore => 'Στηρίξτε το Quran Pro στο κατάστημα';

  @override
  String get surah => 'Σούρα';

  @override
  String get tasbih => 'Τασμπίχ';

  @override
  String get tasbihSettings => 'Ρυθμίσεις Τασμπίχ';

  @override
  String get tellUsWhatToImprove => 'Πείτε μας τι να βελτιώσουμε';

  @override
  String get termsOfUse => 'Όροι Χρήσης';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Ευχαριστούμε που χρησιμοποιείτε το Quran Pro. Η αξιολόγηση στο κατάστημα θα ενεργοποιηθεί όταν είναι έτοιμη η καταχώριση παραγωγής.';

  @override
  String get thereIsNoDeityExceptAllah =>
      'Δεν υπάρχει θεότητα εκτός από τον Αλλάχ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Δεν υπάρχει δύναμη ούτε ισχύς παρά μόνο μέσω του Αλλάχ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Αυτό μας βοηθά να προσαρμόσουμε τις υπενθυμίσεις και να παρακολουθούμε την πρόοδό σας.';

  @override
  String get tigerSEye => 'Μάτι της Τίγρης';

  @override
  String get today => 'Σήμερα';

  @override
  String get total => 'Σύνολο';

  @override
  String get totalHasanat => 'ΣΥΝΟΛΙΚΑ ΧΑΣΑΝΑΤ';

  @override
  String get trackProgress => 'Παρακολούθηση Προόδου';

  @override
  String get trackYourReadingAndAchievements =>
      'Παρακολουθήστε την ανάγνωση και τα επιτεύγματά σας.';

  @override
  String get tryAgain => 'Δοκιμάστε ξανά';

  @override
  String get undo => 'Αναίρεση';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Ξεκλειδώστε όλα τα θέματα και τις προσαρμογές';

  @override
  String get usageGuidelines => 'Οδηγίες χρήσης';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Χρησιμοποιήστε το Quran Pro με σεβασμό για προσωπική λατρεία, μάθηση και καθημερινές ισλαμικές συνήθειες.';

  @override
  String get viewAll => 'Προβολή Όλων';

  @override
  String get w => 'Δ';

  @override
  String get welcome => 'Καλώς ήρθατε';

  @override
  String get west => 'Δύση';

  @override
  String get yaHayyuYaQayyum => 'Για Χάγιου Για Καγιούμ';

  @override
  String get youReAllSet => 'Είστε έτοιμοι!';

  @override
  String get yourProgress => 'Η Πρόοδός σας';

  @override
  String get continueLabel => 'Συνέχεια';

  @override
  String get amethyst => 'Αμέθυστος';

  @override
  String get indonesian => 'Ινδονησιακά';

  @override
  String get turkish => 'Τουρκικά';

  @override
  String get vietnamese => 'Βιετναμέζικα';

  @override
  String get turquoise => 'Τιρκουάζ';

  @override
  String get wood => 'Ξύλο';

  @override
  String get left => 'left';

  @override
  String get stayInspiredOnYourHomeScreen =>
      'Stay inspired on your home screen.';

  @override
  String get settings => 'Settings';

  @override
  String get rounds => 'Rounds';

  @override
  String get prayerRemindersFullScreenAlarm =>
      'Prayer reminders and full-screen alarm';

  @override
  String get holyMessage => 'Daily Reminder';

  @override
  String get allSettingsInOnePlace => 'All app settings in one place';

  @override
  String get aboutQuranProDescription =>
      'Prayer times, Qibla, Quran reading and Tasbih in one daily companion.';

  @override
  String get feedbackDescription =>
      'Send feedback to support@quranpro.app. Your suggestions help improve Prayer, Quran, Qibla and Tasbih.';

  @override
  String get stopAudio => 'Stop audio';

  @override
  String get previousAyah => 'Previous ayah';

  @override
  String get nextAyah => 'Next ayah';

  @override
  String get reminderRing => 'Sound on';

  @override
  String get reminderVibrate => 'Vibrate only';

  @override
  String get reminderSilent => 'Off';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get unlimited => 'Unlimited';

  @override
  String get skip => 'Skip';

  @override
  String get productUnavailableFriendly =>
      'This item is not available right now. Please try again later.';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get calibratingCompass => 'Calibrating… move your phone in a figure 8';

  @override
  String get estimatedLocation => 'Estimated location';
}
