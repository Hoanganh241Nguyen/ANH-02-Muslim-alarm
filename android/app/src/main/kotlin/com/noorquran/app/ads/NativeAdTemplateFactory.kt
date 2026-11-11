package com.noorquran.app.ads

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import com.google.android.gms.ads.nativead.MediaView
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import com.noorquran.app.R
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class NativeAdTemplateFactory(
    private val context: Context,
    private val layoutResId: Int,
) : GoogleMobileAdsPlugin.NativeAdFactory {
    override fun createNativeAd(
        nativeAd: NativeAd,
        customOptions: MutableMap<String, Any>?,
    ): NativeAdView {
        val adView = LayoutInflater.from(context)
            .inflate(layoutResId, null) as NativeAdView

        val headlineView = adView.findViewById<TextView>(R.id.ad_headline)
        val bodyView = adView.findViewById<TextView>(R.id.ad_body)
        val callToActionView = adView.findViewById<TextView>(R.id.ad_call_to_action)
        val iconView = adView.findViewById<ImageView?>(R.id.ad_app_icon)
        val mediaView = adView.findViewById<MediaView?>(R.id.ad_media)

        headlineView.text = nativeAd.headline
        adView.headlineView = headlineView

        if (nativeAd.body == null) {
            bodyView.visibility = View.GONE
        } else {
            bodyView.visibility = View.VISIBLE
            bodyView.text = nativeAd.body
        }
        adView.bodyView = bodyView

        if (nativeAd.callToAction == null) {
            callToActionView.visibility = View.GONE
        } else {
            callToActionView.visibility = View.VISIBLE
            callToActionView.text = nativeAd.callToAction
        }
        adView.callToActionView = callToActionView

        if (iconView != null) {
            if (nativeAd.icon == null) {
                iconView.visibility = View.GONE
            } else {
                iconView.visibility = View.VISIBLE
                iconView.setImageDrawable(nativeAd.icon?.drawable)
            }
            adView.iconView = iconView
        }

        if (mediaView != null) {
            val scaleType = if (layoutResId == R.layout.layout_native_template_fullscreen) {
                ImageView.ScaleType.FIT_CENTER
            } else {
                ImageView.ScaleType.CENTER_CROP
            }
            mediaView.setImageScaleType(scaleType)
            adView.mediaView = mediaView
        }

        adView.setNativeAd(nativeAd)
        return adView
    }
}
