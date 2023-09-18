// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'dwta_appBar.dart';

// class DWTAHomePage extends StatefulWidget {
//   const DWTAHomePage({Key? key}) : super(key: key);

//   @override
//   State<DWTAHomePage> createState() => _DWTAHomePageState();
// }

// class _DWTAHomePageState extends State<DWTAHomePage> {
//   double _progress = 0;
//   late InAppWebViewController inAppWebViewController;

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         var isLastPage = await inAppWebViewController.canGoBack();

//         if (isLastPage) {
//           inAppWebViewController.goBack();
//           return false;
//         }
//         return true;
//       },
//       child: SafeArea(
//         child: Scaffold(
//           appBar: const DWTAAppBar(),
//           body: Stack(
//             children: [
//               InAppWebView(
//                 initialUrlRequest:
//                     URLRequest(url: Uri.parse("https://wbdwta.com/")),
//                 onWebViewCreated: (InAppWebViewController controller) {
//                   inAppWebViewController = controller;
//                 },
//                 onProgressChanged:
//                     (InAppWebViewController controller, int progress) {
//                   setState(() {
//                     _progress = progress / 100;
//                   });
//                 },
//               ),
//               _progress < 1
//                   ? SizedBox(
//                       child: LinearProgressIndicator(
//                         value: _progress,
//                       ),
//                     )
//                   : const SizedBox(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }