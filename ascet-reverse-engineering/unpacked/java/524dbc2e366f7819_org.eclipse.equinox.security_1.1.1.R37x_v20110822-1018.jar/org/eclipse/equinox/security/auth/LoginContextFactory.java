/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth;

import java.net.URL;
import javax.security.auth.callback.CallbackHandler;
import org.eclipse.equinox.internal.security.auth.SecureContext;
import org.eclipse.equinox.security.auth.ILoginContext;

public final class LoginContextFactory {
    public static ILoginContext createContext(String configName, URL configFile) {
        return new SecureContext(configName, configFile, null);
    }

    public static ILoginContext createContext(String configName, URL configFile, CallbackHandler handler) {
        return new SecureContext(configName, configFile, handler);
    }

    public static ILoginContext createContext(String configName) {
        return new SecureContext(configName);
    }
}

