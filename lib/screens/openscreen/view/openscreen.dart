import 'package:flutter/material.dart';
import 'package:only_pizza/screens/openscreen/provider/openprovider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Openscreen extends StatefulWidget {
  const Openscreen({Key? key}) : super(key: key);

  @override
  State<Openscreen> createState() => _OpenscreenState();
}

class _OpenscreenState extends State<Openscreen> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   int ind = ModalRoute.of(context)!.settings.arguments as int;
  //   Provider.of<Openprovider>(context, listen: false).initURLmethod(ind);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: Provider.of<Openprovider>(context,listen: true).webViewController!,
        ),
      ),
    );
  }
}
