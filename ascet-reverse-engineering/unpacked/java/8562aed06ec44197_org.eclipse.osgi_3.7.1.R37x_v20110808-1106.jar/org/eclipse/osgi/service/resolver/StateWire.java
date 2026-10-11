/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.resolver;

import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;

public class StateWire {
    private final BundleDescription requirementHost;
    private final VersionConstraint declaredRequirement;
    private final BundleDescription capabilityHost;
    private final BaseDescription declaredCapability;

    public StateWire(BundleDescription requirementHost, VersionConstraint declaredRequirement, BundleDescription capabilityHost, BaseDescription declaredCapability) {
        this.requirementHost = requirementHost;
        this.declaredRequirement = declaredRequirement;
        this.capabilityHost = capabilityHost;
        this.declaredCapability = declaredCapability;
    }

    public BundleDescription getRequirementHost() {
        return this.requirementHost;
    }

    public VersionConstraint getDeclaredRequirement() {
        return this.declaredRequirement;
    }

    public BundleDescription getCapabilityHost() {
        return this.capabilityHost;
    }

    public BaseDescription getDeclaredCapability() {
        return this.declaredCapability;
    }
}

