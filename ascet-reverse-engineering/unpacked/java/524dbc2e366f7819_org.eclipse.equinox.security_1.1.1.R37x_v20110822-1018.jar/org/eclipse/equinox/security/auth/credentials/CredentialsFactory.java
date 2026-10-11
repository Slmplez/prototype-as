/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth.credentials;

import java.security.Principal;
import javax.crypto.spec.PBEKeySpec;
import org.eclipse.equinox.internal.security.credentials.EquinoxPrivateCredential;
import org.eclipse.equinox.internal.security.credentials.EquinoxPublicCredential;
import org.eclipse.equinox.security.auth.credentials.IPrivateCredential;
import org.eclipse.equinox.security.auth.credentials.IPublicCredential;

public final class CredentialsFactory {
    public static IPublicCredential publicCredential(String name, Principal primaryRole, String providerID) {
        return new EquinoxPublicCredential(name, primaryRole, providerID);
    }

    public static IPublicCredential publicCredential(String name, Principal[] roles, String providerID) {
        return new EquinoxPublicCredential(name, roles, providerID);
    }

    public static IPrivateCredential privateCredential(PBEKeySpec privateKey, String providerID) {
        return new EquinoxPrivateCredential(privateKey, providerID);
    }
}

