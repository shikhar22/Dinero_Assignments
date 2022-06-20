import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'ExpenditureData.dart';

class HomeScreen extends StatelessWidget {
  final List<ExpenditureData> data = [
    ExpenditureData(
      year: "Mon",
      subscribers: 3000,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
    ExpenditureData(
      year: "Tue",
      subscribers: 4000,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
    ExpenditureData(
      year: "Wed",
      subscribers: 5000,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
    ExpenditureData(
      year: "Thu",
      subscribers: 6000,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
    ExpenditureData(
      year: "Fri",
      subscribers: 7000,
      barColor:
          charts.ColorUtil.fromDartColor(const Color.fromRGBO(47, 128, 237, 1)),
    ),
    ExpenditureData(
      year: "Sat",
      subscribers: 6000,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
    ExpenditureData(
      year: "Sun",
      subscribers: 5500,
      barColor: charts.ColorUtil.fromDartColor(
          const Color.fromRGBO(232, 241, 253, 1)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // total height and width
    Size size = MediaQuery.of(context).size;

    List<charts.Series<ExpenditureData, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (ExpenditureData series, _) => series.year,
        measureFn: (ExpenditureData series, _) => series.subscribers,
        colorFn: (ExpenditureData series, _) => series.barColor,
        radiusPxFn: (ExpenditureData series, _) => 20,
      )
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: size.width * 0.12,
                width: size.width * 0.12,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                height: size.width * 0.12,
                width: size.width * 0.55,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      IconlyLight.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Search Here',
                      style: TextStyle(color: Colors.grey),
                      // color: Colors.blueGrey)
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: size.width * 0.12,
                width: size.width * 0.12,
                // color: const Color(0x00e8f1fd),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 201, 217, 245),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('Rectangle.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Container(
                width: size.width * 0.42,
                height: size.height * 0.26,
                // color: Colors.blue,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(47, 128, 237, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        IconlyBold.wallet,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        'Main Balance',
                        style: TextStyle(fontSize: 20, color: Color.fromRGBO(179, 192, 208, 1)),
                      ),
                      const Text(
                        '\$4,523',
                        style: TextStyle(fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 54,
                        height: 33,
                        // color: Colors.blue,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const Center(
                          child: Text(
                            '+2.3%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: size.width * 0.42,
                height: size.height * 0.26,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(250, 240, 235, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Icon(
                        IconlyBold.wallet,
                        color: Color.fromRGBO(143, 71, 36, 1),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Card Balance',
                        style: TextStyle(fontSize: 20, color: Color.fromRGBO(224, 214, 209, 1)),
                      ),
                      Text(
                        '**5677',
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromRGBO(143, 71, 36, 1),
                            fontWeight:FontWeight.bold),
                      ),
                      Image(image: AssetImage('Circle.png')),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'Expenditure breakdown',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '+ \$23,400',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Text(
                    'This week',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Text(
                    '+ 2.5%',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(33, 150, 83, 1)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(47, 128, 237, 1),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: const Center(
                      child: Text(
                        'Wk',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 241, 253, 1),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: const Center(
                      child: Text(
                        'Mn',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(115, 138, 169, 1)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(232, 241, 253, 1),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    child: const Center(
                      child: Text(
                        'Yr',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(115, 138, 169, 1)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 200,
            child: charts.BarChart(
              series,
              animate: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: size.width,
            height: size.height * 0.12,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(232, 241, 253, 1),
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Image(image: AssetImage('Savings-Bro.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      'Create quick saving goals with \n friends and colleage',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: (() => {}),
                        child: const Text(
                          'Save now',
                          style: TextStyle(
                              color: Color.fromRGBO(47, 128, 237, 1),
                              fontSize: 14),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
