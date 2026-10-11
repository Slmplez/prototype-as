/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.jdt.internal.core;

import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JarEntryDirectory;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class JarEntryResource
extends PlatformObject
implements IJarEntryResource {
    protected Object parent;
    protected String simpleName;

    public JarEntryResource(String simpleName) {
        this.simpleName = simpleName;
    }

    public abstract JarEntryResource clone(Object var1);

    public boolean equals(Object obj) {
        if (!(obj instanceof JarEntryResource)) {
            return false;
        }
        JarEntryResource other = (JarEntryResource)obj;
        return this.parent.equals(other.parent) && this.simpleName.equals(other.simpleName);
    }

    protected String getEntryName() {
        String elementName;
        String parentEntryName = this.parent instanceof IPackageFragment ? ((elementName = ((IPackageFragment)this.parent).getElementName()).length() == 0 ? "" : String.valueOf(elementName.replace('.', '/')) + '/') : (this.parent instanceof IPackageFragmentRoot ? "" : String.valueOf(((JarEntryDirectory)this.parent).getEntryName()) + '/');
        return String.valueOf(parentEntryName) + this.simpleName;
    }

    public IPath getFullPath() {
        return new Path(this.getEntryName()).makeAbsolute();
    }

    public String getName() {
        return this.simpleName;
    }

    public Object getParent() {
        return this.parent;
    }

    public IPackageFragmentRoot getPackageFragmentRoot() {
        if (this.parent instanceof IPackageFragment) {
            return (IPackageFragmentRoot)((IPackageFragment)this.parent).getParent();
        }
        if (this.parent instanceof IPackageFragmentRoot) {
            return (IPackageFragmentRoot)this.parent;
        }
        return ((JarEntryDirectory)this.parent).getPackageFragmentRoot();
    }

    protected ZipFile getZipFile() throws CoreException {
        if (this.parent instanceof IPackageFragment) {
            JarPackageFragmentRoot root = (JarPackageFragmentRoot)((IPackageFragment)this.parent).getParent();
            return root.getJar();
        }
        if (this.parent instanceof JarPackageFragmentRoot) {
            return ((JarPackageFragmentRoot)this.parent).getJar();
        }
        return ((JarEntryDirectory)this.parent).getZipFile();
    }

    public int hashCode() {
        return Util.combineHashCodes(this.simpleName.hashCode(), this.parent.hashCode());
    }

    public boolean isReadOnly() {
        return true;
    }

    public void setParent(Object parent) {
        this.parent = parent;
    }
}

