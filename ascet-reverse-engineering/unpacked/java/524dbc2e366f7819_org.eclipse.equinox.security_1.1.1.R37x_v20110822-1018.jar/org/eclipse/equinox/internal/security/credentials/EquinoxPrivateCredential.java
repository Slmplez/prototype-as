/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.credentials;

import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.security.auth.credentials.IPrivateCredential;

public class EquinoxPrivateCredential
implements IPrivateCredential {
    private final PBEKeySpec key;
    private final String loginModuleID;

    public EquinoxPrivateCredential(PBEKeySpec privateKey, String loginModuleID) {
        this.key = privateKey;
        this.loginModuleID = loginModuleID;
    }

    public PBEKeySpec getPrivateKey() {
        return this.key;
    }

    public String getProviderID() {
        return this.loginModuleID;
    }

    public void clear() {
        if (this.key != null) {
            this.key.clearPassword();
        }
    }
}

