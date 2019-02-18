import 'package:logisticsinspect/models/user.dart';
import 'package:logisticsinspect/store/user_store/user_actions.dart';
import 'package:logisticsinspect/store/user_store/user_store.dart';

UserState userStateReducer(UserState state, action) {
  return UserState(
    user: userReducer(state.user, action),
    token: tokenReducer(state.token, action),
    isAuthenticated: isAuthenticatedReducer(state.isAuthenticated, action),
    isLoading: isLoadingReducer(state.isLoading, action),
  );
}

User userReducer(User state, action) {
  if (action is AddUserAction) {
    return action.user;
  }
  if (action is RemoveUserAction) {
    return null;
  }
  if (action is LoadedUserAction) {
    return action.user;
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
  if (action is LoadedUserAction) {
    return true;
  }
  if (action is RemoveUserAction || action is RemoveTokenDataAction) {
    return false;
  }
  return state;
}

bool isLoadingReducer(bool state, action) {
  if (action is StartLoadingAction) {
    return true;
  }

  if (action is LoadedUserAction) {
    return false;
  }

  return state;
}
