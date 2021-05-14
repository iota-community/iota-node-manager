import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'manage_node_state.dart';

class ManageNodeCubit extends Cubit<ManageNodeState> {
  ManageNodeCubit() : super(ManageNodeInitial());
}
