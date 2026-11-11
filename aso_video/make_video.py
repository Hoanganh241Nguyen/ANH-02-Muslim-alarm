"""ASO promo video generator (1080x1920, 30fps) for Muslim markets.
Usage: python3 make_video.py [ar|id|en|tr|ms|all]
"""
import math, subprocess, sys, os
from PIL import Image, ImageDraw, ImageFont, ImageFilter
import arabic_reshaper
from bidi.algorithm import get_display
import imageio_ffmpeg

ROOT = os.path.dirname(os.path.abspath(__file__))
PROJ = os.path.dirname(ROOT)
IMG = os.path.join(PROJ, "assets/images")
W, H, FPS, SCENE = 1080, 1920, 30, 3.0
GOLD, CREAM, GREEN, DARK = (212, 175, 90), (250, 243, 226), (14, 92, 76), (8, 45, 38)

TEXT = {
    "ar": dict(hook=("لا تفوّت صلاتك أبداً", "مواقيت الصلاة، الأذان، القبلة، القرآن"),
               alarm=("تنبيه الأذان في وقته", "حتى عندما يكون الهاتف صامتاً"),
               times=("مواقيت دقيقة لمدينتك", "العد التنازلي للصلاة القادمة"),
               qibla=("اتجاه القبلة بدقة", "بوصلة ذكية في أي مكان"),
               quran=("القرآن الكريم كاملاً", "اقرأ واستمع وتابع وردك اليومي"),
               tasbih=("المسبحة الإلكترونية", "سبحان الله، الحمد لله، الله أكبر"),
               cta=("حمّل الآن مجاناً", "انضم لملايين المسلمين"),
               prayers=["الفجر", "الظهر", "العصر", "المغرب", "العشاء"], next="الصلاة القادمة"),
    "id": dict(hook=("Jangan Lewatkan Sholat", "Jadwal Sholat | Adzan | Kiblat | Al-Quran"),
               alarm=("Alarm Adzan Tepat Waktu", "Bahkan saat HP dalam mode senyap"),
               times=("Jadwal Sholat Akurat", "Hitung mundur ke sholat berikutnya"),
               qibla=("Arah Kiblat Presisi", "Kompas pintar di mana saja"),
               quran=("Al-Quran Lengkap", "Baca, dengar & jaga tilawah harian"),
               tasbih=("Tasbih Digital", "Subhanallah | Alhamdulillah | Allahu Akbar"),
               cta=("Unduh Gratis Sekarang", "Bergabung dengan jutaan Muslim"),
               prayers=["Subuh", "Dzuhur", "Ashar", "Maghrib", "Isya"], next="Sholat berikutnya"),
    "en": dict(hook=("Never Miss a Prayer", "Prayer Times | Adhan | Qibla | Quran"),
               alarm=("Adhan Alarm On Time", "Even when your phone is silent"),
               times=("Accurate Prayer Times", "Live countdown to the next salah"),
               qibla=("Precise Qibla Direction", "Smart compass, anywhere"),
               quran=("The Complete Holy Quran", "Read, listen & keep your daily wird"),
               tasbih=("Digital Tasbih", "SubhanAllah | Alhamdulillah | Allahu Akbar"),
               cta=("Download Free Now", "Join millions of Muslims"),
               prayers=["Fajr", "Dhuhr", "Asr", "Maghrib", "Isha"], next="Next prayer"),
    "tr": dict(hook=("Hiçbir Namazı Kaçırma", "Namaz Vakitleri | Ezan | Kıble | Kuran"),
               alarm=("Vaktinde Ezan Alarmı", "Telefon sessizdeyken bile"),
               times=("Doğru Namaz Vakitleri", "Sonraki namaza geri sayım"),
               qibla=("Hassas Kıble Yönü", "Her yerde akıllı pusula"),
               quran=("Kur'an-ı Kerim Tamamı", "Oku, dinle, günlük virdini takip et"),
               tasbih=("Dijital Tesbih", "Sübhanallah | Elhamdülillah | Allahu Ekber"),
               cta=("Şimdi Ücretsiz İndir", "Milyonlarca Müslümana katıl"),
               prayers=["İmsak", "Öğle", "İkindi", "Akşam", "Yatsı"], next="Sonraki namaz"),
    "ms": dict(hook=("Jangan Terlepas Solat", "Waktu Solat | Azan | Kiblat | Al-Quran"),
               alarm=("Penggera Azan Tepat", "Walaupun telefon dalam mod senyap"),
               times=("Waktu Solat Tepat", "Kiraan detik ke solat seterusnya"),
               qibla=("Arah Kiblat Tepat", "Kompas pintar di mana-mana"),
               quran=("Al-Quran Lengkap", "Baca, dengar & jaga bacaan harian"),
               tasbih=("Tasbih Digital", "Subhanallah | Alhamdulillah | Allahu Akbar"),
               cta=("Muat Turun Percuma", "Sertai jutaan umat Islam"),
               prayers=["Subuh", "Zohor", "Asar", "Maghrib", "Isyak"], next="Solat seterusnya"),
}
TIMES = ["04:52", "12:08", "15:31", "18:14", "19:32"]

def font(size, lang, bold=True):
    path = "/System/Library/Fonts/GeezaPro.ttc" if lang == "ar" else "/System/Library/Fonts/SFNS.ttf"
    f = ImageFont.truetype(path, size)
    try:
        f.set_variation_by_axes([700 if bold else 450])
    except Exception:
        pass
    return f

def shape(s, lang):
    return get_display(arabic_reshaper.reshape(s)) if lang == "ar" else s

def ease(t):  # easeOutCubic, clamped
    t = max(0.0, min(1.0, t)); return 1 - (1 - t) ** 3

def cover(path, w=W, h=H):
    im = Image.open(path).convert("RGB"); s = max(w / im.width, h / im.height)
    im = im.resize((int(im.width * s) + 1, int(im.height * s) + 1), Image.LANCZOS)
    x, y = (im.width - w) // 2, (im.height - h) // 2
    return im.crop((x, y, x + w, y + h))

BG_LIGHT = cover(f"{IMG}/img_splash_background.png")
BG_DARK = cover(f"{IMG}/bg_darkmode.png")
BG_SOFT = cover(f"{IMG}/img_background.png")
ICON = Image.open(f"{IMG}/app_icon.png").convert("RGBA")
ALARM_SHOT = Image.open(os.path.join(PROJ, "play_store_screenshots/00-current.png")).convert("RGB")

def rounded(im, r):
    m = Image.new("L", im.size, 0); ImageDraw.Draw(m).rounded_rectangle((0, 0, *im.size), r, fill=255)
    out = im.convert("RGBA"); out.putalpha(m); return out

def text_c(d, y, s, size, lang, fill, a=1.0, shadow=True):
    f = font(size, lang); s = shape(s, lang)
    tw = d.textlength(s, font=f); x = (W - tw) / 2
    col = fill + (int(255 * a),)
    if shadow:
        d.text((x + 3, y + 4), s, font=f, fill=(0, 0, 0, int(110 * a)))
    d.text((x, y), s, font=f, fill=col)

def captions(frame, lang, key, t, dark, top=150):
    title, sub = TEXT[lang][key]
    ov = Image.new("RGBA", frame.size, (0, 0, 0, 0)); d = ImageDraw.Draw(ov)
    a1, a2 = ease(t / 0.35), ease((t - 0.25) / 0.35)
    tc, sc = (CREAM, GOLD) if dark else (DARK, GREEN)
    text_c(d, top + (1 - a1) * 40, title, 84, lang, tc, a1, shadow=dark)
    text_c(d, top + 125 + (1 - a2) * 30, sub, 44, lang, sc, a2, shadow=False)
    frame.alpha_composite(ov)

def phone(content, scale=0.62):
    pw, ph = int(1080 * scale), int(2340 * scale)
    body = Image.new("RGBA", (pw + 36, ph + 36), (0, 0, 0, 0))
    ImageDraw.Draw(body).rounded_rectangle((0, 0, pw + 35, ph + 35), 70, fill=(20, 20, 20, 255), outline=GOLD, width=4)
    body.alpha_composite(rounded(content.resize((pw, ph), Image.LANCZOS), 55), (18, 18))
    sh = Image.new("RGBA", (body.width + 120, body.height + 120), (0, 0, 0, 0))
    ImageDraw.Draw(sh).rounded_rectangle((60, 80, body.width + 60, body.height + 80), 70, fill=(0, 0, 0, 120))
    sh = sh.filter(ImageFilter.GaussianBlur(30)); sh.alpha_composite(body, (60, 60)); return sh

# ---------------- scenes: f(t in 0..1, lang) -> RGBA frame ----------------
def s_hook(t, lang):
    fr = BG_LIGHT.copy().convert("RGBA")
    ov = Image.new("RGBA", fr.size, (255, 248, 230, 90)); fr.alpha_composite(ov)
    s = 0.5 + 0.5 * ease(t / 0.4) + 0.03 * math.sin(t * 6)
    ic = rounded(ICON, 220).resize((int(420 * s), int(420 * s)), Image.LANCZOS)
    glow = Image.new("RGBA", fr.size, (0, 0, 0, 0))
    ImageDraw.Draw(glow).ellipse((W/2 - 330, 820 - 330, W/2 + 330, 820 + 330), fill=GOLD + (int(120 * ease(t / 0.4)),))
    fr.alpha_composite(glow.filter(ImageFilter.GaussianBlur(80)))
    fr.alpha_composite(ic, (W // 2 - ic.width // 2, 820 - ic.height // 2))
    captions(fr, lang, "hook", t, False, top=1180)
    return fr

def s_alarm(t, lang):
    fr = BG_DARK.copy().convert("RGBA")
    p = phone(ALARM_SHOT); y = int(560 + (1 - ease(t / 0.45)) * 900)
    shake = int(10 * math.sin(t * 90)) if 0.45 < t < 0.75 else 0
    fr.alpha_composite(p, (W // 2 - p.width // 2 + shake, y))
    d = ImageDraw.Draw(fr)  # ringing waves
    for i in range(3):
        r = 60 + ((t * 3 + i / 3) % 1) * 260; a = int(160 * (1 - (r - 60) / 260))
        d.ellipse((W/2 - r, y + 330 - r, W/2 + r, y + 330 + r), outline=GOLD + (a,), width=5)
    captions(fr, lang, "alarm", t, True)
    return fr

def s_times(t, lang):
    fr = BG_DARK.copy().convert("RGBA"); d = ImageDraw.Draw(fr)
    L = TEXT[lang]; fl = font(46, lang); fn = font(50, "en")
    # countdown card
    cx0, cy0 = 90, 470
    d.rounded_rectangle((cx0, cy0, W - 90, cy0 + 360), 48, fill=(18, 110, 90, 235), outline=GOLD, width=3)
    d.text((cx0 + 60, cy0 + 45), shape(f"{L['next']}: {L['prayers'][2]}", lang), font=font(44, lang), fill=CREAM)
    secs = 1 * 3600 + 11 * 60 + 27 - int(t * 90)
    d.text((cx0 + 60, cy0 + 130), f"{secs//3600:02d}:{secs%3600//60:02d}:{secs%60:02d}", font=font(150, "en"), fill=(255, 255, 255))
    for i, (name, tm) in enumerate(zip(L["prayers"], TIMES)):
        a = ease((t - 0.1 - i * 0.08) / 0.25)
        if a <= 0: continue
        y = 900 + i * 150; x = int(90 + (1 - a) * 300)
        act = i == 2
        row = Image.new("RGBA", (W - 180, 125), (0, 0, 0, 0)); rd = ImageDraw.Draw(row)
        rd.rounded_rectangle((0, 0, W - 181, 124), 34, fill=(GOLD if act else (250, 243, 226)) + (int(235 * a),))
        rd.text((50, 32), shape(name, lang), font=fl, fill=DARK)
        rd.text((W - 180 - 50 - rd.textlength(tm, font=fn), 30), tm, font=fn, fill=DARK)
        fr.alpha_composite(row, (x, y))
    captions(fr, lang, "times", t, True)
    return fr

def s_qibla(t, lang):
    fr = BG_DARK.copy().convert("RGBA"); d = ImageDraw.Draw(fr)
    cx, cy, R = W // 2, 1080, 380
    ang = -40 + 170 * math.exp(-4 * t) * math.cos(t * 9)  # damped settle to -40deg
    d.ellipse((cx - R - 20, cy - R - 20, cx + R + 20, cy + R + 20), fill=(250, 243, 226, 240), outline=GOLD, width=10)
    fs = font(56, "en")
    for i in range(72):
        a = math.radians(i * 5 + ang); l = 40 if i % 18 == 0 else 18
        d.line((cx + (R - l) * math.sin(a), cy - (R - l) * math.cos(a), cx + R * math.sin(a), cy - R * math.cos(a)), fill=DARK, width=4 if l > 20 else 2)
    for k, c in zip(range(4), "NESW"):
        a = math.radians(k * 90 + ang)
        d.text((cx + (R - 90) * math.sin(a), cy - (R - 90) * math.cos(a)), c, font=fs, fill=(180, 40, 40) if c == "N" else DARK, anchor="mm")
    # qibla needle points up when settled
    q = math.radians(ang + 40)
    tip = (cx + (R - 130) * math.sin(q), cy - (R - 130) * math.cos(q))
    b1 = (cx + 34 * math.sin(q + math.pi / 2), cy - 34 * math.cos(q + math.pi / 2))
    b2 = (cx - 34 * math.sin(q + math.pi / 2), cy + 34 * math.cos(q + math.pi / 2))
    d.polygon([tip, b1, b2], fill=GREEN); d.ellipse((cx - 30, cy - 30, cx + 30, cy + 30), fill=GOLD)
    kb = Image.new("RGBA", (90, 90), (0, 0, 0, 0)); kd = ImageDraw.Draw(kb)
    kd.rectangle((10, 20, 80, 85), fill=(20, 20, 20)); kd.rectangle((10, 34, 80, 44), fill=GOLD)
    kb = kb.rotate(-math.degrees(q), expand=True)
    tx, ty = cx + (R + 110) * math.sin(q), cy - (R + 110) * math.cos(q)
    fr.alpha_composite(kb, (int(tx - kb.width / 2), int(ty - kb.height / 2)))
    captions(fr, lang, "qibla", t, True)
    return fr

def s_quran(t, lang):
    z = 1.12 - 0.12 * ease(t)
    bw, bh = int(W * z), int(H * z)
    bg = BG_LIGHT.resize((bw, bh), Image.LANCZOS).crop(((bw - W) // 2, (bh - H), (bw - W) // 2 + W, bh))
    fr = bg.convert("RGBA")
    # soft light rays
    ov = Image.new("RGBA", fr.size, (0, 0, 0, 0)); d = ImageDraw.Draw(ov)
    for i in range(7):
        a = math.radians(-60 + i * 20 + t * 8)
        d.polygon([(W/2, 1500), (W/2 + 1800 * math.sin(a - 0.04), 1500 - 1800 * math.cos(a - 0.04)),
                   (W/2 + 1800 * math.sin(a + 0.04), 1500 - 1800 * math.cos(a + 0.04))], fill=(255, 225, 150, 45))
    fr.alpha_composite(ov.filter(ImageFilter.GaussianBlur(25)))
    captions(fr, lang, "quran", t, False, top=330)
    return fr

def s_tasbih(t, lang):
    fr = BG_DARK.copy().convert("RGBA"); d = ImageDraw.Draw(fr)
    n = min(33, int(ease(t / 0.85) * 33)); cx, cy, R = W // 2, 1060, 330
    d.ellipse((cx - R, cy - R, cx + R, cy + R), outline=(255, 255, 255, 50), width=26)
    d.arc((cx - R, cy - R, cx + R, cy + R), -90, -90 + 360 * n / 33, fill=GOLD, width=26)
    for i in range(33):  # beads
        a = math.radians(i * 360 / 33 - 90); bx, by = cx + (R + 90) * math.cos(a), cy + (R + 90) * math.sin(a)
        c = GOLD if i < n else (70, 110, 100)
        d.ellipse((bx - 20, by - 20, bx + 20, by + 20), fill=c)
    d.text((cx, cy - 20), str(n), font=font(230, "en"), fill=CREAM, anchor="mm")
    d.text((cx, cy + 130), "/ 33", font=font(56, "en"), fill=GOLD, anchor="mm")
    captions(fr, lang, "tasbih", t, True)
    return fr

def s_cta(t, lang):
    fr = BG_SOFT.copy().convert("RGBA")
    s = 0.7 + 0.3 * ease(t / 0.3) + 0.025 * math.sin(t * 10)
    ic = rounded(ICON, 220).resize((int(380 * s), int(380 * s)), Image.LANCZOS)
    fr.alpha_composite(ic, (W // 2 - ic.width // 2, 560 - ic.height // 2))
    d = ImageDraw.Draw(fr)
    d.text((W / 2, 830), "Quran Pro", font=font(90, "en"), fill=DARK, anchor="mm")
    for i in range(5):  # stars
        a = ease((t - 0.2 - i * 0.06) / 0.2); x = W / 2 + (i - 2) * 95; y = 950
        pts = [(x + 38 * a * math.sin(math.radians(k * 36)) * (1 if k % 2 == 0 else 0.45),
                y - 38 * a * math.cos(math.radians(k * 36)) * (1 if k % 2 == 0 else 0.45)) for k in range(10)]
        d.polygon(pts, fill=GOLD)
    captions(fr, lang, "cta", t, False, top=1080)
    # button
    p = 1 + 0.04 * math.sin(t * 14); bw, bh = int(640 * p), int(150 * p)
    a = ease((t - 0.4) / 0.25)
    if a > 0:
        btn = Image.new("RGBA", (bw, bh), (0, 0, 0, 0)); bd = ImageDraw.Draw(btn)
        bd.rounded_rectangle((0, 0, bw - 1, bh - 1), bh // 2, fill=GREEN + (int(255 * a),))
        bd.text((bw / 2, bh / 2), "▶  Google Play", font=font(58, "en"), fill=(255, 255, 255, int(255 * a)), anchor="mm")
        fr.alpha_composite(btn, (W // 2 - bw // 2, 1420 - bh // 2))
    return fr

SCENES = [s_hook, s_alarm, s_times, s_qibla, s_quran, s_tasbih, s_cta]
XF = 0.35  # crossfade seconds

def render(lang):
    out = os.path.join(ROOT, f"quran_pro_aso_{lang}.mp4")
    n = int(SCENE * FPS); total = n * len(SCENES)
    ff = subprocess.Popen([imageio_ffmpeg.get_ffmpeg_exe(), "-y", "-loglevel", "error", "-f", "rawvideo", "-pix_fmt", "rgb24",
                           "-s", f"{W}x{H}", "-r", str(FPS), "-i", "-", "-c:v", "libx264", "-pix_fmt", "yuv420p",
                           "-crf", "19", "-preset", "medium", "-movflags", "+faststart", out], stdin=subprocess.PIPE)
    xf = int(XF * FPS)
    for f in range(total):
        si, fi = divmod(f, n)
        img = SCENES[si](fi / n, lang)
        if fi >= n - xf and si + 1 < len(SCENES):
            k = (fi - (n - xf)) / xf
            img = Image.blend(img, SCENES[si + 1](0.0, lang), k)
        ff.stdin.write(img.convert("RGB").tobytes())
    ff.stdin.close(); ff.wait(); print("wrote", out)

if __name__ == "__main__":
    arg = sys.argv[1] if len(sys.argv) > 1 else "ar"
    for l in (TEXT if arg == "all" else [arg]):
        render(l)
