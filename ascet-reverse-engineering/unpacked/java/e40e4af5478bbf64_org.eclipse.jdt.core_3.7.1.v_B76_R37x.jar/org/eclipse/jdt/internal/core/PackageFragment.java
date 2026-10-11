/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CreateCompilationUnitOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragmentInfo;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class PackageFragment
extends Openable
implements IPackageFragment,
SuffixConstants {
    protected static final IClassFile[] NO_CLASSFILES = new IClassFile[0];
    protected static final ICompilationUnit[] NO_COMPILATION_UNITS = new ICompilationUnit[0];
    public String[] names;

    protected PackageFragment(PackageFragmentRoot root, String[] names) {
        super(root);
        this.names = names;
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        HashSet<ICompilationUnit> vChildren = new HashSet<ICompilationUnit>();
        int kind = this.getKind();
        try {
            PackageFragmentRoot root = this.getPackageFragmentRoot();
            char[][] inclusionPatterns = root.fullInclusionPatternChars();
            char[][] exclusionPatterns = root.fullExclusionPatternChars();
            IResource[] members = ((IContainer)underlyingResource).members();
            int length = members.length;
            if (length > 0) {
                IJavaProject project = this.getJavaProject();
                String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                String complianceLevel = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                int i = 0;
                while (i < length) {
                    IResource child = members[i];
                    if (child.getType() != 2 && !Util.isExcluded(child, inclusionPatterns, exclusionPatterns)) {
                        ITypeRoot childElement;
                        if (kind == 1 && Util.isValidCompilationUnitName(child.getName(), sourceLevel, complianceLevel)) {
                            childElement = new CompilationUnit(this, child.getName(), DefaultWorkingCopyOwner.PRIMARY);
                            vChildren.add((ICompilationUnit)childElement);
                        } else if (kind == 2 && Util.isValidClassFileName(child.getName(), sourceLevel, complianceLevel)) {
                            childElement = this.getClassFile(child.getName());
                            vChildren.add((ICompilationUnit)childElement);
                        }
                    }
                    ++i;
                }
            }
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        if (kind == 1) {
            ICompilationUnit[] primaryCompilationUnits = this.getCompilationUnits(DefaultWorkingCopyOwner.PRIMARY);
            int i = 0;
            int length = primaryCompilationUnits.length;
            while (i < length) {
                ICompilationUnit primary = primaryCompilationUnits[i];
                vChildren.add(primary);
                ++i;
            }
        }
        IJavaElement[] children = new IJavaElement[vChildren.size()];
        vChildren.toArray(children);
        info.setChildren(children);
        return true;
    }

    public boolean containsJavaResources() throws JavaModelException {
        return ((PackageFragmentInfo)this.getElementInfo()).containsJavaResources();
    }

    public void copy(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        IJavaElement[] siblings = null;
        if (sibling != null) {
            siblings = new IJavaElement[]{sibling};
        }
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().copy(elements, containers, siblings, renamings, force, monitor);
    }

    public ICompilationUnit createCompilationUnit(String cuName, String contents, boolean force, IProgressMonitor monitor) throws JavaModelException {
        CreateCompilationUnitOperation op = new CreateCompilationUnitOperation(this, cuName, contents, force);
        op.runOperation(monitor);
        return new CompilationUnit(this, cuName, DefaultWorkingCopyOwner.PRIMARY);
    }

    protected Object createElementInfo() {
        return new PackageFragmentInfo();
    }

    public void delete(boolean force, IProgressMonitor monitor) throws JavaModelException {
        IJavaElement[] elements = new IJavaElement[]{this};
        this.getJavaModel().delete(elements, force, monitor);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof PackageFragment)) {
            return false;
        }
        PackageFragment other = (PackageFragment)o;
        return Util.equalArraysOrNull(this.names, other.names) && this.parent.equals(other.parent);
    }

    public boolean exists() {
        return super.exists() && !Util.isExcluded(this) && this.isValidPackageName();
    }

    public IClassFile getClassFile(String classFileName) {
        if (!org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(classFileName)) {
            throw new IllegalArgumentException(Messages.bind(Messages.element_invalidClassFileName, classFileName));
        }
        int length = classFileName.length() - 6;
        char[] nameWithoutExtension = new char[length];
        classFileName.getChars(0, length, nameWithoutExtension, 0);
        return new ClassFile(this, new String(nameWithoutExtension));
    }

    public IClassFile[] getClassFiles() throws JavaModelException {
        if (this.getKind() == 1) {
            return NO_CLASSFILES;
        }
        ArrayList list = this.getChildrenOfType(6);
        IClassFile[] array = new IClassFile[list.size()];
        list.toArray(array);
        return array;
    }

    public ICompilationUnit getCompilationUnit(String cuName) {
        if (!Util.isJavaLikeFileName(cuName)) {
            throw new IllegalArgumentException(Messages.convention_unit_notJavaName);
        }
        return new CompilationUnit(this, cuName, DefaultWorkingCopyOwner.PRIMARY);
    }

    public ICompilationUnit[] getCompilationUnits() throws JavaModelException {
        if (this.getKind() == 2) {
            return NO_COMPILATION_UNITS;
        }
        ArrayList list = this.getChildrenOfType(5);
        ICompilationUnit[] array = new ICompilationUnit[list.size()];
        list.toArray(array);
        return array;
    }

    public ICompilationUnit[] getCompilationUnits(WorkingCopyOwner owner) {
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, false);
        if (workingCopies == null) {
            return JavaModelManager.NO_WORKING_COPY;
        }
        int length = workingCopies.length;
        ICompilationUnit[] result = new ICompilationUnit[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            ICompilationUnit wc = workingCopies[i];
            if (this.equals(wc.getParent()) && !Util.isExcluded(wc)) {
                result[index++] = wc;
            }
            ++i;
        }
        if (index != length) {
            ICompilationUnit[] iCompilationUnitArray = result;
            result = new ICompilationUnit[index];
            System.arraycopy(iCompilationUnitArray, 0, result, 0, index);
        }
        return result;
    }

    public String getElementName() {
        if (this.names.length == 0) {
            return "";
        }
        return Util.concatWith(this.names, '.');
    }

    public int getElementType() {
        return 4;
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner owner) {
        switch (token.charAt(0)) {
            case '(': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String classFileName = memento.nextToken();
                JavaElement classFile = (JavaElement)((Object)this.getClassFile(classFileName));
                return classFile.getHandleFromMemento(memento, owner);
            }
            case '{': {
                if (!memento.hasMoreTokens()) {
                    return this;
                }
                String cuName = memento.nextToken();
                CompilationUnit cu = new CompilationUnit(this, cuName, owner);
                return cu.getHandleFromMemento(memento, owner);
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '<';
    }

    public int getKind() throws JavaModelException {
        return ((IPackageFragmentRoot)this.getParent()).getKind();
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        if (this.isDefaultPackage()) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
        return ((PackageFragmentInfo)this.getElementInfo()).getNonJavaResources(this.resource(), this.getPackageFragmentRoot());
    }

    public IPath getPath() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root.isArchive()) {
            return root.getPath();
        }
        IPath path = root.getPath();
        int i = 0;
        int length = this.names.length;
        while (i < length) {
            String name = this.names[i];
            path = path.append(name);
            ++i;
        }
        return path;
    }

    public IResource resource(PackageFragmentRoot root) {
        int length = this.names.length;
        if (length == 0) {
            return root.resource(root);
        }
        Path path = new Path(this.names[0]);
        int i = 1;
        while (i < length) {
            path = path.append(this.names[i]);
            ++i;
        }
        return ((IContainer)root.resource(root)).getFolder((IPath)path);
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        IResource rootResource = this.parent.getUnderlyingResource();
        if (rootResource == null) {
            return null;
        }
        if (rootResource.getType() == 2 || rootResource.getType() == 4) {
            IContainer folder = (IContainer)rootResource;
            String[] segs = this.names;
            int i = 0;
            while (i < segs.length) {
                IResource child = folder.findMember(segs[i]);
                if (child == null || child.getType() != 2) {
                    throw this.newNotPresentException();
                }
                folder = (IFolder)child;
                ++i;
            }
            return folder;
        }
        return rootResource;
    }

    public int hashCode() {
        int hash = this.parent.hashCode();
        int i = 0;
        int length = this.names.length;
        while (i < length) {
            hash = Util.combineHashCodes(this.names[i].hashCode(), hash);
            ++i;
        }
        return hash;
    }

    public boolean hasChildren() throws JavaModelException {
        return this.getChildren().length > 0;
    }

    public boolean hasSubpackages() throws JavaModelException {
        IJavaElement[] packages = ((IPackageFragmentRoot)this.getParent()).getChildren();
        int namesLength = this.names.length;
        int i = 0;
        int length = packages.length;
        while (i < length) {
            block4: {
                String[] otherNames = ((PackageFragment)packages[i]).names;
                if (otherNames.length > namesLength) {
                    int j = 0;
                    while (j < namesLength) {
                        if (this.names[j].equals(otherNames[j])) {
                            ++j;
                            continue;
                        }
                        break block4;
                    }
                    return true;
                }
            }
            ++i;
        }
        return false;
    }

    public boolean isDefaultPackage() {
        return this.names.length == 0;
    }

    private boolean isValidPackageName() {
        JavaProject javaProject = (JavaProject)this.getJavaProject();
        String sourceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
        String complianceLevel = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
        int i = 0;
        int length = this.names.length;
        while (i < length) {
            if (!Util.isValidFolderNameForPackage(this.names[i], sourceLevel, complianceLevel)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void move(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        IJavaElement[] siblings = null;
        if (sibling != null) {
            siblings = new IJavaElement[]{sibling};
        }
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().move(elements, containers, siblings, renamings, force, monitor);
    }

    public void rename(String newName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (newName == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] dests = new IJavaElement[]{this.getParent()};
        String[] renamings = new String[]{newName};
        this.getJavaModel().rename(elements, dests, renamings, force, monitor);
    }

    protected void toStringChildren(int tab, StringBuffer buffer, Object info) {
        if (tab == 0) {
            super.toStringChildren(tab, buffer, info);
        }
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (this.names.length == 0) {
            buffer.append("<default>");
        } else {
            this.toStringName(buffer);
        }
        if (info == null) {
            buffer.append(" (not open)");
        } else if (tab > 0) {
            buffer.append(" (...)");
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        JavaModelManager.PerProjectInfo projectInfo = JavaModelManager.getJavaModelManager().getPerProjectInfoCheckExistence(this.getJavaProject().getProject());
        String cachedJavadoc = null;
        LRUCache lRUCache = projectInfo.javadocCache;
        synchronized (lRUCache) {
            cachedJavadoc = (String)projectInfo.javadocCache.get(this);
        }
        if (cachedJavadoc != null) {
            return cachedJavadoc;
        }
        URL baseLocation = this.getJavadocBaseLocation();
        if (baseLocation == null) {
            return null;
        }
        StringBuffer pathBuffer = new StringBuffer(baseLocation.toExternalForm());
        if (pathBuffer.charAt(pathBuffer.length() - 1) != '/') {
            pathBuffer.append('/');
        }
        String packPath = this.getElementName().replace('.', '/');
        pathBuffer.append(packPath).append('/').append("package-summary.html");
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        String contents = this.getURLContents(String.valueOf(pathBuffer));
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        if (contents == null) {
            throw new JavaModelException(new JavaModelStatus(1008, this));
        }
        LRUCache lRUCache2 = projectInfo.javadocCache;
        synchronized (lRUCache2) {
            projectInfo.javadocCache.put(this, contents);
        }
        return contents;
    }

    protected IStatus validateExistence(IResource underlyingResource) {
        int kind;
        if (!this.isValidPackageName()) {
            return this.newDoesNotExistStatus();
        }
        if (underlyingResource != null && !this.resourceExists(underlyingResource)) {
            return this.newDoesNotExistStatus();
        }
        try {
            kind = this.getKind();
        }
        catch (JavaModelException e) {
            return e.getStatus();
        }
        if (kind == 1 && Util.isExcluded(this)) {
            return this.newDoesNotExistStatus();
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}

