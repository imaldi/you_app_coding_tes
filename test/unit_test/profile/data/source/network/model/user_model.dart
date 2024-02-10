import 'package:flutter_test/flutter_test.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/model/user_model.dart';
import 'package:you_app_coding_tes/features/profile/domain/entity/user_entity.dart';

void main() {
  Map<String, dynamic> apiUserOneAsJson = {
    "name": "Aldi",
    "birthday": "October 2nd 1998",
    "height": "157",
    "weight": "49",
    "interests": ["Programming", "Math"]
  };

  UserApiModel expectedApiUserOne = const UserApiModel(
    name: "Aldi",
    birthday: "October 2nd 1998",
    height: "157",
    weight: "49",
    interests: ["Programming", "Math"],
  );

  User expectedUserOne = const User(
    name: "Aldi",
    birthday: "October 2nd 1998",
    height: "157",
    weight: "49",
    interests: ["Programming", "Math"],
  );

  Map<String, dynamic> apiUserTwoAsJson = {
    "name": "Aulia",
    "birthday": "May 23rd 2001",
    "height": "155",
    "weight": "47",
    "interests": ["Reading", "Cooking"]
  };

  UserApiModel expectedApiUserTwo = const UserApiModel(
    name: "Aulia",
    birthday: "May 23rd 2001",
    height: "155",
    weight: "47",
    interests: ["Reading", "Cooking"],
  );

  User expectedUserTwo = const User(
    name: "Aulia",
    birthday: "May 23rd 2001",
    height: "155",
    weight: "47",
    interests: ["Reading", "Cooking"],
  );

  group("Test ApiUserModel initialization from JSON", () {
    test('Test using json one', () {
      expect(UserApiModel.fromJson(apiUserOneAsJson), expectedApiUserOne);
    });
    test('Test using json two', () {
      expect(UserApiModel.fromJson(apiUserTwoAsJson), expectedApiUserTwo);
    });
  });
  group("Test ApiUserModel toDomain", () {
    test('Test toDomain using json one', () {
      expect(
          UserApiModel.fromJson(apiUserOneAsJson).toDomain(), expectedUserOne);
    });
    test('Test toDomain using json two', () {
      expect(
          UserApiModel.fromJson(apiUserTwoAsJson).toDomain(), expectedUserTwo);
    });
  });
}
