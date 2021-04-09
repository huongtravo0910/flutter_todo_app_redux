import 'package:built_value/serializer.dart';

import 'todo.dart';
part 'serializers.g.dart';

@SerializersFor(const[Todo])
final Serializers serializers = _$serializers;