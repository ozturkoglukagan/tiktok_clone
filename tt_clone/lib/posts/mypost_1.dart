import 'package:flutter/material.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Username and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@crbykagan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'aloneboi '),
                      TextSpan(
                          text: '#her #love #still',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]))
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
