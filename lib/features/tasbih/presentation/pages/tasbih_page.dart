import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../providers/tasbih_provider.dart';

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}


class _TasbihPageState extends State<TasbihPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late PageController _beadController;

  @override
  void initState() {
    super.initState();
    // Sử dụng initialPage lớn để có thể hiển thị hạt ở cả hai phía ngay từ đầu
    _beadController = PageController(viewportFraction: 0.2, initialPage: 1000);
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.94).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _beadController.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _handleTap(TasbihProvider provider) {
    HapticFeedback.lightImpact();
    provider.increment();
    
    // Record action for gamification
    context.read<GamificationProvider>().recordAction();

    _controller.forward().then((_) => _controller.reverse());
    
    _beadController.animateToPage(
      1000 + provider.count,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: Consumer<TasbihProvider>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      const SizedBox(height: 8),
                      _buildDhikrSelector(provider),
                      const SizedBox(height: 32),
                      _buildCounterDisplay(provider),
                      Expanded(
                        child: _buildBeadsView(provider),
                      ),
                      _buildBottomActions(provider),
                      const SizedBox(height: 24),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          const Icon(Icons.fingerprint, color: AppColors.emerald, size: 30),
          const SizedBox(width: 12),
          Text(
            'Tasbih',
            style: GoogleFonts.amiri(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.emerald,
              height: 1.2,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.history_rounded, color: AppColors.primaryText, size: 24),
          ),
        ],
      ),
    );
  }

  Widget _buildDhikrSelector(TasbihProvider provider) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: provider.currentDhikr,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.emerald),
          style: GoogleFonts.amiri(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
          ),
          items: provider.dhikrs.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (newValue) {
            if (newValue != null) {
              provider.setDhikr(newValue);
              _beadController.jumpToPage(1000);
            }
          },
        ),
      ),
    );
  }

  Widget _buildCounterDisplay(TasbihProvider provider) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: ScaleTransition(scale: animation, child: child),
          ),
          child: Text(
            '${provider.count}',
            key: ValueKey<int>(provider.count),
            style: GoogleFonts.amiri(
              fontSize: 100,
              fontWeight: FontWeight.w900,
              color: AppColors.emerald,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBeadsView(TasbihProvider provider) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        // Vuốt xuống để đếm (primaryVelocity > 0)
        if (details.primaryVelocity! > 100) _handleTap(provider);
      },
      onTap: () => _handleTap(provider),
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Sợi dây mảnh (Dọc) với hiệu ứng mờ dần 2 đầu
            Positioned(
              top: -20,
              bottom: -20,
              width: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFFCBD5E1).withOpacity(0),
                      const Color(0xFFCBD5E1),
                      const Color(0xFFCBD5E1),
                      const Color(0xFFCBD5E1).withOpacity(0),
                    ],
                    stops: const [0.0, 0.1, 0.9, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            // Gradient highlight ở giữa (Đặt dưới hạt để không làm mờ hạt)
            IgnorePointer(
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.8],
                  ),
                ),
              ),
            ),
            // Danh sách hạt PageView (Dọc)
            PageView.builder(
              controller: _beadController,
              scrollDirection: Axis.vertical,
              reverse: true, // Đảo ngược để vuốt xuống thì hạt chạy xuống
              physics: const NeverScrollableScrollPhysics(),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: Listenable.merge([_beadController, _controller]),
                  builder: (context, child) {
                    double page = 1000.0 + provider.count;
                    if (_beadController.hasClients && _beadController.positions.length == 1) {
                      page = _beadController.page ?? page;
                    }

                    // Tính toán độ lệch của hạt so với vị trí trung tâm (page)
                    double diff = index - page;
                    double absDiff = diff.abs();
                    
                    double opacity = 1.0;
                    double scale = 1.0;

                    // Giữ tất cả hạt trong vùng hiển thị rõ nét 100%
                    // Chỉ mờ đi khi bắt đầu đi ra khỏi khung hình (ngưỡng xa > 2.0)
                    if (absDiff > 2.0) {
                      double normalized = ((absDiff - 2.0) / 0.5).clamp(0.0, 1.0);
                      opacity = 1.0 - Curves.easeIn.transform(normalized);
                      scale = 1.0 - (Curves.easeIn.transform(normalized) * 0.3);
                    }
                    
                    final isCurrent = index == (1000 + provider.count);

                    return Opacity(
                      opacity: opacity,
                      child: Transform.scale(
                        scale: scale * (isCurrent ? _scaleAnimation.value : 1.0),
                        child: Center(
                          child: _buildBeadItem(isCurrent),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBeadItem(bool isCurrent) {
    return Container(
      width: 82,
      height: 82,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            isCurrent ? AppColors.emerald : const Color(0xFF059669),
            const Color(0xFF064E3B),
            const Color(0xFF022C22),
          ],
          center: const Alignment(-0.4, -0.4),
          radius: 0.9,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.35),
            blurRadius: 18, // Tăng blur để bóng mềm hơn
            offset: const Offset(6, 8),
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(-4, -4),
          ),
          if (isCurrent)
            BoxShadow(
              color: AppColors.emerald.withOpacity(0.4),
              blurRadius: 25,
              spreadRadius: 2,
            ),
        ],
      ),
      child: isCurrent 
          ? Center(
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }

  Widget _buildBottomActions(TasbihProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildActionItem(
          icon: Icons.refresh_rounded,
          label: 'Reset',
          onTap: () {
            HapticFeedback.heavyImpact();
            provider.reset();
            _beadController.animateToPage(1000, duration: const Duration(milliseconds: 600), curve: Curves.easeInOutCubic);
          },
        ),
        const SizedBox(width: 80),
        _buildActionItem(
          icon: Icons.volume_up_rounded,
          label: 'Sound',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildActionItem({required IconData icon, required String label, required VoidCallback onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Icon(icon, color: AppColors.secondaryText, size: 24),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryText,
          ),
        ),
      ],
    );
  }
}
