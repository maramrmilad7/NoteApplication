import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_note_state.dart';
class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
}