/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JarEntryResource;
import org.eclipse.jdt.internal.core.JarPackageFragment;
import org.eclipse.jdt.internal.core.JarPackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public class JarPackageFragmentRoot
extends PackageFragmentRoot {
    private static final ArrayList EMPTY_LIST = new ArrayList();
    protected final IPath jarPath;

    protected JarPackageFragmentRoot(IPath externalJarPath, JavaProject project) {
        super(null, project);
        this.jarPath = externalJarPath;
    }

    protected JarPackageFragmentRoot(IResource resource, JavaProject project) {
        super(resource, project);
        this.jarPath = resource.getFullPath();
    }

    protected boolean computeChildren(OpenableElementInfo info, IResource underlyingResource) throws JavaModelException {
        IJavaElement[] children;
        HashtableOfArrayToObject rawPackageInfo;
        block10: {
            rawPackageInfo = new HashtableOfArrayToObject();
            ZipFile jar = null;
            try {
                try {
                    IJavaProject project = this.getJavaProject();
                    String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
                    String compliance = project.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                    jar = this.getJar();
                    rawPackageInfo.put(CharOperation.NO_STRINGS, new ArrayList[]{EMPTY_LIST, EMPTY_LIST});
                    Enumeration<? extends ZipEntry> e = jar.entries();
                    while (e.hasMoreElements()) {
                        ZipEntry member = e.nextElement();
                        this.initRawPackageInfo(rawPackageInfo, member.getName(), member.isDirectory(), sourceLevel, compliance);
                    }
                    children = new IJavaElement[rawPackageInfo.size()];
                    int index = 0;
                    int i = 0;
                    int length = rawPackageInfo.keyTable.length;
                    while (i < length) {
                        String[] pkgName = (String[])rawPackageInfo.keyTable[i];
                        if (pkgName != null) {
                            children[index++] = this.getPackageFragment(pkgName);
                        }
                        ++i;
                    }
                }
                catch (CoreException e) {
                    if (!(e.getCause() instanceof ZipException)) {
                        if (e instanceof JavaModelException) {
                            throw (JavaModelException)e;
                        }
                        throw new JavaModelException(e);
                    }
                    Util.log(4, "Invalid ZIP archive: " + this.toStringWithAncestors());
                    children = NO_ELEMENTS;
                    JavaModelManager.getJavaModelManager().closeZipFile(jar);
                    break block10;
                }
            }
            catch (Throwable throwable) {
                JavaModelManager.getJavaModelManager().closeZipFile(jar);
                throw throwable;
            }
            JavaModelManager.getJavaModelManager().closeZipFile(jar);
        }
        info.setChildren(children);
        ((JarPackageFragmentRootInfo)info).rawPackageInfo = rawPackageInfo;
        return true;
    }

    protected Object createElementInfo() {
        return new JarPackageFragmentRootInfo();
    }

    protected int determineKind(IResource underlyingResource) {
        return 2;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof JarPackageFragmentRoot) {
            JarPackageFragmentRoot other = (JarPackageFragmentRoot)o;
            return this.jarPath.equals((Object)other.jarPath);
        }
        return false;
    }

    public String getElementName() {
        return this.jarPath.lastSegment();
    }

    public ZipFile getJar() throws CoreException {
        return JavaModelManager.getJavaModelManager().getZipFile(this.getPath());
    }

    public int getKind() {
        return 2;
    }

    int internalKind() throws JavaModelException {
        return 2;
    }

    public Object[] getNonJavaResources() throws JavaModelException {
        Object[] defaultPkgResources = ((JarPackageFragment)this.getPackageFragment(CharOperation.NO_STRINGS)).storedNonJavaResources();
        int length = defaultPkgResources.length;
        if (length == 0) {
            return defaultPkgResources;
        }
        Object[] nonJavaResources = new Object[length];
        int i = 0;
        while (i < length) {
            JarEntryResource nonJavaResource = (JarEntryResource)defaultPkgResources[i];
            nonJavaResources[i] = nonJavaResource.clone(this);
            ++i;
        }
        return nonJavaResources;
    }

    public PackageFragment getPackageFragment(String[] pkgName) {
        return new JarPackageFragment(this, pkgName);
    }

    public IPath internalPath() {
        if (this.isExternal()) {
            return this.jarPath;
        }
        return super.internalPath();
    }

    public IResource resource(PackageFragmentRoot root) {
        if (this.resource == null) {
            return null;
        }
        return super.resource(root);
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (this.isExternal()) {
            if (!this.exists()) {
                throw this.newNotPresentException();
            }
            return null;
        }
        return super.getUnderlyingResource();
    }

    public int hashCode() {
        return this.jarPath.hashCode();
    }

    private void initRawPackageInfo(HashtableOfArrayToObject rawPackageInfo, String entryName, boolean isDirectory, String sourceLevel, String compliance) {
        int length;
        int lastSeparator = isDirectory ? entryName.length() - 1 : entryName.lastIndexOf(47);
        Object[] pkgName = Util.splitOn('/', entryName, 0, lastSeparator);
        Object[] existing = null;
        int existingLength = length = pkgName.length;
        while (existingLength >= 0) {
            existing = (String[])rawPackageInfo.getKey(pkgName, existingLength);
            if (existing != null) break;
            --existingLength;
        }
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        int i = existingLength;
        while (i < length) {
            if (!Util.isValidFolderNameForPackage((String)pkgName[i], sourceLevel, compliance)) {
                if (!isDirectory) {
                    ArrayList[] children = (ArrayList[])rawPackageInfo.get(existing);
                    if (children[1] == EMPTY_LIST) {
                        children[1] = new ArrayList();
                    }
                    children[1].add(entryName);
                }
                return;
            }
            Object[] objectArray = existing;
            existing = new String[i + 1];
            System.arraycopy(objectArray, 0, existing, 0, i);
            existing[i] = manager.intern((String)pkgName[i]);
            rawPackageInfo.put(existing, new ArrayList[]{EMPTY_LIST, EMPTY_LIST});
            ++i;
        }
        if (isDirectory) {
            return;
        }
        ArrayList[] children = (ArrayList[])rawPackageInfo.get(pkgName);
        if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(entryName)) {
            if (children[0] == EMPTY_LIST) {
                children[0] = new ArrayList();
            }
            String nameWithoutExtension = entryName.substring(lastSeparator + 1, entryName.length() - 6);
            children[0].add(nameWithoutExtension);
        } else {
            if (children[1] == EMPTY_LIST) {
                children[1] = new ArrayList();
            }
            children[1].add(entryName);
        }
    }

    public boolean isArchive() {
        return true;
    }

    public boolean isExternal() {
        return this.resource() == null;
    }

    public boolean isReadOnly() {
        return true;
    }

    protected boolean resourceExists(IResource underlyingResource) {
        if (underlyingResource == null) {
            return JavaModel.getExternalTarget(this.getPath(), true) != null;
        }
        return super.resourceExists(underlyingResource);
    }

    protected void toStringAncestors(StringBuffer buffer) {
        if (this.isExternal()) {
            return;
        }
        super.toStringAncestors(buffer);
    }
}

