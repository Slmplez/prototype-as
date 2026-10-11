/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.BundleCapability;

public abstract class VersionSupplier {
    protected final BaseDescription base;
    private final BundleCapability capability;
    private VersionSupplier substitute;

    VersionSupplier(BaseDescription base) {
        this.base = base;
        this.capability = base.getCapability();
    }

    public Version getVersion() {
        return this.base.getVersion();
    }

    public String getName() {
        return this.base.getName();
    }

    public BaseDescription getBaseDescription() {
        return this.base;
    }

    VersionSupplier getSubstitute() {
        return this.substitute;
    }

    void setSubstitute(VersionSupplier substitute) {
        this.substitute = substitute;
    }

    public abstract BundleDescription getBundleDescription();

    abstract ResolverBundle getResolverBundle();

    public String toString() {
        return this.base.toString();
    }

    BundleCapability getCapability() {
        return this.capability;
    }
}

