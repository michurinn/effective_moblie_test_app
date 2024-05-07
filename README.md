# mad_test_work

1. Используется пакет freezed для генерации дата-классов и методов fromJson и toJson.
2. В качестве http клиента используется пакет Dio 
3. Получение данных предусмотрено только из сети, впоследствии можно предусмотреть сохранение кэша в локальной БД
4. Стейт-менеджмент выполнен с помощью BLoC 
5. На экране отображения карты и точек координаты согласно Canvas.
6. Для DI используется пакет Provider
Скринкаст: 
мэд.mp4
https://disk.yandex.ru/i/tStunbPWmPK4Sg
TODO-list:
- Парсинг json в Isolate.
- Размер точек на карте должен масштабироваться

TODO-list:
- Json parsing in Isolate.
- The size of the points on the map should be scaled

## Getting Started

This project is a starting point for a Flutter application that follows the
[simple app state management
tutorial](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple).

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
