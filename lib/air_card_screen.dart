import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class AirCardScreen extends StatefulWidget {
  const AirCardScreen({super.key});

  @override
  State<AirCardScreen> createState() => _AirCardScreenState();
}

class _AirCardScreenState extends State<AirCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('fff'),
          WebView(
            initialUrl: 'https://www.iqair.com/ru/air-quality-map',
            javascriptMode: JavascriptMode.unrestricted,
            debuggingEnabled: true,
            onWebResourceError: (WebResourceError error) {
              print("WebView Error: ${error.errorCode}, ${error.description}");
            },
          )

        ],
      ),
    );
  }
}
