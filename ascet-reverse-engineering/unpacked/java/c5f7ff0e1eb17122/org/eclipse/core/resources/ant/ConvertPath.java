/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.types.Path
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.resources.ant;

import java.io.File;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.types.Path;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.ant.Policy;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;

public class ConvertPath
extends Task {
    private IPath fileSystemPath = null;
    private IPath resourcePath = null;
    private String property = null;
    private String pathID = null;

    public void execute() throws BuildException {
        this.validateAttributes();
        if (this.fileSystemPath == null) {
            this.convertResourcePathToFileSystemPath(this.resourcePath);
        } else {
            this.convertFileSystemPathToResourcePath(this.fileSystemPath);
        }
    }

    protected void convertFileSystemPathToResourcePath(IPath path) {
        IWorkspaceRoot resource;
        if (Platform.getLocation().equals((Object)path)) {
            resource = ResourcesPlugin.getWorkspace().getRoot();
        } else {
            resource = ResourcesPlugin.getWorkspace().getRoot().getContainerForLocation(path);
            if (resource == null) {
                throw new BuildException(Policy.bind("exception.noProjectMatchThePath", this.fileSystemPath.toOSString()));
            }
        }
        if (this.property != null) {
            this.getProject().setUserProperty(this.property, resource.getFullPath().toString());
        }
        if (this.pathID != null) {
            Path newPath = new Path(this.getProject(), resource.getFullPath().toString());
            this.getProject().addReference(this.pathID, (Object)newPath);
        }
    }

    protected void convertResourcePathToFileSystemPath(IPath path) {
        IWorkspaceRoot resource = null;
        switch (path.segmentCount()) {
            case 0: {
                resource = ResourcesPlugin.getWorkspace().getRoot();
                break;
            }
            case 1: {
                resource = ResourcesPlugin.getWorkspace().getRoot().getProject(path.lastSegment());
                break;
            }
            default: {
                resource = ResourcesPlugin.getWorkspace().getRoot().getFile(path);
            }
        }
        if (resource.getLocation() == null) {
            throw new BuildException(Policy.bind("exception.pathNotValid", path.toString()));
        }
        if (this.property != null) {
            this.getProject().setUserProperty(this.property, resource.getLocation().toOSString());
        }
        if (this.pathID != null) {
            Path newPath = new Path(this.getProject(), resource.getLocation().toOSString());
            this.getProject().addReference(this.pathID, (Object)newPath);
        }
    }

    public void setFileSystemPath(File value) {
        if (this.resourcePath != null) {
            throw new BuildException(Policy.bind("exception.cantUseBoth"));
        }
        this.fileSystemPath = new org.eclipse.core.runtime.Path(value.toString());
    }

    public void setResourcePath(String value) {
        if (this.fileSystemPath != null) {
            throw new BuildException(Policy.bind("exception.cantUseBoth"));
        }
        this.resourcePath = new org.eclipse.core.runtime.Path(value);
    }

    public void setProperty(String value) {
        this.property = value;
    }

    public void setPathId(String value) {
        this.pathID = value;
    }

    protected void validateAttributes() throws BuildException {
        if (this.property == null && this.pathID == null) {
            throw new BuildException(Policy.bind("exception.propertyAndPathIdNotSpecified"));
        }
        if (this.resourcePath != null && (!this.resourcePath.isValidPath(this.resourcePath.toString()) || this.resourcePath.isEmpty())) {
            throw new BuildException(Policy.bind("exception.invalidPath", this.resourcePath.toOSString()));
        }
        if (this.fileSystemPath != null && !this.fileSystemPath.isValidPath(this.fileSystemPath.toOSString())) {
            throw new BuildException(Policy.bind("exception.invalidPath", this.fileSystemPath.toOSString()));
        }
        if (this.resourcePath == null && this.fileSystemPath == null) {
            throw new BuildException(Policy.bind("exception.mustHaveOneAttribute"));
        }
    }
}

