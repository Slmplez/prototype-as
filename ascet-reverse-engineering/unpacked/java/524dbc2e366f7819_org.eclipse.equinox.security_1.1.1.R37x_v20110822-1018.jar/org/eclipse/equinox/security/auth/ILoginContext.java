/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth;

import javax.security.auth.Subject;
import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import org.eclipse.equinox.security.auth.ILoginContextListener;

public interface ILoginContext {
    public void login() throws LoginException;

    public void logout() throws LoginException;

    public Subject getSubject() throws LoginException;

    public void registerListener(ILoginContextListener var1);

    public void unregisterListener(ILoginContextListener var1);

    public LoginContext getLoginContext() throws LoginException;
}

