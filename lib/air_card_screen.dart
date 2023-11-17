import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class AirCardScreen extends StatefulWidget {
  const AirCardScreen({super.key});

  @override
  State<AirCardScreen> createState() => _AirCardScreenState();
}

class _AirCardScreenState extends State<AirCardScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: WebView(
              initialUrl: "https://www.iqair.com/ru/air-quality-map",
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (url) {
                _controller.jumpTo(
                  _controller.position.maxScrollExtent,
                );
                setState(() {

                });
                print('New $url');
              },
              onWebResourceError: (WebResourceError error) {
                print("WebView Error: ${error.failingUrl}, ${error.description}");
              },
            ),
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/air_info_message.png', width: double.infinity,)),
        ],
      ),
    );
  }
}
