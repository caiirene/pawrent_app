import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'dog_profile_page_seconddog_model.dart';
export 'dog_profile_page_seconddog_model.dart';

class DogProfilePageSeconddogWidget extends StatefulWidget {
  const DogProfilePageSeconddogWidget({Key? key}) : super(key: key);

  @override
  _DogProfilePageSeconddogWidgetState createState() =>
      _DogProfilePageSeconddogWidgetState();
}

class _DogProfilePageSeconddogWidgetState
    extends State<DogProfilePageSeconddogWidget> {
  late DogProfilePageSeconddogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DogProfilePageSeconddogModel());

    _model.dogNameController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DogsRecord>>(
      stream: queryDogsRecord(
        queryBuilder: (dogsRecord) => dogsRecord.where('userAssociation',
            isEqualTo: currentUserReference),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<DogsRecord> dogProfilePageSeconddogDogsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final dogProfilePageSeconddogDogsRecord =
            dogProfilePageSeconddogDogsRecordList.isNotEmpty
                ? dogProfilePageSeconddogDogsRecordList.first
                : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Pages 2/3',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 12.0, 8.0, 0.0),
                            child: LinearPercentIndicator(
                              percent: 0.66,
                              width: MediaQuery.of(context).size.width * 0.96,
                              lineHeight: 12.0,
                              animation: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).primary,
                              backgroundColor: Color(0xFFE0E3E7),
                              barRadius: Radius.circular(24.0),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.always,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 16.0),
                                        child: TextFormField(
                                          controller: _model.dogNameController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Dog(s) Name ',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 0.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          maxLines: null,
                                          validator: _model
                                              .dogNameControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dogsizeValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Toy (1-10 lbs)',
                                            'Small (11-20 lbs)',
                                            'Medium (21-50 lbs)',
                                            'Large (51lbs +)'
                                          ],
                                          onChanged: (val) => setState(
                                              () => _model.dogsizeValue = val),
                                          width: 2000.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Dog Size ',
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dogageValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Under 4 months',
                                            'Puppy',
                                            'Adult',
                                            'Senior'
                                          ],
                                          onChanged: (val) => setState(
                                              () => _model.dogageValue = val),
                                          width: 2000.0,
                                          height: 50.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'How old is your dog?',
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 16.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .breedValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            'Mixed',
                                            'Others',
                                            'Doodles',
                                            'Akita',
                                            'Australian Shepherd',
                                            'Beagle',
                                            'Bernese Mountain Dog',
                                            'Bichon Frise',
                                            'Border Collie',
                                            'Boston Terrier',
                                            'Boxer',
                                            'Bulldog',
                                            'Cavalier King Charles Spaniel',
                                            'Chow Chow',
                                            'Corgi',
                                            'Dachshund',
                                            'Doberman Pinscher',
                                            'English Springer Spaniel',
                                            'German Shepherd',
                                            'Golden Retriever',
                                            'Great Dane',
                                            'Havanese',
                                            'Labrador Retriever',
                                            'Miniature Schnauzer',
                                            'Poodle',
                                            'Rottweiler',
                                            ' Samoyed',
                                            'Shiba Inu',
                                            'Shih Tzu',
                                            'Siberian Husky',
                                            'Yorkshire Terrier',
                                            'Aussiedoodle',
                                            'Bernedoodle',
                                            'Cavapoo',
                                            'Cockapoo',
                                            'Goldendoodle',
                                            'Labradoodle',
                                            'Maltipoo'
                                          ],
                                          onChanged: (val) => setState(
                                              () => _model.breedValue = val),
                                          width: 2000.0,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: 'Breed',
                                          searchHintText: 'Breed',
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 0.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 32.0, 0.0, 32.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if ((_model.dogNameController.text != null &&
                                    _model.dogNameController.text != '') &&
                                (_model.dogsizeValue != null &&
                                    _model.dogsizeValue != '') &&
                                (_model.dogsizeValue != null &&
                                    _model.dogsizeValue != '') &&
                                (_model.breedValue != null &&
                                    _model.breedValue != '')) {
                              final dogsCreateData = createDogsRecordData(
                                userAssociation: currentUserReference,
                                dogAge2: _model.dogageValue,
                                dogsName2: _model.dogNameController.text,
                                dogsBreed2: _model.breedValue,
                                dogSize2: _model.dogsizeValue,
                              );
                              await DogsRecord.collection
                                  .doc()
                                  .set(dogsCreateData);

                              context.pushNamed('Dog_Profile_Page_2');
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Error'),
                                    content:
                                        Text('Please enter the dog\'s name'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          text: 'Next Page',
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 50.0,
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
                                  color: Colors.white,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
