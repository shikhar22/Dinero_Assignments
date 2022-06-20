import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'ExpenditureData.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // total height and width
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Savings Plan',
            style: TextStyle(color: Color.fromRGBO(6, 36, 75, 1), fontSize: 26, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Create new plan and save towards that\nbig goal.',
            style: TextStyle(
                color: Color.fromRGBO(102, 102, 102, 1), fontSize: 16),
          ),
          const SizedBox(
            height: 45,
          ),
          Row(
            children: <Widget>[
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'Tesla goals',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$4000/12000',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 1 / 3,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'MacBook 202x',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$400/1200',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 1 / 3,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
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
            children: <Widget>[
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'Avoid see finish for village',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$1000/2000',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 1 / 2,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'Maldives Way',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$980/2200',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 980 / 2200,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
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
            children: <Widget>[
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'iphone X',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$800/...',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 1 / 30,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: size.width * 0.42,
                height: size.height * 0.20,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(232, 241, 253, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Color.fromRGBO(47, 128, 237, 1),
                        child: Icon(
                          IconlyLight.wallet,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'God when',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(6, 36, 75, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$3200/...',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(185, 212, 249, 1)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LinearProgressIndicator(
                        value: 1 / 30,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(47, 128, 237, 1)),
                        backgroundColor: Color.fromRGBO(185, 212, 249, 1),
                        minHeight: 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
