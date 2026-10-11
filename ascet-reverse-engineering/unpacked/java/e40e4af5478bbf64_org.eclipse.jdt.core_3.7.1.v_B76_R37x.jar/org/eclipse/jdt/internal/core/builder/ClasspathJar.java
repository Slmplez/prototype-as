/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Date;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathJar
extends ClasspathLocation {
    static SimpleLookupTable PackageCache = new SimpleLookupTable();
    String zipFilename;
    IFile resource;
    ZipFile zipFile;
    long lastModified;
    boolean closeZipFileAtEnd;
    SimpleSet knownPackageNames;
    AccessRuleSet accessRuleSet;

    static SimpleSet findPackageSet(ClasspathJar jar) {
        String zipFileName = jar.zipFilename;
        long lastModified = jar.lastModified();
        long fileSize = new File(zipFileName).length();
        PackageCacheEntry cacheEntry = (PackageCacheEntry)PackageCache.get(zipFileName);
        if (cacheEntry != null && cacheEntry.lastModified == lastModified && cacheEntry.fileSize == fileSize) {
            return cacheEntry.packageSet;
        }
        SimpleSet packageSet = new SimpleSet(41);
        packageSet.add("");
        Enumeration<? extends ZipEntry> e = jar.zipFile.entries();
        block0: while (e.hasMoreElements()) {
            String fileName = e.nextElement().getName();
            int last = fileName.lastIndexOf(47);
            while (last > 0) {
                String packageName = fileName.substring(0, last);
                if (packageSet.addIfNotIncluded(packageName) == null) continue block0;
                last = packageName.lastIndexOf(47);
            }
        }
        PackageCache.put(zipFileName, new PackageCacheEntry(lastModified, fileSize, packageSet));
        return packageSet;
    }

    ClasspathJar(IFile resource, AccessRuleSet accessRuleSet) {
        this.resource = resource;
        try {
            URI location = resource.getLocationURI();
            if (location == null) {
                this.zipFilename = "";
            } else {
                File localFile = Util.toLocalFile(location, null);
                this.zipFilename = localFile.getPath();
            }
        }
        catch (CoreException coreException) {}
        this.zipFile = null;
        this.knownPackageNames = null;
        this.accessRuleSet = accessRuleSet;
    }

    ClasspathJar(String zipFilename, long lastModified, AccessRuleSet accessRuleSet) {
        this.zipFilename = zipFilename;
        this.lastModified = lastModified;
        this.zipFile = null;
        this.knownPackageNames = null;
        this.accessRuleSet = accessRuleSet;
    }

    public ClasspathJar(ZipFile zipFile, AccessRuleSet accessRuleSet) {
        this.zipFilename = zipFile.getName();
        this.zipFile = zipFile;
        this.closeZipFileAtEnd = false;
        this.knownPackageNames = null;
        this.accessRuleSet = accessRuleSet;
    }

    public void cleanup() {
        if (this.zipFile != null && this.closeZipFileAtEnd) {
            try {
                this.zipFile.close();
            }
            catch (IOException iOException) {}
            this.zipFile = null;
        }
        this.knownPackageNames = null;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof ClasspathJar)) {
            return false;
        }
        ClasspathJar jar = (ClasspathJar)o;
        if (!(this.accessRuleSet == jar.accessRuleSet || this.accessRuleSet != null && this.accessRuleSet.equals(jar.accessRuleSet))) {
            return false;
        }
        return this.zipFilename.equals(jar.zipFilename) && this.lastModified() == jar.lastModified();
    }

    public NameEnvironmentAnswer findClass(String binaryFileName, String qualifiedPackageName, String qualifiedBinaryFileName) {
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        try {
            ClassFileReader reader = ClassFileReader.read(this.zipFile, qualifiedBinaryFileName);
            if (reader != null) {
                if (this.accessRuleSet == null) {
                    return new NameEnvironmentAnswer(reader, null);
                }
                String fileNameWithoutExtension = qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - SuffixConstants.SUFFIX_CLASS.length);
                return new NameEnvironmentAnswer(reader, this.accessRuleSet.getViolatedRestriction(fileNameWithoutExtension.toCharArray()));
            }
        }
        catch (IOException iOException) {
        }
        catch (ClassFormatException classFormatException) {}
        return null;
    }

    public IPath getProjectRelativePath() {
        if (this.resource == null) {
            return null;
        }
        return this.resource.getProjectRelativePath();
    }

    public int hashCode() {
        return this.zipFilename == null ? super.hashCode() : this.zipFilename.hashCode();
    }

    public boolean isPackage(String qualifiedPackageName) {
        if (this.knownPackageNames != null) {
            return this.knownPackageNames.includes(qualifiedPackageName);
        }
        try {
            if (this.zipFile == null) {
                if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                    System.out.println("(" + Thread.currentThread() + ") [ClasspathJar.isPackage(String)] Creating ZipFile on " + this.zipFilename);
                }
                this.zipFile = new ZipFile(this.zipFilename);
                this.closeZipFileAtEnd = true;
            }
            this.knownPackageNames = ClasspathJar.findPackageSet(this);
        }
        catch (Exception exception) {
            this.knownPackageNames = new SimpleSet();
        }
        return this.knownPackageNames.includes(qualifiedPackageName);
    }

    public long lastModified() {
        if (this.lastModified == 0L) {
            this.lastModified = new File(this.zipFilename).lastModified();
        }
        return this.lastModified;
    }

    public String toString() {
        String start = "Classpath jar file " + this.zipFilename;
        if (this.accessRuleSet == null) {
            return start;
        }
        return String.valueOf(start) + " with " + this.accessRuleSet;
    }

    public String debugPathString() {
        long time = this.lastModified();
        if (time == 0L) {
            return this.zipFilename;
        }
        return String.valueOf(this.zipFilename) + '(' + new Date(time) + " : " + time + ')';
    }

    static class PackageCacheEntry {
        long lastModified;
        long fileSize;
        SimpleSet packageSet;

        PackageCacheEntry(long lastModified, long fileSize, SimpleSet packageSet) {
            this.lastModified = lastModified;
            this.fileSize = fileSize;
            this.packageSet = packageSet;
        }
    }
}

