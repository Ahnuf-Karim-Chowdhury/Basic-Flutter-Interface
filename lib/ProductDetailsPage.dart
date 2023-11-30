import 'package:flutter/material.dart';
//import 'BuyNowPage.dart';

class ProductDetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Product Details'),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'GeForce RTX 4090',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Image.asset('assets/pictures/002.jpg'),
              SizedBox(height: 10),
              Text(
                'Product Price: \$1999',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),

              SizedBox(height: 10),
              Text(
                'The NVIDIA® GeForce RTX™ 4090 is the ultimate GeForce GPU. It brings an enormous leap in performance, efficiency, and AI-powered graphics. Experience ultra-high performance gaming, incredibly detailed virtual worlds, unprecedented productivity, and new ways to create. It’s powered by the NVIDIA Ada Lovelace architecture and comes with 24 GB of G6X memory to deliver the ultimate experience for gamers and creators',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),

              SizedBox(height: 20),
            /*  ElevatedButton(
                onPressed: () {
                  // Navigate to the Buy Now page
                  Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => BuyNowPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Use backgroundColor instead of primary
                ),
                child: Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}

