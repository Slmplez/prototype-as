/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.resources.mapping;

import java.util.ArrayList;
import org.eclipse.core.internal.resources.mapping.ChangeDescription;
import org.eclipse.core.internal.resources.mapping.ResourceChangeDescriptionFactory;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.mapping.IModelProviderDescriptor;
import org.eclipse.core.resources.mapping.IResourceChangeDescriptionFactory;
import org.eclipse.core.resources.mapping.ModelProvider;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public final class ResourceChangeValidator {
    private static ResourceChangeValidator instance;

    public static ResourceChangeValidator getValidator() {
        if (instance == null) {
            instance = new ResourceChangeValidator();
        }
        return instance;
    }

    private ResourceChangeValidator() {
    }

    private IStatus combineResults(IStatus[] result) {
        ArrayList<IStatus> notOK = new ArrayList<IStatus>();
        int i = 0;
        while (i < result.length) {
            IStatus status = result[i];
            if (!status.isOK()) {
                notOK.add(status);
            }
            ++i;
        }
        if (notOK.isEmpty()) {
            return Status.OK_STATUS;
        }
        if (notOK.size() == 1) {
            return (IStatus)notOK.get(0);
        }
        return new MultiStatus("org.eclipse.core.resources", 0, notOK.toArray(new IStatus[notOK.size()]), Messages.mapping_multiProblems, null);
    }

    public IResourceChangeDescriptionFactory createDeltaFactory() {
        return new ResourceChangeDescriptionFactory();
    }

    private ModelProvider[] getProviders(IResource[] resources) {
        IModelProviderDescriptor[] descriptors = ModelProvider.getModelProviderDescriptors();
        ArrayList<ModelProvider> result = new ArrayList<ModelProvider>();
        int i = 0;
        while (i < descriptors.length) {
            IModelProviderDescriptor descriptor = descriptors[i];
            try {
                IResource[] matchingResources = descriptor.getMatchingResources(resources);
                if (matchingResources.length > 0) {
                    result.add(descriptor.getModelProvider());
                }
            }
            catch (CoreException e) {
                Policy.log(e.getStatus().getSeverity(), NLS.bind((String)"Could not instantiate provider {0}", (Object)descriptor.getId()), e);
            }
            ++i;
        }
        return result.toArray(new ModelProvider[result.size()]);
    }

    private IResource[] getRootResources(IResourceDelta root) {
        final ChangeDescription changeDescription = new ChangeDescription();
        try {
            root.accept(new IResourceDeltaVisitor(){

                public boolean visit(IResourceDelta delta) {
                    return changeDescription.recordChange(delta);
                }
            });
        }
        catch (CoreException e) {
            Policy.log(4, "Internal error", e);
        }
        return changeDescription.getRootResources();
    }

    public IStatus validateChange(IResourceDelta delta, IProgressMonitor monitor) {
        monitor = Policy.monitorFor(monitor);
        try {
            IResource[] resources = this.getRootResources(delta);
            ModelProvider[] providers = this.getProviders(resources);
            if (providers.length == 0) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            monitor.beginTask(Messages.mapping_validate, providers.length);
            IStatus[] result = new IStatus[providers.length];
            int i = 0;
            while (i < providers.length) {
                result[i] = providers[i].validateChange(delta, Policy.subMonitorFor(monitor, 1));
                ++i;
            }
            IStatus iStatus = this.combineResults(result);
            return iStatus;
        }
        finally {
            monitor.done();
        }
    }
}

