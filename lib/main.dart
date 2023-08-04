import 'package:flutter/material.dart';
import 'git.dart';
import 'name.dart';

void main() {
  runApp(const FAC());
}

class FAC extends StatelessWidget {
  const FAC({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter App Creator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _counter = 0;
  bool gitEnabled = true;
  bool platformAndroid = false;
  bool platformIos = false;
  bool platformMac = false;
  bool platformWindows = false;

/*
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//            Row(
            //            children: [
            CheckboxListTile(
              title: const Text("Android"),
              value: platformAndroid,
              onChanged: (bool? value) {
                setState(() {
                  platformAndroid = !platformAndroid;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("iOS"),
              value: platformIos,
              onChanged: (bool? value) {
                setState(() {
                  platformIos = !platformIos;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Mac"),
              value: platformMac,
              onChanged: (bool? value) {
                setState(() {
                  platformMac = !platformMac;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Windows"),
              value: platformWindows,
              onChanged: (bool? value) {
                setState(() {
                  platformWindows = !platformWindows;
                });
              },
            ),
            //          ],
            //      ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: gitEnabled
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Name()));
                      }
                    : null,
                child: const Text("App Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: gitEnabled
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Git()));
                      }
                    : null,
                child: const Text("GIT"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: gitEnabled ? () {} : null,
                child: const Text("Platforms"),
              ),
            ),
          ],
        ),
      ),
    );
/*            
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    */
  }
}
