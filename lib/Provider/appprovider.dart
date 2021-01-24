import 'package:flutter/material.dart';

import '../data/appinterface.dart';

class AppProvider with ChangeNotifier {
  List<AppInterface> _applist = [
    AppInterface(
      image: 'assets/images/barcodescan.jpg',
      title: 'Barcode\nScanner',
    ),
    AppInterface(
      image: 'assets/images/finddevice.png',
      title: 'Find\nDevice',
    ),
    AppInterface(
      image: 'assets/images/biblestudy.png',
      title: 'Bible\nStudy',
    ),
    AppInterface(
      image: 'assets/images/w3msys.jpg',
      title: 'W3MSYS \n Data',
    ),
    AppInterface(
      image: 'assets/images/hipersci.png',
      title: 'HiPER\nScientific Calculator',
    ),
    AppInterface(
      image: 'assets/images/idiomsphrases.png',
      title: 'Idioms\nand Phrasing',
    ),
    AppInterface(
      image: 'assets/images/signal.png',
      title: 'Signal',
    ),
    AppInterface(
      image: 'assets/images/nytimes.png',
      title: 'NYTimes',
    ),
    AppInterface(
      image: 'assets/images/zoom.jpg',
      title: 'Zoom',
    ),
    AppInterface(
      image: 'assets/images/meet.png',
      title: 'Meet',
    ),
    AppInterface(
      image: 'assets/images/hangouts.jpg',
      title: 'Hangouts',
    ),
    AppInterface(
      image: 'assets/images/tiktok.png',
      title: 'TikTok',
    ),
    AppInterface(
      image: 'assets/images/playgames.png',
      title: 'Play\nGames',
    ),
    AppInterface(
      image: 'assets/images/bbcnews.png',
      title: 'BBC News',
    ),
    AppInterface(
      image: 'assets/images/samspass.jpg',
      title: 'Samsung\nPass',
    ),
    AppInterface(
      image: 'assets/images/hymnsop.png',
      title: 'Hymns of\nPraise',
    ),
    AppInterface(
      image: 'assets/images/methhymnbook.png',
      title: 'Methodist\nHymn Book',
    ),
    AppInterface(
      image: 'assets/images/bixbyvision.png',
      title: 'Bixby\nVision',
    ),
    AppInterface(
      image: 'assets/images/whatsapp.png',
      title: 'FMWhats-\nApp',
    ),
    AppInterface(
      image: 'assets/images/boomplay.png',
      title: 'Boomplay',
    ),
    AppInterface(
      image: 'assets/images/whatsapp.png',
      title: 'YoWhats-\nApp',
    ),
    AppInterface(
      image: 'assets/images/whatsapp.png',
      title: 'WhatsApp',
    ),
    AppInterface(
      image: 'assets/images/teams.png',
      title: 'Teams',
    ),
    AppInterface(
      image: 'assets/images/livefootball.png',
      title: 'Live\nFootball',
    ),
    AppInterface(
      image: 'assets/images/audiomack.png',
      title: 'Audio-\nmack',
    ),
    AppInterface(
      image: 'assets/images/netflix.jpg',
      title: 'Netflix',
    ),
    AppInterface(
      image: 'assets/images/simtoolkit.png',
      title: 'My MTN',
    ),
    AppInterface(
      image: 'assets/images/simtoolkit.png',
      title: 'Vodafone\nServices',
    ),
  ];

  List<AppInterface> get applist {
    return [..._applist];
  }
}
