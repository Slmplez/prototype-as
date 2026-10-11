/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.MultiRule
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ChangeClasspathOperation;
import org.eclipse.jdt.internal.core.ClasspathChange;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;

public class SetClasspathOperation
extends ChangeClasspathOperation {
    IClasspathEntry[] newRawClasspath;
    IClasspathEntry[] referencedEntries;
    IPath newOutputLocation;
    JavaProject project;

    public SetClasspathOperation(JavaProject project, IClasspathEntry[] newRawClasspath, IPath newOutputLocation, boolean canChangeResource) {
        this(project, newRawClasspath, null, newOutputLocation, canChangeResource);
    }

    public SetClasspathOperation(JavaProject project, IClasspathEntry[] newRawClasspath, IClasspathEntry[] referencedEntries, IPath newOutputLocation, boolean canChangeResource) {
        super(new IJavaElement[]{project}, canChangeResource);
        this.project = project;
        this.newRawClasspath = newRawClasspath;
        this.referencedEntries = referencedEntries;
        this.newOutputLocation = newOutputLocation;
    }

    protected void executeOperation() throws JavaModelException {
        this.checkCanceled();
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = this.project.getPerProjectInfo();
            ClasspathChange classpathChange = perProjectInfo.setRawClasspath(this.newRawClasspath, this.referencedEntries, this.newOutputLocation, JavaModelStatus.VERIFIED_OK);
            this.classpathChanged(classpathChange, true);
            if (this.canChangeResources && perProjectInfo.writeAndCacheClasspath(this.project, this.newRawClasspath, this.newOutputLocation)) {
                SetClasspathOperation.setAttribute("hasModifiedResource", "true");
            }
        }
        finally {
            this.done();
        }
    }

    protected ISchedulingRule getSchedulingRule() {
        if (this.canChangeResources) {
            IResourceRuleFactory ruleFactory = ResourcesPlugin.getWorkspace().getRuleFactory();
            return new MultiRule(new ISchedulingRule[]{ruleFactory.modifyRule((IResource)this.project.getProject()), ruleFactory.modifyRule((IResource)JavaModelManager.getExternalManager().getExternalFoldersProject())});
        }
        return super.getSchedulingRule();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(20);
        buffer.append("SetClasspathOperation\n");
        buffer.append(" - classpath : ");
        buffer.append("{");
        int i = 0;
        while (i < this.newRawClasspath.length) {
            if (i > 0) {
                buffer.append(",");
            }
            IClasspathEntry element = this.newRawClasspath[i];
            buffer.append(" ").append(element.toString());
            ++i;
        }
        buffer.append("\n - output location : ");
        buffer.append(this.newOutputLocation.toString());
        return buffer.toString();
    }

    public IJavaModelStatus verify() {
        IJavaModelStatus status = super.verify();
        if (!status.isOK()) {
            return status;
        }
        return ClasspathEntry.validateClasspath(this.project, this.newRawClasspath, this.newOutputLocation);
    }
}

