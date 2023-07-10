import 'package:equatable/equatable.dart';

class Selection extends Equatable {
  const Selection({required this.id});

  final String id;

  @override
  List<Object?> get props => [id];
}
