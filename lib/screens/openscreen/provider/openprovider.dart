
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Openprovider extends ChangeNotifier
{
  List webLinkList = [
    "https://pizzaonline.dominos.co.in/"
    "https://lapinozpizza.in/",
    "https://martinozpizza.com/",
    "https://www.pizzahut.co.in/",
    "https://www.ovenstory.in/",
    "https://lazizpizza.com/",
    "https://www.pizzaexpress.com/",
  ];

  WebViewController? webViewController;

  void initURLmethod(int i)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webLinkList[i]}"));
  }
}
