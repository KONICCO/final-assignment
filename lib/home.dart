import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/number_series_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: _textEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan Nilai N',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text('1', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    int type = 1;
                    final int? n = int.tryParse(_textEditingController.text);
                    if (n != null) {
                      BlocProvider.of<NumberSeriesBloc>(context)
                          .add(GenerateSeriesEvent(n, type));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      primary: Theme.of(context).colorScheme.inversePrimary,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 5),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  child: Text('2', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    int type = 2;
                    final int? n = int.tryParse(_textEditingController.text);
                    if (n != null) {
                      BlocProvider.of<NumberSeriesBloc>(context)
                          .add(GenerateSeriesEvent(n, type));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      primary: Theme.of(context).colorScheme.inversePrimary,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 5),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text('3', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    int type = 3;
                    final int? n = int.tryParse(_textEditingController.text);
                    if (n != null) {
                      BlocProvider.of<NumberSeriesBloc>(context)
                          .add(GenerateSeriesEvent(n, type));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      primary: Theme.of(context).colorScheme.inversePrimary,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 5),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  child: Text('4', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    int type = 4;
                    final int? n = int.tryParse(_textEditingController.text);
                    if (n != null) {
                      BlocProvider.of<NumberSeriesBloc>(context)
                          .add(GenerateSeriesEvent(n, type));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                      primary: Theme.of(context).colorScheme.inversePrimary,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 5),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Text(
              "Result :",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            BlocBuilder<NumberSeriesBloc, NumberSeriesState>(
              builder: (context, state) {
                if (state is ResultState) {
                  return Container(
                      child: Row(
                    children: [
                      Flexible(
                          child: Text(
                        "${state.result}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ))
                    ],
                  ));
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
