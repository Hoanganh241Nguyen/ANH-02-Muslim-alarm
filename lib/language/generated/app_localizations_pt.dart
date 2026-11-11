// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get week => 'Semana';

  @override
  String get month => 'Mês';

  @override
  String get lifetime => 'Vitalício';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Faça uma pausa no seu trabalho e reserve um tempo para Allah.';

  @override
  String get prayerAlarmDefaultName => 'Oração';

  @override
  String productUnavailable(Object id) {
    return 'Produto $id indisponível para compra.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Compra de $productId concluída!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Compra de $productId restaurada!';
  }

  @override
  String daysCount(Object count) {
    return '$count dias';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'A SEGUIR: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distância até Meca: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Lembrar em $minutes minutos';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'É hora da oração do $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Rodada: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language selecionado';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
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
    return '$surahName: versículo $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count versículos';
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
    return 'NÍVEL $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Surata Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 Juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 páginas';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 páginas';

  @override
  String get text28cclearsky => '28°C - Céu limpo';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 páginas';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Sobre';

  @override
  String get aboutQuranPro => 'Sobre o Quran Pro';

  @override
  String get activity => 'Atividade';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'O anúncio está carregando. Tente novamente em instantes.';

  @override
  String get addCustomDhikr => 'Adicionar dhikr personalizado';

  @override
  String get addCustomDhikr2 => 'Adicionar Dhikr Personalizado';

  @override
  String get addDhikr => 'Adicionar Dhikr';

  @override
  String get adjustPosition => 'AJUSTAR POSIÇÃO';

  @override
  String get afternoon => 'TARDE';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALINHADO À QUIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Todo louvor pertence a Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Todos os recursos premium com preço reduzido';

  @override
  String get allInOneQuranApp => 'App completo do Alcorão';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah me basta; não há divindade além d\'Ele';

  @override
  String get allahIsTheGreatest => 'Allah é o Maior';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Permita o acesso à localização ou toque em Tentar novamente para usar a programação alternativa.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Permita as notificações para receber horários de oração e lembretes diários.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Permitir que o app funcione em segundo plano';

  @override
  String get app => 'App';

  @override
  String get arabic => 'Árabe';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Méd.';

  @override
  String get ayah => 'Versículo';

  @override
  String get batteryOptimization => 'Otimização de bateria';

  @override
  String get beautifulWidgets => 'Widgets lindos';

  @override
  String get bestValue => 'MELHOR OFERTA';

  @override
  String get blackOnyx => 'Ônix negro';

  @override
  String get bookmarks => 'Marcadores';

  @override
  String get brightIvoryInterface => 'Interface marfim clara';

  @override
  String get calculatingDistance => 'Calculando distância...';

  @override
  String get calibrateYourDirection => 'Calibre sua direção';

  @override
  String get cancel => 'Cancelar';

  @override
  String get change => 'Alterar';

  @override
  String get changeTasbihMode => 'Alterar o modo do tasbih?';

  @override
  String get chooseDhikr => 'Escolher dhikr';

  @override
  String get chooseDisplayLanguage => 'Escolha o idioma de exibição';

  @override
  String get chooseTheme => 'Escolher tema';

  @override
  String get chooseYourPreferredLanguage => 'Escolha seu idioma preferido';

  @override
  String get clickOrSwipeToCount => 'Toque ou deslize para contar';

  @override
  String get close => 'Fechar';

  @override
  String get closeCustomGoal => 'Fechar meta personalizada';

  @override
  String get completeAtLeast33Dhikr => 'Complete pelo menos 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Conecte seu coração ao Sagrado Alcorão.';

  @override
  String get continueReading => 'Continuar leitura';

  @override
  String get countsPerRound => 'Contagens por rodada';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Monte sua coleção com gemas espirituais feitas com maestria.';

  @override
  String get current => 'ATUAL';

  @override
  String get current2 => 'Atual';

  @override
  String get currentLocationToMecca => 'Da localização atual até Meca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'O progresso atual será zerado para o novo modo.';

  @override
  String get currentStreak => 'Sequência atual';

  @override
  String get custom => 'Personalizado';

  @override
  String get customDhikr => 'Dhikr personalizado';

  @override
  String get customGoal => 'Meta personalizada';

  @override
  String get customPrayerSounds => 'Sons de oração personalizados';

  @override
  String get dailyGoal => 'Meta diária';

  @override
  String get dailyQuests => 'Missões diárias';

  @override
  String get dailyQuranReminder => 'Lembrete diário do Alcorão';

  @override
  String get dailyReminders => 'Lembretes diários';

  @override
  String get dailyTasbih => 'Tasbih diário';

  @override
  String get dark => 'Escuro';

  @override
  String get dawn => 'AMANHECER';

  @override
  String get debug => 'Depuração';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Atividade de dhikr';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'DIREÇÃO';

  @override
  String get disableBatteryOptimization => 'Desativar otimização de bateria';

  @override
  String get disableOptimization => 'DESATIVAR OTIMIZAÇÃO';

  @override
  String get distance => 'DISTÂNCIA';

  @override
  String get e => 'L';

  @override
  String get eGHasbunallah => 'ex.: HasbunAllah';

  @override
  String get east => 'Leste';

  @override
  String get enableAutoStart => 'Ativar inicialização automática';

  @override
  String get enableNotifications => 'Ativar notificações';

  @override
  String get enableReminders => 'Ativar lembretes';

  @override
  String get english => 'Inglês';

  @override
  String get enterYourName => 'Digite seu nome';

  @override
  String get equipped => 'EQUIPADO';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Tudo o que você precisa para uma experiência melhor com o Alcorão.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Feedback';

  @override
  String get first => 'Primeiro';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Para obter os resultados mais precisos, mantenha o celular na horizontal e longe de objetos magnéticos.';

  @override
  String get free => 'Grátis';

  @override
  String get fullBundle => 'Pacote completo';

  @override
  String get getAnAdFreeExperienceForever =>
      'Tenha uma experiência sem anúncios para sempre';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Receba lembretes para ler e mantenha a constância.';

  @override
  String get getStarted => 'Começar';

  @override
  String get gloryAndPraiseBeToAllah => 'Glória e louvor a Allah';

  @override
  String get gloryBeToAllah => 'Glória a Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Glória a Allah, o Magnífico';

  @override
  String get goToHome => 'Ir para o início';

  @override
  String get goldenEngraved => 'Gravado em ouro';

  @override
  String get greenJade => 'Jade verde';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanói, Vietnã';

  @override
  String get haptic => 'Vibração';

  @override
  String get hasanatHub => 'Central de Hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Início';

  @override
  String get howYourDataIsHandled => 'Como seus dados são tratados';

  @override
  String get iSeekForgivenessFromAllah => 'Peço perdão a Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Busco refúgio em Allah contra o satanás maldito';

  @override
  String get immediateAlerts => 'Alertas imediatos';

  @override
  String get inTheNameOfAllah => 'Em nome de Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Certamente pertencemos a Allah e a Ele retornaremos';

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
  String get juz => 'JUZ';

  @override
  String get juz2 => 'Juz';

  @override
  String get keepAdhanAlarmsReliable =>
      'Mantenha os alarmes do adhan confiáveis';

  @override
  String get keepItUpYouReDoingGreat =>
      'Continue assim! Você está indo muito bem.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Mantenha o chamado à oração confiável mesmo com o app fechado.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Idioma';

  @override
  String get lapisLazuli => 'Lápis-lazúli';

  @override
  String get last7Days => 'Últimos 7 dias';

  @override
  String get later => 'DEPOIS';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Vamos começar sua bela jornada com o Alcorão.';

  @override
  String get letSPersonalizeYourExperience =>
      'Vamos personalizar\nsua experiência';

  @override
  String get light => 'Claro';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get listenToOrReadAnyAyahToday => 'Ouça ou leia um versículo hoje';

  @override
  String get locating => 'Localizando...';

  @override
  String get location => 'Localização';

  @override
  String get locationPermissionsAreDenied =>
      'Permissões de localização negadas';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'As permissões de localização foram negadas permanentemente.';

  @override
  String get locationServicesAreDisabled =>
      'Os serviços de localização estão desativados.';

  @override
  String get longestStreak => 'Maior sequência';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Talvez depois';

  @override
  String get meccaSaudiArabia => 'Meca, Arábia Saudita';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Meu Senhor, perdoa e tem misericórdia';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Meu Senhor, necessito de todo bem que Tu fizeres descer';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Meu Senhor, aumenta meu conhecimento';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Meu Senhor, torna isto fácil e não difícil';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nome (opcional)';

  @override
  String get next => 'Próximo';

  @override
  String get nextDhikr => 'Próximo dhikr';

  @override
  String get nextPrayer => 'PRÓXIMA ORAÇÃO';

  @override
  String get night => 'NOITE';

  @override
  String get nightEmeraldInterface => 'Interface esmeralda noturna';

  @override
  String get noBookmarksYet => 'Nenhum marcador ainda';

  @override
  String get noon => 'MEIO-DIA';

  @override
  String get north => 'Norte';

  @override
  String get northeast => 'Nordeste';

  @override
  String get northwest => 'Noroeste';

  @override
  String get notificationsAlarm => 'Notificações e alarme';

  @override
  String get notificationsForPrayerTimes =>
      'Notificações dos horários de oração';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Ó Allah, abençoa Muhammad';

  @override
  String get oEverLivingOSustainer => 'Ó Vivente, ó Sustentador';

  @override
  String get openAutoStart => 'ABRIR INICIALIZAÇÃO AUTOMÁTICA';

  @override
  String get optimizeAdhanPerformance => 'Otimizar o desempenho do adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Nosso Senhor, concede-nos o bem nesta vida';

  @override
  String get page => 'PÁGINA';

  @override
  String get pearl => 'Pérola';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personalize suas notificações de adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Louvado seja Allah, Senhor dos mundos';

  @override
  String get prayerAlarms => 'Alarmes de oração';

  @override
  String get prayerSchedule => 'Programação de orações';

  @override
  String get prayerTimeNotifications => 'Notificações de horários de oração';

  @override
  String get prayerTimesAreLoading => 'Carregando horários de oração';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Horários de oração, quibla, leitura do Alcorão e tasbih em um companheiro diário.';

  @override
  String get prayerQuranQibla => 'ORAÇÃO • ALCORÃO • QUIBLA';

  @override
  String get premiumThemes => 'Temas premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Preparando sua jornada espiritual...';

  @override
  String get previousDhikr => 'Dhikr anterior';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get qibla => 'Quibla';

  @override
  String get qiblaFinder => 'Localizador de quibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Alcorão';

  @override
  String get quranPlayback => 'Reprodução do Alcorão';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'O Quran Pro reúne horários de oração, quibla, leitura do Alcorão e tasbih em um companheiro diário simples.';

  @override
  String get quranProPreferences => 'Preferências do Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'O Quran Pro armazena as preferências de introdução e progresso localmente neste dispositivo. Dados de análise podem ser usados para melhorar a estabilidade e a qualidade.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'O Quran Pro armazena seu progresso no tasbih localmente neste dispositivo. Dados de análise podem ser usados para melhorar a estabilidade do app e a qualidade do produto.';

  @override
  String get quranRecitation => 'Recitação do Alcorão';

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
  String get rateApp => 'Avaliar o app';

  @override
  String get rateQuranPro => 'Avaliar o Quran Pro';

  @override
  String get readListen => 'Ler e ouvir';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Leia o Alcorão com belas recitações.';

  @override
  String get recent => 'Recentes';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recomendado para Xiaomi, Oppo, Vivo e Huawei';

  @override
  String get redCarnelian => 'Cornalina vermelha';

  @override
  String get remindMeAt => 'Lembrar-me às';

  @override
  String get removeAds => 'Remover anúncios';

  @override
  String get requestingLocationPermission =>
      'Solicitando permissão de localização...';

  @override
  String get reset => 'Redefinir';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get returnToCompass => 'Voltar à bússola';

  @override
  String get s => 'S';

  @override
  String get save => 'Salvar';

  @override
  String get saveGoal => 'Salvar meta';

  @override
  String get searchSurahNumberArabic => 'Buscar surata, número, árabe...';

  @override
  String get searchSurah => 'Buscar surata...';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get selectTheThemeYouLike => 'Selecione o tema que você preferir';

  @override
  String get selectYourBead => 'Escolha sua conta';

  @override
  String get shop => 'Loja';

  @override
  String get shopCustomization => 'Loja e personalização';

  @override
  String get sound => 'Som';

  @override
  String get south => 'Sul';

  @override
  String get southeast => 'Sudeste';

  @override
  String get southwest => 'Sudoeste';

  @override
  String get specialOccasionsAndMore => 'Ocasiões especiais e muito mais';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'A avaliação na loja será ativada quando a publicação de produção estiver pronta.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'PÔR DO SOL';

  @override
  String get supportQuranProOnTheStore => 'Apoie o Quran Pro na loja';

  @override
  String get surah => 'Surata';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Configurações do tasbih';

  @override
  String get tellUsWhatToImprove => 'Conte o que podemos melhorar';

  @override
  String get termsOfUse => 'Termos de Uso';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Obrigado por usar o Quran Pro. A avaliação na loja será ativada quando a publicação na loja estiver pronta.';

  @override
  String get thereIsNoDeityExceptAllah => 'Não há divindade além de Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Não há poder nem força senão por Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Isso nos ajuda a personalizar lembretes e acompanhar seu progresso.';

  @override
  String get tigerSEye => 'Olho de tigre';

  @override
  String get today => 'Hoje';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'TOTAL DE HASANAT';

  @override
  String get trackProgress => 'Acompanhar progresso';

  @override
  String get trackYourReadingAndAchievements =>
      'Acompanhe sua leitura e suas conquistas.';

  @override
  String get tryAgain => 'Tentar novamente';

  @override
  String get undo => 'Desfazer';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Desbloqueie todos os temas e personalizações do app';

  @override
  String get usageGuidelines => 'Diretrizes de uso';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Use o Quran Pro com respeito para adoração pessoal, aprendizado e rotinas islâmicas diárias.';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get w => 'O';

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get west => 'Oeste';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Tudo pronto!';

  @override
  String get yourProgress => 'Seu progresso';

  @override
  String get continueLabel => 'Continuar';

  @override
  String get amethyst => 'Ametista';

  @override
  String get indonesian => 'Indonésio';

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
  String get estimatedLocation => 'Localização estimada';
}
