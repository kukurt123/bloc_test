import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_p/bloc/name/count/name_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Column(
              children: [
                BlocBuilder<NameBloc, NameState>(builder: (_, state) {
                  print('second page');
                  if (state is NameChangeState) {
                    return Text('${state.name}');
                  }
                  return CircularProgressIndicator();
                }),
                Text('second page'),
              ],
            )));
  }

  @override
  void dispose() {
    print('disposing');
  }
}
