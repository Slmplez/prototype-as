/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

public class NonJavaResource
extends PlatformObject
implements IJarEntryResource {
    private static final IJarEntryResource[] NO_CHILDREN = new IJarEntryResource[0];
    protected Object parent;
    protected IResource resource;

    public NonJavaResource(Object parent, IResource resource) {
        this.parent = parent;
        this.resource = resource;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NonJavaResource)) {
            return false;
        }
        NonJavaResource other = (NonJavaResource)obj;
        return this.parent.equals(other.parent) && this.resource.equals((Object)other.resource);
    }

    public IJarEntryResource[] getChildren() {
        if (this.resource instanceof IContainer) {
            IResource[] members;
            try {
                members = ((IContainer)this.resource).members();
            }
            catch (CoreException e) {
                Util.log(e, "Could not retrieve children of " + this.resource.getFullPath());
                return NO_CHILDREN;
            }
            int length = members.length;
            if (length == 0) {
                return NO_CHILDREN;
            }
            IJarEntryResource[] children = new IJarEntryResource[length];
            int i = 0;
            while (i < length) {
                children[i] = new NonJavaResource(this, members[i]);
                ++i;
            }
            return children;
        }
        return NO_CHILDREN;
    }

    public InputStream getContents() throws CoreException {
        if (this.resource instanceof IFile) {
            return ((IFile)this.resource).getContents();
        }
        return null;
    }

    protected String getEntryName() {
        String elementName;
        String parentEntryName = this.parent instanceof IPackageFragment ? ((elementName = ((IPackageFragment)this.parent).getElementName()).length() == 0 ? "" : String.valueOf(elementName.replace('.', '/')) + '/') : (this.parent instanceof IPackageFragmentRoot ? "" : String.valueOf(((NonJavaResource)this.parent).getEntryName()) + '/');
        return String.valueOf(parentEntryName) + this.getName();
    }

    public IPath getFullPath() {
        return new Path(this.getEntryName()).makeAbsolute();
    }

    public String getName() {
        return this.resource.getName();
    }

    public IPackageFragmentRoot getPackageFragmentRoot() {
        if (this.parent instanceof IPackageFragment) {
            return (IPackageFragmentRoot)((IPackageFragment)this.parent).getParent();
        }
        if (this.parent instanceof IPackageFragmentRoot) {
            return (IPackageFragmentRoot)this.parent;
        }
        return ((NonJavaResource)this.parent).getPackageFragmentRoot();
    }

    public Object getParent() {
        return this.parent;
    }

    public int hashCode() {
        return Util.combineHashCodes(this.resource.hashCode(), this.parent.hashCode());
    }

    public boolean isFile() {
        return this.resource instanceof IFile;
    }

    public boolean isReadOnly() {
        return true;
    }

    public String toString() {
        return "NonJavaResource[" + this.getEntryName() + "]";
    }
}

