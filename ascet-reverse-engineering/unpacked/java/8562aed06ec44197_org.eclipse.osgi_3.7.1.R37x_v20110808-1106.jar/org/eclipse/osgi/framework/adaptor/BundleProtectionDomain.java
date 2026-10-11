/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import java.security.CodeSource;
import java.security.PermissionCollection;
import java.security.ProtectionDomain;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleReference;

public class BundleProtectionDomain
extends ProtectionDomain
implements BundleReference {
    private volatile Bundle bundle;

    public BundleProtectionDomain(PermissionCollection permCollection) {
        this(permCollection, null, null);
    }

    public BundleProtectionDomain(PermissionCollection permCollection, CodeSource codeSource, Bundle bundle) {
        super(codeSource, permCollection);
        this.bundle = bundle;
    }

    public void setBundle(Bundle bundle) {
        if (this.bundle != null || bundle == null) {
            return;
        }
        this.bundle = bundle;
    }

    public Bundle getBundle() {
        return this.bundle;
    }
}

