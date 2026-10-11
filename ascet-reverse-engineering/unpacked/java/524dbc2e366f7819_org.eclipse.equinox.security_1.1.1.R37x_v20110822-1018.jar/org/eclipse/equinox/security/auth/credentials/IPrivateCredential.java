/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth.credentials;

import javax.crypto.spec.PBEKeySpec;

public interface IPrivateCredential {
    public PBEKeySpec getPrivateKey();

    public String getProviderID();

    public void clear();
}

