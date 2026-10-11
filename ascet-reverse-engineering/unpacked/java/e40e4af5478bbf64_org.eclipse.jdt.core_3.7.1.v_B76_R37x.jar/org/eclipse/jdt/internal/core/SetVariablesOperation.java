/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ChangeClasspathOperation;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Util;

public class SetVariablesOperation
extends ChangeClasspathOperation {
    String[] variableNames;
    IPath[] variablePaths;
    boolean updatePreferences;

    public SetVariablesOperation(String[] variableNames, IPath[] variablePaths, boolean updatePreferences) {
        super(new IJavaElement[]{JavaModelManager.getJavaModelManager().getJavaModel()}, !ResourcesPlugin.getWorkspace().isTreeLocked());
        this.variableNames = variableNames;
        this.variablePaths = variablePaths;
        this.updatePreferences = updatePreferences;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void executeOperation() throws JavaModelException {
        this.checkCanceled();
        try {
            JavaModelManager manager;
            this.beginTask("", 1);
            if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                this.verbose_set_variables();
            }
            if ((manager = JavaModelManager.getJavaModelManager()).variablePutIfInitializingWithSameValue(this.variableNames, this.variablePaths)) {
                return;
            }
            int varLength = this.variableNames.length;
            HashMap<JavaProject, IClasspathEntry[]> affectedProjectClasspaths = new HashMap<JavaProject, IClasspathEntry[]>(5);
            IJavaModel model = this.getJavaModel();
            int discardCount = 0;
            int i = 0;
            while (i < varLength) {
                String variableName = this.variableNames[i];
                IPath oldPath = manager.variableGet(variableName);
                if (oldPath == JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) {
                    oldPath = null;
                }
                if (oldPath != null && oldPath.equals((Object)this.variablePaths[i])) {
                    this.variableNames[i] = null;
                    ++discardCount;
                }
                ++i;
            }
            if (discardCount > 0) {
                if (discardCount == varLength) {
                    return;
                }
                int changedLength = varLength - discardCount;
                String[] changedVariableNames = new String[changedLength];
                IPath[] changedVariablePaths = new IPath[changedLength];
                int i2 = 0;
                int index = 0;
                while (i2 < varLength) {
                    if (this.variableNames[i2] != null) {
                        changedVariableNames[index] = this.variableNames[i2];
                        changedVariablePaths[index] = this.variablePaths[i2];
                        ++index;
                    }
                    ++i2;
                }
                this.variableNames = changedVariableNames;
                this.variablePaths = changedVariablePaths;
                varLength = changedLength;
            }
            if (this.isCanceled()) {
                return;
            }
            IJavaProject[] projects = model.getJavaProjects();
            int i3 = 0;
            int projectLength = projects.length;
            while (i3 < projectLength) {
                JavaProject project = (JavaProject)projects[i3];
                IClasspathEntry[] classpath = project.getRawClasspath();
                int j = 0;
                int cpLength = classpath.length;
                block13: while (j < cpLength) {
                    IClasspathEntry entry = classpath[j];
                    int k = 0;
                    while (k < varLength) {
                        String variableName = this.variableNames[k];
                        if (entry.getEntryKind() == 4) {
                            IPath sourceRootPath;
                            if (variableName.equals(entry.getPath().segment(0))) {
                                affectedProjectClasspaths.put(project, project.getResolvedClasspath());
                                break block13;
                            }
                            IPath sourcePath = entry.getSourceAttachmentPath();
                            if (sourcePath != null && variableName.equals(sourcePath.segment(0)) || (sourceRootPath = entry.getSourceAttachmentRootPath()) != null && variableName.equals(sourceRootPath.segment(0))) {
                                affectedProjectClasspaths.put(project, project.getResolvedClasspath());
                                break block13;
                            }
                        }
                        ++k;
                    }
                    ++j;
                }
                ++i3;
            }
            i3 = 0;
            while (i3 < varLength) {
                manager.variablePut(this.variableNames[i3], this.variablePaths[i3]);
                if (this.updatePreferences) {
                    manager.variablePreferencesPut(this.variableNames[i3], this.variablePaths[i3]);
                }
                ++i3;
            }
            if (affectedProjectClasspaths.isEmpty()) return;
            String[] dbgVariableNames = this.variableNames;
            try {
                Iterator projectsToUpdate = affectedProjectClasspaths.keySet().iterator();
                while (projectsToUpdate.hasNext()) {
                    if (this.progressMonitor != null && this.progressMonitor.isCanceled()) {
                        return;
                    }
                    JavaProject affectedProject = (JavaProject)projectsToUpdate.next();
                    if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                        this.verbose_update_project(dbgVariableNames, affectedProject);
                    }
                    ClasspathChange classpathChange = affectedProject.getPerProjectInfo().resetResolvedClasspath();
                    this.classpathChanged(classpathChange, true);
                    if (!this.canChangeResources) continue;
                    affectedProject.getProject().touch(this.progressMonitor);
                }
                return;
            }
            catch (CoreException e) {
                if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                    this.verbose_failure(dbgVariableNames);
                    e.printStackTrace();
                }
                if (!(e instanceof JavaModelException)) throw new JavaModelException(e);
                throw (JavaModelException)e;
            }
        }
        finally {
            this.done();
        }
    }

    private void verbose_failure(String[] dbgVariableNames) {
        Util.verbose("CPVariable SET  - FAILED DUE TO EXCEPTION\n\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(dbgVariableNames), System.err);
    }

    private void verbose_update_project(String[] dbgVariableNames, JavaProject affectedProject) {
        Util.verbose("CPVariable SET  - updating affected project due to setting variables\n\tproject: " + affectedProject.getElementName() + '\n' + "\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(dbgVariableNames));
    }

    private void verbose_set_variables() {
        Util.verbose("CPVariable SET  - setting variables\n\tvariables: " + org.eclipse.jdt.internal.compiler.util.Util.toString(this.variableNames) + '\n' + "\tvalues: " + org.eclipse.jdt.internal.compiler.util.Util.toString(this.variablePaths));
    }
}

