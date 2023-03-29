import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('LPG_Monitor'),
          backgroundColor: Colors.blueAccent,
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/dtb.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/gasCartoon2.png'),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          const Expanded(
                              flex: 5,
                              child: Text(
                                'Welcome! '
                                'Monitor the lifespan of your gas'
                                ' wherever and whenever you are.',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              )),
                        ]),
                        const Spacer(
                          flex: 2, // <-- SEE HERE
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Text(
                                'Usage',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            SizedBox(
                                width: 100,
                                height: 50,
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                            color: Colors.blueAccent, width: 3),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                            color: Colors.green, width: 3),
                                      )),
                                )),
                            const SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 1, // <-- SEE HERE
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Estimated time left',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 4.0),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  height: 50,
                                  child: const Center(
                                    child: Text('0300hrs'),
                                  )
                                  ),
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Spacer(
                          flex: 2, // <-- SEE HERE
                        ),
                      ]))
            ]))));
  }
}
