// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mes';

  @override
  String get lifetime => 'De por vida';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Haz una pausa en tu trabajo y dedica tiempo a Allah.';

  @override
  String get prayerAlarmDefaultName => 'Oración';

  @override
  String productUnavailable(Object id) {
    return 'El producto $id no está disponible para la compra.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '¡Compra de $productId realizada!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '¡Compra de $productId restaurada!';
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
    return 'Distancia a La Meca: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Recordármelo en $minutes minutos';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Es hora de la oración de $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Ronda: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language seleccionado';
  }

  @override
  String juzNumber(Object juz) {
    return 'Yuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Página $page';
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
  String get text1juz => '1 yuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 páginas';

  @override
  String get text100dhikr => '100 dikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 páginas';

  @override
  String get text28cclearsky => '28°C - Cielo despejado';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 páginas';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Acerca de';

  @override
  String get aboutQuranPro => 'Acerca de Quran Pro';

  @override
  String get activity => 'Actividad';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'El anuncio se está cargando. Inténtalo de nuevo en breve.';

  @override
  String get addCustomDhikr => 'Añadir dikr personalizado';

  @override
  String get addCustomDhikr2 => 'Añadir dikr personalizado';

  @override
  String get addDhikr => 'Añadir dikr';

  @override
  String get adjustPosition => 'AJUSTAR POSICIÓN';

  @override
  String get afternoon => 'TARDE';

  @override
  String get alMasjidAlHaram => 'Al-Masyid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALINEADO CON LA ALQUIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Toda alabanza es para Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Todas las funciones premium a precio reducido';

  @override
  String get allInOneQuranApp => 'La app del Corán todo en uno';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah me basta; no hay más divinidad que Él';

  @override
  String get allahIsTheGreatest => 'Allah es el más Grande';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Permite el acceso a la ubicación o pulsa Reintentar para usar el horario alternativo.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Permite las notificaciones para recibir los horarios de oración y los recordatorios diarios.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Permitir que la app funcione en segundo plano';

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
  String get avg => 'Prom.';

  @override
  String get ayah => 'Aleya';

  @override
  String get batteryOptimization => 'Optimización de batería';

  @override
  String get beautifulWidgets => 'Widgets elegantes';

  @override
  String get bestValue => 'MEJOR OFERTA';

  @override
  String get blackOnyx => 'Ónice negro';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get brightIvoryInterface => 'Interfaz marfil luminosa';

  @override
  String get calculatingDistance => 'Calculando distancia...';

  @override
  String get calibrateYourDirection => 'Calibra tu dirección';

  @override
  String get cancel => 'Cancelar';

  @override
  String get change => 'Cambiar';

  @override
  String get changeTasbihMode => '¿Cambiar el modo Tasbih?';

  @override
  String get chooseDhikr => 'Elegir dikr';

  @override
  String get chooseDisplayLanguage => 'Elige el idioma de visualización';

  @override
  String get chooseTheme => 'Elegir tema';

  @override
  String get chooseYourPreferredLanguage => 'Elige tu idioma preferido';

  @override
  String get clickOrSwipeToCount => 'Pulsa o desliza para contar';

  @override
  String get close => 'Cerrar';

  @override
  String get closeCustomGoal => 'Cerrar objetivo personalizado';

  @override
  String get completeAtLeast33Dhikr => 'Completa al menos 33 dikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Conecta tu corazón con el Sagrado Corán.';

  @override
  String get continueReading => 'Seguir leyendo';

  @override
  String get countsPerRound => 'Repeticiones por ronda';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Crea tu colección con joyas espirituales de artesanía maestra.';

  @override
  String get current => 'ACTUAL';

  @override
  String get current2 => 'Actual';

  @override
  String get currentLocationToMecca => 'Ubicación actual a La Meca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'El progreso actual se reiniciará para el nuevo modo.';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String get custom => 'Personalizado';

  @override
  String get customDhikr => 'Dikr personalizado';

  @override
  String get customGoal => 'Objetivo personalizado';

  @override
  String get customPrayerSounds => 'Sonidos de oración personalizados';

  @override
  String get dailyGoal => 'Objetivo diario';

  @override
  String get dailyQuests => 'Retos diarios';

  @override
  String get dailyQuranReminder => 'Recordatorio diario del Corán';

  @override
  String get dailyReminders => 'Recordatorios diarios';

  @override
  String get dailyTasbih => 'Tasbih diario';

  @override
  String get dark => 'Oscuro';

  @override
  String get dawn => 'ALBA';

  @override
  String get debug => 'Depuración';

  @override
  String get dhikr => 'Dikr';

  @override
  String get dhikrActivity => 'Actividad de dikr';

  @override
  String get dhuAlHijjah => 'Du Al-Hiyya';

  @override
  String get dhuAlQadah => 'Du Al-Qaada';

  @override
  String get dhuhr => 'Duhr';

  @override
  String get direction => 'DIRECCIÓN';

  @override
  String get disableBatteryOptimization =>
      'Desactivar la optimización de batería';

  @override
  String get disableOptimization => 'DESACTIVAR OPTIMIZACIÓN';

  @override
  String get distance => 'DISTANCIA';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'ej. HasbunAllah';

  @override
  String get east => 'Este';

  @override
  String get enableAutoStart => 'Activar el inicio automático';

  @override
  String get enableNotifications => 'Activar notificaciones';

  @override
  String get enableReminders => 'Activar recordatorios';

  @override
  String get english => 'Inglés';

  @override
  String get enterYourName => 'Escribe tu nombre';

  @override
  String get equipped => 'EQUIPADO';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Todo lo que necesitas para vivir mejor el Corán.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Comentarios';

  @override
  String get first => 'Primero';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Para mayor precisión, mantén el teléfono plano y lejos de objetos magnéticos.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Pack completo';

  @override
  String get getAnAdFreeExperienceForever =>
      'Disfruta de una experiencia sin anuncios para siempre';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Recibe recordatorios para leer y mantener la constancia.';

  @override
  String get getStarted => 'Empezar';

  @override
  String get gloryAndPraiseBeToAllah => 'Gloria y alabanza a Allah';

  @override
  String get gloryBeToAllah => 'Gloria a Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Gloria a Allah, el Magnífico';

  @override
  String get goToHome => 'Ir al inicio';

  @override
  String get goldenEngraved => 'Grabado dorado';

  @override
  String get greenJade => 'Jade verde';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanói, Vietnam';

  @override
  String get haptic => 'Vibración';

  @override
  String get hasanatHub => 'Centro de Hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Inicio';

  @override
  String get howYourDataIsHandled => 'Cómo se tratan tus datos';

  @override
  String get iSeekForgivenessFromAllah => 'Pido perdón a Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Me refugio en Allah del maldito Shaytán';

  @override
  String get immediateAlerts => 'Alertas inmediatas';

  @override
  String get inTheNameOfAllah => 'En el nombre de Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Ciertamente pertenecemos a Allah y a Él retornamos';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isha';

  @override
  String get jumadaAlAwwal => 'Yumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Yumada Al-Zani';

  @override
  String get juz => 'YUZ';

  @override
  String get juz2 => 'Yuz';

  @override
  String get keepAdhanAlarmsReliable => 'Mantén fiables las alarmas del adhan';

  @override
  String get keepItUpYouReDoingGreat => '¡Sigue así! Lo estás haciendo genial.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Mantén fiables las llamadas a la oración incluso con la app cerrada.';

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
  String get later => 'MÁS TARDE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Comencemos tu hermoso viaje con el Corán.';

  @override
  String get letSPersonalizeYourExperience => 'Personalicemos\ntu experiencia';

  @override
  String get light => 'Claro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get listenToOrReadAnyAyahToday => 'Escucha o lee una aleya hoy';

  @override
  String get locating => 'Localizando...';

  @override
  String get location => 'Ubicación';

  @override
  String get locationPermissionsAreDenied =>
      'Se ha denegado el acceso a la ubicación';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'El acceso a la ubicación está denegado permanentemente.';

  @override
  String get locationServicesAreDisabled =>
      'Los servicios de ubicación están desactivados.';

  @override
  String get longestStreak => 'Mejor racha';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Quizá más tarde';

  @override
  String get meccaSaudiArabia => 'La Meca, Arabia Saudí';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Señor mío, perdona y ten misericordia';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Señor mío, necesito todo bien que hagas descender sobre mí';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Señor mío, auméntame en conocimiento';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Señor mío, facilítamelo y no me lo hagas difícil';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nombre (opcional)';

  @override
  String get next => 'Siguiente';

  @override
  String get nextDhikr => 'Dikr siguiente';

  @override
  String get nextPrayer => 'PRÓXIMA ORACIÓN';

  @override
  String get night => 'NOCHE';

  @override
  String get nightEmeraldInterface => 'Interfaz esmeralda nocturna';

  @override
  String get noBookmarksYet => 'Aún no hay marcadores';

  @override
  String get noon => 'MEDIODÍA';

  @override
  String get north => 'Norte';

  @override
  String get northeast => 'Noreste';

  @override
  String get northwest => 'Noroeste';

  @override
  String get notificationsAlarm => 'Notificaciones y alarma';

  @override
  String get notificationsForPrayerTimes =>
      'Notificaciones de los horarios de oración';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Oh Allah, bendice a Muhammad';

  @override
  String get oEverLivingOSustainer => 'Oh Viviente, oh Sustentador';

  @override
  String get openAutoStart => 'ABRIR INICIO AUTOMÁTICO';

  @override
  String get optimizeAdhanPerformance => 'Optimizar el rendimiento del adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Señor nuestro, concédenos bien en esta vida';

  @override
  String get page => 'PÁGINA';

  @override
  String get pearl => 'Perla';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personaliza tus notificaciones del adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Alabado sea Allah, Señor de los mundos';

  @override
  String get prayerAlarms => 'Alarmas de oración';

  @override
  String get prayerSchedule => 'Horario de oraciones';

  @override
  String get prayerTimeNotifications => 'Notificaciones de horas de oración';

  @override
  String get prayerTimesAreLoading => 'Cargando los horarios de oración';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Horarios de oración, alquibla, lectura del Corán y tasbih en un solo compañero diario.';

  @override
  String get prayerQuranQibla => 'ORACIÓN • CORÁN • ALQUIBLA';

  @override
  String get premiumThemes => 'Temas premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Preparando tu viaje espiritual...';

  @override
  String get previousDhikr => 'Dikr anterior';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get qibla => 'Alquibla';

  @override
  String get qiblaFinder => 'Brújula de la alquibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Corán';

  @override
  String get quranPlayback => 'Reproducción del Corán';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro reúne los horarios de oración, la alquibla, la lectura del Corán y el tasbih en un sencillo compañero diario.';

  @override
  String get quranProPreferences => 'Preferencias de Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro guarda las preferencias de bienvenida y de progreso localmente en este dispositivo. Se pueden usar datos analíticos para mejorar la estabilidad y la calidad.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro guarda tu progreso de tasbih localmente en este dispositivo. Se pueden usar datos analíticos para mejorar la estabilidad de la app y la calidad del producto.';

  @override
  String get quranRecitation => 'Recitación del Corán';

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
  String get rabiAlThani => 'Rabi Al-Zani';

  @override
  String get rateApp => 'Valorar la app';

  @override
  String get rateQuranPro => 'Valorar Quran Pro';

  @override
  String get readListen => 'Leer y escuchar';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Lee el Corán con hermosas recitaciones.';

  @override
  String get recent => 'Reciente';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recomendado para Xiaomi, Oppo, Vivo y Huawei';

  @override
  String get redCarnelian => 'Cornalina roja';

  @override
  String get remindMeAt => 'Recordármelo a las';

  @override
  String get removeAds => 'Quitar anuncios';

  @override
  String get requestingLocationPermission =>
      'Solicitando acceso a la ubicación...';

  @override
  String get reset => 'Reiniciar';

  @override
  String get retry => 'Reintentar';

  @override
  String get returnToCompass => 'Volver a la brújula';

  @override
  String get s => 'S';

  @override
  String get save => 'Guardar';

  @override
  String get saveGoal => 'Guardar objetivo';

  @override
  String get searchSurahNumberArabic => 'Buscar sura, número, árabe...';

  @override
  String get searchSurah => 'Buscar sura...';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get selectTheThemeYouLike => 'Selecciona el tema que prefieras';

  @override
  String get selectYourBead => 'Elige tu cuenta de tasbih';

  @override
  String get shop => 'Tienda';

  @override
  String get shopCustomization => 'Tienda y personalización';

  @override
  String get sound => 'Sonido';

  @override
  String get south => 'Sur';

  @override
  String get southeast => 'Sureste';

  @override
  String get southwest => 'Suroeste';

  @override
  String get specialOccasionsAndMore => 'Ocasiones especiales y mucho más';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'La valoración en la tienda se activará cuando la ficha de producción esté lista.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'OCASO';

  @override
  String get supportQuranProOnTheStore => 'Apoya a Quran Pro en la tienda';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Ajustes del tasbih';

  @override
  String get tellUsWhatToImprove => 'Cuéntanos qué mejorar';

  @override
  String get termsOfUse => 'Condiciones de uso';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Gracias por usar Quran Pro. La valoración en la tienda se activará cuando la ficha de producción esté lista.';

  @override
  String get thereIsNoDeityExceptAllah => 'No hay más divinidad que Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'No hay poder ni fuerza sino en Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Esto nos ayuda a personalizar los recordatorios y seguir tu progreso.';

  @override
  String get tigerSEye => 'Ojo de tigre';

  @override
  String get today => 'Hoy';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'HASANAT TOTALES';

  @override
  String get trackProgress => 'Seguir el progreso';

  @override
  String get trackYourReadingAndAchievements =>
      'Sigue tu lectura y tus logros.';

  @override
  String get tryAgain => 'Reintentar';

  @override
  String get undo => 'Deshacer';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Desbloquea todos los temas y personalizaciones';

  @override
  String get usageGuidelines => 'Normas de uso';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Usa Quran Pro con respeto para tu adoración personal, tu aprendizaje y tus rutinas islámicas diarias.';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get w => 'O';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get west => 'Oeste';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => '¡Todo listo!';

  @override
  String get yourProgress => 'Tu progreso';

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
  String get wood => 'Madera';

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
  String get estimatedLocation => 'Ubicación estimada';
}
