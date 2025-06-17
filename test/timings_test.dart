import 'package:flutter_test/flutter_test.dart';
import 'package:timings/timings.dart';
import 'package:http/http.dart' as http;


void main() {
  test('Api Regin', () async {
    final region = Timings();
    await region.getRegionCity();
    await region.getCodeCountry();
    await region.getTimeFajr();
    await region.getTimeDhuhr();
    await region.getTimeIsha();
    await region.getTimeMaghrib();
    await region.getTimeSunrise();
    await region.getDateEn();
    await region.getDateHijriDate();
    await region.getDateHijriWeekDay();
  });
}
