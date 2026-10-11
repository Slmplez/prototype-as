/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.refresh;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.refresh.PollingMonitor;
import org.eclipse.core.internal.refresh.RefreshManager;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IPathVariableChangeEvent;
import org.eclipse.core.resources.IPathVariableChangeListener;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.refresh.IRefreshMonitor;
import org.eclipse.core.resources.refresh.RefreshProvider;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class MonitorManager
implements ILifecycleListener,
IPathVariableChangeListener,
IResourceChangeListener,
IResourceDeltaVisitor {
    protected final PollingMonitor pollMonitor;
    private RefreshProvider[] providers;
    protected final RefreshManager refreshManager;
    protected final Map<IRefreshMonitor, List<IResource>> registeredMonitors;
    protected IWorkspace workspace;

    public MonitorManager(IWorkspace workspace, RefreshManager refreshManager) {
        this.workspace = workspace;
        this.refreshManager = refreshManager;
        this.registeredMonitors = Collections.synchronizedMap(new HashMap(10));
        this.pollMonitor = new PollingMonitor(refreshManager);
    }

    private RefreshProvider[] getRefreshProviders() {
        if (this.providers != null) {
            return this.providers;
        }
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.resources", "refreshProviders");
        IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
        ArrayList<RefreshProvider> providerList = new ArrayList<RefreshProvider>(infos.length);
        int i = 0;
        while (i < infos.length) {
            IConfigurationElement configurationElement = infos[i];
            RefreshProvider provider = null;
            try {
                provider = (RefreshProvider)configurationElement.createExecutableExtension("class");
            }
            catch (CoreException e) {
                Policy.log(2, Messages.refresh_installError, e);
            }
            if (provider != null) {
                providerList.add(provider);
            }
            ++i;
        }
        this.providers = providerList.toArray(new RefreshProvider[providerList.size()]);
        return this.providers;
    }

    private List<IResource> getResourcesToMonitor() {
        ArrayList<IResource> resourcesToMonitor = new ArrayList<IResource>(10);
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < projects.length) {
            if (projects[i].isAccessible()) {
                resourcesToMonitor.add(projects[i]);
                try {
                    IResource[] members = projects[i].members();
                    int j = 0;
                    while (j < members.length) {
                        if (members[j].isLinked()) {
                            resourcesToMonitor.add(members[j]);
                        }
                        ++j;
                    }
                }
                catch (CoreException e) {
                    Policy.log(2, Messages.refresh_refreshErr, e);
                }
            }
            ++i;
        }
        return resourcesToMonitor;
    }

    @Override
    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 1: 
            case 16: 
            case 1024: {
                this.unmonitor(event.resource);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean isMonitoring(IResource resource) {
        Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
        synchronized (map) {
            List<IResource> resources;
            Iterator<IRefreshMonitor> i = this.registeredMonitors.keySet().iterator();
            do {
                if (i.hasNext()) continue;
                return false;
            } while ((resources = this.registeredMonitors.get(i.next())) == null || !resources.contains(resource));
            return true;
        }
    }

    boolean monitor(IResource resource) {
        if (this.isMonitoring(resource)) {
            return false;
        }
        boolean pollingMonitorNeeded = true;
        RefreshProvider[] refreshProviders = this.getRefreshProviders();
        int i = 0;
        while (i < refreshProviders.length) {
            IRefreshMonitor monitor = this.safeInstallMonitor(refreshProviders[i], resource);
            if (monitor != null) {
                this.registerMonitor(monitor, resource);
                pollingMonitorNeeded = false;
            }
            ++i;
        }
        if (pollingMonitorNeeded) {
            this.pollMonitor.monitor(resource);
            this.registerMonitor(this.pollMonitor, resource);
        }
        return pollingMonitorNeeded;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void monitorFailed(IRefreshMonitor monitor, IResource resource2) {
        if (RefreshManager.DEBUG) {
            System.err.println("Auto-refresh:  monitor (" + monitor + ") failed to monitor resource: " + resource2);
        }
        if (this.registeredMonitors == null || monitor == null) {
            return;
        }
        if (resource2 == null) {
            List<IResource> resources = this.registeredMonitors.get(monitor);
            if (resources == null || resources.isEmpty()) {
                this.registeredMonitors.remove(monitor);
                return;
            }
            Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
            synchronized (map) {
                for (IResource resource2 : resources) {
                    this.pollMonitor.monitor(resource2);
                    this.registerMonitor(this.pollMonitor, resource2);
                }
                this.registeredMonitors.remove(monitor);
            }
        } else {
            this.removeMonitor(monitor, resource2);
            this.pollMonitor.monitor(resource2);
            this.registerMonitor(this.pollMonitor, resource2);
        }
    }

    @Override
    public void pathVariableChanged(IPathVariableChangeEvent event) {
        if (this.registeredMonitors.isEmpty()) {
            return;
        }
        String variableName = event.getVariableName();
        HashSet<IResource> invalidResources = new HashSet<IResource>();
        Iterator<List<IResource>> i = this.registeredMonitors.values().iterator();
        while (i.hasNext()) {
            for (IResource resource : i.next()) {
                IPath rawLocation = resource.getRawLocation();
                if (rawLocation == null || rawLocation.segmentCount() <= 0 || !variableName.equals(rawLocation.segment(0)) || invalidResources.contains(resource)) continue;
                invalidResources.add(resource);
            }
        }
        if (!invalidResources.isEmpty()) {
            for (IResource resource : invalidResources) {
                this.unmonitor(resource);
                this.monitor(resource);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void registerMonitor(IRefreshMonitor monitor, IResource resource) {
        Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
        synchronized (map) {
            List<IResource> resources = this.registeredMonitors.get(monitor);
            if (resources == null) {
                resources = new ArrayList<IResource>(1);
                this.registeredMonitors.put(monitor, resources);
            }
            if (!resources.contains(resource)) {
                resources.add(resource);
            }
        }
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  added monitor (" + monitor + ") on resource: " + resource);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeMonitor(IRefreshMonitor monitor, IResource resource) {
        Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
        synchronized (map) {
            List<IResource> resources = this.registeredMonitors.get(monitor);
            if (resources != null && !resources.isEmpty()) {
                resources.remove(resource);
            } else {
                this.registeredMonitors.remove(monitor);
            }
        }
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  removing monitor (" + monitor + ") on resource: " + resource);
        }
    }

    private IRefreshMonitor safeInstallMonitor(RefreshProvider provider, IResource resource) {
        Throwable t = null;
        try {
            return provider.installMonitor(resource, this.refreshManager);
        }
        catch (Exception e) {
            t = e;
        }
        catch (LinkageError e) {
            t = e;
        }
        Status error = new Status(4, "org.eclipse.core.resources", 1, Messages.refresh_installError, t);
        Policy.log((IStatus)error);
        return null;
    }

    public void start() {
        boolean refreshNeeded = false;
        Iterator<IResource> i = this.getResourcesToMonitor().iterator();
        while (i.hasNext()) {
            refreshNeeded |= !this.monitor(i.next());
        }
        this.workspace.getPathVariableManager().addChangeListener(this);
        this.workspace.addResourceChangeListener(this, 1);
        ((Workspace)this.workspace).addLifecycleListener(this);
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  starting monitor manager.");
        }
        if (refreshNeeded) {
            new PollingMonitor(this.refreshManager).runOnce();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void stop() {
        this.workspace.removeResourceChangeListener(this);
        this.workspace.getPathVariableManager().removeChangeListener(this);
        Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
        synchronized (map) {
            for (IRefreshMonitor monitor : this.registeredMonitors.keySet()) {
                monitor.unmonitor(null);
            }
        }
        this.registeredMonitors.clear();
        if (RefreshManager.DEBUG) {
            System.out.println("Auto-refresh:  stopping monitor manager.");
        }
        this.pollMonitor.cancel();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void unmonitor(IResource resource) {
        if (resource == null || !this.isMonitoring(resource)) {
            return;
        }
        Map<IRefreshMonitor, List<IResource>> map = this.registeredMonitors;
        synchronized (map) {
            for (Map.Entry<IRefreshMonitor, List<IResource>> current : this.registeredMonitors.entrySet()) {
                List<IResource> resources = current.getValue();
                if (resources == null || resources.isEmpty() || !resources.contains(resource)) continue;
                current.getKey().unmonitor(resource);
                resources.remove(resource);
            }
        }
        if (resource.getType() == 4) {
            this.unmonitorLinkedContents((IProject)resource);
        }
    }

    private void unmonitorLinkedContents(IProject project) {
        if (!project.isAccessible()) {
            return;
        }
        IResource[] children = null;
        try {
            children = project.members();
        }
        catch (CoreException e) {
            Policy.log(2, Messages.refresh_refreshErr, e);
        }
        if (children != null && children.length > 0) {
            int i = 0;
            while (i < children.length) {
                if (children[i].isLinked()) {
                    this.unmonitor(children[i]);
                }
                ++i;
            }
        }
    }

    @Override
    public void resourceChanged(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (delta == null) {
            return;
        }
        try {
            delta.accept(this);
        }
        catch (CoreException coreException) {}
    }

    @Override
    public boolean visit(IResourceDelta delta) {
        IProject project;
        IResource resource;
        if (delta.getKind() == 1 && (resource = delta.getResource()).isLinked()) {
            this.monitor(resource);
        }
        if ((delta.getFlags() & 0x4000) != 0 && (project = (IProject)delta.getResource()).isAccessible()) {
            this.monitor(project);
        }
        return true;
    }
}

