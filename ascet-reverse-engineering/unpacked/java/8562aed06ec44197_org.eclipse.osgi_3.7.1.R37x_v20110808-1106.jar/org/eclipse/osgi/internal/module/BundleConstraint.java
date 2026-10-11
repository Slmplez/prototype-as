/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.ResolverConstraint;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public class BundleConstraint
extends ResolverConstraint {
    BundleConstraint(ResolverBundle bundle, VersionConstraint bundleConstraint) {
        super(bundle, bundleConstraint);
    }

    boolean isOptional() {
        if (this.constraint instanceof HostSpecification) {
            return false;
        }
        return ((BundleSpecification)this.constraint).isOptional();
    }
}

