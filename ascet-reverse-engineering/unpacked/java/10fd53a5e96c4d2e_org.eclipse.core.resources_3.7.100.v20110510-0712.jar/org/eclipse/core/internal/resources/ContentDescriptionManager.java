/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager$ContentTypeChangeEvent
 *  org.eclipse.core.runtime.content.IContentTypeManager$IContentTypeChangeListener
 *  org.eclipse.core.runtime.content.IContentTypeMatcher
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.core.internal.resources;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectContentTypes;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Cache;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.WorkspaceJob;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

public class ContentDescriptionManager
implements IManager,
IRegistryChangeListener,
IContentTypeManager.IContentTypeChangeListener,
ILifecycleListener {
    private static final QualifiedName CACHE_STATE = new QualifiedName("org.eclipse.core.resources", "contentCacheState");
    private static final QualifiedName CACHE_TIMESTAMP = new QualifiedName("org.eclipse.core.resources", "contentCacheTimestamp");
    public static final String FAMILY_DESCRIPTION_CACHE_FLUSH = "org.eclipse.core.resources.contentDescriptionCacheFamily";
    public static final byte EMPTY_CACHE = 1;
    public static final byte USED_CACHE = 2;
    public static final byte INVALID_CACHE = 3;
    public static final byte FLUSHING_CACHE = 4;
    public static final byte ABOUT_TO_FLUSH = 5;
    private static final String PT_CONTENTTYPES = "contentTypes";
    private Cache cache;
    private byte cacheState;
    private FlushJob flushJob;
    private ProjectContentTypes projectContentTypes;
    Workspace workspace;
    protected final Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");

    public void contentTypeChanged(IContentTypeManager.ContentTypeChangeEvent event) {
        if (Policy.DEBUG_CONTENT_TYPE) {
            Policy.debug("Content type settings changed for " + event.getContentType());
        }
        this.invalidateCache(true, null);
    }

    synchronized void doFlushCache(IProgressMonitor monitor, IPath[] toClean) throws CoreException {
        if (this.getCacheState() != 3 && this.getCacheState() != 5) {
            if (Policy.DEBUG_CONTENT_TYPE_CACHE) {
                Policy.debug("Content type cache flush not performed");
            }
            return;
        }
        try {
            this.setCacheState((byte)4);
            this.cache.discardAll();
            if (toClean == null || toClean.length == 0) {
                this.clearContentFlags((IPath)Path.ROOT, monitor);
            } else {
                int i = 0;
                while (i < toClean.length) {
                    this.clearContentFlags(toClean[i], monitor);
                    ++i;
                }
            }
        }
        catch (CoreException ce) {
            this.setCacheState((byte)3);
            throw ce;
        }
        this.setCacheState((byte)1);
    }

    private void clearContentFlags(IPath root, final IProgressMonitor monitor) {
        long flushStart = System.currentTimeMillis();
        if (Policy.DEBUG_CONTENT_TYPE_CACHE) {
            Policy.debug("Flushing content type cache for " + root);
        }
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                if (monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                if (elementContents == null) {
                    return false;
                }
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info.getType() != 1) {
                    return true;
                }
                info = ContentDescriptionManager.this.workspace.getResourceInfo(requestor.requestPath(), false, true);
                if (info == null) {
                    return false;
                }
                info.clear(393216);
                return true;
            }
        };
        new ElementTreeIterator(this.workspace.getElementTree(), root).iterate(visitor);
        if (Policy.DEBUG_CONTENT_TYPE_CACHE) {
            Policy.debug("Content type cache for " + root + " flushed in " + (System.currentTimeMillis() - flushStart) + " ms");
        }
    }

    Cache getCache() {
        return this.cache;
    }

    public synchronized byte getCacheState() {
        if (this.cacheState != 0) {
            return this.cacheState;
        }
        try {
            String persisted = this.workspace.getRoot().getPersistentProperty(CACHE_STATE);
            this.cacheState = (byte)(persisted != null ? (int)Byte.parseByte(persisted) : 3);
        }
        catch (NumberFormatException numberFormatException) {
            this.cacheState = (byte)3;
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
            this.cacheState = (byte)3;
        }
        return this.cacheState;
    }

    public long getCacheTimestamp() throws CoreException {
        try {
            return Long.parseLong(this.workspace.getRoot().getPersistentProperty(CACHE_TIMESTAMP));
        }
        catch (NumberFormatException numberFormatException) {
            return 0L;
        }
    }

    public IContentTypeMatcher getContentTypeMatcher(Project project) throws CoreException {
        return this.projectContentTypes.getMatcherFor(project);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public IContentDescription getDescriptionFor(File file, ResourceInfo info, boolean inSync) throws CoreException {
        ContentDescriptionManager contentTypeManager;
        if (ProjectContentTypes.usesContentTypePreferences(file.getFullPath().segment(0))) {
            return this.readDescription(file);
        }
        if (this.getCacheState() == 3) {
            this.setCacheState((byte)5);
            this.cache.discardAll();
            this.flushJob.schedule(1000L);
        }
        if (inSync && this.getCacheState() != 5) {
            if (info == null) {
                return null;
            }
            if (info.isSet(131072)) {
                return null;
            }
            if (info.isSet(262144)) {
                contentTypeManager = Platform.getContentTypeManager();
                IContentType type = contentTypeManager.findContentTypeFor(file.getName());
                if (type != null) {
                    return type.getDefaultDescription();
                }
                info.clear(393216);
            }
        }
        if (inSync) {
            contentTypeManager = this;
            synchronized (contentTypeManager) {
                Cache.Entry entry = this.cache.getEntry(file.getFullPath());
                if (entry != null && entry.getTimestamp() == this.getTimestamp(info)) {
                    return (IContentDescription)entry.getCached();
                }
            }
        }
        IContentDescription newDescription = this.readDescription(file);
        ContentDescriptionManager contentDescriptionManager = this;
        synchronized (contentDescriptionManager) {
            Cache.Entry entry = this.cache.getEntry(file.getFullPath());
            if (entry != null && inSync && entry.getTimestamp() == this.getTimestamp(info)) {
                return (IContentDescription)entry.getCached();
            }
            if (this.getCacheState() != 5) {
                this.setCacheState((byte)2);
                if (newDescription == null) {
                    info.set(131072);
                    return null;
                }
                if (newDescription.getContentType().getDefaultDescription().equals(newDescription)) {
                    IContentType defaultForName = Platform.getContentTypeManager().findContentTypeFor(file.getName());
                    if (newDescription.getContentType().equals(defaultForName)) {
                        info.set(262144);
                        return newDescription;
                    }
                }
            }
            if (entry == null) {
                entry = this.cache.addEntry(file.getFullPath(), newDescription, this.getTimestamp(info));
            } else {
                entry.setTimestamp(this.getTimestamp(info));
                entry.setCached(newDescription);
            }
            return newDescription;
        }
    }

    private long getTimestamp(ResourceInfo info) {
        return (long)info.getContentId() + info.getNodeId();
    }

    public synchronized void invalidateCache(boolean flush, IProject project) {
        if (this.getCacheState() == 1) {
            return;
        }
        try {
            this.setCacheState((byte)3);
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
        }
        if (Policy.DEBUG_CONTENT_TYPE_CACHE) {
            Policy.debug("Invalidated cache for " + (project == null ? Path.ROOT : project.getFullPath()));
        }
        if (flush) {
            try {
                this.setCacheState((byte)5);
                this.cache.discardAll();
            }
            catch (CoreException e) {
                Policy.log(e.getStatus());
            }
            this.flushJob.flush(project);
        }
    }

    private IContentDescription readDescription(File file) throws CoreException {
        if (Policy.DEBUG_CONTENT_TYPE) {
            Policy.debug("reading contents of " + file);
        }
        LazyFileInputStream contents = new LazyFileInputStream(file.getStore());
        try {
            IContentTypeMatcher matcher = this.getContentTypeMatcher((Project)file.getProject());
            IContentDescription iContentDescription = matcher.getDescriptionFor((InputStream)contents, file.getName(), IContentDescription.ALL);
            return iContentDescription;
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.resources_errorContentDescription, (Object)file.getFullPath());
            throw new ResourceException(381, file.getFullPath(), message, e);
        }
        finally {
            FileUtil.safeClose(contents);
        }
    }

    public void registryChanged(IRegistryChangeEvent event) {
        if (event.getExtensionDeltas("org.eclipse.core.runtime", PT_CONTENTTYPES).length == 0) {
            return;
        }
        this.invalidateCache(true, null);
    }

    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 2: 
            case 16: 
            case 64: {
                this.invalidateCache(true, (IProject)event.resource);
            }
        }
    }

    synchronized void setCacheState(byte newCacheState) throws CoreException {
        if (this.cacheState == newCacheState) {
            return;
        }
        this.workspace.getRoot().setPersistentProperty(CACHE_STATE, Byte.toString(newCacheState));
        this.cacheState = newCacheState;
    }

    private void setCacheTimeStamp(long timeStamp) throws CoreException {
        this.workspace.getRoot().setPersistentProperty(CACHE_TIMESTAMP, Long.toString(timeStamp));
    }

    public void shutdown(IProgressMonitor monitor) throws CoreException {
        if (this.getCacheState() != 3) {
            this.setCacheTimeStamp(Platform.getStateStamp());
        }
        Platform.getContentTypeManager().removeContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
        Platform.getExtensionRegistry().removeRegistryChangeListener((IRegistryChangeListener)this);
        this.cache.dispose();
        this.cache = null;
        this.flushJob.cancel();
        this.flushJob = null;
        this.projectContentTypes = null;
    }

    public void startup(IProgressMonitor monitor) throws CoreException {
        this.workspace = (Workspace)ResourcesPlugin.getWorkspace();
        this.cache = new Cache(100, 1000, 0.1);
        this.projectContentTypes = new ProjectContentTypes(this.workspace);
        this.getCacheState();
        if (this.cacheState == 4 || this.cacheState == 5) {
            this.setCacheState((byte)3);
        }
        this.flushJob = new FlushJob();
        if (this.getCacheTimestamp() != Platform.getStateStamp()) {
            this.invalidateCache(false, null);
        }
        this.workspace.addLifecycleListener(this);
        Platform.getContentTypeManager().addContentTypeChangeListener((IContentTypeManager.IContentTypeChangeListener)this);
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this, "org.eclipse.core.runtime");
    }

    public void projectPreferencesChanged(IProject project) {
        if (Policy.DEBUG_CONTENT_TYPE) {
            Policy.debug("Project preferences changed for " + project);
        }
        this.projectContentTypes.contentTypePreferencesChanged(project);
    }

    private class FlushJob
    extends WorkspaceJob {
        private final List<IPath> toFlush;
        private boolean fullFlush;

        public FlushJob() {
            super(Messages.resources_flushingContentDescriptionCache);
            this.setSystem(true);
            this.setUser(false);
            this.setPriority(30);
            this.setRule(ContentDescriptionManager.this.workspace.getRoot());
            this.toFlush = new ArrayList<IPath>(5);
        }

        public boolean belongsTo(Object family) {
            return ContentDescriptionManager.FAMILY_DESCRIPTION_CACHE_FLUSH.equals(family);
        }

        public IStatus runInWorkspace(IProgressMonitor monitor) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            try {
                try {
                    monitor.beginTask("", Policy.opWork);
                    IWorkspaceRoot rule = ContentDescriptionManager.this.workspace.getRoot();
                    try {
                        ContentDescriptionManager.this.workspace.prepareOperation(rule, monitor);
                        ContentDescriptionManager.this.workspace.beginOperation(true);
                        if (ContentDescriptionManager.this.systemBundle.getState() != 16) {
                            ContentDescriptionManager.this.doFlushCache(monitor, this.getPathsToFlush());
                        }
                    }
                    finally {
                        ContentDescriptionManager.this.workspace.endOperation(rule, false, Policy.subMonitorFor(monitor, Policy.endOpWork));
                    }
                }
                catch (OperationCanceledException operationCanceledException) {
                    IStatus iStatus = Status.CANCEL_STATUS;
                    monitor.done();
                    return iStatus;
                }
                catch (CoreException e) {
                    IStatus iStatus = e.getStatus();
                    monitor.done();
                    return iStatus;
                }
            }
            finally {
                monitor.done();
            }
            return Status.OK_STATUS;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private IPath[] getPathsToFlush() {
            List<IPath> list = this.toFlush;
            synchronized (list) {
                try {
                    if (this.fullFlush) {
                        return null;
                    }
                    int size = this.toFlush.size();
                    IPath[] iPathArray = size == 0 ? null : this.toFlush.toArray(new IPath[size]);
                    return iPathArray;
                }
                finally {
                    this.fullFlush = false;
                    this.toFlush.clear();
                }
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void flush(IProject project) {
            if (Policy.DEBUG_CONTENT_TYPE_CACHE) {
                Policy.debug("Scheduling flushing of content type cache for " + (project == null ? Path.ROOT : project.getFullPath()));
            }
            List<IPath> list = this.toFlush;
            synchronized (list) {
                if (!this.fullFlush) {
                    if (project == null) {
                        this.fullFlush = true;
                    } else {
                        this.toFlush.add(project.getFullPath());
                    }
                }
            }
            this.schedule(1000L);
        }
    }

    class LazyFileInputStream
    extends InputStream {
        private InputStream actual;
        private IFileStore target;

        LazyFileInputStream(IFileStore target) {
            this.target = target;
        }

        public int available() throws IOException {
            if (this.actual == null) {
                return 0;
            }
            return this.actual.available();
        }

        public void close() throws IOException {
            if (this.actual == null) {
                return;
            }
            this.actual.close();
        }

        private void ensureOpened() throws IOException {
            if (this.actual != null) {
                return;
            }
            if (this.target == null) {
                throw new FileNotFoundException();
            }
            try {
                this.actual = this.target.openInputStream(0, null);
            }
            catch (CoreException e) {
                throw new IOException(e.getMessage());
            }
        }

        public int read() throws IOException {
            this.ensureOpened();
            return this.actual.read();
        }

        public int read(byte[] b, int off, int len) throws IOException {
            this.ensureOpened();
            return this.actual.read(b, off, len);
        }

        public long skip(long n) throws IOException {
            this.ensureOpened();
            return this.actual.skip(n);
        }
    }
}

