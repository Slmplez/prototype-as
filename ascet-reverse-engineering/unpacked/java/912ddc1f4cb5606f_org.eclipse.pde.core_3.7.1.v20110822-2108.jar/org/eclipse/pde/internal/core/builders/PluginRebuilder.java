/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.BundleDelta
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateDelta
 */
package org.eclipse.pde.internal.core.builders;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.BundleDelta;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.IStateDeltaListener;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.WorkspaceModelManager;

public class PluginRebuilder
implements IStateDeltaListener,
IResourceChangeListener {
    private Set fProjectNames = new HashSet();
    private boolean fTouchWorkspace = false;

    public void start() {
        PDECore.getDefault().getModelManager().addStateDeltaListener(this);
        JavaCore.addPreProcessingResourceChangedListener((IResourceChangeListener)this, (int)8);
    }

    public void stop() {
        PDECore.getDefault().getModelManager().removeStateDeltaListener(this);
        JavaCore.removePreProcessingResourceChangedListener((IResourceChangeListener)this);
    }

    public void resourceChanged(IResourceChangeEvent event) {
        if (event.getType() == 8) {
            IWorkspaceRoot root = PDECore.getWorkspace().getRoot();
            if (this.fTouchWorkspace) {
                IProject[] projects = root.getProjects();
                int i = 0;
                while (i < projects.length) {
                    this.touchProject(projects[i]);
                    ++i;
                }
            } else {
                Iterator iter = this.fProjectNames.iterator();
                while (iter.hasNext()) {
                    this.touchProject(root.getProject((String)iter.next()));
                }
            }
            this.fTouchWorkspace = false;
            this.fProjectNames.clear();
        }
    }

    private void touchProject(IProject project) {
        if (WorkspaceModelManager.isPluginProject(project) && !WorkspaceModelManager.isBinaryProject(project)) {
            try {
                project.setSessionProperty(PDECore.TOUCH_PROJECT, (Object)Boolean.TRUE);
                project.touch((IProgressMonitor)new NullProgressMonitor());
            }
            catch (CoreException e) {
                PDECore.log(e);
            }
        }
    }

    public void stateChanged(State newState) {
        this.fTouchWorkspace = true;
        this.fProjectNames.clear();
    }

    public void stateResolved(StateDelta delta) {
        if (delta == null) {
            this.fTouchWorkspace = true;
            this.fProjectNames.clear();
        } else {
            BundleDelta[] deltas = delta.getChanges();
            int i = 0;
            while (i < deltas.length) {
                int type = deltas[i].getType();
                if ((type & 4) != 4 && (type & 1) != 1 && (type & 2) != 2) {
                    IResource resource;
                    IPluginModelBase model = PluginRegistry.findModel(deltas[i].getBundle());
                    IResource iResource = resource = model == null ? null : model.getUnderlyingResource();
                    if (resource != null) {
                        this.fProjectNames.add(resource.getProject().getName());
                    }
                }
                ++i;
            }
        }
    }
}

