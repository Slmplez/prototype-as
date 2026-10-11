/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage;

import java.io.IOException;
import java.net.URL;
import java.util.Map;
import org.eclipse.equinox.internal.security.storage.SecurePreferencesMapper;
import org.eclipse.equinox.security.storage.ISecurePreferences;

public final class SecurePreferencesFactory {
    public static ISecurePreferences getDefault() {
        return SecurePreferencesMapper.getDefault();
    }

    public static ISecurePreferences open(URL location, Map options) throws IOException {
        return SecurePreferencesMapper.open(location, options);
    }
}

