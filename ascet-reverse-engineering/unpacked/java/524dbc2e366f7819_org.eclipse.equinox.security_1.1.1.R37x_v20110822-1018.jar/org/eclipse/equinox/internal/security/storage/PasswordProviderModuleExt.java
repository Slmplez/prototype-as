/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.security.storage.provider.IPreferencesContainer;
import org.eclipse.equinox.security.storage.provider.PasswordProvider;

public class PasswordProviderModuleExt {
    private final PasswordProvider providerModule;
    private final String moduleID;

    public PasswordProviderModuleExt(PasswordProvider module, String moduleID) {
        this.providerModule = module;
        this.moduleID = moduleID;
    }

    public String getID() {
        return this.moduleID;
    }

    public PBEKeySpec getPassword(IPreferencesContainer container, int passwordType) {
        return this.providerModule.getPassword(container, passwordType);
    }

    public boolean changePassword(Exception e, IPreferencesContainer controller) {
        return this.providerModule.retryOnError(e, controller);
    }
}

