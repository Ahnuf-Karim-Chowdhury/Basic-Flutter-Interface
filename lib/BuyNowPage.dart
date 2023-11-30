import 'package:flutter/material.dart';

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Buy Now'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              children: [
                PaymentMethodButton(
                  onPressed: () {
                  },
                  icon: Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/pictures/Bkash.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {
                    // Handle Rocket payment
                  },
                  icon: Container(
                    width: 85,
                    height: 95,
                    child: Image.asset('assets/pictures/rocket.jpg', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {

                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/Visa.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {

                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/Mastercard.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {
                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/Nagad-Logo.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {

                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/Paypal (2).png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {

                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/Payoneer_logo.svg.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
                PaymentMethodButton(
                  onPressed: () {

                  },
                  icon: Container(
                    width: 85,
                    height: 85,
                    child: Image.asset('assets/pictures/American_Express.png', fit: BoxFit.contain),
                  ),
                  label: Text('', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
              ),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              items: ['Store Pick Up', 'Home Delivery']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? newValue) {
              },
              hint: Text('Select an option', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Widget label;

  const PaymentMethodButton({
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        padding: EdgeInsets.symmetric(vertical: 16.0),
      ),
    );
  }
}


