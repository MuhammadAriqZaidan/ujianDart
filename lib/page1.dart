import 'package:flutter/material.dart';
import 'package:test_flutter/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kotak gambar atas
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Image.network(
                    'https://via.placeholder.com/150', 
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Vaccine Types Available',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'There are types of vaccines available to accelerate herd immunity, so that this pandemic will quickly disappear',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page2())),
                  child: Text('Skip'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300], 
                    foregroundColor: Colors.black, 
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300], 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    )
    );
  }
}
