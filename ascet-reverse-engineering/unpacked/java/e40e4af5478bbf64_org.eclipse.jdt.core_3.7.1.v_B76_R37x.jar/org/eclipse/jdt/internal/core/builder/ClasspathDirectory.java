/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.IOException;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;

public class ClasspathDirectory
extends ClasspathLocation {
    IContainer binaryFolder;
    boolean isOutputFolder;
    SimpleLookupTable directoryCache;
    String[] missingPackageHolder = new String[1];
    AccessRuleSet accessRuleSet;

    ClasspathDirectory(IContainer binaryFolder, boolean isOutputFolder, AccessRuleSet accessRuleSet) {
        this.binaryFolder = binaryFolder;
        this.isOutputFolder = isOutputFolder || binaryFolder.getProjectRelativePath().isEmpty();
        this.directoryCache = new SimpleLookupTable(5);
        this.accessRuleSet = accessRuleSet;
    }

    public void cleanup() {
        this.directoryCache = null;
    }

    String[] directoryList(String qualifiedPackageName) {
        String[] dirList = (String[])this.directoryCache.get(qualifiedPackageName);
        if (dirList == this.missingPackageHolder) {
            return null;
        }
        if (dirList != null) {
            return dirList;
        }
        try {
            IResource container = this.binaryFolder.findMember(qualifiedPackageName);
            if (container instanceof IContainer) {
                IResource[] members = ((IContainer)container).members();
                dirList = new String[members.length];
                int index = 0;
                int i = 0;
                int l = members.length;
                while (i < l) {
                    IResource m = members[i];
                    if (m.getType() == 1 && Util.isClassFileName(m.getName())) {
                        dirList[index++] = m.getName();
                    }
                    ++i;
                }
                if (index < dirList.length) {
                    String[] stringArray = dirList;
                    dirList = new String[index];
                    System.arraycopy(stringArray, 0, dirList, 0, index);
                }
                this.directoryCache.put(qualifiedPackageName, dirList);
                return dirList;
            }
        }
        catch (CoreException coreException) {}
        this.directoryCache.put(qualifiedPackageName, this.missingPackageHolder);
        return null;
    }

    boolean doesFileExist(String fileName, String qualifiedPackageName, String qualifiedFullName) {
        String[] dirList = this.directoryList(qualifiedPackageName);
        if (dirList == null) {
            return false;
        }
        int i = dirList.length;
        while (--i >= 0) {
            if (!fileName.equals(dirList[i])) continue;
            return true;
        }
        return false;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ClasspathDirectory)) {
            return false;
        }
        ClasspathDirectory dir = (ClasspathDirectory)o;
        if (!(this.accessRuleSet == dir.accessRuleSet || this.accessRuleSet != null && this.accessRuleSet.equals(dir.accessRuleSet))) {
            return false;
        }
        return this.binaryFolder.equals((Object)dir.binaryFolder);
    }

    public NameEnvironmentAnswer findClass(String binaryFileName, String qualifiedPackageName, String qualifiedBinaryFileName) {
        if (!this.doesFileExist(binaryFileName, qualifiedPackageName, qualifiedBinaryFileName)) {
            return null;
        }
        ClassFileReader reader = null;
        try {
            reader = org.eclipse.jdt.internal.core.util.Util.newClassFileReader((IResource)this.binaryFolder.getFile((IPath)new Path(qualifiedBinaryFileName)));
        }
        catch (CoreException coreException) {
            return null;
        }
        catch (ClassFormatException classFormatException) {
            return null;
        }
        catch (IOException iOException) {
            return null;
        }
        if (reader != null) {
            if (this.accessRuleSet == null) {
                return new NameEnvironmentAnswer(reader, null);
            }
            String fileNameWithoutExtension = qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - SuffixConstants.SUFFIX_CLASS.length);
            return new NameEnvironmentAnswer(reader, this.accessRuleSet.getViolatedRestriction(fileNameWithoutExtension.toCharArray()));
        }
        return null;
    }

    public IPath getProjectRelativePath() {
        return this.binaryFolder.getProjectRelativePath();
    }

    public int hashCode() {
        return this.binaryFolder == null ? super.hashCode() : this.binaryFolder.hashCode();
    }

    protected boolean isExcluded(IResource resource) {
        return false;
    }

    public boolean isOutputFolder() {
        return this.isOutputFolder;
    }

    public boolean isPackage(String qualifiedPackageName) {
        return this.directoryList(qualifiedPackageName) != null;
    }

    public void reset() {
        this.directoryCache = new SimpleLookupTable(5);
    }

    public String toString() {
        String start = "Binary classpath directory " + this.binaryFolder.getFullPath().toString();
        if (this.accessRuleSet == null) {
            return start;
        }
        return String.valueOf(start) + " with " + this.accessRuleSet;
    }

    public String debugPathString() {
        return this.binaryFolder.getFullPath().toString();
    }
}

