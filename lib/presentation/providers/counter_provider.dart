import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Each provider stores a specific state, promoting modularity and separation of concerns. This makes
/// providers easier to maintain, test, and reuse.
///
/// A `stateProvider` is a small piece of state information that can be used to manage the
/// state of various aspects of the application. For example, it can be used to track the
/// selected theme, the state of a form, or the data loaded from an API.
///
/// Here, the `counterProvider` is used to track the value of a counter. The initial value is 5,
/// and the counter can be incremented or decremented using provider actions.
final counterProvider = StateProvider<int>((ref) => 5);
