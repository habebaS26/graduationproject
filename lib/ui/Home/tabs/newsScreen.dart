import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class newsScreen extends StatefulWidget {
  const newsScreen({super.key});

  static const routeName = 'newsScreen';

  @override
  State<newsScreen> createState() => _newsScreenState();
}

class _newsScreenState extends State<newsScreen> {
  late final WebViewController controller;
  bool _isLoading = true; // Track loading status

  @override
  void initState() {
    super.initState();

    // Initialize WebView
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://science.asu.edu.eg/ar/news'))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            setState(() => _isLoading = false); // Hide loader when page loads
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          // WebView loads page inside app
          if (_isLoading)
            Center(
              child: CircularProgressIndicator(), // Show loading indicator
            ),
        ],
      ),
    );
  }
}
