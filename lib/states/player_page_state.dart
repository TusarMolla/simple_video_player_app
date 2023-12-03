


import 'package:simple_video_player_app/player_list_response.dart';

class PlayerPageState {
  VideoInfo? videoInfo;
  PlayerPageState({this.videoInfo});


 PlayerPageState update(PlayerPageState state){
    PlayerPageState pageState= new PlayerPageState();
    pageState.videoInfo = state.videoInfo;

    return pageState;

  }

}