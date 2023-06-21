import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_description_daterange_model.dart';
export 'post_description_daterange_model.dart';

class PostDescriptionDaterangeWidget extends StatefulWidget {
  const PostDescriptionDaterangeWidget({Key? key}) : super(key: key);

  @override
  _PostDescriptionDaterangeWidgetState createState() =>
      _PostDescriptionDaterangeWidgetState();
}

class _PostDescriptionDaterangeWidgetState
    extends State<PostDescriptionDaterangeWidget> {
  late PostDescriptionDaterangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostDescriptionDaterangeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PostsRecord>>(
      stream: queryPostsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        List<PostsRecord> rowPostsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final rowPostsRecord =
            rowPostsRecordList.isNotEmpty ? rowPostsRecordList.first : null;
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<List<PostsRecord>>(
              stream: queryPostsRecord(
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  );
                }
                List<PostsRecord> textPostsRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final textPostsRecord = textPostsRecordList.isNotEmpty
                    ? textPostsRecordList.first
                    : null;
                return Text(
                  rowPostsRecord!.postTitle,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                );
              },
            ),
            Text(
              'to',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
            Text(
              rowPostsRecord!.postTitle2,
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ],
        );
      },
    );
  }
}
