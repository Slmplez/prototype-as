/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.credentials;

import java.security.Principal;
import org.eclipse.equinox.security.auth.credentials.IPublicCredential;

public class EquinoxPublicCredential
implements IPublicCredential {
    private final String name;
    private final Principal primaryRole;
    private final Principal[] roles;
    private final String loginModuleID;

    public EquinoxPublicCredential(String name, Principal primaryRole, String loginModuleID) {
        this.name = name;
        this.primaryRole = primaryRole;
        this.roles = null;
        this.loginModuleID = loginModuleID;
    }

    public EquinoxPublicCredential(String name, Principal[] roles, String loginModuleID) {
        this.name = name;
        this.primaryRole = null;
        this.roles = roles;
        this.loginModuleID = loginModuleID;
    }

    public String getName() {
        return this.name;
    }

    public Principal getPrimaryRole() {
        if (this.primaryRole != null) {
            return this.primaryRole;
        }
        if (this.roles != null && this.roles.length >= 1) {
            return this.roles[0];
        }
        return null;
    }

    public Principal[] getRoles() {
        return this.roles;
    }

    public String getProviderID() {
        return this.loginModuleID;
    }
}

