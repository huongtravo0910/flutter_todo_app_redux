// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final Filter filter;
  @override
  final BuiltList<Todo> todos;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.filter, this.todos, this.isLoading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(filter, 'AppState', 'filter');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        filter == other.filter &&
        todos == other.todos &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, filter.hashCode), todos.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('filter', filter)
          ..add('todos', todos)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  Filter _filter;
  Filter get filter => _$this._filter;
  set filter(Filter filter) => _$this._filter = filter;

  ListBuilder<Todo> _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo> todos) => _$this._todos = todos;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter;
      _todos = $v.todos?.toBuilder();
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              filter: BuiltValueNullFieldError.checkNotNull(
                  filter, 'AppState', 'filter'),
              todos: _todos?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'AppState', 'isLoading'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todos';
        _todos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
