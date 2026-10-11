/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.wiring;

import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleWiring;

public interface BundleWire {
    public BundleCapability getCapability();

    public BundleRequirement getRequirement();

    public BundleWiring getProviderWiring();

    public BundleWiring getRequirerWiring();
}

