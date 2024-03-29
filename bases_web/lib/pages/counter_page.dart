import 'package:bases_web/widgets/custom_app_menu.dart';
import 'package:bases_web/widgets/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          Text(
            'Contador $counter',
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                onPressed: () => setState(() => counter--),
                color: Colors.pink,
                text: 'Decrementar',
              ),
              CustomFlatButton(
                onPressed: () => setState(() => counter++),
                text: 'Incrementar',
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
