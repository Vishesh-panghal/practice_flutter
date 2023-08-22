import 'package:authentication_pages/BLoc_Exercide/InternetConnectivity/BLoc/bloc/bloc_is_connected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../BLoc/bloc/state_is_connected.dart';

class IsConnectPage extends StatelessWidget {
  const IsConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            if(state is InternetSuccessState)
            {
             return const Text('Connected!',style:TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.bold));
            }else if(state is InternetLostState)
            {
              return const Text('Not connected!',style:TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.bold));
            }else
            {
              return const Text('Loading...',style:TextStyle(fontFamily: 'Poppins',fontSize: 18,fontWeight: FontWeight.bold));
            }
          },
        ),
      ),
    );
  }
}
