/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.internal.core.FeatureModelManager;
import org.eclipse.pde.internal.core.IFeatureModelDelta;
import org.eclipse.pde.internal.core.IFeatureModelListener;
import org.eclipse.pde.internal.core.IPluginModelListener;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PluginModelDelta;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

public class FeatureRebuilder
implements IFeatureModelListener,
IPluginModelListener,
IResourceChangeListener {
    private boolean fTouchFeatures;

    public void start() {
        PDECore.getDefault().getFeatureModelManager().addFeatureModelListener(this);
        PDECore.getDefault().getModelManager().addPluginModelListener(this);
        JavaCore.addPreProcessingResourceChangedListener((IResourceChangeListener)this, (int)8);
    }

    public void stop() {
        PDECore.getDefault().getFeatureModelManager().removeFeatureModelListener(this);
        PDECore.getDefault().getModelManager().removePluginModelListener(this);
        JavaCore.removePreProcessingResourceChangedListener((IResourceChangeListener)this);
    }

    public void modelsChanged(IFeatureModelDelta delta) {
        if ((1 & delta.getKind()) != 0 || (2 & delta.getKind()) != 0) {
            this.fTouchFeatures = true;
        }
    }

    public void modelsChanged(PluginModelDelta delta) {
        if ((1 & delta.getKind()) != 0 || (2 & delta.getKind()) != 0) {
            this.fTouchFeatures = true;
        } else {
            ModelEntry[] changed = delta.getChangedEntries();
            if (changed.length > 0 && !changed[0].hasWorkspaceModels()) {
                this.touchFeatures();
            }
        }
    }

    public void resourceChanged(IResourceChangeEvent event) {
        if (event.getType() == 8 && this.fTouchFeatures) {
            this.touchFeatures();
        }
    }

    private void touchFeatures() {
        FeatureModelManager manager = PDECore.getDefault().getFeatureModelManager();
        IFeatureModel[] workspaceFeatures = manager.getWorkspaceModels();
        if (workspaceFeatures.length > 0) {
            NullProgressMonitor monitor = new NullProgressMonitor();
            monitor.beginTask("", workspaceFeatures.length);
            int i = 0;
            while (i < workspaceFeatures.length) {
                try {
                    IResource resource = workspaceFeatures[i].getUnderlyingResource();
                    if (resource != null) {
                        resource.touch((IProgressMonitor)new SubProgressMonitor((IProgressMonitor)monitor, 1));
                    } else {
                        monitor.worked(1);
                    }
                }
                catch (CoreException coreException) {}
                ++i;
            }
        }
        this.fTouchFeatures = false;
    }
}

