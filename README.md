# timings

بكج Flutter/Dart يعرض مواقيت الصلاة اليومية حسب الدولة والموقع الذي يقيم فيه المستخدم.

## ✅ الميزات

- جلب مواقيت الصلاة (الفجر، الشروق، الظهر، المغرب، العشاء)
- جلب التاريخ الهجري والميلادي
- جلب اسم الدولة والمدينة تلقائيًا

## 🧑‍💻 الاستخدام

أضف البكج إلى ملف pubspec.yaml:

```yaml
dependencies:
  timings:


  final timings = Timings();

  print(await timings.getRegionCity());       // اسم المدينة
  print(await timings.getCodeCountry());      // رمز الدولة
  print(await timings.getTimeFajr());         // وقت الفجر
  print(await timings.getTimeSunrise());      // وقت الشروق
  print(await timings.getTimeDhuhr());        // وقت الظهر
  print(await timings.getTimeMaghrib());      // وقت المغرب
  print(await timings.getTimeIsha());         // وقت العشاء
  print(await timings.getDateEn());           // التاريخ الميلادي
  print(await timings.getDateHijriDate());    // التاريخ الهجري
  print(await timings.getDateHijriWeekDay()); // يوم الأسبوع الهجري

