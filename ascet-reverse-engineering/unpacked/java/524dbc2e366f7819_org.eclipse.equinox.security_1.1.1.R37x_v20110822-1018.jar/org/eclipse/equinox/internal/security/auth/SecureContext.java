/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.auth;

import java.net.URL;
import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import org.eclipse.equinox.internal.security.auth.SecurePlatformInternal;
import org.eclipse.equinox.internal.security.auth.events.SecurityEventsManager;
import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.security.auth.ILoginContext;
import org.eclipse.equinox.security.auth.ILoginContextListener;

public class SecureContext
implements ILoginContext {
    private String configName;
    private LoginContext loginContext;
    private CallbackHandler handler;
    private SecurityEventsManager eventsManager = new SecurityEventsManager();
    private boolean loggedIn = false;

    public SecureContext(String configugationName) {
        this(configugationName, null, null);
    }

    public SecureContext(String configugationName, URL configFile, CallbackHandler handler) {
        this.configName = configugationName;
        SecurePlatformInternal platform = SecurePlatformInternal.getInstance();
        if (configFile != null) {
            platform.addConfigURL(configFile);
        }
        platform.start();
        this.handler = handler;
    }

    public void login() throws LoginException {
        LoginContext context = this.getLoginContext();
        LoginException loginException = null;
        this.eventsManager.notifyLoginBegin(context.getSubject());
        try {
            context.login();
        }
        catch (LoginException e) {
            loginException = e;
        }
        this.eventsManager.notifyLoginEnd(context.getSubject(), loginException);
        if (loginException != null) {
            LoginException rtvException = new LoginException(SecAuthMessages.loginFailure);
            rtvException.initCause(loginException);
            throw rtvException;
        }
        this.loggedIn = true;
    }

    public void logout() throws LoginException {
        LoginContext context = this.getLoginContext();
        Subject subject = this.getLoginContext().getSubject();
        this.eventsManager.notifyLogoutBegin(subject);
        LoginException loginException = null;
        try {
            context.logout();
        }
        catch (LoginException e) {
            loginException = e;
        }
        this.eventsManager.notifyLogoutEnd(subject, loginException);
        this.loggedIn = false;
    }

    public Subject getSubject() throws LoginException {
        if (!this.loggedIn) {
            this.login();
        }
        return this.getLoginContext().getSubject();
    }

    public LoginContext getLoginContext() throws LoginException {
        if (this.loginContext != null) {
            return this.loginContext;
        }
        CallbackHandler callbackHandler = this.handler == null ? SecurePlatformInternal.getInstance().loadCallbackHandler(this.configName) : this.handler;
        this.loginContext = callbackHandler == null ? new LoginContext(this.configName) : new LoginContext(this.configName, callbackHandler);
        return this.loginContext;
    }

    public void registerListener(ILoginContextListener listener) {
        this.eventsManager.addListener(listener);
    }

    public void unregisterListener(ILoginContextListener listener) {
        this.eventsManager.removeListener(listener);
    }
}

