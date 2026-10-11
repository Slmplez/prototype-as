/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.PackageFragmentRootInfo;

class PackageFragmentInfo
extends OpenableElementInfo {
    protected Object[] nonJavaResources = null;

    boolean containsJavaResources() {
        return this.children.length != 0;
    }

    Object[] getNonJavaResources(IResource underlyingResource, PackageFragmentRoot rootHandle) {
        if (this.nonJavaResources == null) {
            try {
                this.nonJavaResources = PackageFragmentRootInfo.computeFolderNonJavaResources(rootHandle, (IContainer)underlyingResource, rootHandle.fullInclusionPatternChars(), rootHandle.fullExclusionPatternChars());
            }
            catch (JavaModelException javaModelException) {
                this.nonJavaResources = NO_NON_JAVA_RESOURCES;
            }
        }
        return this.nonJavaResources;
    }

    void setNonJavaResources(Object[] resources) {
        this.nonJavaResources = resources;
    }
}

