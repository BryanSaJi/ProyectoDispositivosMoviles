import '/components/favorite_item/favorite_item_widget.dart';
import '/components/navigator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'favorite_widget.dart' show FavoriteWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoriteModel extends FlutterFlowModel<FavoriteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel1;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel2;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel3;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel4;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel5;
  // Model for FavoriteItem component.
  late FavoriteItemModel favoriteItemModel6;
  // Model for navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    favoriteItemModel1 = createModel(context, () => FavoriteItemModel());
    favoriteItemModel2 = createModel(context, () => FavoriteItemModel());
    favoriteItemModel3 = createModel(context, () => FavoriteItemModel());
    favoriteItemModel4 = createModel(context, () => FavoriteItemModel());
    favoriteItemModel5 = createModel(context, () => FavoriteItemModel());
    favoriteItemModel6 = createModel(context, () => FavoriteItemModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    favoriteItemModel1.dispose();
    favoriteItemModel2.dispose();
    favoriteItemModel3.dispose();
    favoriteItemModel4.dispose();
    favoriteItemModel5.dispose();
    favoriteItemModel6.dispose();
    navigatorModel.dispose();
  }
}
