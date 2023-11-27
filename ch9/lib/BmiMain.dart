import 'package:flutter/material.dart';

class BmiMain extends StatefulWidget {
  const BmiMain({super.key});

  @override
  State<BmiMain> createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("비만도 계산기"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "키"
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "몸무게"
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){

                      }
                    },
                    child: const Text("결과")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
