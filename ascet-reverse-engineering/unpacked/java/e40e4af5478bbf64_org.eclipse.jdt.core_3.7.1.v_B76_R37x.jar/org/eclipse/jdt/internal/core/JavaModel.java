/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.core.CopyElementsOperation;
import org.eclipse.jdt.internal.core.CopyResourceElementsOperation;
import org.eclipse.jdt.internal.core.DeleteElementsOperation;
import org.eclipse.jdt.internal.core.DeleteResourceElementsOperation;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.MoveElementsOperation;
import org.eclipse.jdt.internal.core.MoveResourceElementsOperation;
import org.eclipse.jdt.internal.core.MultiOperation;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.RenameElementsOperation;
import org.eclipse.jdt.internal.core.RenameResourceElementsOperation;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public class JavaModel
extends Openable
implements IJavaModel {
    public static HashSet existingExternalFiles = new HashSet();
    public static HashSet existingExternalConfirmedFiles = new HashSet();

    protected JavaModel() throws Error {
        super(null);
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) {
        IProject[] projects = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int length = projects.length;
        IJavaElement[] children = new IJavaElement[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            IProject project = projects[i];
            if (JavaProject.hasJavaNature(project)) {
                children[index++] = this.getJavaProject((IResource)project);
            }
            ++i;
        }
        if (index < length) {
            IJavaElement[] iJavaElementArray = children;
            children = new IJavaElement[index];
            System.arraycopy(iJavaElementArray, 0, children, 0, index);
        }
        info.setChildren(children);
        newElements.put(this, info);
        return true;
    }

    public boolean contains(IResource resource) {
        IJavaProject[] projects;
        switch (resource.getType()) {
            case 4: 
            case 8: {
                return true;
            }
        }
        try {
            projects = this.getJavaProjects();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
        int i = 0;
        int length = projects.length;
        while (i < length) {
            JavaProject project = (JavaProject)projects[i];
            if (!project.contains(resource)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void copy(IJavaElement[] elements, IJavaElement[] containers, IJavaElement[] siblings, String[] renamings, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (elements != null && elements.length > 0 && elements[0] != null && elements[0].getElementType() < 7) {
            this.runOperation(new CopyResourceElementsOperation(elements, containers, force), elements, siblings, renamings, monitor);
        } else {
            this.runOperation(new CopyElementsOperation(elements, containers, force), elements, siblings, renamings, monitor);
        }
    }

    protected Object createElementInfo() {
        return new JavaModelInfo();
    }

    public void delete(IJavaElement[] elements, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (elements != null && elements.length > 0 && elements[0] != null && elements[0].getElementType() < 7) {
            new DeleteResourceElementsOperation(elements, force).runOperation(monitor);
        } else {
            new DeleteElementsOperation(elements, force).runOperation(monitor);
        }
    }

    public boolean equals(Object o) {
        if (!(o instanceof JavaModel)) {
            return false;
        }
        return super.equals(o);
    }

    public int getElementType() {
        return 1;
    }

    public static void flushExternalFileCache() {
        existingExternalFiles = new HashSet();
        existingExternalConfirmedFiles = new HashSet();
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '=': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String projectName = memento.nextToken();
                JavaElement project = (JavaElement)((Object)this.getJavaProject(projectName));
                return project.getHandleFromMemento(memento, owner);
            }
        }
        return null;
    }

    protected void getHandleMemento(StringBuffer buff) {
        buff.append(this.getElementName());
    }

    protected char getHandleMementoDelimiter() {
        Assert.isTrue((boolean)false, (String)"Should not be called");
        return '\u0000';
    }

    public IJavaProject getJavaProject(String projectName) {
        return new JavaProject(ResourcesPlugin.getWorkspace().getRoot().getProject(projectName), this);
    }

    public IJavaProject getJavaProject(IResource resource) {
        switch (resource.getType()) {
            case 2: {
                return new JavaProject(((IFolder)resource).getProject(), this);
            }
            case 1: {
                return new JavaProject(((IFile)resource).getProject(), this);
            }
            case 4: {
                return new JavaProject((IProject)resource, this);
            }
        }
        throw new IllegalArgumentException(Messages.element_invalidResourceForProject);
    }

    public IJavaProject[] getJavaProjects() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(2);
        IJavaProject[] array = new IJavaProject[list.size()];
        list.toArray(array);
        return array;
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        return ((JavaModelInfo)this.getElementInfo()).getNonJavaResources();
    }

    public IPath getPath() {
        return Path.ROOT;
    }

    public IResource resource(PackageFragmentRoot root) {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    public IResource getUnderlyingResource() {
        return null;
    }

    public IWorkspace getWorkspace() {
        return ResourcesPlugin.getWorkspace();
    }

    public void move(IJavaElement[] elements, IJavaElement[] containers, IJavaElement[] siblings, String[] renamings, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (elements != null && elements.length > 0 && elements[0] != null && elements[0].getElementType() < 7) {
            this.runOperation(new MoveResourceElementsOperation(elements, containers, force), elements, siblings, renamings, monitor);
        } else {
            this.runOperation(new MoveElementsOperation(elements, containers, force), elements, siblings, renamings, monitor);
        }
    }

    public void refreshExternalArchives(IJavaElement[] elementsScope, IProgressMonitor monitor) throws JavaModelException {
        if (elementsScope == null) {
            elementsScope = new IJavaElement[]{this};
        }
        JavaModelManager.getJavaModelManager().getDeltaProcessor().checkExternalArchiveChanges(elementsScope, monitor);
    }

    public void rename(IJavaElement[] elements, IJavaElement[] destinations, String[] renamings, boolean force, IProgressMonitor monitor) throws JavaModelException {
        MultiOperation op = elements != null && elements.length > 0 && elements[0] != null && elements[0].getElementType() < 7 ? new RenameResourceElementsOperation(elements, destinations, renamings, force) : new RenameElementsOperation(elements, destinations, renamings, force);
        op.runOperation(monitor);
    }

    protected void runOperation(MultiOperation op, IJavaElement[] elements, IJavaElement[] siblings, String[] renamings, IProgressMonitor monitor) throws JavaModelException {
        op.setRenamings(renamings);
        if (siblings != null) {
            int i = 0;
            while (i < elements.length) {
                op.setInsertBefore(elements[i], siblings[i]);
                ++i;
            }
        }
        op.runOperation(monitor);
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        buffer.append("Java Model");
        if (info == null) {
            buffer.append(" (not open)");
        }
    }

    public static Object getTarget(IPath path, boolean checkResourceExistence) {
        IResource target = JavaModel.getWorkspaceTarget(path);
        if (target != null) {
            return target;
        }
        return JavaModel.getExternalTarget(path, checkResourceExistence);
    }

    public static IResource getWorkspaceTarget(IPath path) {
        if (path == null || path.getDevice() != null) {
            return null;
        }
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        if (workspace == null) {
            return null;
        }
        return workspace.getRoot().findMember(path);
    }

    public static Object getExternalTarget(IPath path, boolean checkResourceExistence) {
        if (path == null) {
            return null;
        }
        ExternalFoldersManager externalFoldersManager = JavaModelManager.getExternalManager();
        IFolder linkedFolder = externalFoldersManager.getFolder(path);
        if (linkedFolder != null) {
            File externalFile;
            if (checkResourceExistence && !(externalFile = new File(path.toOSString())).isDirectory()) {
                return null;
            }
            return linkedFolder;
        }
        File externalFile = new File(path.toOSString());
        if (!checkResourceExistence) {
            return externalFile;
        }
        if (JavaModel.existingExternalFilesContains(externalFile)) {
            return externalFile;
        }
        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
            System.out.println("(" + Thread.currentThread() + ") [JavaModel.getTarget(...)] Checking existence of " + path.toString());
        }
        if (externalFile.isFile()) {
            JavaModel.existingExternalFilesAdd(externalFile);
            return externalFile;
        }
        return null;
    }

    private static synchronized void existingExternalFilesAdd(File externalFile) {
        existingExternalFiles.add(externalFile);
    }

    private static synchronized boolean existingExternalFilesContains(File externalFile) {
        return existingExternalFiles.contains(externalFile);
    }

    public static boolean isFile(Object target) {
        return JavaModel.getFile(target) != null;
    }

    public static synchronized File getFile(Object target) {
        File f;
        if (existingExternalConfirmedFiles.contains(target)) {
            return (File)target;
        }
        if (target instanceof File && (f = (File)target).isFile()) {
            existingExternalConfirmedFiles.add(f);
            return f;
        }
        return null;
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        return JavaModelStatus.VERIFIED_OK;
    }
}

