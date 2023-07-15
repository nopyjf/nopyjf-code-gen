import 'package:equatable/equatable.dart';

import 'selection_widget_datasource.dart';

// Main Model
class Selection extends Equatable {
  const Selection({
    required this.dataSources,
    required this.requests,
    required this.cmd,
    required this.feature,
    required this.screen,
  });

  final List<SelectionWidget> dataSources;
  final List<SelectionWidgetRequest> requests;
  final String cmd;
  final String feature;
  final String screen;

  @override
  List<Object?> get props => [dataSources, requests, cmd];
}

// Data source item
class SelectionWidget extends Equatable {
  final String id;
  final String name;

  const SelectionWidget({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}

// Request
class SelectionWidgetRequest extends Equatable {
  final String id;

  // final String feature;
  // final String screen;
  final String widget;
  final String name;

  const SelectionWidgetRequest({
    required this.id,
    // required this.feature,
    // required this.screen,
    required this.widget,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        // feature,
        // screen,
        widget,
        name,
      ];
}

// Default Model
const defaultSelection = Selection(
  dataSources: selectWidgetDataSource,
  requests: [],
  cmd: '',
  feature: '',
  screen: '',
);

// Transform to mason cmd
String transformCmd(Selection state, String feature, String screen) {
  var cmdList = [];
  for (var widget in state.requests) {
    // Arguments
    final featureCmd = "--feature $feature";
    final screenCmd = "--screen $screen";
    final nameCmd = "--name ${widget.name}";

    // Command Line
    if (widget.widget == 'ElevatedButton') {
      var cmd = "mason make elevated-button $featureCmd $screenCmd $nameCmd";
      cmdList.add(cmd);
    } else if (widget.widget == 'TextButton') {
      var cmd = "mason make text-button $featureCmd $screenCmd $nameCmd";
      cmdList.add(cmd);
    } else if (widget.widget == 'FloatingButton') {
      var cmd = "mason make floating-button $featureCmd $screenCmd $nameCmd";
      cmdList.add(cmd);
    }
  }

  return cmdList.join("\n");
}
