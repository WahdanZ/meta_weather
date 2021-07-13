///
///@param <E> the domain model input type
///@param <M> the Data model input type
///@param <D> the model return type
///
abstract class Mapper<M, E> {
  M mapFromEntity(E type);

  E mapFromModel(M type);
}
