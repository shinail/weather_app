import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(60)),
      borderSide: BorderSide(
        color: const Color(0xFF000000),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pkr $result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Enter amount in usd.',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                cursorColor: Colors.grey,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(
              onPressed: () {
                result = double.parse(textEditingController.text) * 283.91;
                setState(() {});
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                minimumSize: Size(370, 50),
                elevation: 10,
              ),
              child: Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
