import 'package:flutter/material.dart';
import 'package:shopping_cart/api/api.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<Map<String, dynamic>?> getCartList() async {
    return APICalls().getList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shopping'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CustomCard()
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      decoration: BoxDecoration(border: BorderDirectional(bottom: BorderSide(width: 0.5, color: Colors.grey.shade300), top: BorderSide(width: 0.5, color: Colors.grey.shade300))),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('New Hotel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                  Text('Chicken Hakka Noodles', style: TextStyle(fontSize: 18),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.yellowAccent,),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.4,),
                      // Quantity
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(4), color: Colors.orange.shade50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.horizontal_rule, color: Colors.orange,), SizedBox(width: 10,),
                            Text('1', style: TextStyle(color: Colors.orange),), SizedBox(width: 10,),
                            Icon(Icons.add, color: Colors.orange)
                          ],
                        ),
                      ),
                    //   Price
                      
                    ],
                  )
                ],
              ),
            ),
          ),

          // Image here
          Container(
            width: 100,
            height: 100,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }

}

