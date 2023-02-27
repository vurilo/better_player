import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = [
    {
      "firmNameNp": "मूना इन्टरप्राइजेज",
      "firmName": "Muna Enterprise",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "मूना इन्टरप्राइजेज",
      "firmName": "Muna Enterprise",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "कृष्ण सप्लायर्स एण्ड ट्रेडर्स",
      "firmName": "Krishna Supplements & Traders",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "पिंकी कवाडी पसल",
      "firmName": "Pinkie Kawadi Shop",
      "contactNo": "555",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "मनोकामना ट्रेड इम्पेक्स",
      "firmName": "Greetings Trade Imex",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "तूफान मिष्ठान भण्डार",
      "firmName": "Storm Hurricane Store",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "एस के सप्लायर्स",
      "firmName": "S supplements",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "शिव स्टोर्स",
      "firmName": "Shiva Stores",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "विजय स्टोर्स",
      "firmName": "Vijay Stores",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "पायोनियर इलोक्ट्रोनिक्स",
      "firmName": "Pioneer Illustrations",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    }
     {
      "firmNameNp": "मूना इन्टरप्राइजेज",
      "firmName": "Muna Enterprise",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "मूना इन्टरप्राइजेज",
      "firmName": "Muna Enterprise",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "कृष्ण सप्लायर्स एण्ड ट्रेडर्स",
      "firmName": "Krishna Supplements & Traders",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "पिंकी कवाडी पसल",
      "firmName": "Pinkie Kawadi Shop",
      "contactNo": "555",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "मनोकामना ट्रेड इम्पेक्स",
      "firmName": "Greetings Trade Imex",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "तूफान मिष्ठान भण्डार",
      "firmName": "Storm Hurricane Store",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "एस के सप्लायर्स",
      "firmName": "S supplements",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "शिव स्टोर्स",
      "firmName": "Shiva Stores",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "विजय स्टोर्स",
      "firmName": "Vijay Stores",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    },
    {
      "firmNameNp": "पायोनियर इलोक्ट्रोनिक्स",
      "firmName": "Pioneer Illustrations",
      "contactNo": "",
      "categoryName": "आइसक्रिम",
      "address": ""
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Text("fafajflajf"),
      ));
  }
}
