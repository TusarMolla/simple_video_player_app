

import 'package:flutter/material.dart';
import 'package:simple_video_player_app/player_list_response.dart';

class HomePageState{
  int? page =1;
  List<VideoInfo> videos =[];
  ScrollController scrollController = ScrollController();

HomePageState update(HomePageState homePageState){
  var state = HomePageState();
  state.page = homePageState.page;
  state.scrollController = homePageState.scrollController;
  state.videos = homePageState.videos;
  return state;


}
}