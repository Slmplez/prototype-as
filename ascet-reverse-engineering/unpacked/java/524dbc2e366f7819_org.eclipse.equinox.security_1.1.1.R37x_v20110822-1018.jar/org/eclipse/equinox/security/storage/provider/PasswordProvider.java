/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.storage.provider;

import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;

public abstract class PasswordProvider {
    public static final int CREATE_NEW_PASSWORD = 1;
    public static final int PASSWORD_CHANGE = 2;

    public abstract PBEKeySpec getPassword(IPreferencesContainer var1, int var2);

    public boolean retryOnError(Exception e, IPreferencesContainer container) {
        return false;
    }
}

