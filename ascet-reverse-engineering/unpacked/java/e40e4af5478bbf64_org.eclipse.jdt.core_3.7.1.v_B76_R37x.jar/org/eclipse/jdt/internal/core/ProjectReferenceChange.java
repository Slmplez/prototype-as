/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Util;

public class ProjectReferenceChange {
    private JavaProject project;
    private IClasspathEntry[] oldResolvedClasspath;

    public ProjectReferenceChange(JavaProject project, IClasspathEntry[] oldResolvedClasspath) {
        this.project = project;
        this.oldResolvedClasspath = oldResolvedClasspath;
    }

    public void updateProjectReferencesIfNecessary() throws JavaModelException {
        block11: {
            String[] oldRequired = this.oldResolvedClasspath == null ? CharOperation.NO_STRINGS : this.project.projectPrerequisites(this.oldResolvedClasspath);
            IClasspathEntry[] newResolvedClasspath = this.project.getResolvedClasspath();
            String[] newRequired = this.project.projectPrerequisites(newResolvedClasspath);
            final IProject projectResource = this.project.getProject();
            try {
                int newSize;
                HashSet newReferences;
                block10: {
                    String projectName;
                    IProject[] projectReferences = projectResource.getDescription().getDynamicReferences();
                    HashSet<String> oldReferences = new HashSet<String>(projectReferences.length);
                    int i = 0;
                    while (i < projectReferences.length) {
                        String projectName2 = projectReferences[i].getName();
                        oldReferences.add(projectName2);
                        ++i;
                    }
                    newReferences = (HashSet)oldReferences.clone();
                    int i2 = 0;
                    while (i2 < oldRequired.length) {
                        projectName = oldRequired[i2];
                        newReferences.remove(projectName);
                        ++i2;
                    }
                    i2 = 0;
                    while (i2 < newRequired.length) {
                        projectName = newRequired[i2];
                        newReferences.add(projectName);
                        ++i2;
                    }
                    newSize = newReferences.size();
                    if (oldReferences.size() == newSize) {
                        Iterator iter = newReferences.iterator();
                        while (iter.hasNext()) {
                            if (oldReferences.contains(iter.next())) {
                                continue;
                            }
                            break block10;
                        }
                        return;
                    }
                }
                String[] requiredProjectNames = new String[newSize];
                int index = 0;
                Iterator iter = newReferences.iterator();
                while (iter.hasNext()) {
                    requiredProjectNames[index++] = (String)iter.next();
                }
                Util.sort(requiredProjectNames);
                final IProject[] requiredProjectArray = new IProject[newSize];
                IWorkspaceRoot wksRoot = projectResource.getWorkspace().getRoot();
                int i = 0;
                while (i < newSize) {
                    requiredProjectArray[i] = wksRoot.getProject(requiredProjectNames[i]);
                    ++i;
                }
                IWorkspace workspace = projectResource.getWorkspace();
                ISchedulingRule rule = workspace.getRuleFactory().modifyRule((IResource)projectResource);
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        IProjectDescription description = projectResource.getDescription();
                        description.setDynamicReferences(requiredProjectArray);
                        projectResource.setDescription(description, 64, null);
                    }
                };
                workspace.run(runnable, rule, 1, null);
            }
            catch (CoreException e) {
                if (" ".equals(this.project.getElementName())) break block11;
                throw new JavaModelException(e);
            }
        }
    }

    public String toString() {
        return "ProjectRefenceChange: " + this.project.getElementName();
    }
}

