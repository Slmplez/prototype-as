/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.security.auth.credentials;

import java.security.Principal;

public interface IPublicCredential
extends Principal {
    public Principal getPrimaryRole();

    public Principal[] getRoles();

    public String getProviderID();
}

