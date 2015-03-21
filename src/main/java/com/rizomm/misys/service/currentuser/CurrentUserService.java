package com.rizomm.misys.service.currentuser;

import com.rizomm.misys.model.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
