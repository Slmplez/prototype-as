/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.resources.WorkspaceJob
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.emf.common.archive.ArchiveURLConnection
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.URIConverter
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.emf.workspace.util;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.emf.common.archive.ArchiveURLConnection;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;
import org.eclipse.emf.workspace.internal.Tracing;
import org.eclipse.emf.workspace.internal.l10n.Messages;
import org.eclipse.emf.workspace.util.ChangedSynchRequest;
import org.eclipse.emf.workspace.util.DeletedSynchRequest;
import org.eclipse.emf.workspace.util.MovedSynchRequest;
import org.eclipse.emf.workspace.util.SynchRequest;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class WorkspaceSynchronizer {
    private final TransactionalEditingDomain domain;
    private Delegate delegate;
    private static Collection<WorkspaceSynchronizer> synchronizers = new ArrayList<WorkspaceSynchronizer>();
    private static IResourceChangeListener workspaceListener = new WorkspaceListener();
    static Delegate defaultDelegate = new DefaultDelegate();

    public WorkspaceSynchronizer(TransactionalEditingDomain domain) {
        this(domain, null);
    }

    public WorkspaceSynchronizer(TransactionalEditingDomain domain, Delegate delegate) {
        if (domain == null) {
            throw new IllegalArgumentException("null domain");
        }
        if (delegate == null) {
            delegate = defaultDelegate;
        }
        this.domain = domain;
        this.delegate = delegate;
        WorkspaceSynchronizer.startListening(this);
    }

    public TransactionalEditingDomain getEditingDomain() {
        return this.domain;
    }

    Delegate getDelegate() {
        return this.delegate;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispose() {
        WorkspaceSynchronizer.stopListening(this);
        WorkspaceSynchronizer workspaceSynchronizer = this;
        synchronized (workspaceSynchronizer) {
            if (!this.isDisposed()) {
                this.delegate.dispose();
                this.delegate = null;
            }
        }
    }

    boolean isDisposed() {
        return this.delegate == null;
    }

    void processDelta(IResourceDelta delta, List<SynchRequest> synchRequests, List<IFile> affectedFiles) {
        URI encodedURI;
        String fullPath = delta.getFullPath().toString();
        URI uri = URI.createPlatformResourceURI((String)fullPath, (boolean)false);
        ResourceSet rset = this.getEditingDomain().getResourceSet();
        Resource resource = rset.getResource(uri, false);
        if (resource == null && !(encodedURI = URI.createPlatformResourceURI((String)fullPath, (boolean)true)).equals((Object)uri)) {
            uri = encodedURI;
            resource = rset.getResource(uri, false);
        }
        if (resource != null && resource.isLoaded()) {
            switch (delta.getKind()) {
                case 1: {
                    if ((delta.getFlags() & 0x1000) == 0) break;
                    affectedFiles.add((IFile)delta.getResource());
                    break;
                }
                case 2: {
                    if ((delta.getFlags() & 0x2000) != 0) {
                        String newPath = delta.getMovedToPath().toString();
                        URI newURI = URI.createPlatformResourceURI((String)newPath, (boolean)false);
                        if (rset.getResource(newURI, false) == null) {
                            newURI = URI.createPlatformResourceURI((String)newPath, (boolean)true);
                        }
                        synchRequests.add(new MovedSynchRequest(this, resource, newURI));
                        break;
                    }
                    synchRequests.add(new DeletedSynchRequest(this, resource));
                    break;
                }
                case 4: {
                    synchRequests.add(new ChangedSynchRequest(this, resource));
                    affectedFiles.add((IFile)delta.getResource());
                }
            }
        }
    }

    public static IFile getFile(Resource resource) {
        if (resource == null) {
            return null;
        }
        ResourceSet rset = resource.getResourceSet();
        return WorkspaceSynchronizer.getFile(resource.getURI(), rset != null ? rset.getURIConverter() : null, false);
    }

    public static IFile getUnderlyingFile(Resource resource) {
        ResourceSet rset = resource.getResourceSet();
        return WorkspaceSynchronizer.getFile(resource.getURI(), rset != null ? rset.getURIConverter() : null, true);
    }

    private static IFile getFile(URI uri, URIConverter converter, boolean considerArchives) {
        IFile result = null;
        if (considerArchives && uri.isArchive()) {
            class MyArchiveURLConnection
            extends ArchiveURLConnection {
                public MyArchiveURLConnection(String url) {
                    super(url);
                }

                public String getNestedURI() {
                    try {
                        return this.getNestedURL();
                    }
                    catch (IOException iOException) {
                        return "";
                    }
                }
            }
            MyArchiveURLConnection archiveURLConnection = new MyArchiveURLConnection(uri.toString());
            result = WorkspaceSynchronizer.getFile(URI.createURI((String)archiveURLConnection.getNestedURI()), converter, considerArchives);
        } else {
            URI normalized;
            if (uri.isPlatformPlugin()) {
                return result;
            }
            if (uri.isPlatformResource()) {
                Path path = new Path(uri.toPlatformString(true));
                result = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)path);
            } else if (uri.isFile() && !uri.isRelative()) {
                result = ResourcesPlugin.getWorkspace().getRoot().getFileForLocation((IPath)new Path(uri.toFileString()));
            } else if (converter != null && !uri.equals((Object)(normalized = converter.normalize(uri)))) {
                result = WorkspaceSynchronizer.getFile(normalized, converter, considerArchives);
            }
        }
        if (result == null && !uri.isRelative()) {
            try {
                IFile[] files;
                java.net.URI location = new java.net.URI(uri.toString());
                if (WorkspaceSynchronizer.hasRegisteredEFS(location) && (files = ResourcesPlugin.getWorkspace().getRoot().findFilesForLocationURI(new java.net.URI(uri.toString()))).length > 0) {
                    result = files[0];
                }
            }
            catch (URISyntaxException uRISyntaxException) {}
        }
        return result;
    }

    private static boolean hasRegisteredEFS(java.net.URI location) {
        try {
            return EFS.getStore((java.net.URI)location) != null;
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void startListening(WorkspaceSynchronizer synchronizer) {
        Collection<WorkspaceSynchronizer> collection = synchronizers;
        synchronized (collection) {
            ArrayList<WorkspaceSynchronizer> newList = new ArrayList<WorkspaceSynchronizer>(synchronizers.size() + 1);
            newList.addAll(synchronizers);
            newList.add(synchronizer);
            synchronizers = newList;
            ResourcesPlugin.getWorkspace().addResourceChangeListener(workspaceListener, 1);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void stopListening(WorkspaceSynchronizer synchronizer) {
        Collection<WorkspaceSynchronizer> collection = synchronizers;
        synchronized (collection) {
            ArrayList<WorkspaceSynchronizer> newList = new ArrayList<WorkspaceSynchronizer>(synchronizers);
            newList.remove(synchronizer);
            synchronizers = newList;
            if (synchronizers.isEmpty()) {
                ResourcesPlugin.getWorkspace().removeResourceChangeListener(workspaceListener);
            }
        }
    }

    static Collection<WorkspaceSynchronizer> getSynchronizers() {
        return synchronizers;
    }

    private static class DefaultDelegate
    implements Delegate {
        private DefaultDelegate() {
        }

        public boolean handleResourceDeleted(Resource resource) {
            resource.unload();
            return true;
        }

        public boolean handleResourceMoved(Resource resource, URI newURI) {
            resource.unload();
            return true;
        }

        public boolean handleResourceChanged(Resource resource) {
            resource.unload();
            try {
                resource.load(resource.getResourceSet().getLoadOptions());
            }
            catch (IOException e) {
                Tracing.catching(DefaultDelegate.class, "handleResourceChanged", e);
                EMFWorkspacePlugin.INSTANCE.log(e);
            }
            return true;
        }

        public void dispose() {
        }
    }

    public static interface Delegate {
        public boolean handleResourceDeleted(Resource var1);

        public boolean handleResourceMoved(Resource var1, URI var2);

        public boolean handleResourceChanged(Resource var1);

        public void dispose();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ResourceSynchJob
    extends WorkspaceJob {
        private final List<SynchRequest> synchRequests;

        ResourceSynchJob(List<SynchRequest> synchRequests, List<? extends IResource> affectedResources) {
            super(Messages.synchJobName);
            this.synchRequests = synchRequests;
            this.setRule(this.getRule(affectedResources));
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus runInWorkspace(IProgressMonitor monitor) {
            try {
                for (SynchRequest next : this.synchRequests) {
                    try {
                        Object object = next.getLock();
                        synchronized (object) {
                            if (!next.isDisposed()) {
                                next.perform();
                            }
                        }
                    }
                    catch (RuntimeException e) {
                        Tracing.catching(ResourceSynchJob.class, "run", e);
                        EMFWorkspacePlugin.INSTANCE.log(e);
                    }
                }
            }
            catch (InterruptedException e) {
                Tracing.catching(ResourceSynchJob.class, "run", e);
                return Status.CANCEL_STATUS;
            }
            return Status.OK_STATUS;
        }

        private ISchedulingRule getRule(List<? extends IResource> affectedResources) {
            ISchedulingRule result = null;
            if (!affectedResources.isEmpty()) {
                IResourceRuleFactory factory = ResourcesPlugin.getWorkspace().getRuleFactory();
                for (IResource iResource : affectedResources) {
                    result = MultiRule.combine(result, (ISchedulingRule)factory.modifyRule(iResource));
                }
            }
            return result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class WorkspaceListener
    implements IResourceChangeListener {
        private WorkspaceListener() {
        }

        public void resourceChanged(IResourceChangeEvent event) {
            IResourceDelta delta = event.getDelta();
            try {
                final ArrayList<SynchRequest> synchRequests = new ArrayList<SynchRequest>();
                final ArrayList affectedFiles = new ArrayList();
                delta.accept(new IResourceDeltaVisitor(){

                    public boolean visit(IResourceDelta delta) {
                        if (delta.getResource().getType() == 1) {
                            switch (delta.getKind()) {
                                case 4: {
                                    if (delta.getFlags() == 131072) break;
                                }
                                case 2: {
                                    WorkspaceListener.this.processDelta(delta, synchRequests, affectedFiles);
                                }
                            }
                        }
                        return true;
                    }
                });
                if (!synchRequests.isEmpty()) {
                    new ResourceSynchJob(synchRequests, affectedFiles).schedule();
                }
            }
            catch (CoreException e) {
                Tracing.catching(WorkspaceListener.class, "resourceChanged", e);
                EMFWorkspacePlugin.INSTANCE.log((Object)e);
            }
        }

        private void processDelta(IResourceDelta delta, List<SynchRequest> synchRequests, List<IFile> affectedFiles) {
            for (WorkspaceSynchronizer next : WorkspaceSynchronizer.getSynchronizers()) {
                next.processDelta(delta, synchRequests, affectedFiles);
            }
        }
    }
}

