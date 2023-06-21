import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_creation_model.dart';
export 'post_creation_model.dart';

class PostCreationWidget extends StatefulWidget {
  const PostCreationWidget({Key? key}) : super(key: key);

  @override
  _PostCreationWidgetState createState() => _PostCreationWidgetState();
}

class _PostCreationWidgetState extends State<PostCreationWidget> {
  late PostCreationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostCreationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: FFButtonWidget(
          onPressed: () async {
            context.pop();
          },
          text: 'Cancel',
          options: FFButtonOptions(
            width: 80.0,
            height: 40.0,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: Color(0xFFF7F0E8),
            textStyle: FlutterFlowTheme.of(context).labelMedium,
            elevation: 0.0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
            child: FFButtonWidget(
              onPressed: () async {
                final postsCreateData = createPostsRecordData(
                  postTitle: dateTimeFormat('M/d h:mm a', _model.datePicked1),
                  postDescription: _model.choiceChipsValue,
                  postUser: currentUserReference,
                  timePosted: getCurrentTimestamp,
                  postTitle2: dateTimeFormat('M/d h:mm a', _model.datePicked2),
                  postGroup:
                      valueOrDefault(currentUserDocument?.userReferralCode, ''),
                  postByFirstname:
                      valueOrDefault(currentUserDocument?.firstname, ''),
                  postDeleted: 'FALSE',
                  dogAssociation: currentUserDocument?.dogAssociation,
                  postPhotos: _model.uploadedFileUrl,
                );
                await PostsRecord.collection.doc().set(postsCreateData);
                if ((_model.choiceChipsValue != null &&
                        _model.choiceChipsValue != '') &&
                    (_model.datePicked1 != null) &&
                    (_model.datePicked2 != null) &&
                    (_model.choiceChipsValue != null &&
                        _model.choiceChipsValue != '')) {
                  context.pushNamed('HomepageMypost');
                } else {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Error'),
                        content:
                            Text('Please complete all fields before posting'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              text: 'Post',
              options: FFButtonOptions(
                width: 70.0,
                height: 32.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).secondary,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Make sure your profile is up to date ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<DogsRecord>>(
                        stream: queryDogsRecord(
                          queryBuilder: (dogsRecord) => dogsRecord.where(
                              'userAssociation',
                              isEqualTo: currentUserReference),
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
                          List<DogsRecord> buttonDogsRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonDogsRecord =
                              buttonDogsRecordList.isNotEmpty
                                  ? buttonDogsRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              if ((buttonDogsRecord!.dogsName == null ||
                                      buttonDogsRecord!.dogsName == '') &&
                                  (buttonDogsRecord!.dogAge == null ||
                                      buttonDogsRecord!.dogAge == '') &&
                                  (buttonDogsRecord!.dogSize == null ||
                                      buttonDogsRecord!.dogSize == '') &&
                                  (buttonDogsRecord!.dogsBreed == null ||
                                      buttonDogsRecord!.dogsBreed == '')) {
                                context.pushNamed('Dog_Profile_Page');
                              } else {
                                context.pushNamed('Dog_Profile_Page_Update');
                              }
                            },
                            text: 'Update  Profile ',
                            icon: Icon(
                              Icons.tag_faces,
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Color(0xFFF7F0E8),
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            showLoadingIndicator: false,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          final selectedMedia = await selectMedia(
                            mediaSource: MediaSource.photoGallery,
                            multiImage: false,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];
                            var downloadUrls = <String>[];
                            try {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();

                              downloadUrls = (await Future.wait(
                                selectedMedia.map(
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                              showUploadMessage(context, 'Success!');
                            } else {
                              setState(() {});
                              showUploadMessage(
                                  context, 'Failed to upload data');
                              return;
                            }
                          }

                          final postsCreateData = createPostsRecordData(
                            postPhotos: _model.uploadedFileUrl,
                          );
                          await PostsRecord.collection
                              .doc()
                              .set(postsCreateData);
                        },
                        text: 'Upload a Photo',
                        icon: FaIcon(
                          FontAwesomeIcons.dog,
                          color: Color(0xFFF7F0E8),
                          size: 20.0,
                        ),
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Color(0xFFF7F0E8),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 20.0),
                      child: Text(
                        'Neighbors love cute dog photos ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Which dates do you need help with? ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 20.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7F0E8),
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: Color(0xFFCFD4DB),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 5.0, 12.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat(
                                              'M/d h:mm a', _model.datePicked1),
                                          'Pick start time',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final _datePicked1Date =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: getCurrentTimestamp,
                                            firstDate: getCurrentTimestamp,
                                            lastDate: DateTime(2050),
                                          );

                                          TimeOfDay? _datePicked1Time;
                                          if (_datePicked1Date != null) {
                                            _datePicked1Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                            );
                                          }

                                          if (_datePicked1Date != null &&
                                              _datePicked1Time != null) {
                                            setState(() {
                                              _model.datePicked1 = DateTime(
                                                _datePicked1Date.year,
                                                _datePicked1Date.month,
                                                _datePicked1Date.day,
                                                _datePicked1Time!.hour,
                                                _datePicked1Time.minute,
                                              );
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Color(0xFF883F39),
                                          size: 36.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7F0E8),
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: Color(0xFFCFD4DB),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 5.0, 12.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat(
                                              'M/d h:mm a', _model.datePicked2),
                                          'Pick end time',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final _datePicked2Date =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: getCurrentTimestamp,
                                            firstDate: getCurrentTimestamp,
                                            lastDate: DateTime(2050),
                                          );

                                          if (_datePicked2Date != null) {
                                            setState(() {
                                              _model.datePicked2 = DateTime(
                                                _datePicked2Date.year,
                                                _datePicked2Date.month,
                                                _datePicked2Date.day,
                                              );
                                            });
                                          }
                                        },
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Color(0xFF883F39),
                                          size: 36.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'What do you need help with? ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: FlutterFlowChoiceChips(
                          options: [
                            ChipData('Walk', Icons.directions_walk),
                            ChipData('Day care', FontAwesomeIcons.dog),
                            ChipData('Boarding', Icons.house_outlined)
                          ],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 20.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).accent4,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodySmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodySmallFamily),
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 20.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 50.0,
                          rowSpacing: 12.0,
                          multiselect: false,
                          alignment: WrapAlignment.center,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
