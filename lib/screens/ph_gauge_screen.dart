import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:firebase_signin/utils/color_utils.dart';

class PhGaugeScreen extends StatelessWidget {
  const PhGaugeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Temperature And pH monitoring system",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor("343b37"),
                hexStringToColor("293e43"),
                hexStringToColor("434029")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(8.0),
                        decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(25),
                            color:Colors.grey,
                            border: Border.all(width: 3)
                        ),
                        child: SfRadialGauge(
                          enableLoadingAnimation: true,
                          animationDuration: 2000,
                          axes: <RadialAxis>[
                            RadialAxis(
                              maximum: 14.001,
                              interval: 2,
                              labelsPosition: ElementsPosition.outside,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                  startValue: 0,
                                  endValue: 5.9,
                                  color: Colors.amber,
                                ),
                                GaugeRange(
                                  startValue: 6,
                                  endValue: 8.9,
                                  color: Colors.green,
                                ),
                                GaugeRange(
                                  startValue: 9,
                                  endValue: 14,
                                  color: Colors.red,
                                ),
                              ],
                              pointers: const <GaugePointer>[
                                NeedlePointer(
                                  value: 7,
                                  needleEndWidth: 5,
                                  enableAnimation: true,
                                ),
                              ],
                              annotations: const <GaugeAnnotation>[
                                GaugeAnnotation(
                                  widget: Text(
                                    '7 pH',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  angle: 90,
                                  positionFactor: 0.5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ]
                ),
              ))),
    );
  }



}
