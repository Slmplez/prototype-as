/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.builder.ClasspathDirectory;
import org.eclipse.jdt.internal.core.util.Util;

class ClasspathMultiDirectory
extends ClasspathDirectory {
    IContainer sourceFolder;
    char[][] inclusionPatterns;
    char[][] exclusionPatterns;
    boolean hasIndependentOutputFolder;

    ClasspathMultiDirectory(IContainer sourceFolder, IContainer binaryFolder, char[][] inclusionPatterns, char[][] exclusionPatterns) {
        super(binaryFolder, true, null);
        this.sourceFolder = sourceFolder;
        this.inclusionPatterns = inclusionPatterns;
        this.exclusionPatterns = exclusionPatterns;
        this.hasIndependentOutputFolder = false;
        if (this.inclusionPatterns != null && this.inclusionPatterns.length == 0) {
            this.inclusionPatterns = null;
        }
        if (this.exclusionPatterns != null && this.exclusionPatterns.length == 0) {
            this.exclusionPatterns = null;
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ClasspathMultiDirectory)) {
            return false;
        }
        ClasspathMultiDirectory md = (ClasspathMultiDirectory)o;
        return this.sourceFolder.equals((Object)md.sourceFolder) && this.binaryFolder.equals((Object)md.binaryFolder) && CharOperation.equals(this.inclusionPatterns, md.inclusionPatterns) && CharOperation.equals(this.exclusionPatterns, md.exclusionPatterns);
    }

    protected boolean isExcluded(IResource resource) {
        if ((this.exclusionPatterns != null || this.inclusionPatterns != null) && this.sourceFolder.equals((Object)this.binaryFolder)) {
            return Util.isExcluded(resource, this.inclusionPatterns, this.exclusionPatterns);
        }
        return false;
    }

    public String toString() {
        return "Source classpath directory " + this.sourceFolder.getFullPath().toString() + " with " + super.toString();
    }
}

