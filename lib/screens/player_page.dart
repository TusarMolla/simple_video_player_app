import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_video_player_app/blocs/player_block.dart';
import 'package:simple_video_player_app/device_info.dart';
import 'package:simple_video_player_app/states/player_page_state.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<PlayerBloc,PlayerPageState>(
        builder: (context,state) {
          return SingleChildScrollView(
            child: Container(
              child: Container(
                height: 200,
                width: DeviceInfo(context).width,
                child: Image.network(state.videoInfo?.thumbnail??"",fit: BoxFit.cover,),
              ),
            ),
          );
        }
      ),
    );
  }
}
