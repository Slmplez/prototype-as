/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JarEntryDirectory;
import org.eclipse.jdt.internal.core.JarEntryFile;
import org.eclipse.jdt.internal.core.JarEntryResource;
import org.eclipse.jdt.internal.core.JarPackageFragmentInfo;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JarPackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

class JarPackageFragment
extends PackageFragment {
    protected JarPackageFragment(PackageFragmentRoot root, String[] names) {
        super(root, names);
    }

    protected boolean buildStructure(OpenableElementInfo info, IProgressMonitor pm, Map newElements, IResource underlyingResource) throws JavaModelException {
        JarPackageFragmentRoot root = (JarPackageFragmentRoot)this.getParent();
        JarPackageFragmentRootInfo parentInfo = (JarPackageFragmentRootInfo)root.getElementInfo();
        ArrayList[] entries = (ArrayList[])parentInfo.rawPackageInfo.get(this.names);
        if (entries == null) {
            throw this.newNotPresentException();
        }
        JarPackageFragmentInfo fragInfo = (JarPackageFragmentInfo)info;
        fragInfo.setChildren(this.computeChildren(entries[0]));
        fragInfo.setNonJavaResources(this.computeNonJavaResources(entries[1]));
        newElements.put(this, fragInfo);
        return true;
    }

    private IJavaElement[] computeChildren(ArrayList namesWithoutExtension) {
        int size = namesWithoutExtension.size();
        if (size == 0) {
            return NO_ELEMENTS;
        }
        IJavaElement[] children = new IJavaElement[size];
        int i = 0;
        while (i < size) {
            String nameWithoutExtension = (String)namesWithoutExtension.get(i);
            children[i] = new ClassFile(this, nameWithoutExtension);
            ++i;
        }
        return children;
    }

    private Object[] computeNonJavaResources(ArrayList entryNames) {
        int length = entryNames.size();
        if (length == 0) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
        HashMap<IPath, JarEntryResource> jarEntries = new HashMap<IPath, JarEntryResource>();
        HashMap<IPath, ArrayList<IPath>> childrenMap = new HashMap<IPath, ArrayList<IPath>>();
        ArrayList<JarEntryResource> topJarEntries = new ArrayList<JarEntryResource>();
        int i = 0;
        while (i < length) {
            Path filePath;
            IPath childPath;
            String resName = (String)entryNames.get(i);
            if (!Util.isJavaLikeFileName(resName) && !jarEntries.containsKey(childPath = (filePath = new Path(resName)).removeFirstSegments(this.names.length))) {
                JarEntryFile file = new JarEntryFile(filePath.lastSegment());
                jarEntries.put(childPath, file);
                if (childPath.segmentCount() == 1) {
                    file.setParent(this);
                    topJarEntries.add(file);
                } else {
                    IPath parentPath = childPath.removeLastSegments(1);
                    while (parentPath.segmentCount() > 0) {
                        ArrayList<IPath> parentChildren = (ArrayList<IPath>)childrenMap.get(parentPath);
                        if (parentChildren == null) {
                            JarEntryDirectory dir = new JarEntryDirectory(parentPath.lastSegment());
                            jarEntries.put(parentPath, dir);
                            parentChildren = new ArrayList<IPath>();
                            childrenMap.put(parentPath, parentChildren);
                            parentChildren.add(childPath);
                            if (parentPath.segmentCount() == 1) {
                                topJarEntries.add(dir);
                                break;
                            }
                            childPath = parentPath;
                            parentPath = childPath.removeLastSegments(1);
                            continue;
                        }
                        parentChildren.add(childPath);
                        break;
                    }
                }
            }
            ++i;
        }
        Iterator entries = childrenMap.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry entry = entries.next();
            IPath entryPath = (IPath)entry.getKey();
            ArrayList entryValue = (ArrayList)entry.getValue();
            JarEntryDirectory jarEntryDirectory = (JarEntryDirectory)jarEntries.get(entryPath);
            int size = entryValue.size();
            IJarEntryResource[] children = new IJarEntryResource[size];
            int i2 = 0;
            while (i2 < size) {
                JarEntryResource child = (JarEntryResource)jarEntries.get(entryValue.get(i2));
                child.setParent(jarEntryDirectory);
                children[i2] = child;
                ++i2;
            }
            jarEntryDirectory.setChildren(children);
            if (entryPath.segmentCount() != 1) continue;
            jarEntryDirectory.setParent(this);
        }
        return topJarEntries.toArray(new Object[topJarEntries.size()]);
    }

    public boolean containsJavaResources() throws JavaModelException {
        return ((JarPackageFragmentInfo)this.getElementInfo()).containsJavaResources();
    }

    public ICompilationUnit createCompilationUnit(String cuName, String contents, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(976, this));
    }

    protected Object createElementInfo() {
        return new JarPackageFragmentInfo();
    }

    public IClassFile[] getClassFiles() throws JavaModelException {
        ArrayList list = this.getChildrenOfType(6);
        IClassFile[] array = new IClassFile[list.size()];
        list.toArray(array);
        return array;
    }

    public ICompilationUnit[] getCompilationUnits() {
        return NO_COMPILATION_UNITS;
    }

    public IResource getCorrespondingResource() {
        return null;
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        if (this.isDefaultPackage()) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
        return this.storedNonJavaResources();
    }

    public boolean isReadOnly() {
        return true;
    }

    protected Object[] storedNonJavaResources() throws JavaModelException {
        return ((JarPackageFragmentInfo)this.getElementInfo()).getNonJavaResources();
    }
}

