abstract class Converter<TResult, TFrom> {
  const Converter();

  TResult convert(TFrom input);

  TResult? convertNullable(TFrom? input) =>
      input == null ? null : convert(input);

  Iterable<TResult> convertMultiple(Iterable<TFrom> inputList) =>
      inputList.map(convert);
}
