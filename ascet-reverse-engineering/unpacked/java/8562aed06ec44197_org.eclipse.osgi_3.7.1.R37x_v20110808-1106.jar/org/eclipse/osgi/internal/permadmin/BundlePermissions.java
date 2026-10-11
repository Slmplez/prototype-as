/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.eclipse.osgi.internal.permadmin.PermissionInfoCollection;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class BundlePermissions
extends PermissionCollection {
    private static final long serialVersionUID = -5443618108312606612L;
    static final Enumeration<Permission> EMPTY_ENUMERATION = new Enumeration<Permission>(){

        @Override
        public boolean hasMoreElements() {
            return false;
        }

        @Override
        public Permission nextElement() {
            throw new NoSuchElementException();
        }
    };
    private final Bundle bundle;
    private final SecurityAdmin securityAdmin;
    private final PermissionInfoCollection impliedPermissions;
    private final PermissionInfoCollection restrictedPermissions;

    public BundlePermissions(Bundle bundle, SecurityAdmin securityAdmin, PermissionInfoCollection impliedPermissions, PermissionInfoCollection restrictedPermissions) {
        this.bundle = bundle;
        this.securityAdmin = securityAdmin;
        this.impliedPermissions = impliedPermissions;
        this.restrictedPermissions = restrictedPermissions;
        this.setReadOnly();
    }

    @Override
    public void add(Permission permission) {
        throw new SecurityException();
    }

    @Override
    public Enumeration<Permission> elements() {
        return EMPTY_ENUMERATION;
    }

    @Override
    public boolean implies(Permission permission) {
        if (this.impliedPermissions != null && this.impliedPermissions.implies(permission)) {
            return true;
        }
        if (this.restrictedPermissions != null && !this.restrictedPermissions.implies(permission)) {
            return false;
        }
        return this.securityAdmin.checkPermission(permission, this);
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    void clearPermissionCache() {
        if (this.impliedPermissions != null) {
            this.impliedPermissions.clearPermissionCache();
        }
        if (this.restrictedPermissions != null) {
            this.restrictedPermissions.clearPermissionCache();
        }
    }
}

