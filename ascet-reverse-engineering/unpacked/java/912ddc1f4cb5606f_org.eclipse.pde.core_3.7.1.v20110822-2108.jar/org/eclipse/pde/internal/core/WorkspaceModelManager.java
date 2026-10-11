/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.team.core.RepositoryProvider
 */
package org.eclipse.pde.internal.core;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IModel;
import org.eclipse.pde.internal.core.AbstractModelManager;
import org.eclipse.pde.internal.core.BinaryRepositoryProvider;
import org.eclipse.pde.internal.core.ModelProviderEvent;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.team.core.RepositoryProvider;

public abstract class WorkspaceModelManager
extends AbstractModelManager
implements IResourceChangeListener,
IResourceDeltaVisitor {
    protected Map fModels = null;
    private ArrayList fChangedModels;

    public static boolean isPluginProject(IProject project) {
        if (project.isOpen()) {
            return PDEProject.getManifest(project).exists() || PDEProject.getPluginXml(project).exists() || PDEProject.getFragmentXml(project).exists();
        }
        return false;
    }

    public static boolean isFeatureProject(IProject project) {
        return project.isOpen() && PDEProject.getFeatureXml(project).exists();
    }

    public static boolean isBinaryProject(IProject project) {
        try {
            String binary;
            if (project.isOpen() && (binary = project.getPersistentProperty(PDECore.EXTERNAL_PROJECT_PROPERTY)) != null) {
                RepositoryProvider provider = RepositoryProvider.getProvider((IProject)project);
                return provider == null || provider instanceof BinaryRepositoryProvider;
            }
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
        return false;
    }

    public static boolean isUnsharedProject(IProject project) {
        return RepositoryProvider.getProvider((IProject)project) == null || WorkspaceModelManager.isBinaryProject(project);
    }

    protected synchronized void initialize() {
        if (this.fModels != null) {
            return;
        }
        this.fModels = Collections.synchronizedMap(new HashMap());
        IProject[] projects = PDECore.getWorkspace().getRoot().getProjects();
        int i = 0;
        while (i < projects.length) {
            if (this.isInterestingProject(projects[i])) {
                this.createModel(projects[i], false);
            }
            ++i;
        }
        this.addListeners();
    }

    protected abstract boolean isInterestingProject(IProject var1);

    protected abstract void createModel(IProject var1, boolean var2);

    protected abstract void addListeners();

    protected Object getModel(IProject project) {
        this.initialize();
        return this.fModels.get(project);
    }

    protected Object[] getModels() {
        this.initialize();
        return this.fModels.values().toArray();
    }

    public void resourceChanged(IResourceChangeEvent event) {
        switch (event.getType()) {
            case 1: {
                this.handleResourceDelta(event.getDelta());
                this.processModelChanges();
                break;
            }
            case 2: {
                this.removeModel((IProject)event.getResource());
                this.processModelChanges();
            }
        }
    }

    private void handleResourceDelta(IResourceDelta delta) {
        try {
            delta.accept((IResourceDeltaVisitor)this);
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
    }

    public boolean visit(IResourceDelta delta) throws CoreException {
        IResource resource;
        if (delta != null && !(resource = delta.getResource()).isDerived()) {
            switch (resource.getType()) {
                case 8: {
                    return true;
                }
                case 4: {
                    IProject project = (IProject)resource;
                    if (this.isInterestingProject(project) && (delta.getKind() == 1 || (delta.getFlags() & 0x4000) != 0)) {
                        this.createModel(project, true);
                        return false;
                    }
                    if (delta.getKind() == 2) {
                        this.removeModel(project);
                        return false;
                    }
                    return true;
                }
                case 2: {
                    return this.isInterestingFolder((IFolder)resource);
                }
                case 1: {
                    if (!this.isContentChange(delta)) break;
                    this.handleFileDelta(delta);
                    return false;
                }
            }
        }
        return false;
    }

    private boolean isContentChange(IResourceDelta delta) {
        int kind = delta.getKind();
        return kind == 1 || kind == 2 || kind == 4 && (delta.getFlags() & 0x100) != 0;
    }

    protected boolean isInterestingFolder(IFolder folder) {
        return false;
    }

    protected abstract void handleFileDelta(IResourceDelta var1);

    protected Object removeModel(IProject project) {
        Object model = this.fModels != null ? this.fModels.remove(project) : null;
        this.addChange(model, 2);
        return model;
    }

    protected void addChange(Object model, int eventType) {
        if (model instanceof IModel) {
            ModelChange change;
            if (this.fChangedModels == null) {
                this.fChangedModels = new ArrayList();
            }
            if (!this.fChangedModels.contains(change = new ModelChange((IModel)model, eventType))) {
                this.fChangedModels.add(change);
            }
        }
    }

    protected void processModelChanges() {
        this.processModelChanges("org.eclipse.pde.core.IModelProviderEvent", this.fChangedModels);
        this.fChangedModels = null;
    }

    protected void processModelChanges(String changeId, ArrayList changedModels) {
        if (changedModels == null) {
            return;
        }
        if (changedModels.size() == 0) {
            return;
        }
        ArrayList<IModel> added = new ArrayList<IModel>();
        ArrayList<IModel> removed = new ArrayList<IModel>();
        ArrayList<IModel> changed = new ArrayList<IModel>();
        ListIterator li = changedModels.listIterator();
        while (li.hasNext()) {
            ModelChange change = (ModelChange)li.next();
            switch (change.type) {
                case 1: {
                    added.add(change.model);
                    break;
                }
                case 2: {
                    removed.add(change.model);
                    break;
                }
                case 4: {
                    changed.add(change.model);
                }
            }
        }
        int type = 0;
        if (added.size() > 0) {
            type |= 1;
        }
        if (removed.size() > 0) {
            type |= 2;
        }
        if (changed.size() > 0) {
            type |= 4;
        }
        if (type != 0) {
            this.createAndFireEvent(changeId, type, added, removed, changed);
        }
    }

    protected void loadModel(IModel model, boolean reload) {
        block14: {
            IFile file = (IFile)model.getUnderlyingResource();
            InputStream stream = null;
            try {
                try {
                    stream = new BufferedInputStream(file.getContents(true));
                    if (reload) {
                        model.reload(stream, false);
                        break block14;
                    }
                    model.load(stream, false);
                }
                catch (CoreException e) {
                    PDECore.logException(e);
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                    }
                    catch (IOException e2) {
                        PDECore.log(e2);
                    }
                }
            }
            finally {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException e) {
                    PDECore.log(e);
                }
            }
        }
    }

    protected void createAndFireEvent(String eventId, int type, Collection added, Collection removed, Collection changed) {
        if (eventId.equals("org.eclipse.pde.core.IModelProviderEvent")) {
            ModelProviderEvent event = new ModelProviderEvent(this, type, added.toArray(new IModel[added.size()]), removed.toArray(new IModel[removed.size()]), changed.toArray(new IModel[changed.size()]));
            this.fireModelProviderEvent(event);
        }
    }

    class ModelChange {
        IModel model;
        int type;

        public ModelChange(IModel model, int type) {
            this.model = model;
            this.type = type;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ModelChange) {
                ModelChange change = (ModelChange)obj;
                IProject project = change.model.getUnderlyingResource().getProject();
                int type = change.type;
                return this.model.getUnderlyingResource().getProject().equals((Object)project) && this.type == type;
            }
            return false;
        }
    }
}

