import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exple extends StatefulWidget {
  @override
  _ExpleState createState() => _ExpleState();
}

class _ExpleState extends State<Exple> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Image.asset("images/ferra.png"),
                ),
                Positioned(
                  top: size.height / 6,
                  left: size.width / 5.5,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                    
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Cours",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 20, color: Colors.blueGrey)),
                    TextSpan(
                      text: " Original NaN",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.purple
                        
                      ),)]),),
                      ),
                      height: 50,
                      width: size.width / 1.5,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Des applications ultra-rapides avec Node.js",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.school),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Certifiant"),
                        Spacer(),
                        Icon(Icons.network_cell),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Difficle"),
                        Spacer(),
                        Icon(Icons.timelapse),
                        SizedBox(
                          width: 6,
                        ),
                        Text("10h"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.purple, shape: BoxShape.circle),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 30,
                            )),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Telechargé"),
                        Spacer(),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 100),
                          child: Switch(
                            onChanged: (value) {
                              setState(() {});
                            },
                            value: true,
                            activeTrackColor: Colors.purple,
                            activeColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 90,
                              ),
                              child: CircleProgressBar(
                                backgroundColor: Colors.blueGrey,
                                foregroundColor: Colors.indigo,
                                value: 0.4,
                              ),
                            ),
                             SizedBox(height: 20,),
                            Text("Progression", style:TextStyle(color: Colors.grey, fontSize: 16))
                         
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 90,
                              ),
                              child: CircleProgressBar(
                                backgroundColor: Colors.blueGrey,
                                foregroundColor: Colors.indigo,
                                value: 0.4,
                              ),
                            ),
                             SizedBox(height: 20,),
                            Text("Compétence", style:TextStyle(color: Colors.grey, fontSize: 16))
                         
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 90,
                              ),
                              child: CircleProgressBar(
                                backgroundColor: Colors.blueGrey,
                                foregroundColor: Colors.indigo,
                                value: 0.4,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("Activité", style:TextStyle(color: Colors.grey, fontSize: 16))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    MaterialButton(
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          minWidth: size.width / 2,
                          onPressed: () {},
                          color: Colors.purple,
                          textColor: Colors.white,
                          child: Text(
                            'Continuer vers le cours',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleProgressBar extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final double value;

  const CircleProgressBar({
    Key key,
    this.backgroundColor,
    @required this.foregroundColor,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = this.backgroundColor;
    final foregroundColor = this.foregroundColor;
    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        child: Center(
          child: Text(
            "92 %",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
        ),
        foregroundPainter: CircleProgressBarPainter(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          percentage: this.value,
        ),
      ),
    );
  }
}

class CircleProgressBarPainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color backgroundColor;
  final Color foregroundColor;

  CircleProgressBarPainter({
    this.backgroundColor,
    @required this.foregroundColor,
    @required this.percentage,
    double strokeWidth,
  }) : this.strokeWidth = strokeWidth ?? 2;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final Size constrainedSize =
        size - Offset(this.strokeWidth, this.strokeWidth);
    final shortestSide =
        math.min(constrainedSize.width, constrainedSize.height);
    final foregroundPaint = Paint()
      ..color = this.foregroundColor
      ..strokeWidth = this.strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final radius = (shortestSide / 2);

    // Start at the top. 0 radians represents the right edge
    final double startAngle = -(2 * math.pi * 0.25);
    final double sweepAngle = (2 * math.pi * (this.percentage ?? 0));

    // Don't draw the background if we don't have a background color
    if (this.backgroundColor != null) {
      final backgroundPaint = Paint()
        ..color = this.backgroundColor
        ..strokeWidth = this.strokeWidth
        ..style = PaintingStyle.stroke;
      canvas.drawCircle(center, radius, backgroundPaint);
    }

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final oldPainter = (oldDelegate as CircleProgressBarPainter);
    return oldPainter.percentage != this.percentage ||
        oldPainter.backgroundColor != this.backgroundColor ||
        oldPainter.foregroundColor != this.foregroundColor ||
        oldPainter.strokeWidth != this.strokeWidth;
  }
}
