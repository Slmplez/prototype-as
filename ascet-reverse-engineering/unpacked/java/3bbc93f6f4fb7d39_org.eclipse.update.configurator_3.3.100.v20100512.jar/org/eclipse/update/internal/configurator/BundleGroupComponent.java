/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.core.runtime.IBundleGroupProvider
 */
package org.eclipse.update.internal.configurator;

import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.update.internal.configurator.ConfigurationActivator;

public class BundleGroupComponent
implements IBundleGroupProvider {
    public IBundleGroup[] getBundleGroups() {
        ConfigurationActivator activator = ConfigurationActivator.getConfigurator();
        if (activator.bundleGroupProviderSR != null) {
            return new IBundleGroup[0];
        }
        return activator.getBundleGroups();
    }

    public String getName() {
        return ConfigurationActivator.getConfigurator().getName();
    }
}

