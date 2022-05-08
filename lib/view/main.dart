import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_p/bloc/count/counter_bloc.dart';
import 'package:testing_p/bloc/name/count/name_bloc.dart';
import 'package:testing_p/view/second_page/second_page.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),
    BlocProvider<NameBloc>(create: (BuildContext context) => NameBloc())
  ], child: MaterialApp(home: MyApp())));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('testsetst'),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 100),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage()));
                      },
                      child: Text('second page'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterDecrementEvent()),
                      child: Text('decrease...'),
                    ),
                    TextButton(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterIncrementEvent()),
                      child: Text('increase...'),
                    ),
                  ],
                ),
                Expanded(
                  child: TextFormField(
                    onChanged: (e) {
                      context.read<NameBloc>().add(NameChangeEvent(name: e));
                    },
                  ),
                ),
                BlocBuilder<NameBloc, NameState>(builder: (_, state) {
                  if (state is NameChangeState) {
                    return Text('${state.name}');
                  }
                  return CircularProgressIndicator();
                }),
                BlocSelector<CounterBloc, CounterState, NameState>(
                  selector: (CounterState s) {
                    return NameChangeState(
                        name: '${DateTime.now().toIso8601String()}');
                  },
                  builder: (_, state) {
                    if (state is NameChangeState)
                      return Text('${state.name}',
                          style: TextStyle(color: Colors.pink));
                    // if (state is NameInitialState)
                    return CircularProgressIndicator(
                      color: Colors.red,
                    );
                  },
                ),
                BlocBuilder<CounterBloc, CounterState>(builder: (_, state) {
                  if (state is CounterInitialState) {
                    return CircularProgressIndicator();
                  }
                  return Column(
                    children: [
                      SizedBox(height: 100),
                      if (state is CounterIncrementState)
                        Text('${state.count}'),
                      if (state is CounterDecrementState)
                        Text('${state.count}'),
                    ],
                  );
                }),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
