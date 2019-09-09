

//https://everythingflutter.iconicto.com/api/communities
//https://everythingflutter.iconicto.com/api/widgets
//https://everythingflutter.iconicto.com/api/tutorials
//https://everythingflutter.iconicto.com/api/events
//https://everythingflutter.iconicto.com/api/news

import 'package:everything_flutter/model/Widget.dart';
import 'package:everything_flutter/model/community.dart';
import 'package:everything_flutter/model/event.dart';
import 'package:everything_flutter/model/news.dart';
import 'package:everything_flutter/model/tutorial.dart';

abstract class Api {
		List<News> getAllNews();
		
		List<Community> getAllCommunities();
		
		List<Event> getAllEvents();
		
		List<Tutorial> getAllTutorials();
		
		List<Widget> getAllWidgets();
}