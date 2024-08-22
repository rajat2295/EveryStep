import 'package:english_words/english_words.dart';
import 'package:everystep/widgets/about_page/about_page.dart';
import 'package:everystep/widgets/home_view/home_view.dart';
import 'package:everystep/widgets/video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'EveryStep',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const appTitle = "About Us";

    return MaterialApp(
        title: appTitle,
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xffd3e6d5)),
        home: ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                title: const Text(
                  appTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Color(0xff007074),
                  ),
                ),
                backgroundColor: Color(0xffd3e6d5),
              ),
              body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(children: [AboutPage()]),
                      Container(
                        height: 50.h,
                        child: VideoPlayerWidget(
                            videoUrl: Uri.parse(
                                "https://firebasestorage.googleapis.com/v0/b/everystep-eea07.appspot.com/o/Nathan's%20Video%20-%20Jul%2024%2C%202024.mp4?alt=media&token=da73d349-933d-482e-94a3-1a4d3fb9fe2b")),
                      )
                    ],
                  )),
            );
          },
        ));
  }
}
