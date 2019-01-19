import 'package:logisticsinspect/models/user.dart';
import 'package:logisticsinspect/store/user_store/user_actions.dart';
import 'package:logisticsinspect/store/user_store/user_store.dart';

UserState userStateReducer(UserState state, action) {
  return UserState(
    user: userReducer(state.user, action),
    token: tokenReducer(state.token, action),
    isAuthenticated: isAuthenticatedReducer(state.isAuthenticated, action),
  );
}

User userReducer(User state, action) {
  if (action is AddUserAction) {
    return action.user;
  }
  if (action is RemoveUserAction) {
    return null;
  }

  // move to middleware
  if (action is LoginUserAction) {
    return User(token: '');
  }
  if (action is RegisterUserAction) {
    return User(token: '');
  }
  if (action is RefreshTokenAction) {
    return User(token: '');
  }

  return state;
}

AuthenticationToken tokenReducer(AuthenticationToken state, action) {
  if (action is UpdateTokenDataAction) {
    return action.token;
  }
  if (action is RemoveTokenDataAction) {
    return null;
  }

  return state;
}

bool isAuthenticatedReducer(bool state, action) {
  if (action is SetAuthenticationAction) {
    return action.isAuthenticated;
  }
  return state;
}
