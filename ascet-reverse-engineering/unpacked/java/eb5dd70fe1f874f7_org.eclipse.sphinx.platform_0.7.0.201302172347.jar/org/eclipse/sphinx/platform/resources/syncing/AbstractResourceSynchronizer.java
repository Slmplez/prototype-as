/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 */
package org.eclipse.sphinx.platform.resources.syncing;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.resources.ResourceDeltaVisitor;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractResourceSynchronizer<T extends IResourceSyncRequest>
implements IResourceChangeListener {
    private T fSyncRequest;
    protected Set<IResourceSynchronizerDelegate<T>> fSynchronizerDelegates = new HashSet<IResourceSynchronizerDelegate<T>>();
    private int lastEventType;

    public void addDelegate(IResourceSynchronizerDelegate<T> delegate) {
        if (delegate != null) {
            delegate.setSyncRequest(this.getSyncRequest());
            this.fSynchronizerDelegates.add(delegate);
        }
    }

    public void removeDelegate(IResourceSynchronizerDelegate<T> delegate) {
        if (delegate != null) {
            this.fSynchronizerDelegates.remove(delegate);
        }
    }

    protected T getSyncRequest() {
        if (this.fSyncRequest == null) {
            this.fSyncRequest = this.createSyncRequest();
        }
        return this.fSyncRequest;
    }

    protected abstract T createSyncRequest();

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            try {
                switch (event.getType()) {
                    case 2: {
                        this.getSyncRequest().init();
                        this.doPreClose(event);
                        this.getSyncRequest().perform();
                        break;
                    }
                    case 4: {
                        this.getSyncRequest().init();
                        this.doPreDelete(event);
                        this.getSyncRequest().perform();
                        break;
                    }
                    case 1: {
                        if (this.lastEventType != 2 && this.lastEventType != 4) {
                            this.getSyncRequest().init();
                        }
                        this.doPostChange(event);
                        this.getSyncRequest().perform();
                        this.getSyncRequest().dispose();
                        break;
                    }
                    case 8: {
                        this.getSyncRequest().init();
                        this.doPreBuild(event);
                        this.getSyncRequest().perform();
                        this.getSyncRequest().dispose();
                        break;
                    }
                    case 16: {
                        this.getSyncRequest().init();
                        this.doPostBuild(event);
                        this.getSyncRequest().perform();
                        this.getSyncRequest().dispose();
                        break;
                    }
                    case 32: {
                        this.getSyncRequest().init();
                        this.doPreRefresh(event);
                        this.getSyncRequest().perform();
                        this.getSyncRequest().dispose();
                        break;
                    }
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError(Activator.getDefault(), ex);
                this.lastEventType = event.getType();
            }
        }
        finally {
            this.lastEventType = event.getType();
        }
    }

    protected void doPreClose(IResourceChangeEvent event) {
        try {
            IResource resource = event.getResource();
            if (resource instanceof IProject) {
                for (IResourceSynchronizerDelegate<T> delegate : this.fSynchronizerDelegates) {
                    delegate.handleProjectAboutToBeClosed((IProject)resource);
                }
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), ex);
        }
    }

    protected void doPreDelete(IResourceChangeEvent event) {
        try {
            IResource resource = event.getResource();
            if (resource instanceof IProject) {
                for (IResourceSynchronizerDelegate<T> delegate : this.fSynchronizerDelegates) {
                    delegate.handleProjectAboutToBeDeleted((IProject)resource);
                }
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), ex);
        }
    }

    protected void doPostChange(IResourceChangeEvent event) {
        this.visitResourceDelta(event);
    }

    protected final void doPreBuild(IResourceChangeEvent event) {
        this.visitResourceDelta(event);
    }

    protected final void doPostBuild(IResourceChangeEvent event) {
        this.visitResourceDelta(event);
    }

    protected void doPreRefresh(IResourceChangeEvent event) {
    }

    protected final void visitResourceDelta(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                ResourceDeltaVisitor visitor = new ResourceDeltaVisitor(event.getType(), this.fSynchronizerDelegates);
                delta.accept((IResourceDeltaVisitor)visitor);
            }
        }
        catch (Exception ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), ex);
        }
    }
}

