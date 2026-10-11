/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.core.project.IBundleClasspathEntry;

public class BundleClasspathSpecification
implements IBundleClasspathEntry {
    private IPath fSource;
    private IPath fBinary;
    private IPath fEntry;

    public BundleClasspathSpecification(IPath sourceFolder, IPath binaryFolder, IPath entry) {
        this.fSource = sourceFolder;
        this.fBinary = binaryFolder;
        this.fEntry = entry;
    }

    public IPath getSourcePath() {
        return this.fSource;
    }

    public IPath getBinaryPath() {
        return this.fBinary;
    }

    public IPath getLibrary() {
        return this.fEntry;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IBundleClasspathEntry) {
            IBundleClasspathEntry spec = (IBundleClasspathEntry)obj;
            return this.equalOrNull(this.getSourcePath(), spec.getSourcePath()) && this.equalOrNull(this.getBinaryPath(), spec.getBinaryPath()) && this.equalOrNull(this.getLibrary(), spec.getLibrary());
        }
        return false;
    }

    private boolean equalOrNull(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 == null) {
            return o1 == null;
        }
        return o1.equals(o2);
    }

    public int hashCode() {
        int code = this.getClass().hashCode();
        if (this.fSource != null) {
            code += this.fSource.hashCode();
        }
        if (this.fBinary != null) {
            code += this.fBinary.hashCode();
        }
        if (this.fEntry != null) {
            code += this.fEntry.hashCode();
        }
        return code;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append("Bundle-Claspath: [");
        buf.append("src=");
        buf.append(this.fSource);
        buf.append(" bin=");
        buf.append(this.fBinary);
        buf.append(" jar=");
        buf.append(this.fEntry);
        buf.append("]");
        return buf.toString();
    }
}

