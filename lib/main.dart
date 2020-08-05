import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de moedas',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculadora de moedas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double moedavar = 0.0.clamp(0, 100);
  final fivecontroller = new TextEditingController();
  final tencontroller = new TextEditingController();
  final twentyfivecontroller = new TextEditingController();
  final fiftycontroller = new TextEditingController();
  final onecontroller = new TextEditingController();
  int a =0;
  int b =0;
  int c =0;
  int d =0;
  int e =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 140,
              child:
              TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                controller: fivecontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          e= e.clamp(1, 100)-1;
                          fivecontroller.text = e.toString();
                          moedavar =moedavar.clamp(0.05, 10000000)-0.05;
                        });
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          moedavar +=0.05;
                          e++;
                          fivecontroller.text=e.toString();
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: 'Moeda de 5 centavos',
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 150,
              child:
              TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                controller: tencontroller,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          d= d.clamp(1, 100)-1;
                          tencontroller.text = d.toString();
                          moedavar =moedavar.clamp(0.10, 10000000)-0.10;
                        });
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          moedavar +=0.10;
                          d++;
                          tencontroller.text=d.toString();
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: 'Moeda de 10 centavos',
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 150,
              child:
              TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                controller: twentyfivecontroller,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          c= c.clamp(1, 100)-1;
                          twentyfivecontroller.text = c.toString();
                          moedavar =moedavar.clamp(0.25, 10000000)-0.25;
                        });
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          moedavar +=0.25;
                          c++;
                          twentyfivecontroller.text=c.toString();
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: 'Moeda de 25 centavos',
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 150,
              child:
              TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                controller: fiftycontroller,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          b= b.clamp(1, 100)-1;
                          fiftycontroller.text = b.toString();
                          moedavar =moedavar.clamp(0.50, 10000000)-0.50;
                        });
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          moedavar +=0.50;
                          b++;
                          fiftycontroller.text=b.toString();
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: 'Moeda de 50 centavos',
                ),
              ),
            ),
            SizedBox(height: 5),
        Container(
          width: 150,
          child:
            TextField(
              readOnly: true,
              textAlign: TextAlign.center,
              controller: onecontroller,
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){
                      setState(() {
                        a= a.clamp(1, 100)-1;
                        onecontroller.text = a.toString();
                        moedavar =moedavar.clamp(1.00, 10000000)-1.00;
                      });
                    },
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        moedavar +=1.00;
                        a++;
                        onecontroller.text=a.toString();
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  helperText: 'Moeda de 1 real',
              ),
            ),
        ),
            SizedBox(height: 80),
            Container(
              child:
              Text('R\$ ${moedavar.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            moedavar = 0.0;
            fivecontroller.text = '0';
            e=0;
            tencontroller.text = '0';
            d=0;
            twentyfivecontroller.text = '0';
            c=0;
            fiftycontroller.text = '0';
            b=0;
            onecontroller.text = '0';
            a=0;
          });
        },
        child:
        Icon(Icons.clear,
          color: Colors.black,),
            backgroundColor: Colors.white,

      ),
    );
  }
}
