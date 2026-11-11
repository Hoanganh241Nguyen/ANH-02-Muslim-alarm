part of '../tasbih_page.dart';

class _TasbihPageState extends State<TasbihPage>
    with SingleTickerProviderStateMixin {
  static const int _baseTapAnimationMs = 130;
  static const int _fastestTapAnimationMs = 55;
  static const int _slowestTapAnimationMs = 260;

  late final AnimationController _tapController;
  late final Animation<double> _beadScale;
  late final Animation<double> _glow;
  late final Animation<double> _strandSlide;
  bool _isTapAnimationRunning = false;
  bool _hasQueuedTapAnimation = false;
  int _movementDirection = 1;
  DateTime? _lastCountInputAt;
  DateTime? _lastCountAnalyticsAt;
  Duration _nextTapAnimationDuration = const Duration(
    milliseconds: _baseTapAnimationMs,
  );

  @override
  void initState() {
    super.initState();
    AnalyticsService().trackScreenView('tasbih_page', source: 'page_init');
    _tapController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: _baseTapAnimationMs),
    );
    _beadScale = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1,
          end: .96,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 45,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: .96,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 55,
      ),
    ]).animate(_tapController);
    _glow = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 0,
          end: .5,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 45,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: .5,
          end: 0,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 55,
      ),
    ]).animate(_tapController);
    _strandSlide = Tween<double>(
      begin: 0,
      end: 1,
    ).chain(CurveTween(curve: Curves.easeOut)).animate(_tapController);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/images/default_bean.webp'), context);
  }

  @override
  void dispose() {
    _tapController.dispose();
    super.dispose();
  }

  void _count(TasbihProvider provider, {int direction = 1}) {
    _movementDirection = direction;
    _trackCountTap(provider);
    if (provider.isVibrationEnabled) {
      HapticFeedback.lightImpact();
    }
    provider.increment();
    context.read<GamificationProvider>().recordAction();
    _playTapAnimation(duration: _tapAnimationDurationForInputGap());
  }

  void _trackCountTap(TasbihProvider provider) {
    final now = DateTime.now();
    final countAfter = provider.count + 1;
    final reachedCycleGoal =
        provider.currentCycleGoal > 0 &&
        countAfter % provider.currentCycleGoal == 0;
    final shouldTrack =
        _lastCountAnalyticsAt == null ||
        now.difference(_lastCountAnalyticsAt!).inMilliseconds > 1500 ||
        reachedCycleGoal;
    if (!shouldTrack) return;
    _lastCountAnalyticsAt = now;
    AnalyticsService().trackButtonTap(
      'tasbih',
      'count_tap',
      params: {
        'dhikr': provider.currentDhikr,
        'mode': provider.mode.name,
        'count_after': countAfter,
        'goal': provider.goal,
      },
    );
  }

  void _playTapAnimation({required Duration duration}) {
    if (_isTapAnimationRunning) {
      if (duration < _nextTapAnimationDuration) {
        _nextTapAnimationDuration = duration;
      }
      _hasQueuedTapAnimation = true;
      return;
    }
    _nextTapAnimationDuration = duration;
    unawaited(_runTapAnimationQueue());
  }

  Future<void> _runTapAnimationQueue() async {
    _isTapAnimationRunning = true;
    try {
      do {
        _hasQueuedTapAnimation = false;
        _tapController.duration = _nextTapAnimationDuration;
        await _tapController.forward(from: 0);
        if (!mounted) return;
        _tapController.reset();
      } while (_hasQueuedTapAnimation && mounted);
    } finally {
      _isTapAnimationRunning = false;
    }
  }

  Duration _tapAnimationDurationForInputGap() {
    final now = DateTime.now();
    final previous = _lastCountInputAt;
    _lastCountInputAt = now;
    if (previous == null) {
      return const Duration(milliseconds: _slowestTapAnimationMs);
    }
    final gapMs = now.difference(previous).inMilliseconds;
    final durationMs = switch (gapMs) {
      <= 90 => _fastestTapAnimationMs,
      <= 140 => 70,
      <= 220 => _baseTapAnimationMs,
      <= 420 => 190,
      _ => _slowestTapAnimationMs,
    };
    return Duration(milliseconds: durationMs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Consumer<TasbihProvider>(
          builder: (context, provider, child) {
            return LayoutBuilder(
              builder: (context, constraints) {
                final compact = constraints.maxHeight < 680;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                      child: _TasbihAppBar(
                        onAddDhikr: () {
                          AnalyticsService().trackButtonTap(
                            'tasbih',
                            'custom_dhikr_open',
                            params: {'source': 'app_bar'},
                          );
                          _showCustomDhikrSheet(provider);
                        },
                        onReset: () => _confirmReset(provider),
                      ),
                    ),
                    SizedBox(height: compact ? 12 : 16),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(
                          20,
                          0,
                          20,
                          compact ? 82 : 96,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight:
                                constraints.maxHeight - (compact ? 180 : 198),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              _DhikrSelector(
                                provider: provider,
                                onAddCustom: () {
                                  AnalyticsService().trackButtonTap(
                                    'tasbih',
                                    'custom_dhikr_open',
                                    params: {'source': 'dropdown'},
                                  );
                                  _showCustomDhikrSheet(provider);
                                },
                              ),
                              SizedBox(height: compact ? 12 : 16),
                              _ModeSelector(
                                provider: provider,
                                onModeSelected: (mode) =>
                                    _confirmModeChange(provider, mode),
                              ),
                              SizedBox(height: compact ? 14 : 20),
                              _ProgressCard(provider: provider),
                              SizedBox(height: compact ? 12 : 18),
                              _TapStage(
                                provider: provider,
                                compact: compact,
                                beadScale: _beadScale,
                                glow: _glow,
                                strandSlide: _strandSlide,
                                movementDirection: _movementDirection,
                                onCount: (direction) =>
                                    _count(provider, direction: direction),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _confirmModeChange(
    TasbihProvider provider,
    TasbihMode mode,
  ) async {
    if (mode == provider.mode) return;
    if (mode == TasbihMode.custom) {
      await _showCustomGoalPopup(provider);
      return;
    }
    if (!mounted) return;
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.changeTasbihMode),
        content: Text(l10n.currentProgressWillResetForTheNewMode),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.change),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      AnalyticsService().trackButtonTap(
        'tasbih',
        'mode_change',
        params: {'from_mode': provider.mode.name, 'to_mode': mode.name},
      );
      provider.setMode(mode);
    }
  }

  Future<void> _confirmReset(TasbihProvider provider) async {
    if (provider.count == 0) return;
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.reset),
        content: Text('${provider.currentDhikr}: ${provider.count} → 0'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.reset),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    AnalyticsService().trackButtonTap('tasbih', 'counter_reset');
    provider.reset();
  }

  Future<void> _showCustomGoalPopup(TasbihProvider provider) async {
    final result = await showGeneralDialog<_CustomGoalConfig>(
        context: context,
        barrierDismissible: true,
        barrierLabel: 'Close custom goal',
        barrierColor: Colors.black.withValues(alpha: .16),
        transitionDuration: const Duration(milliseconds: 220),
        pageBuilder: (context, animation, secondaryAnimation) {
          final media = MediaQuery.of(context);
          final width = math.min(media.size.width - 32, 340.0);
          return SafeArea(
            child: Material(
              color: Colors.transparent,
              child: Stack(
                children: [
                  Positioned(
                    right: 16,
                    bottom: media.viewInsets.bottom + 108,
                    width: width,
                    child: _CustomGoalPopupCard(
                      initialRounds: provider.customRounds,
                      initialCountPerRound: provider.customCountPerRound,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          final curved = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutBack,
            reverseCurve: Curves.easeInCubic,
          );
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: Tween<double>(begin: .92, end: 1).animate(curved),
              alignment: Alignment.bottomRight,
              child: child,
            ),
          );
        },
      );
    if (result == null || !mounted) return;
    AnalyticsService().trackButtonTap(
      'tasbih',
      'mode_change',
      params: {
        'from_mode': provider.mode.name,
        'to_mode': TasbihMode.custom.name,
        'custom_rounds': result.rounds,
        'custom_count_per_round': result.countPerRound,
      },
    );
    provider.setMode(
      TasbihMode.custom,
      customRounds: result.rounds,
      customCountPerRound: result.countPerRound,
    );
  }

  Future<void> _showCustomDhikrSheet(TasbihProvider provider) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => const _CustomDhikrSheet(),
    );
    if (result != null) {
      AnalyticsService().trackButtonTap(
        'tasbih',
        'custom_dhikr_add',
        params: {'has_value': result.trim().isNotEmpty},
      );
      provider.addCustomDhikr(result);
    }
  }
}
