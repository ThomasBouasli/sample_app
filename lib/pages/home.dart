import 'package:flutter/material.dart';
import 'package:sample_app/pages/second.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routing App")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage(
                              data: "Routing from first page",
                            )),
                  );
                },
                child: const Text("Go to Second Page"))
          ],
        ),
      ),
    );
  }
}
