import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdService {
  // 本番環境の広告ID
  static const String _productionAppId =
      'ca-app-pub-5173189590303230~1232003183';
  static const String _productionBannerAdUnitId =
      'ca-app-pub-5173189590303230/4923287442';

  // テスト環境の広告ID
  static const String _testAppId = 'ca-app-pub-3940256099942544~3347511713';
  static const String _testBannerAdUnitId =
      'ca-app-pub-3940256099942544/6300978111';

  // テストデバイスID（開発時に使用）
  static const List<String> _testDeviceIds = [
    '2077ef9a63d2b398840261c8221a0c9b',
    'kGADSimulatorID',
  ];

  // 環境に応じてApp IDを取得
  static String get appId {
    if (kDebugMode) {
      return _testAppId;
    } else {
      return _productionAppId;
    }
  }

  // 環境に応じてバナー広告ユニットIDを取得
  static String get bannerAdUnitId {
    if (kDebugMode) {
      return _testBannerAdUnitId;
    } else {
      return _productionBannerAdUnitId;
    }
  }

  // テストデバイスIDを取得
  static List<String> get testDeviceIds {
    return _testDeviceIds;
  }

  // 広告の初期化
  static Future<void> initialize() async {
    await MobileAds.instance.initialize();

    // デバッグモードの場合、テストデバイスを設定
    if (kDebugMode) {
      MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(testDeviceIds: _testDeviceIds),
      );
    }
  }

  // バナー広告を作成
  static BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('Ad loaded successfully');
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('Ad failed to load: ${error.code}');
          ad.dispose();
        },
        onAdOpened: (ad) {
          debugPrint('Ad opened');
        },
        onAdClosed: (ad) {
          debugPrint('Ad closed');
        },
      ),
    );
  }
}
