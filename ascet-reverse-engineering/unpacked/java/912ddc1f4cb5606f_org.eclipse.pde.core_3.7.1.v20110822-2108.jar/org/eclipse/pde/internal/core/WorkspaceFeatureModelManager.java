/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 */
package org.eclipse.pde.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.WorkspaceModelManager;
import org.eclipse.pde.internal.core.feature.WorkspaceFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.project.PDEProject;

public class WorkspaceFeatureModelManager
extends WorkspaceModelManager {
    protected boolean isInterestingProject(IProject project) {
        return WorkspaceFeatureModelManager.isFeatureProject(project);
    }

    protected void createModel(IProject project, boolean notify) {
        IFile featureXml = PDEProject.getFeatureXml(project);
        if (featureXml.exists()) {
            WorkspaceFeatureModel model = new WorkspaceFeatureModel(featureXml);
            this.loadModel(model, false);
            if (this.fModels == null) {
                this.fModels = new HashMap();
            }
            this.fModels.put(project, model);
            if (notify) {
                this.addChange(model, 1);
            }
        }
    }

    protected void handleFileDelta(IResourceDelta delta) {
        IProject project;
        IFile featureXml;
        IFile file = (IFile)delta.getResource();
        if (file.equals((Object)(featureXml = PDEProject.getFeatureXml(project = file.getProject())))) {
            Object model = this.getModel(project);
            int kind = delta.getKind();
            if (kind == 2 && model != null) {
                this.removeModel(project);
            } else if (kind == 1 || model == null) {
                this.createModel(file.getProject(), true);
            } else if (kind == 4 && (0x100 & delta.getFlags()) != 0) {
                this.loadModel((IFeatureModel)model, true);
                this.addChange(model, 4);
            }
        }
    }

    protected void addListeners() {
        int event = 3;
        PDECore.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, event);
    }

    protected void removeListeners() {
        PDECore.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        super.removeListeners();
    }

    protected IFeatureModel[] getFeatureModels() {
        this.initialize();
        return this.fModels.values().toArray(new IFeatureModel[this.fModels.size()]);
    }

    protected IFeatureModel getFeatureModel(IProject project) {
        return (IFeatureModel)this.getModel(project);
    }
}

