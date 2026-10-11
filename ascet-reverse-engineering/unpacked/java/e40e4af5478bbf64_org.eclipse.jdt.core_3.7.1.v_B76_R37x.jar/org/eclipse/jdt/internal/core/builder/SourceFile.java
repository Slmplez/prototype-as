/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.MissingSourceFileException;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceFile
implements ICompilationUnit {
    public IFile resource;
    ClasspathMultiDirectory sourceLocation;
    String initialTypeName;
    boolean updateClassFile;

    public SourceFile(IFile resource, ClasspathMultiDirectory sourceLocation) {
        this.resource = resource;
        this.sourceLocation = sourceLocation;
        this.initialTypeName = this.extractTypeName();
        this.updateClassFile = false;
    }

    public SourceFile(IFile resource, ClasspathMultiDirectory sourceLocation, boolean updateClassFile) {
        this(resource, sourceLocation);
        this.updateClassFile = updateClassFile;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof SourceFile)) {
            return false;
        }
        SourceFile f = (SourceFile)o;
        return this.sourceLocation == f.sourceLocation && this.resource.getFullPath().equals((Object)f.resource.getFullPath());
    }

    String extractTypeName() {
        IPath fullPath = this.resource.getFullPath();
        int resourceSegmentCount = fullPath.segmentCount();
        int sourceFolderSegmentCount = this.sourceLocation.sourceFolder.getFullPath().segmentCount();
        int charCount = resourceSegmentCount - sourceFolderSegmentCount - 1;
        --resourceSegmentCount;
        int i = sourceFolderSegmentCount;
        while (i < resourceSegmentCount) {
            charCount += fullPath.segment(i).length();
            ++i;
        }
        String lastSegment = fullPath.segment(resourceSegmentCount);
        int extensionIndex = Util.indexOfJavaLikeExtension(lastSegment);
        char[] result = new char[charCount += extensionIndex];
        int offset = 0;
        int i2 = sourceFolderSegmentCount;
        while (i2 < resourceSegmentCount) {
            String segment = fullPath.segment(i2);
            int size = segment.length();
            segment.getChars(0, size, result, offset);
            offset += size;
            result[offset++] = 47;
            ++i2;
        }
        lastSegment.getChars(0, extensionIndex, result, offset);
        return new String(result);
    }

    public char[] getContents() {
        try {
            return Util.getResourceContentsAsCharArray(this.resource);
        }
        catch (CoreException coreException) {
            throw new AbortCompilation(true, new MissingSourceFileException(this.resource.getFullPath().toString()));
        }
    }

    public char[] getFileName() {
        return this.resource.getFullPath().toString().toCharArray();
    }

    public char[] getMainTypeName() {
        char[] typeName = this.initialTypeName.toCharArray();
        int lastIndex = CharOperation.lastIndexOf('/', typeName);
        return CharOperation.subarray(typeName, lastIndex + 1, -1);
    }

    public char[][] getPackageName() {
        char[] typeName = this.initialTypeName.toCharArray();
        int lastIndex = CharOperation.lastIndexOf('/', typeName);
        return CharOperation.splitOn('/', typeName, 0, lastIndex);
    }

    public int hashCode() {
        return this.initialTypeName.hashCode();
    }

    String typeLocator() {
        return this.resource.getProjectRelativePath().toString();
    }

    public String toString() {
        return "SourceFile[" + this.resource.getFullPath() + "]";
    }
}

