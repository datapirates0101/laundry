import 'package:ntp/ntp.dart';

class Time {
  late DateTime time;

  Future<DateTime> getTime() async {
    time = await NTP.now();
    return time;
  }

  bool checkTime(DateTime time) {
    if (time.hour >= 7 && time.hour < 20) {
      return true;
    } else {
      return false;
    }
  }
}
