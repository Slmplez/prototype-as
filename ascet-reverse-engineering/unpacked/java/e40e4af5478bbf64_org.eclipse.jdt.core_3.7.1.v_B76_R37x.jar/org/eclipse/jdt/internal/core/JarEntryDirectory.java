/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.internal.core.JarEntryResource;

public class JarEntryDirectory
extends JarEntryResource {
    private IJarEntryResource[] children;

    public JarEntryDirectory(String simpleName) {
        super(simpleName);
    }

    public JarEntryResource clone(Object newParent) {
        JarEntryDirectory dir = new JarEntryDirectory(this.simpleName);
        dir.setParent(newParent);
        int length = this.children.length;
        if (length > 0) {
            IJarEntryResource[] newChildren = new IJarEntryResource[length];
            int i = 0;
            while (i < length) {
                JarEntryResource child = (JarEntryResource)this.children[i];
                newChildren[i] = child.clone(dir);
                ++i;
            }
            dir.setChildren(newChildren);
        }
        return dir;
    }

    public IJarEntryResource[] getChildren() {
        return this.children;
    }

    public InputStream getContents() throws CoreException {
        return new ByteArrayInputStream(new byte[0]);
    }

    public boolean isFile() {
        return false;
    }

    public void setChildren(IJarEntryResource[] children) {
        this.children = children;
    }

    public String toString() {
        return "JarEntryDirectory[" + this.getEntryName() + "]";
    }
}

