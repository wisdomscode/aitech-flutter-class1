import 'package:flutter/material.dart';
import 'package:testing_app/counter_screen.dart';
import 'package:testing_app/welcome_screen.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My name is ',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  'Wisdom',
                  style: TextStyle(fontFamily: "Poppins", color: Colors.blue, fontSize: 20),
                ),
              ],
            ),

            // Another text
            const Text.rich(
              TextSpan(
                text: "I am a ",
                style: TextStyle(color: Colors.blue, fontSize: 18),
                children: [TextSpan(text: 'Developer', style: TextStyle(color: Colors.orange, fontSize: 24))],
              ),
            ),

            const Text.rich(
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              TextSpan(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recentl'),
            ),

            TextButton(
              onPressed: () {
                debugPrint('Button clicked');
              },
              child: const Text('Click Me'),
            ),

            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.amber,
                  ),
                ),
                // Spacer(),
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.amber,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const LinearBorder(),

                // maximumSize: Size(200, 50),
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(color: Colors.white),
              ),
              child: const Text(
                'Welcome Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CounterScreen();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const LinearBorder(),

                // maximumSize: Size(200, 50),
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(color: Colors.white),
              ),
              child: const Text(
                'Counter Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 0),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text('Full Name'),
                  hintText: 'Enter Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
