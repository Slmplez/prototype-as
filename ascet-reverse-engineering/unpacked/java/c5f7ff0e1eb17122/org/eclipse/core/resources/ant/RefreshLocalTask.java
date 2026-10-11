/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.resources.ant;

import java.util.Hashtable;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.ant.Policy;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;

public class RefreshLocalTask
extends Task {
    public static final String DEPTH_ZERO = "zero";
    public static final String DEPTH_ONE = "one";
    public static final String DEPTH_INFINITE = "infinite";
    protected IResource resource;
    protected int depth = 2;

    public void execute() throws BuildException {
        if (this.resource == null) {
            throw new BuildException(Policy.bind("exception.resourceNotSpecified"));
        }
        try {
            IProgressMonitor monitor = null;
            Hashtable references = this.getProject().getReferences();
            if (references != null) {
                monitor = (IProgressMonitor)references.get("eclipse.progress.monitor");
            }
            this.resource.refreshLocal(this.depth, monitor);
        }
        catch (CoreException e) {
            throw new BuildException((Throwable)e);
        }
    }

    public void setDepth(String value) {
        if (DEPTH_ZERO.equalsIgnoreCase(value)) {
            this.depth = 0;
        } else if (DEPTH_ONE.equalsIgnoreCase(value)) {
            this.depth = 1;
        } else if (DEPTH_INFINITE.equalsIgnoreCase(value)) {
            this.depth = 2;
        }
    }

    public void setResource(String value) {
        Path path = new Path(value);
        this.resource = ResourcesPlugin.getWorkspace().getRoot().findMember((IPath)path);
        if (this.resource == null) {
            if (path.segmentCount() > 1) {
                this.resource = ResourcesPlugin.getWorkspace().getRoot().getFolder((IPath)path);
            } else {
                this.resource = ResourcesPlugin.getWorkspace().getRoot().getProject(value);
                if (!this.resource.exists()) {
                    this.log(Policy.bind("warning.projectDoesNotExist", value), 1);
                }
            }
        }
    }
}

