import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_weather_app_v2/widgets/extra_widget.dart';


import '../models/weather_forecast_daily.dart';
import '../utils/forecast_util.dart';

class CurrentWeather extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;

  const CurrentWeather({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = snapshot.data;
    var forecastList = data!.list!;
    var temp = forecastList[0].temp!.day!.toStringAsFixed(0);
    var formattedDate =
        DateTime.fromMillisecondsSinceEpoch(forecastList[0].dt! * 1000);

    return GlowContainer(
      height: MediaQuery.of(context).size.height - 200,
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.only(top: 30, left: 30, right: 0),
      glowColor: const Color(0xff00A1FF).withOpacity(0.5),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(60),
        bottomRight: Radius.circular(60),
      ),
      color: const Color(0xff00A1FF),
      spreadRadius: 5,
      child: Column(
        children: [
          GlowText(
            data.city!.name!,
            style: const TextStyle(
              height: 0.1,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 260,
            child: Column(
              children: [
                Image(
                  width: 200,
                  height: 160,
                  image: AssetImage(
                    Util.findIcon('${forecastList[0].weather![0].main}', true)
                  ),
                
                ),
                const SizedBox(height: 30,), 
                  Center(
                    child: Column(
                      children: [
                        GlowText(
                          '$temp °C',
                          style: const TextStyle(
                            height: 0.1,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${forecastList[0].weather![0].description}',
                          style: const TextStyle(fontSize: 25),
                        ),
                        Text(
                          Util.getFormattedDate(formattedDate),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),                            
                ],
            ),
          ),
          const Divider(color: Colors.white),
          ExtraWeather(snapshot: snapshot),
        ],
      ),
    );
  }
}