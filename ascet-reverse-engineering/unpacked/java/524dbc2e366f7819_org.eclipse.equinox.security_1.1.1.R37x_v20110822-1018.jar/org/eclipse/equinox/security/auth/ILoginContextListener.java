/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth;

import javax.security.auth.Subject;
import javax.security.auth.login.LoginException;

public interface ILoginContextListener {
    public void onLoginStart(Subject var1);

    public void onLoginFinish(Subject var1, LoginException var2);

    public void onLogoutStart(Subject var1);

    public void onLogoutFinish(Subject var1, LoginException var2);
}

