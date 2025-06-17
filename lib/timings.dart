import 'dart:convert';

import 'package:http/http.dart' as http;

class Timings {

  /*
  * GET CODE COUNTRY For Example IO
  * */
  Future<String> getCodeCountry() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['country']);
        return data['country'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }

  /*
  * GET  Region City For Example Basra
  * */
  Future<String> getRegionCity() async {
      try {
        final response = await http.get(
          Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
        );
        if (response.statusCode == 200) {
          var data = jsonDecode(response.body);
          print(data['region']);
          return data['region'];
        } else {
          return 'غير معروف';
        }
      } catch (e) {
        print('حدث خطأ: $e');
        return 'خطأ في الاتصال';
      }
    }


  /*
  * GET  Time Fajr For Example "02:59"
  * */
  Future<String> getTimeFajr() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Fajr']);
        return data['prayer_times']['Fajr'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }


  /*
  * GET  Time Fajr For Example "04:46"
  * */
  Future<String> getTimeSunrise() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Sunrise']);
        return data['prayer_times']['Sunrise'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }



  /*
  * GET  Time Dhuhr For Example "12:00"
  * */
  Future<String> getTimeDhuhr() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Dhuhr']);
        return data['prayer_times']['Dhuhr'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }


  /*
  * GET  Time Asr For Example "15:00"
  * */
  Future<String> getTimeAsr() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Asr']);
        return data['prayer_times']['Asr'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }


  /*
  * GET  Time Maghrib For Example "18:00"
  * */
  Future<String> getTimeMaghrib() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Maghrib']);
        return data['prayer_times']['Maghrib'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }




  /*
  * GET  Time Isha For Example "18:00"
  * */
  Future<String> getTimeIsha() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['prayer_times']['Isha']);
        return data['prayer_times']['Isha'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }



  /*
  * GET  Time Data En For Example "17 Jun 2025"
  * */
  Future<String> getDateEn() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['date']['date_en']);
        return data['date']['date_en'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }



  /*
  * GET  Time Hijri Date  For Example "21-12-1446"
  * */
  Future<String> getDateHijriDate() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['date']['date_hijri']['date']);
        return data['date']['date_hijri']['date'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }



  /*
  * GET  Day For Example "الثلاثاء"
  * */
  Future<String> getDateHijriWeekDay() async {
    try {
      final response = await http.get(
        Uri.parse('https://alquran.vip/APIs/getPrayerTimes'),
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['date']['date_hijri']['weekday']['ar']);
        return data['date']['date_hijri']['weekday']['ar'];
      } else {
        return 'غير معروف';
      }
    } catch (e) {
      print('حدث خطأ: $e');
      return 'خطأ في الاتصال';
    }
  }




}
