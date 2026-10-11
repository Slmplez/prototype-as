/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.util.ResourceCompilationUnit;

public class ClasspathSourceDirectory
extends ClasspathLocation {
    IContainer sourceFolder;
    SimpleLookupTable directoryCache;
    SimpleLookupTable missingPackageHolder = new SimpleLookupTable();
    char[][] fullExclusionPatternChars;
    char[][] fulInclusionPatternChars;

    ClasspathSourceDirectory(IContainer sourceFolder, char[][] fullExclusionPatternChars, char[][] fulInclusionPatternChars) {
        this.sourceFolder = sourceFolder;
        this.directoryCache = new SimpleLookupTable(5);
        this.fullExclusionPatternChars = fullExclusionPatternChars;
        this.fulInclusionPatternChars = fulInclusionPatternChars;
    }

    public void cleanup() {
        this.directoryCache = null;
    }

    SimpleLookupTable directoryTable(String qualifiedPackageName) {
        SimpleLookupTable dirTable = (SimpleLookupTable)this.directoryCache.get(qualifiedPackageName);
        if (dirTable == this.missingPackageHolder) {
            return null;
        }
        if (dirTable != null) {
            return dirTable;
        }
        try {
            IResource container = this.sourceFolder.findMember(qualifiedPackageName);
            if (container instanceof IContainer) {
                IResource[] members = ((IContainer)container).members();
                dirTable = new SimpleLookupTable();
                int i = 0;
                int l = members.length;
                while (i < l) {
                    String fullPath;
                    String name;
                    int index;
                    IResource m = members[i];
                    if (m.getType() == 1 && (index = org.eclipse.jdt.internal.core.util.Util.indexOfJavaLikeExtension(name = m.getName())) >= 0 && !Util.isExcluded((fullPath = m.getFullPath().toString()).toCharArray(), this.fulInclusionPatternChars, this.fullExclusionPatternChars, false)) {
                        dirTable.put(name.substring(0, index), m);
                    }
                    ++i;
                }
                this.directoryCache.put(qualifiedPackageName, dirTable);
                return dirTable;
            }
        }
        catch (CoreException coreException) {}
        this.directoryCache.put(qualifiedPackageName, this.missingPackageHolder);
        return null;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ClasspathSourceDirectory)) {
            return false;
        }
        return this.sourceFolder.equals((Object)((ClasspathSourceDirectory)o).sourceFolder);
    }

    public NameEnvironmentAnswer findClass(String sourceFileWithoutExtension, String qualifiedPackageName, String qualifiedSourceFileWithoutExtension) {
        IFile file;
        SimpleLookupTable dirTable = this.directoryTable(qualifiedPackageName);
        if (dirTable != null && dirTable.elementSize > 0 && (file = (IFile)dirTable.get(sourceFileWithoutExtension)) != null) {
            return new NameEnvironmentAnswer(new ResourceCompilationUnit(file, file.getLocationURI()), null);
        }
        return null;
    }

    public IPath getProjectRelativePath() {
        return this.sourceFolder.getProjectRelativePath();
    }

    public int hashCode() {
        return this.sourceFolder == null ? super.hashCode() : this.sourceFolder.hashCode();
    }

    public boolean isPackage(String qualifiedPackageName) {
        return this.directoryTable(qualifiedPackageName) != null;
    }

    public void reset() {
        this.directoryCache = new SimpleLookupTable(5);
    }

    public String toString() {
        return "Source classpath directory " + this.sourceFolder.getFullPath().toString();
    }

    public String debugPathString() {
        return this.sourceFolder.getFullPath().toString();
    }
}

