import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'workoutform_state.dart';
part 'workoutform_cubit.freezed.dart';

class WorkoutformCubit extends Cubit<WorkoutformState> {
  WorkoutformCubit() : super(WorkoutformState.initial());
}
