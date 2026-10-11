/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.net.URI;
import java.util.HashSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.ProfileBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;

public class TargetMetadataCollector {
    static /* synthetic */ Class class$0;

    public static URI[] getMetadataRepositories(ITargetDefinition definition) throws CoreException {
        if (definition == null) {
            ITargetPlatformService service;
            PDECore pDECore = PDECore.getDefault();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (ITargetPlatformService)pDECore.acquireService(clazz.getName())) == null) {
                return null;
            }
            ITargetHandle handle = service.getWorkspaceTargetHandle();
            definition = handle.getTargetDefinition();
        }
        HashSet<URI> repos = new HashSet<URI>();
        IBundleContainer[] containers = definition.getBundleContainers();
        if (containers != null) {
            int i = 0;
            while (i < containers.length) {
                URI[] locations;
                IBundleContainer currentContainer = containers[i];
                if (currentContainer instanceof ProfileBundleContainer) {
                    File profileLocation = ((ProfileBundleContainer)currentContainer).getProfileFileLocation();
                    if (profileLocation != null) {
                        repos.add(profileLocation.toURI());
                    }
                } else if (currentContainer instanceof IUBundleContainer && (locations = ((IUBundleContainer)currentContainer).getRepositories()) != null) {
                    int j = 0;
                    while (j < locations.length) {
                        if (URIUtil.isFileURI((URI)locations[j])) {
                            repos.add(locations[j]);
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        return repos.toArray(new URI[repos.size()]);
    }
}

