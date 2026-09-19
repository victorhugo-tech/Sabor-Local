import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'video_splash_model.dart';
export 'video_splash_model.dart';

class VideoSplashWidget extends StatefulWidget {
  const VideoSplashWidget({super.key});

  static String routeName = 'VideoSplash';
  static String routePath = '/videoSplash';

  @override
  State<VideoSplashWidget> createState() => _VideoSplashWidgetState();
}

class _VideoSplashWidgetState extends State<VideoSplashWidget> {
  late VideoSplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoSplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 5000,
        ),
      );
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(HomePageWidget.routeName);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5E9DB),
        body: Stack(
          children: [
            Container(
              width: 391.9,
              height: 851.29,
              decoration: BoxDecoration(
                color: Color(0xFFEBE3D6),
              ),
              child: Opacity(
                opacity: 0.9,
                child: FlutterFlowVideoPlayer(
                  path:
                      'assets/videos/WhatsApp_Video_2026-09-06_at_19.07.14.mp4',
                  videoType: VideoType.asset,
                  aspectRatio: 1.0,
                  autoPlay: true,
                  looping: true,
                  showControls: false,
                  allowFullScreen: true,
                  allowPlaybackSpeedMenu: false,
                  pauseOnNavigate: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
