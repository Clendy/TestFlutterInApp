import 'dart:developer';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:module_flutter/widget/TextWidget.dart' as TextWidget hide App;
import 'package:module_flutter/widget/GridViewWidget.dart' as GridViewWidget;
import 'package:module_flutter/widget/ContainerWidget.dart' as ContainerWidget;
import 'package:module_flutter/widget/ImageWidget.dart' as ImageWidget;
import 'package:module_flutter/widget/ListViewWidget.dart' as ListViewWidget;
import 'package:module_flutter/widget/RowWidget.dart' as RowWidget;
import 'package:module_flutter/widget/ColumnWidget.dart' as ColumnWidget;
import 'package:module_flutter/widget/StackWidget.dart' as StackWidget;
import 'package:module_flutter/widget/CardWidget.dart' as CardWidget;
import 'package:module_flutter/widget/Navigation.dart' as Navigation;
import 'package:module_flutter/widget/Snippets.dart' as Snippets;
import 'package:module_flutter/widget/GestureDetector.dart' as GestureDetector;
import 'package:module_flutter/widget/Echo.dart' as Echo;
import 'package:module_flutter/widget/Animation.dart' as Animation;
import 'package:module_flutter/widget/AnimationDemo.dart' as AnimationDemo;
import 'package:module_flutter/widget/FlutterChat.dart' as FlutterChat;

import 'package:module_flutter/pages/home_page.dart' as home_page;

import 'package:module_flutter/widget/TimerWidget.dart' as TimerWidget;
import 'package:module_flutter/widget/WillPopScopeWidget.dart'
    as WillPopScopeWidget;
import 'package:module_flutter/widget/InheritedWidget.dart' as InheritedWidget;

void main() => runApp(GridViewWidget.App());
