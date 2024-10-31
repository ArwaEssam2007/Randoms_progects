import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/provider.dart';

class Buttooon extends StatefulWidget {
  const Buttooon({super.key});

  @override
  State<Buttooon> createState() => _ButtooonState();
}

class _ButtooonState extends State<Buttooon> {
  @override
  Widget build(BuildContext context) {
    var myprov = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyProvider>(
              builder: (context, provider, child) {
                return Text(
                  "you typing: ${provider.inputText()}",
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: ( text) {
                myprov.updateInputText(text);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
            ),
          ],
        ),
      ),
    );
  }
}