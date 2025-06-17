import 'dart:convert';
import 'package:http/http.dart' as http;

class Timings {
  Map<String, dynamic>? _cachedData;

  Future<void> _fetchData() async {
    if (_cachedData != null) return; // لا تعيد الطلب إذا كانت البيانات موجودة

    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        _cachedData = jsonDecode(response.body);
      } else {
        throw Exception('فشل في جلب البيانات');
      }
    } catch (e) {
      print('حدث خطأ: $e');
      throw Exception('خطأ في الاتصال');
    }
  }

  Future<String> getCodeCountry() async {
    await _fetchData();
    return _cachedData?['country'] ?? 'غير معروف';
  }

  Future<String> getRegionCity() async {
    await _fetchData();
    return _cachedData?['region'] ?? 'غير معروف';
  }

  Future<String> getTimeFajr() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Fajr'] ?? 'غير معروف';
  }

  Future<String> getTimeSunrise() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Sunrise'] ?? 'غير معروف';
  }

  Future<String> getTimeDhuhr() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Dhuhr'] ?? 'غير معروف';
  }

  Future<String> getTimeAsr() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Asr'] ?? 'غير معروف';
  }

  Future<String> getTimeMaghrib() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Maghrib'] ?? 'غير معروف';
  }

  Future<String> getTimeIsha() async {
    await _fetchData();
    return _cachedData?['prayer_times']?['Isha'] ?? 'غير معروف';
  }

  Future<String> getDateEn() async {
    await _fetchData();
    return _cachedData?['date']?['date_en'] ?? 'غير معروف';
  }

  Future<String> getDateHijriDate() async {
    await _fetchData();
    return _cachedData?['date']?['date_hijri']?['date'] ?? 'غير معروف';
  }

  Future<String> getDateHijriWeekDay() async {
    await _fetchData();
    return _cachedData?['date']?['date_hijri']?['weekday']?['ar'] ?? 'غير معروف';
  }

  // دالة لإعادة تحميل البيانات (إذا احتجت)
  Future<void> refresh() async {
    _cachedData = null;
    await _fetchData();
  }
}
