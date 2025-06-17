import 'package:flutter/material.dart';
import 'package:prayer_timings/timings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prayer Timings',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timings timings = Timings();

  String? countryCode = '';
  String? region = '';
  String? fajr = '';
  String? sunrise = '';
  String? dhuhr = '';
  String? maghrib = '';
  String? isha = '';
  String? dateEn = '';
  String? dateHijri = '';
  String? hijriWeekDay = '';

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    final code = await timings.getCodeCountry();
    final city = await timings.getRegionCity();
    final fajrTime = await timings.getTimeFajr();
    final sunriseTime = await timings.getTimeSunrise();
    final dhuhrTime = await timings.getTimeDhuhr();
    final maghribTime = await timings.getTimeMaghrib();
    final ishaTime = await timings.getTimeIsha();
    final enDate = await timings.getDateEn();
    final hijriDate = await timings.getDateHijriDate();
    final hijriDay = await timings.getDateHijriWeekDay();

    setState(() {
      countryCode = code;
      region = city;
      fajr = fajrTime;
      sunrise = sunriseTime;
      dhuhr = dhuhrTime;
      maghrib = maghribTime;
      isha = ishaTime;
      dateEn = enDate;
      dateHijri = hijriDate;
      hijriWeekDay = hijriDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مواقيت الصلاة')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('الدولة: $countryCode', style: TextStyle(fontSize: 20)),
            Text('المدينة: $region', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Text('الفجر: $fajr', style: TextStyle(fontSize: 20)),
            Text('الشروق: $sunrise', style: TextStyle(fontSize: 20)),
            Text('الظهر: $dhuhr', style: TextStyle(fontSize: 20)),
            Text('المغرب: $maghrib', style: TextStyle(fontSize: 20)),
            Text('العشاء: $isha', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Text('التاريخ الميلادي: $dateEn', style: TextStyle(fontSize: 20)),
            Text('التاريخ الهجري: $dateHijri', style: TextStyle(fontSize: 20)),
            Text('يوم الأسبوع (هجري): $hijriWeekDay', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
