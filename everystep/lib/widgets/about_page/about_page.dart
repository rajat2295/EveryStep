import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const TextContainer = Center(
    //   child: Text("hello world"),
    // );
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final EveryStepBold = TextSpan(
        text: 'EveryStep ',
        style: TextStyle(
            color: Color(0xff007074),
            fontWeight: FontWeight.bold,
            fontSize: 18.0));

    final Line1 = RichText(
      text: TextSpan(
        text: '\u2022 In the UK ',
        style: TextStyle(color: Color(0xff007074), fontSize: 18.0),
        children: <TextSpan>[
          TextSpan(
              text: '1.7 million people ',
              style: TextStyle(
                color: Color(0xff007074),
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: 'are referred for therapy each year',
              style: TextStyle(
                color: Color(0xff007074),
              )),
        ],
      ),
    );

    final Line2 = RichText(
      text: TextSpan(
        text: '\u2022 1 million drop out ',
        style: TextStyle(
          color: Color(0xff007074),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
              text: ' before finishing',
              style: TextStyle(
                color: Color(0xff007074),
              )),
        ],
      ),
    );

    final Line3 = RichText(
      text: TextSpan(
        text: '\u2022  ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff007074),
          fontSize: 18.0,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'Our app is there ',
              style: TextStyle(
                color: Color(0xff007074),
              )),
          EveryStepBold,
          TextSpan(
              text: 'of the way, helping you ',
              style: TextStyle(
                color: Color(0xff007074),
              )),
          TextSpan(
              text: 'start ',
              style: TextStyle(
                color: Color(0xff007074),
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: 'therapy and ',
              style: TextStyle(
                color: Color(0xff007074),
              )),
          TextSpan(
              text: 'stick ',
              style: TextStyle(
                color: Color(0xff007074),
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: 'with it.',
              style: TextStyle(
                color: Color(0xff007074),
              )),
        ],
      ),
    );

    final Line4 = RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: '\u2022 ',
              style: TextStyle(
                color: Color(0xff007074),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              )),
          EveryStepBold,
          TextSpan(
              text:
                  'supports people on the NHS waiting list for Cognitive Behavioural Therapy (CBT).',
              style: TextStyle(color: Color(0xff007074), fontSize: 18.0)),
        ],
      ),
    );

    final Line5 = RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: '\u2022 ',
              style: TextStyle(color: Color(0xff007074), fontSize: 18.0)),
          EveryStepBold,
          TextSpan(
              text:
                  'helps people get the most out of CBT by equipping them with information, advice and more.',
              style: TextStyle(color: Color(0xff007074), fontSize: 18.0)),
        ],
      ),
    );
    // final Test = ListView(children: const <Widget>[
    //   ListTile(
    //     leading: Icon(Icons.map),
    //     title: Text('Map'),
    //   ),
    // ]);
    final TextContainer = Container(
      width: 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [Flexible(child: Line1)],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [Flexible(child: Line2)],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [Flexible(child: Line3)],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [Flexible(child: Line4)],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [Flexible(child: Line5)],
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 01.w, vertical: 5.h),
      child: Row(
        children: <Widget>[
          Flexible(child: TextContainer),
        ],
      ),
    );
  }
}
