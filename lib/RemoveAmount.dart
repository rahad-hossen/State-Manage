import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/provider/counter.dart';

class Remove_Amount extends StatelessWidget{
  TextEditingController RemoveAmmount =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remove Amount"),
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
                    controller: RemoveAmmount,
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
                    context.read<BalanceCalc>().RemoveAmount(RemoveAmount: int.tryParse(RemoveAmmount.text)??0);
                  },
                  child: Text("Remove")
              ),
            ],
          ),
        ),
      ),
    );
  }




}