// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  //for obscure Text
  bool _passwordVisible = true;

  //clear the whole text field
  final fieldText = TextEditingController();

  clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.orange[800],
            resizeToAvoidBottomInset: false,
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'KdamThmorPro-Regular',
                      fontSize: 40.0,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'KdamThmorPro-Regular'),
                ),
              ),
              const SizedBox(height: 30.0),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60))),
                child: Column(
                  children: [
                    const SizedBox(height: 50.0),
                    Center(
                      child: SizedBox(
                        height: 220.0,
                        width: 330.0,
                        child: Column(children: [
                          Card(
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            shadowColor: Colors.orange[900],
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 20.0, 10.0, 8.0),
                                child: TextField(
                                  controller: fieldText,
                                  cursorColor: const Color(0xFFE65100),
                                  decoration: InputDecoration(
                                      labelText: 'Email or Phone number',
                                      labelStyle:
                                          const TextStyle(color: Colors.grey),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFE65100))),
                                      suffixIcon: IconButton(
                                          onPressed: clearText,
                                          icon: const Icon(
                                            Icons.dangerous,
                                            color: Color(0xFFE65100),
                                          ))),
                                ),
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 10.0, 10.0, 20.0),
                                child: TextField(
                                  obscureText: _passwordVisible,
                                  cursorColor: const Color(0xFFE65100),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                          icon: Icon(
                                            _passwordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colors.orange[900],
                                          )),
                                      labelText: 'Password',
                                      labelStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'KdamThmorPro-Regular'),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFE65100)))),
                                ),
                              ),
                            ]),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Column(children: [
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'KdamThmorPro-Regular'),
                        ),
                        const SizedBox(height: 40.0),
                        SizedBox(
                          width: 180.0,
                          height: 45.0,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.orange[800]),
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))))),
                              child: const Text('Login')),
                        ),
                        const SizedBox(height: 50.0),
                        const Text(
                          'Continue with social media',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'KdamThmorPro-Regular'),
                        ),
                        const SizedBox(height: 40.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 42),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 130.0,
                                height: 44.0,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.blue),
                                        shape: MaterialStateProperty.all(
                                            const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))))),
                                    child: const Text('Facebook')),
                              ),
                              SizedBox(
                                width: 130.0,
                                height: 45.0,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                        shape: MaterialStateProperty.all(
                                            const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))))),
                                    child: const Text('Github')),
                              ),
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
