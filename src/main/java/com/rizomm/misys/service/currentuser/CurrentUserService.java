package com.rizomm.misys.service.currentuser;


import com.rizomm.misys.model.security.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
