/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public interface NativeCodeSpecification
extends VersionConstraint {
    public NativeCodeDescription[] getPossibleSuppliers();

    public boolean isOptional();
}

