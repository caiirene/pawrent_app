import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_review_rating_model.dart';
export 'customer_review_rating_model.dart';

class CustomerReviewRatingWidget extends StatefulWidget {
  const CustomerReviewRatingWidget({Key? key}) : super(key: key);

  @override
  _CustomerReviewRatingWidgetState createState() =>
      _CustomerReviewRatingWidgetState();
}

class _CustomerReviewRatingWidgetState
    extends State<CustomerReviewRatingWidget> {
  late CustomerReviewRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerReviewRatingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
