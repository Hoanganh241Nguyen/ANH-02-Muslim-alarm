import 'package:adhan/adhan.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:h01_muslim_alarm/core/location/device_location_info.dart';
import 'package:h01_muslim_alarm/core/location/prayer_calculation.dart';

void main() {
  group('estimateFromTimeZone', () {
    test('maps a time zone to its city and country', () {
      final jakarta = DeviceLocationInfo.estimateFromTimeZone('Asia/Jakarta')!;
      expect(jakarta.cityName, 'Jakarta');
      expect(jakarta.countryCode, 'ID');
      expect(jakarta.latitude, closeTo(-6.17, 0.01));
      expect(jakarta.longitude, closeTo(106.8, 0.01));

      final istanbul = DeviceLocationInfo.estimateFromTimeZone(
        'Europe/Istanbul',
      )!;
      expect(istanbul.cityName, 'Istanbul');
      expect(istanbul.countryCode, 'TR');
    });

    test('old alias ids show the current city name', () {
      expect(
        DeviceLocationInfo.estimateFromTimeZone('Asia/Saigon')!.cityName,
        'Ho Chi Minh',
      );
      expect(
        DeviceLocationInfo.estimateFromTimeZone('Asia/Calcutta')!.cityName,
        'Kolkata',
      );
    });

    test('non geographic or unknown zones give no estimate', () {
      expect(DeviceLocationInfo.estimateFromTimeZone('UTC'), isNull);
      expect(DeviceLocationInfo.estimateFromTimeZone('Etc/GMT+7'), isNull);
      expect(DeviceLocationInfo.estimateFromTimeZone(null), isNull);
    });
  });

  group('nearestCityName', () {
    test('finds a reference city close by', () {
      // Shah Alam, ~25 km from Kuala Lumpur.
      expect(DeviceLocationInfo.nearestCityName(3.07, 101.52), 'Kuala Lumpur');
      // Mecca: Riyadh, the nearest zone city, is ~800 km away.
      expect(DeviceLocationInfo.nearestCityName(21.42, 39.83), isNull);
    });

    test('gives null rather than a far city', () {
      // Hà Nội: nearest zone cities (Bangkok, Ho Chi Minh) are far away.
      expect(DeviceLocationInfo.nearestCityName(21.03, 105.83), isNull);
    });
  });

  group('prayerParametersFor', () {
    final mecca = Coordinates(21.42, 39.83);
    final london = Coordinates(51.5, -0.12);

    test('uses the country method and madhab', () {
      expect(
        prayerParametersFor(mecca, 'SA').method,
        CalculationMethod.umm_al_qura,
      );
      expect(
        prayerParametersFor(mecca, 'ID').method,
        CalculationMethod.singapore,
      );
      expect(prayerParametersFor(mecca, 'TR').method, CalculationMethod.turkey);
      expect(prayerParametersFor(mecca, 'tr').madhab, Madhab.hanafi);
      expect(prayerParametersFor(mecca, 'PK').madhab, Madhab.hanafi);
      expect(prayerParametersFor(mecca, 'ID').madhab, Madhab.shafi);
    });

    test('falls back to Muslim World League', () {
      expect(
        prayerParametersFor(mecca, null).method,
        CalculationMethod.muslim_world_league,
      );
      expect(
        prayerParametersFor(mecca, 'VN').method,
        CalculationMethod.muslim_world_league,
      );
    });

    test('high latitudes use the twilight angle rule', () {
      expect(
        prayerParametersFor(london, 'GB').highLatitudeRule,
        HighLatitudeRule.twilight_angle,
      );
      expect(
        prayerParametersFor(mecca, 'SA').highLatitudeRule,
        HighLatitudeRule.middle_of_the_night,
      );
    });

    test('London in June gets defined Fajr and Isha', () {
      final times = PrayerTimes(
        london,
        DateComponents(2026, 6, 21),
        prayerParametersFor(london, 'GB'),
      );
      expect(times.fajr.isBefore(times.sunrise), isTrue);
      expect(times.isha.isAfter(times.maghrib), isTrue);
    });
  });
}
