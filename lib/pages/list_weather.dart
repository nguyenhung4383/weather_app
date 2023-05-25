/*import 'package:flutter/material.dart';

import '../models/weather_forecast_daily.dart';
import '../utils/forecast_util.dart';

class SevenDays extends StatelessWidget {
   final AsyncSnapshot<WeatherForecast> snapshot;

  const SevenDays({Key? key, required this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
              itemCount: snapshot.data!.list!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child:forecastPadding(snapshot, index));
          }),
    );
  }
}

Widget forecastPadding(AsyncSnapshot snapshot,int index){
  var forecastList=snapshot.data.list;
  var dayOfWeek="";

  DateTime date=
    DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormattedDate(date);
  dayOfWeek = fullDate.split(',')[0]; 
  var tempMin=forecastList[index].temp.min.toString();
  var tempMax=forecastList[index].temp.max.toString();

  return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(dayOfWeek, style: const TextStyle(fontSize: 20)),
                    Container(
                      width: 135,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(Util.findIcon('${forecastList[index].weather![0].main}', false),)),
                          const SizedBox(width: 15),
                          Text(
                            '${forecastList[0].weather![0].description}',
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                           '$tempMin °C',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$tempMax °C',
                          style: const TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                );
}*/