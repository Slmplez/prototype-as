/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateObjectFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core;

import java.util.Dictionary;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;

public class BundleValidationOperation
implements IWorkspaceRunnable {
    private static StateObjectFactory FACTORY;
    private IPluginModelBase[] fModels;
    private Dictionary[] fProperties;
    private State fState;

    public BundleValidationOperation(IPluginModelBase[] models) {
        this(models, new Dictionary[]{TargetPlatformHelper.getTargetEnvironment()});
    }

    public BundleValidationOperation(IPluginModelBase[] models, Dictionary[] properties) {
        this.fModels = models;
        this.fProperties = properties;
    }

    public void run(IProgressMonitor monitor) throws CoreException {
        if (FACTORY == null) {
            FACTORY = Platform.getPlatformAdmin().getFactory();
        }
        monitor.beginTask("", this.fModels.length + 1);
        this.fState = FACTORY.createState(true);
        int i = 0;
        while (i < this.fModels.length) {
            BundleDescription bundle = this.fModels[i].getBundleDescription();
            if (bundle != null) {
                this.fState.addBundle(FACTORY.createBundleDescription(bundle));
            }
            monitor.worked(1);
            ++i;
        }
        this.fState.setPlatformProperties(this.fProperties);
        this.fState.resolve(false);
        monitor.done();
    }

    public Map getResolverErrors() {
        HashSet<String> alreadyDuplicated = new HashSet<String>();
        HashMap<BundleDescription, Object[]> map = new HashMap<BundleDescription, Object[]>();
        BundleDescription[] bundles = this.fState.getBundles();
        int i = 0;
        while (i < bundles.length) {
            BundleDescription[] dups;
            BundleDescription desc = bundles[i];
            if (!desc.isResolved()) {
                map.put(desc, this.fState.getResolverErrors(desc));
            } else if (desc.isSingleton() && !alreadyDuplicated.contains(desc.getSymbolicName()) && (dups = this.fState.getBundles(desc.getSymbolicName())).length > 1) {
                alreadyDuplicated.add(desc.getSymbolicName());
                MultiStatus status = new MultiStatus("org.eclipse.pde.core", 0, NLS.bind((String)PDECoreMessages.BundleValidationOperation_multiple_singletons, (Object[])new String[]{Integer.toString(dups.length), desc.getSymbolicName()}), null);
                int j = 0;
                while (j < dups.length) {
                    status.add((IStatus)new Status(4, "org.eclipse.pde.core", dups[j].getLocation()));
                    ++j;
                }
                map.put(desc, new Object[]{status});
            }
            ++i;
        }
        return map;
    }

    public State getState() {
        return this.fState;
    }

    public boolean hasErrors() {
        if (this.fState.getHighestBundleId() > -1L) {
            BundleDescription[] bundles = this.fState.getBundles();
            int i = 0;
            while (i < bundles.length) {
                BundleDescription[] dups;
                BundleDescription desc = bundles[i];
                if (!desc.isResolved()) {
                    return true;
                }
                if (desc.isSingleton() && (dups = this.fState.getBundles(desc.getSymbolicName())).length > 1) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }
}

