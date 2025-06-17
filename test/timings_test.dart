import 'package:flutter_test/flutter_test.dart';
import 'package:timings/timings.dart';
import 'package:http/http.dart' as http;


void main() {
  test('Api Regin', () async {
    final timings = Timings();
    getRegionCity();
    getCodeCountry();
    getTimeFajr();
    getTimeDhuhr();
    getTimeIsha();
    getTimeMaghrib();
    getTimeSunrise();
    getDateEn();
    getDateHijriDate();
    getDateHijriWeekDay();
  });
}
