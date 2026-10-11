/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.core.builder.ClasspathDirectory;
import org.eclipse.jdt.internal.core.builder.ClasspathJar;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;

public abstract class ClasspathLocation {
    static ClasspathLocation forSourceFolder(IContainer sourceFolder, IContainer outputFolder, char[][] inclusionPatterns, char[][] exclusionPatterns) {
        return new ClasspathMultiDirectory(sourceFolder, outputFolder, inclusionPatterns, exclusionPatterns);
    }

    public static ClasspathLocation forBinaryFolder(IContainer binaryFolder, boolean isOutputFolder, AccessRuleSet accessRuleSet) {
        return new ClasspathDirectory(binaryFolder, isOutputFolder, accessRuleSet);
    }

    static ClasspathLocation forLibrary(String libraryPathname, long lastModified, AccessRuleSet accessRuleSet) {
        return new ClasspathJar(libraryPathname, lastModified, accessRuleSet);
    }

    static ClasspathLocation forLibrary(String libraryPathname, AccessRuleSet accessRuleSet) {
        return ClasspathLocation.forLibrary(libraryPathname, 0L, accessRuleSet);
    }

    static ClasspathLocation forLibrary(IFile library, AccessRuleSet accessRuleSet) {
        return new ClasspathJar(library, accessRuleSet);
    }

    public abstract NameEnvironmentAnswer findClass(String var1, String var2, String var3);

    public abstract IPath getProjectRelativePath();

    public boolean isOutputFolder() {
        return false;
    }

    public abstract boolean isPackage(String var1);

    public void cleanup() {
    }

    public void reset() {
    }

    public abstract String debugPathString();
}

