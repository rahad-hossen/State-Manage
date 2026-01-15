import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/AddCounter.dart';
import 'package:provider_learn/provider/counter.dart';
import 'package:provider_learn/provider/mainCounter.dart';

import 'CountProcess.dart';

void main() {
  runApp(
      // const MyApp()
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_){return BalanceCalc();}),
          ChangeNotifierProvider(create: (_){return Counterprocess();})
        ],
      child: const MyApp(),
    )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Managment',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.redAccent)),
      home: Center(child: const MyHomePage(title: 'State Managment')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20,color: Colors.black45),
                  children: <TextSpan>[
                    TextSpan(text: "Your balance : "),
                    TextSpan(
                      text: "${context.watch<BalanceCalc>().Total_Balance}",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black45),
                    children: <TextSpan>[
                      TextSpan(text: "Total Count : "),
                      TextSpan(text: "${context.watch<Counterprocess>().Count_Total}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue))
                    ]
                  )
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Add_Amount()));
                  }, child: Text("Amount Process")),
                ],
              ),

              OutlinedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Count_Process()));
              }, child: Text("Count Process")),

            ],
          ),
        ),
      ),
    );
  }
}
