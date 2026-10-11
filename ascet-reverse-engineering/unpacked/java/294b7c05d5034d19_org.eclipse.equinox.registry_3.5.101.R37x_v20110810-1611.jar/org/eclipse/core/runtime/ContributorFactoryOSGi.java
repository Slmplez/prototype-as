/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.runtime;

import org.eclipse.core.internal.registry.osgi.OSGIUtils;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.osgi.framework.Bundle;

public final class ContributorFactoryOSGi {
    public static IContributor createContributor(Bundle contributor) {
        Bundle[] hosts;
        String id = Long.toString(contributor.getBundleId());
        String name = contributor.getSymbolicName();
        String hostId = null;
        String hostName = null;
        if (OSGIUtils.getDefault().isFragment(contributor) && (hosts = OSGIUtils.getDefault().getHosts(contributor)) != null) {
            Bundle hostBundle = hosts[0];
            hostId = Long.toString(hostBundle.getBundleId());
            hostName = hostBundle.getSymbolicName();
        }
        return new RegistryContributor(id, name, hostId, hostName);
    }

    public static Bundle resolve(IContributor contributor) {
        if (contributor == null) {
            return null;
        }
        if (!(contributor instanceof RegistryContributor)) {
            return null;
        }
        String symbolicName = ((RegistryContributor)contributor).getActualName();
        return OSGIUtils.getDefault().getBundle(symbolicName);
    }
}

