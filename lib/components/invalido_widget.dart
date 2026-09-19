import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'invalido_model.dart';
export 'invalido_model.dart';

class InvalidoWidget extends StatefulWidget {
  const InvalidoWidget({super.key});

  @override
  State<InvalidoWidget> createState() => _InvalidoWidgetState();
}

class _InvalidoWidgetState extends State<InvalidoWidget> {
  late InvalidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvalidoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 299.2,
          height: 298.42,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FlutterFlowVideoPlayer(
            path: 'assets/videos/Invalido.mp4',
            videoType: VideoType.asset,
            autoPlay: true,
            looping: true,
            showControls: false,
            allowFullScreen: true,
            allowPlaybackSpeedMenu: false,
            pauseOnNavigate: false,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(90.0, 260.0, 90.0, 0.0),
          child: FFButtonWidget(
            onPressed: () async {
              context.safePop();
            },
            text: 'Voltar',
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 15.0,
            ),
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconAlignment: IconAlignment.start,
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF060606),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
