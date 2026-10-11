/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;

public class ExternalPackageFragmentRoot
extends PackageFragmentRoot {
    protected final IPath externalPath;

    protected ExternalPackageFragmentRoot(IPath externalPath, JavaProject project) {
        super(null, project);
        this.externalPath = externalPath;
    }

    protected ExternalPackageFragmentRoot(IResource linkedFolder, IPath externalPath, JavaProject project) {
        super(linkedFolder, project);
        this.externalPath = externalPath == null ? linkedFolder.getLocation() : externalPath;
    }

    protected int determineKind(IResource underlyingResource) {
        return 2;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof ExternalPackageFragmentRoot) {
            ExternalPackageFragmentRoot other = (ExternalPackageFragmentRoot)o;
            return this.externalPath.equals((Object)other.externalPath);
        }
        return false;
    }

    public String getElementName() {
        return this.externalPath.lastSegment();
    }

    public int getKind() {
        return 2;
    }

    int internalKind() throws JavaModelException {
        return 2;
    }

    public IPath getPath() {
        return this.externalPath;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        return null;
    }

    public int hashCode() {
        return this.externalPath.hashCode();
    }

    public boolean isExternal() {
        return true;
    }

    public IResource resource(PackageFragmentRoot root) {
        if (this.resource == null) {
            this.resource = JavaModelManager.getExternalManager().getFolder(this.externalPath);
            return this.resource;
        }
        return super.resource(root);
    }

    protected boolean resourceExists(IResource underlyingResource) {
        if (underlyingResource == null) {
            return false;
        }
        IPath location = underlyingResource.getLocation();
        if (location == null) {
            return false;
        }
        File file = location.toFile();
        if (file == null) {
            return false;
        }
        return file.exists();
    }

    protected void toStringAncestors(StringBuffer buffer) {
    }
}

