import 'package:ch9/BmiResult.dart';
import 'package:flutter/material.dart';

class BmiMain extends StatefulWidget {
  const BmiMain({super.key});

  @override
  State<BmiMain> createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();  //컨트롤러 2개 생성
  final _weightController = TextEditingController();

  @override
  void dispose() {    //화면이 바뀌면 더 이상 처리 하면 안 됨
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

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
                controller: _heightController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return "키 값을 입력하세요";
                  } //스페이스바 등 쳐도 170(공백) 이런형식으로 값이 안들어가게 trim()
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "몸무게"
                ),
                keyboardType: TextInputType.number,
                controller: _weightController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return "몸무게 값을 입력하세요.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>BmiResult(
                                  height: double.parse(_heightController.text.trim()),
                                  weight: double.parse(_weightController.text.trim()),
                                ),
                            ),
                        );
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
