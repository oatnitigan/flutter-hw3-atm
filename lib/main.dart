import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'ATM-1999'),
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
  int _balance = 0,_num = 0;
  String _Transaction ='';

  // Function to handle deposit
  void _deposit() {
    setState(() {
      _balance += _num;
      _Transaction = 'Deposit Complete';
      _num = 0;
      
    });
  }

  // Function to handle withdraw
  void _withdraw() {
    setState(() {
      if (_balance >= _num) {
        _balance -= _num;
        _Transaction = 'Withdraw Comlete';
        
      } else {
        // Show error if balance is insufficient
        _Transaction = 'Your balance not enouge!';
      }
      _num = 0;
     
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your Balance is ',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$_balance',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),

            
            Text(
              '$_Transaction',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_num',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),


            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 1000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('1000',style: TextStyle(color: Colors.white, ),),
                      ),
                SizedBox(width: 10,),
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 2000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('2000',style: TextStyle(color: Colors.white,),),
                      ),
                SizedBox(width: 10,),
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 3000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('3000',style: TextStyle(color: Colors.white,),),
                      ),

              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 4000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('4000',style: TextStyle(color: Colors.white, ),),
                      ),
                SizedBox(width: 10,),
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 5000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('5000',style: TextStyle(color: Colors.white,),),
                      ),
                SizedBox(width: 10,),
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 60, 163, 247),
                      onPressed: (){
                        setState(() {
                          _num = 6000;
                          _Transaction ='Your money is';
                        });
                      },
                      label: const Text('6000',style: TextStyle(color: Colors.white,),),
                      ),
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 9, 112, 0),
                      onPressed: _deposit, 
                      label: const Text('deposit',style: TextStyle(color: Colors.white, ),),
                      icon: const Icon(Icons.add_sharp, color: Colors.white, size: 25),),
                SizedBox(width: 10,),
                FloatingActionButton.extended(
                      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                      onPressed: _withdraw,
                      label: const Text('withdraw',style: TextStyle(color: Colors.white,),),
                      icon: const Icon(Icons.delete_outline, color: Colors.white, size: 25),),

              ],
            ),
      
          ],
          
        ),
      ),

    );
  }
}
