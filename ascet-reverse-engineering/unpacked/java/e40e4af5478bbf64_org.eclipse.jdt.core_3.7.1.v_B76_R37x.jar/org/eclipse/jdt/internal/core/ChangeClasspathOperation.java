/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.ClasspathValidation;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.ExternalFolderChange;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ProjectReferenceChange;

public abstract class ChangeClasspathOperation
extends JavaModelOperation {
    protected boolean canChangeResources;

    public ChangeClasspathOperation(IJavaElement[] elements, boolean canChangeResources) {
        super(elements);
        this.canChangeResources = canChangeResources;
    }

    protected boolean canModifyRoots() {
        return true;
    }

    protected void classpathChanged(ClasspathChange change, boolean refreshExternalFolder) throws JavaModelException {
        JavaProject project = change.project;
        project.resetCaches();
        if (this.canChangeResources) {
            if (this.isTopLevelOperation() && !ResourcesPlugin.getWorkspace().isTreeLocked()) {
                new ClasspathValidation(project).validate();
            }
            new ProjectReferenceChange(project, change.oldResolvedClasspath).updateProjectReferencesIfNecessary();
            new ExternalFolderChange(project, change.oldResolvedClasspath).updateExternalFoldersIfNecessary(refreshExternalFolder, null);
        } else {
            DeltaProcessingState state = JavaModelManager.getDeltaState();
            JavaElementDelta delta = new JavaElementDelta(this.getJavaModel());
            int result = change.generateDelta(delta, true);
            if ((result & 1) != 0) {
                this.addDelta(delta);
                state.rootsAreStale = true;
                change.requestIndexing();
                state.addClasspathValidation(project);
            }
            if ((result & 2) != 0) {
                state.addProjectReferenceChange(project, change.oldResolvedClasspath);
            }
            if ((result & 4) != 0) {
                state.addExternalFolderChange(project, change.oldResolvedClasspath);
            }
        }
    }

    protected ISchedulingRule getSchedulingRule() {
        return null;
    }

    public boolean isReadOnly() {
        return !this.canChangeResources;
    }
}

