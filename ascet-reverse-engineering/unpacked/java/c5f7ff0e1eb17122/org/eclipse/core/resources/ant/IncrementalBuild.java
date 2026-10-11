/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.resources.ant;

import java.util.Hashtable;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public class IncrementalBuild
extends Task {
    private String builder;
    private String project;
    private int kind = 10;
    public static final String KIND_INCREMENTAL = "incremental";
    public static final String KIND_FULL = "full";
    public static final String KIND_AUTO = "auto";
    public static final String KIND_CLEAN = "clean";

    public void execute() throws BuildException {
        try {
            IProgressMonitor monitor = null;
            Hashtable references = this.getProject().getReferences();
            if (references != null) {
                monitor = (IProgressMonitor)references.get("eclipse.progress.monitor");
            }
            if (this.project == null) {
                ResourcesPlugin.getWorkspace().build(this.kind, monitor);
            } else {
                IProject targetProject = ResourcesPlugin.getWorkspace().getRoot().getProject(this.project);
                if (this.builder == null) {
                    targetProject.build(this.kind, monitor);
                } else {
                    targetProject.build(this.kind, this.builder, null, monitor);
                }
            }
        }
        catch (CoreException e) {
            throw new BuildException((Throwable)e);
        }
    }

    public void setBuilder(String value) {
        this.builder = value;
    }

    public void setKind(String value) {
        if (KIND_FULL.equalsIgnoreCase(value)) {
            this.kind = 6;
        } else if (KIND_AUTO.equalsIgnoreCase(value)) {
            this.kind = 9;
        } else if (KIND_CLEAN.equalsIgnoreCase(value)) {
            this.kind = 15;
        } else if (KIND_INCREMENTAL.equalsIgnoreCase(value)) {
            this.kind = 10;
        }
    }

    public void setProject(String value) {
        this.project = value;
    }
}

