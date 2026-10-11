/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface HostSpecification
extends VersionConstraint {
    public BundleDescription[] getHosts();

    public boolean isMultiHost();
}

