// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mes';

  @override
  String get lifetime => 'Sempre';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Fai unha pausa no traballo e dedícalle tempo a Allah.';

  @override
  String get prayerAlarmDefaultName => 'Oración';

  @override
  String productUnavailable(Object id) {
    return 'O produto $id non está dispoñible para a compra.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Compra de $productId realizada!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Compra de $productId restaurada!';
  }

  @override
  String daysCount(Object count) {
    return '$count días';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'PRÓXIMA: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distancia á Meca: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Lémbramo dentro de $minutes minutos';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'É a hora da oración de $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Rolda: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language seleccionado';
  }

  @override
  String juzNumber(Object juz) {
    return 'Xuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Páxina $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: aleya $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count aleyas';
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
    return 'NIVEL $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqara 2:238)';

  @override
  String get text1juz => '1 xuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 páxinas';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 páxinas';

  @override
  String get text28cclearsky => '28°C - Ceo despexado';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 páxinas';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Sobre';

  @override
  String get aboutQuranPro => 'Sobre Quran Pro';

  @override
  String get activity => 'Actividade';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'O anuncio estase a cargar. Téntao de novo axiña.';

  @override
  String get addCustomDhikr => 'Engade un dhikr personalizado';

  @override
  String get addCustomDhikr2 => 'Engadir dhikr personalizado';

  @override
  String get addDhikr => 'Engadir dhikr';

  @override
  String get adjustPosition => 'AXUSTAR A POSICIÓN';

  @override
  String get afternoon => 'TARDE';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALIÑADO COA ALQUIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Todo o loubor é para Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Todas as funcións premium a un prezo reducido';

  @override
  String get allInOneQuranApp => 'A app do Corán todo en un';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah abóndame; non hai divindade agás El';

  @override
  String get allahIsTheGreatest => 'Allah é o máis grande';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Permite o acceso á localización ou toca Tentar de novo para usar o horario alternativo.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Permite as notificacións para recibir os horarios de oración e os recordatorios diarios.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Permite que a app se execute en segundo plano';

  @override
  String get app => 'Aplicación';

  @override
  String get arabic => 'Árabe';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Med.';

  @override
  String get ayah => 'Aleya';

  @override
  String get batteryOptimization => 'Optimización da batería';

  @override
  String get beautifulWidgets => 'Widgets elegantes';

  @override
  String get bestValue => 'MELLOR OFERTA';

  @override
  String get blackOnyx => 'Ónice negro';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get brightIvoryInterface => 'Interface marfil luminosa';

  @override
  String get calculatingDistance => 'Calculando a distancia...';

  @override
  String get calibrateYourDirection => 'Calibra a túa dirección';

  @override
  String get cancel => 'Cancelar';

  @override
  String get change => 'Cambiar';

  @override
  String get changeTasbihMode => 'Queres cambiar o modo de tasbih?';

  @override
  String get chooseDhikr => 'Escolle un dhikr';

  @override
  String get chooseDisplayLanguage => 'Escolle o idioma da interface';

  @override
  String get chooseTheme => 'Escoller tema';

  @override
  String get chooseYourPreferredLanguage => 'Escolle o teu idioma preferido';

  @override
  String get clickOrSwipeToCount => 'Toca ou desliza para contar';

  @override
  String get close => 'Pechar';

  @override
  String get closeCustomGoal => 'Pechar o obxectivo personalizado';

  @override
  String get completeAtLeast33Dhikr => 'Completa polo menos 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Conecta o teu corazón co sagrado Corán.';

  @override
  String get continueReading => 'Continuar a lectura';

  @override
  String get countsPerRound => 'Repeticións por rolda';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Crea a túa colección con xoias espirituais feitas con mestría.';

  @override
  String get current => 'ACTUAL';

  @override
  String get current2 => 'Actual';

  @override
  String get currentLocationToMecca => 'Da localización actual á Meca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'O progreso actual reiniciarase para o novo modo.';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String get custom => 'Personalizado';

  @override
  String get customDhikr => 'Dhikr personalizado';

  @override
  String get customGoal => 'Obxectivo personalizado';

  @override
  String get customPrayerSounds => 'Sons de oración personalizados';

  @override
  String get dailyGoal => 'Obxectivo diario';

  @override
  String get dailyQuests => 'Retos diarios';

  @override
  String get dailyQuranReminder => 'Recordatorio diario do Corán';

  @override
  String get dailyReminders => 'Recordatorios diarios';

  @override
  String get dailyTasbih => 'Tasbih diario';

  @override
  String get dark => 'Escuro';

  @override
  String get dawn => 'AMENCER';

  @override
  String get debug => 'Depuración';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Actividade de dhikr';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'DIRECCIÓN';

  @override
  String get disableBatteryOptimization =>
      'Desactivar a optimización da batería';

  @override
  String get disableOptimization => 'DESACTIVAR A OPTIMIZACIÓN';

  @override
  String get distance => 'DISTANCIA';

  @override
  String get e => 'L';

  @override
  String get eGHasbunallah => 'p. ex. HasbunAllah';

  @override
  String get east => 'Leste';

  @override
  String get enableAutoStart => 'Activar o inicio automático';

  @override
  String get enableNotifications => 'Activar as notificacións';

  @override
  String get enableReminders => 'Activar os recordatorios';

  @override
  String get english => 'Inglés';

  @override
  String get enterYourName => 'Escribe o teu nome';

  @override
  String get equipped => 'EQUIPADO';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Todo o que precisas para vivir mellor o Corán.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Comentarios';

  @override
  String get first => 'Primeiro';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Para obter os resultados máis precisos, mantén o móbil plano e lonxe de obxectos magnéticos.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Paquete completo';

  @override
  String get getAnAdFreeExperienceForever =>
      'Goza da app sen anuncios para sempre';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Recibe recordatorios para ler e manter a constancia.';

  @override
  String get getStarted => 'Comezar';

  @override
  String get gloryAndPraiseBeToAllah => 'Gloria e loubor a Allah';

  @override
  String get gloryBeToAllah => 'Gloria a Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Gloria a Allah, o Magnífico';

  @override
  String get goToHome => 'Ir ao inicio';

  @override
  String get goldenEngraved => 'Gravado dourado';

  @override
  String get greenJade => 'Xade verde';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibración';

  @override
  String get hasanatHub => 'Centro de hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Inicio';

  @override
  String get howYourDataIsHandled => 'Como tratamos os teus datos';

  @override
  String get iSeekForgivenessFromAllah => 'Pido perdón a Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Refúxiome en Allah do Satanás maldito';

  @override
  String get immediateAlerts => 'Avisos inmediatos';

  @override
  String get inTheNameOfAllah => 'No nome de Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Certamente, pertencemos a Allah e a El regresamos';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isha';

  @override
  String get jumadaAlAwwal => 'Jumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Jumada Al-Thani';

  @override
  String get juz => 'XUZ';

  @override
  String get juz2 => 'Xuz';

  @override
  String get keepAdhanAlarmsReliable => 'Mantén fiables as alarmas do adhan';

  @override
  String get keepItUpYouReDoingGreat => 'Segue así! Estalo facendo moi ben.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Mantén fiables as chamadas á oración mesmo coa app pechada.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Idioma';

  @override
  String get lapisLazuli => 'Lapislázuli';

  @override
  String get last7Days => 'Últimos 7 días';

  @override
  String get later => 'MÁIS TARDE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Comecemos a túa fermosa viaxe co Corán.';

  @override
  String get letSPersonalizeYourExperience =>
      'Personalicemos\na túa experiencia';

  @override
  String get light => 'Claro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get listenToOrReadAnyAyahToday => 'Escoita ou le calquera aleya hoxe';

  @override
  String get locating => 'Localizando...';

  @override
  String get location => 'Localización';

  @override
  String get locationPermissionsAreDenied =>
      'Denegáronse os permisos de localización';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Os permisos de localización están denegados permanentemente.';

  @override
  String get locationServicesAreDisabled =>
      'Os servizos de localización están desactivados.';

  @override
  String get longestStreak => 'Racha máis longa';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Quizais máis tarde';

  @override
  String get meccaSaudiArabia => 'A Meca, Arabia Saudita';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Señor meu, perdoa e ten misericordia';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Señor meu, necesito calquera ben que fagas descender sobre min';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Señor meu, aumenta o meu coñecemento';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Señor meu, faino doado e non o fagas difícil';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nome (opcional)';

  @override
  String get next => 'Seguinte';

  @override
  String get nextDhikr => 'Dhikr seguinte';

  @override
  String get nextPrayer => 'PRÓXIMA ORACIÓN';

  @override
  String get night => 'NOITE';

  @override
  String get nightEmeraldInterface => 'Interface esmeralda nocturna';

  @override
  String get noBookmarksYet => 'Aínda non hai marcadores';

  @override
  String get noon => 'MEDIODÍA';

  @override
  String get north => 'Norte';

  @override
  String get northeast => 'Nordeste';

  @override
  String get northwest => 'Noroeste';

  @override
  String get notificationsAlarm => 'Notificacións e alarma';

  @override
  String get notificationsForPrayerTimes =>
      'Notificacións dos horarios de oración';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Oh Allah, bendice a Muhammad';

  @override
  String get oEverLivingOSustainer => 'Oh Vivente, oh Sustentador';

  @override
  String get openAutoStart => 'ABRIR O INICIO AUTOMÁTICO';

  @override
  String get optimizeAdhanPerformance => 'Optimizar o rendemento do adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Señor noso, concédenos o ben neste mundo';

  @override
  String get page => 'PÁXINA';

  @override
  String get pearl => 'Perla';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personaliza as notificacións do adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Loado sexa Allah, Señor dos mundos';

  @override
  String get prayerAlarms => 'Alarmas de oración';

  @override
  String get prayerSchedule => 'Horario de oracións';

  @override
  String get prayerTimeNotifications => 'Notificacións dos horarios de oración';

  @override
  String get prayerTimesAreLoading => 'Estanse a cargar os horarios de oración';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Horarios de oración, alquibla, lectura do Corán e tasbih nun só compañeiro diario.';

  @override
  String get prayerQuranQibla => 'ORACIÓN • CORÁN • ALQUIBLA';

  @override
  String get premiumThemes => 'Temas premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Preparando a túa viaxe espiritual...';

  @override
  String get previousDhikr => 'Dhikr anterior';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get qibla => 'Alquibla';

  @override
  String get qiblaFinder => 'Buscador da alquibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Corán';

  @override
  String get quranPlayback => 'Reprodución do Corán';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro reúne os horarios de oración, a alquibla, a lectura do Corán e o tasbih nun sinxelo compañeiro diario.';

  @override
  String get quranProPreferences => 'Preferencias de Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro garda as preferencias de inicio e de progreso localmente neste dispositivo. Pódense usar analíticas para mellorar a estabilidade e a calidade.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro garda o teu progreso de tasbih localmente neste dispositivo. Pódense usar analíticas para mellorar a estabilidade da app e a calidade do produto.';

  @override
  String get quranRecitation => 'Recitación do Corán';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Rabbana atina fid-dunya hasanah';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Rabbi inni lima anzalta ilayya min khayrin faqir';

  @override
  String get rabbiYassirWaLaTuassir => 'Rabbi yassir wa la tuassir';

  @override
  String get rabbiZidniIlma => 'Rabbi zidni ilma';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Rabbighfir warham wa anta khayrur rahimin';

  @override
  String get rabiAlAwwal => 'Rabi Al-Awwal';

  @override
  String get rabiAlThani => 'Rabi Al-Thani';

  @override
  String get rateApp => 'Valorar a app';

  @override
  String get rateQuranPro => 'Valorar Quran Pro';

  @override
  String get readListen => 'Ler e escoitar';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Le o Corán con fermosas recitacións.';

  @override
  String get recent => 'Recentes';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recomendado para Xiaomi, Oppo, Vivo e Huawei';

  @override
  String get redCarnelian => 'Cornalina vermella';

  @override
  String get remindMeAt => 'Lémbramo ás';

  @override
  String get removeAds => 'Quitar os anuncios';

  @override
  String get requestingLocationPermission =>
      'Solicitando o permiso de localización...';

  @override
  String get reset => 'Reiniciar';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get returnToCompass => 'Volver á brúxula';

  @override
  String get s => 'S';

  @override
  String get save => 'Gardar';

  @override
  String get saveGoal => 'Gardar o obxectivo';

  @override
  String get searchSurahNumberArabic => 'Buscar sura, número, árabe...';

  @override
  String get searchSurah => 'Buscar sura...';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get selectTheThemeYouLike => 'Selecciona o tema que che guste';

  @override
  String get selectYourBead => 'Escolle a túa conta de tasbih';

  @override
  String get shop => 'Tenda';

  @override
  String get shopCustomization => 'Tenda e personalización';

  @override
  String get sound => 'Son';

  @override
  String get south => 'Sur';

  @override
  String get southeast => 'Sueste';

  @override
  String get southwest => 'Suroeste';

  @override
  String get specialOccasionsAndMore => 'Ocasións especiais e moito máis';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'A valoración na tenda activarase cando a ficha de produción estea lista.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SOLPOR';

  @override
  String get supportQuranProOnTheStore => 'Apoia Quran Pro na tenda';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Axustes do tasbih';

  @override
  String get tellUsWhatToImprove => 'Dinos que podemos mellorar';

  @override
  String get termsOfUse => 'Condicións de uso';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Grazas por usar Quran Pro. A valoración na tenda activarase cando a ficha da tenda de produción estea lista.';

  @override
  String get thereIsNoDeityExceptAllah => 'Non hai divindade agás Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Non hai poder nin forza agás por Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Isto axúdanos a personalizar os recordatorios e a seguir o teu progreso.';

  @override
  String get tigerSEye => 'Ollo de tigre';

  @override
  String get today => 'Hoxe';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'HASANAT TOTAIS';

  @override
  String get trackProgress => 'Seguir o progreso';

  @override
  String get trackYourReadingAndAchievements =>
      'Fai o seguimento da túa lectura e dos teus logros.';

  @override
  String get tryAgain => 'Téntao de novo';

  @override
  String get undo => 'Desfacer';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Desbloquea todos os temas e personalizacións da app';

  @override
  String get usageGuidelines => 'Normas de uso';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Usa Quran Pro con respecto para a adoración persoal, a aprendizaxe e as rutinas islámicas diarias.';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get w => 'O';

  @override
  String get welcome => 'Benvido/a';

  @override
  String get west => 'Oeste';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Xa está todo listo!';

  @override
  String get yourProgress => 'O teu progreso';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get amethyst => 'Amatista';

  @override
  String get indonesian => 'Indonesio';

  @override
  String get turkish => 'Turco';

  @override
  String get vietnamese => 'Vietnamita';

  @override
  String get turquoise => 'Turquesa';

  @override
  String get wood => 'Madeira';

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
