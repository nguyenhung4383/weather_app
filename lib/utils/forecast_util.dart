import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEE, MMM d').format(dateTime); //Tue, May 5, 2022
  }

  static String findIcon(String name, bool type) {
    if (type) {
      switch (name) {
        case "Clouds":
          return "assets/cloud.png";
        case "Rain":
          return "assets/lightrain.png";
        case "Drizzle":
          return "assets/lightdrizzle.png";
        case "Thunderstorm":
          return "assets/thunderyoutbreakspossible.png";
        case "Snow":
          return "assets/snow.png";
        default:
          return "assets/sunny.png";
      }
    } else {
      switch (name) {
        case "Clouds":
          return "assets/cloud.png";
        case "Rain":
          return "assets/lightrain.png";
        case "Drizzle":
          return "assets/lightdrizzle.png";
        case "Thunderstorm":
          return "assets/thunderyoutbreakspossible.png";
        case "Snow":
          return "assets/snow.png";
        default:
          return "assets/sunny.png";
      }
    }
  }
}