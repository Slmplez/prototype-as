/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

import javax.crypto.spec.PBEKeySpec;

public class PasswordExt {
    public final PBEKeySpec password;
    public final String moduleID;

    public PasswordExt(PBEKeySpec password, String moduleID) {
        this.moduleID = moduleID;
        this.password = password;
    }

    public PBEKeySpec getPassword() {
        return this.password;
    }

    public String getModuleID() {
        return this.moduleID;
    }
}

