/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;

public class ModelUpdater {
    HashSet projectsToUpdate = new HashSet();

    protected void addToParentInfo(Openable child) {
        Openable parent = (Openable)child.getParent();
        if (parent != null && parent.isOpen()) {
            try {
                OpenableElementInfo info = (OpenableElementInfo)parent.getElementInfo();
                info.addChild(child);
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    protected static void close(Openable element) {
        try {
            element.close();
        }
        catch (JavaModelException javaModelException) {}
    }

    protected void elementAdded(Openable element) {
        int elementType = element.getElementType();
        if (elementType == 2) {
            this.addToParentInfo(element);
            this.projectsToUpdate.add(element);
        } else {
            this.addToParentInfo(element);
            ModelUpdater.close(element);
        }
        switch (elementType) {
            case 3: {
                this.projectsToUpdate.add(element.getJavaProject());
                break;
            }
            case 4: {
                JavaProject project = (JavaProject)element.getJavaProject();
                project.resetCaches();
            }
        }
    }

    protected void elementChanged(Openable element) {
        ModelUpdater.close(element);
    }

    protected void elementRemoved(Openable element) {
        if (element.isOpen()) {
            ModelUpdater.close(element);
        }
        this.removeFromParentInfo(element);
        int elementType = element.getElementType();
        switch (elementType) {
            case 1: {
                JavaModelManager.getIndexManager().reset();
                break;
            }
            case 2: {
                JavaModelManager manager = JavaModelManager.getJavaModelManager();
                JavaProject javaProject = (JavaProject)element;
                manager.removePerProjectInfo(javaProject, true);
                manager.containerRemove(javaProject);
                break;
            }
            case 3: {
                this.projectsToUpdate.add(element.getJavaProject());
                break;
            }
            case 4: {
                JavaProject project = (JavaProject)element.getJavaProject();
                project.resetCaches();
            }
        }
    }

    public void processJavaDelta(IJavaElementDelta delta) {
        try {
            this.traverseDelta(delta, null, null);
            Iterator iterator = this.projectsToUpdate.iterator();
            while (iterator.hasNext()) {
                JavaProject project = (JavaProject)iterator.next();
                project.resetCaches();
            }
        }
        finally {
            this.projectsToUpdate = new HashSet();
        }
    }

    protected void removeFromParentInfo(Openable child) {
        Openable parent = (Openable)child.getParent();
        if (parent != null && parent.isOpen()) {
            try {
                OpenableElementInfo info = (OpenableElementInfo)parent.getElementInfo();
                info.removeChild(child);
            }
            catch (JavaModelException javaModelException) {}
        }
    }

    protected void traverseDelta(IJavaElementDelta delta, IPackageFragmentRoot root, IJavaProject project) {
        boolean processChildren = true;
        Openable element = (Openable)delta.getElement();
        switch (element.getElementType()) {
            case 2: {
                project = (IJavaProject)((Object)element);
                break;
            }
            case 3: {
                root = (IPackageFragmentRoot)((Object)element);
                break;
            }
            case 5: {
                CompilationUnit cu = (CompilationUnit)element;
                if (cu.isWorkingCopy() && !cu.isPrimary()) {
                    return;
                }
            }
            case 6: {
                processChildren = false;
            }
        }
        switch (delta.getKind()) {
            case 1: {
                this.elementAdded(element);
                break;
            }
            case 2: {
                this.elementRemoved(element);
                break;
            }
            case 4: {
                if ((delta.getFlags() & 1) == 0) break;
                this.elementChanged(element);
            }
        }
        if (processChildren) {
            IJavaElementDelta[] children = delta.getAffectedChildren();
            int i = 0;
            while (i < children.length) {
                IJavaElementDelta childDelta = children[i];
                this.traverseDelta(childDelta, root, project);
                ++i;
            }
        }
    }
}

