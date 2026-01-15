import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/RemoveAmount.dart';
import 'package:provider_learn/provider/counter.dart';

class Add_Amount extends StatelessWidget{

  TextEditingController AmountCount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Amount"),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  controller: AmountCount,
                  decoration: InputDecoration(
                    label: Text("Amount"),
                    hint: Text("Add money amount"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  keyboardType: TextInputType.number,
                )
              ),
              SizedBox(height: 15,),
              OutlinedButton(
                  onPressed: (){
                    context.read<BalanceCalc>().AddAmount(ADD_Blance: int.tryParse(AmountCount.text)??0);
                  },
                  child: Text("Add amount")
              ),
              OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Remove_Amount() ));
                  },
                  child: Text("Remove ammunt")
              ),

            ],
          ),
        ),
      ),
    );
  }




}