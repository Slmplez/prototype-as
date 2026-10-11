/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JarPackageFragment;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.MultiOperation;
import org.eclipse.jdt.internal.core.util.Messages;

public class DeleteResourceElementsOperation
extends MultiOperation {
    protected DeleteResourceElementsOperation(IJavaElement[] elementsToProcess, boolean force) {
        super(elementsToProcess, force);
    }

    private void deletePackageFragment(IPackageFragment frag) throws JavaModelException {
        IResource res = ((JavaElement)((Object)frag)).resource();
        if (res != null) {
            IResource fragResource;
            IResource[] remainingFiles;
            IJavaElement[] childrenOfInterest = frag.getChildren();
            if (childrenOfInterest.length > 0) {
                IResource[] resources = new IResource[childrenOfInterest.length];
                int i = 0;
                while (i < childrenOfInterest.length) {
                    resources[i] = ((JavaElement)childrenOfInterest[i]).resource();
                    ++i;
                }
                this.deleteResources(resources, this.force);
            }
            Object[] nonJavaResources = frag.getNonJavaResources();
            int actualResourceCount = 0;
            int i = 0;
            int max = nonJavaResources.length;
            while (i < max) {
                if (nonJavaResources[i] instanceof IResource) {
                    ++actualResourceCount;
                }
                ++i;
            }
            IResource[] actualNonJavaResources = new IResource[actualResourceCount];
            int i2 = 0;
            int max2 = nonJavaResources.length;
            int index = 0;
            while (i2 < max2) {
                if (nonJavaResources[i2] instanceof IResource) {
                    actualNonJavaResources[index++] = (IResource)nonJavaResources[i2];
                }
                ++i2;
            }
            this.deleteResources(actualNonJavaResources, this.force);
            try {
                remainingFiles = ((IContainer)res).members();
            }
            catch (CoreException ce) {
                throw new JavaModelException(ce);
            }
            boolean isEmpty = true;
            int i3 = 0;
            int length = remainingFiles.length;
            while (i3 < length) {
                IResource file = remainingFiles[i3];
                if (file instanceof IFile && Util.isClassFileName(file.getName())) {
                    this.deleteResource(file, 3);
                } else {
                    isEmpty = false;
                }
                ++i3;
            }
            if (isEmpty && !frag.isDefaultPackage() && (fragResource = ((JavaElement)((Object)frag)).resource()) != null) {
                this.deleteEmptyPackageFragment(frag, false, (IResource)fragResource.getParent());
            }
        }
    }

    protected String getMainTaskName() {
        return Messages.operation_deleteResourceProgress;
    }

    protected void processElement(IJavaElement element) throws JavaModelException {
        switch (element.getElementType()) {
            case 5: 
            case 6: {
                this.deleteResource(element.getResource(), this.force ? 3 : 2);
                break;
            }
            case 4: {
                this.deletePackageFragment((IPackageFragment)element);
                break;
            }
            default: {
                throw new JavaModelException(new JavaModelStatus(967, element));
            }
        }
        if (element instanceof IOpenable) {
            ((IOpenable)((Object)element)).close();
        }
    }

    protected void verify(IJavaElement element) throws JavaModelException {
        int type;
        if (element == null || !element.exists()) {
            this.error(969, element);
        }
        if ((type = element.getElementType()) <= 3 || type > 5) {
            this.error(967, element);
        } else if (type == 4 && element instanceof JarPackageFragment) {
            this.error(967, element);
        }
        IResource resource = ((JavaElement)element).resource();
        if (resource instanceof IFolder && resource.isLinked()) {
            this.error(995, element);
        }
    }
}

