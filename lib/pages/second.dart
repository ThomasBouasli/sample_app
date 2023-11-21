import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 2));
    return "Routing from first page";
  }

  final String data;

  const SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Second Page',
            ),
            Text(data),
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(snapshot.data.toString()),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
