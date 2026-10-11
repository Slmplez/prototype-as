/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.runtime.IPath;

public class SourceLocation {
    private IPath path;
    private boolean userDefined = true;

    public SourceLocation(IPath path) {
        this.path = path;
    }

    public IPath getPath() {
        return this.path;
    }

    public void setPath(IPath path) {
        this.path = path;
    }

    public boolean isUserDefined() {
        return this.userDefined;
    }

    public void setUserDefined(boolean userDefined) {
        this.userDefined = userDefined;
    }

    public String toString() {
        return this.path.toOSString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof SourceLocation) {
            SourceLocation object = (SourceLocation)obj;
            return object.getPath().equals((Object)this.path);
        }
        return false;
    }

    public int hashCode() {
        return this.path.hashCode();
    }
}

