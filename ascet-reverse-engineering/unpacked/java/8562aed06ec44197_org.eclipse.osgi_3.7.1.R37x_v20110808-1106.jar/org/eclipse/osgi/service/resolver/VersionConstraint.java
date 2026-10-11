/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.wiring.BundleRequirement;

public interface VersionConstraint
extends Cloneable {
    public String getName();

    public VersionRange getVersionRange();

    public BundleDescription getBundle();

    public boolean isResolved();

    public boolean isSatisfiedBy(BaseDescription var1);

    public BaseDescription getSupplier();

    public BundleRequirement getRequirement();
}

