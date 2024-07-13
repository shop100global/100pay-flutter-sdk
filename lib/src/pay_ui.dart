// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class PayUi extends StatefulWidget {
//   final String url;
//   const PayUi({Key? key, required this.url}) : super(key: key);

//   @override
//   State<PayUi> createState() => _PayUiState();
// }

// class _PayUiState extends State<PayUi> {
//   var controller = WebViewController();

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..addJavaScriptChannel('load',
//           onMessageReceived: (JavaScriptMessage message) {
//         print('loading');
//       })
//       ..addJavaScriptChannel(
//         'message',
//         onMessageReceived: (JavaScriptMessage message) {
//           print('message.message ${message.message}');
//           final data = message.message;
//           var checkData = data.split('_');
//           if (checkData.length == 2 && checkData[0] == "100PAY-PAYMENT-REF") {
//             print('payment complete');
//           } else {}
//         },
//       )
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('https://www.youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse(widget.url));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: SizedBox(
//         height: MediaQuery.of(context).size.height * 0.9, // Set a fixed height
//         child: WebViewWidget(
//           gestureRecognizers: {
//             Factory<VerticalDragGestureRecognizer>(
//               () => VerticalDragGestureRecognizer(),
//             ),
//           },
//           controller: controller,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayUi extends StatefulWidget {
  final String url;
  const PayUi({Key? key, required this.url}) : super(key: key);

  @override
  State<PayUi> createState() => _PayUiState();
}

class _PayUiState extends State<PayUi> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    // Assign WebViewController instance
    controller = WebViewController()
      // ..addJavaScriptChannel(
      //   'load',
      //   onMessageReceived: (JavaScriptMessage event) {
      //     print('loading');
      //     event.message;
      //     print(event.message);
      //   },
      // )
      ..addJavaScriptChannel(
        'message',
        onMessageReceived: (JavaScriptMessage message) {
          print('message.message ${message.message}');
          final data = message.message;
          var checkData = data.split('_');
          if (checkData.length == 2 && checkData[0] == "100PAY-PAYMENT-REF") {
            print('payment complete');
          } else {}
        },
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print('hello i progress');
            // Update loading bar.
          },
          onPageStarted: (String url) {
            print('hello i start');
          },
          onPageFinished: (String url) {
            debugPrint('Page finished loading: $url');
            print('hello i finish');

            WebViewController()
              ..addJavaScriptChannel(
                'load',
                onMessageReceived: (JavaScriptMessage message) {
                  // print('loading');
                  // event.message;
                  // print(event.message);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message.message)),
                  );
                },
              );
              
            // ..addJavaScriptChannel('load', onMessageReceived: onMessageReceived)
            //   ..addJavaScriptChannel(
            //     'load',
            //     onMessageReceived: (p0) {
            //       print('loaded');
            //     },
            //   );
          },
          
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'load',
        onMessageReceived: (JavaScriptMessage message) {
          // print('loading');
          // event.message;
          // print(event.message);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9, // Set a fixed height
        child: WebViewWidget(
          gestureRecognizers: {
            Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer(),
            ),
          },
          controller: controller,
        ),
      ),
    );
  }
}
