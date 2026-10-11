/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface BundleSpecification
extends VersionConstraint {
    public boolean isExported();

    public boolean isOptional();
}

