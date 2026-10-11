/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth.module;

import java.util.Map;
import javax.security.auth.Subject;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.login.LoginException;
import javax.security.auth.spi.LoginModule;
import org.eclipse.equinox.internal.security.auth.ext.loader.ExtLoginModuleLoader;

public final class ExtensionLoginModule
implements LoginModule {
    public static final String OPTION_MODULE_POINT = "extensionId";
    private LoginModule target = null;

    public void initialize(Subject subject, CallbackHandler callbackHandler, Map sharedState, Map options) {
        this.target = ExtLoginModuleLoader.load(options);
        this.target.initialize(subject, callbackHandler, sharedState, options);
    }

    public boolean login() throws LoginException {
        return this.target.login();
    }

    public boolean commit() throws LoginException {
        return this.target.commit();
    }

    public boolean abort() throws LoginException {
        return this.target.abort();
    }

    public boolean logout() throws LoginException {
        return this.target.logout();
    }
}

