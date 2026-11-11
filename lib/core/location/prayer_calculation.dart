import 'package:adhan/adhan.dart';

/// Calculation parameters for a place: the method its country's authorities
/// use, its usual madhab for Asr, and a high latitude rule where Fajr and Isha
/// would otherwise be undefined in summer.
CalculationParameters prayerParametersFor(
  Coordinates coordinates,
  String? countryCode,
) {
  final country = countryCode?.toUpperCase();
  final params = _methodFor(country).getParameters();
  params.madhab = _hanafiCountries.contains(country)
      ? Madhab.hanafi
      : Madhab.shafi;
  if (coordinates.latitude.abs() > 48) {
    params.highLatitudeRule = HighLatitudeRule.twilight_angle;
  }
  return params;
}

CalculationMethod _methodFor(String? country) {
  switch (country) {
    case 'SA':
    case 'YE':
    case 'BH':
    case 'OM':
      return CalculationMethod.umm_al_qura;
    case 'AE':
      return CalculationMethod.dubai;
    case 'KW':
      return CalculationMethod.kuwait;
    case 'QA':
      return CalculationMethod.qatar;
    case 'EG':
    case 'SD':
    case 'LY':
    case 'SY':
    case 'LB':
    case 'JO':
    case 'IQ':
    case 'PS':
      return CalculationMethod.egyptian;
    case 'PK':
    case 'IN':
    case 'BD':
    case 'AF':
      return CalculationMethod.karachi;
    case 'US':
    case 'CA':
      return CalculationMethod.north_america;
    case 'GB':
    case 'IE':
      return CalculationMethod.moon_sighting_committee;
    // Same angles as Indonesia's Kemenag and Malaysia's JAKIM.
    case 'SG':
    case 'MY':
    case 'BN':
    case 'ID':
      return CalculationMethod.singapore;
    case 'TR':
      return CalculationMethod.turkey;
    case 'IR':
      return CalculationMethod.tehran;
    default:
      return CalculationMethod.muslim_world_league;
  }
}

const _hanafiCountries = {
  'PK',
  'IN',
  'BD',
  'AF',
  'TR',
  'UZ',
  'TJ',
  'KZ',
  'KG',
  'TM',
  'AZ',
};
