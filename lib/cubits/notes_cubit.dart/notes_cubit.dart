import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/model/note_model.dart';
part  'package:noteapp/cubits/notes_cubit.dart/notes_states.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes ;
  fetchAllNotes()async{
    var notesBox = Hive.box<NoteModel>('notes');
    notes = notesBox.values.toList();
    emit(NotesSuccess(
      notes: notes!,
    ));
  }

 
}
