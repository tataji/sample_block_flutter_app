import 'package:bloc/bloc.dart';

/// The events which `CounterBloc` will react to.
enum CounterEvent { increment }

/// A `CounterBloc` which handles converting `CounterEvent`s into `int`s.
class CounterBloc extends Bloc<CounterEvent, int> {
  /// The initial state of the `CounterBloc` is 0.
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {

    /// When a `CounterEvent.increment` event is added,
    /// the current `state` of the bloc is accessed via the `state` property
    /// and a new state is emitted via `yield`.
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}
