/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.ClasspathLocation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.ManifestAnalyzer;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathJar
extends ClasspathLocation {
    protected File file;
    protected ZipFile zipFile;
    protected boolean closeZipFileAtEnd;
    protected Hashtable packageCache;

    public ClasspathJar(File file, boolean closeZipFileAtEnd, AccessRuleSet accessRuleSet, String destinationPath) {
        super(accessRuleSet, destinationPath);
        this.file = file;
        this.closeZipFileAtEnd = closeZipFileAtEnd;
    }

    /*
     * Loose catch block
     */
    public List fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter problemReporter) {
        ArrayList<ClasspathJar> arrayList;
        InputStream inputStream;
        block18: {
            inputStream = null;
            this.initialize();
            ArrayList<ClasspathJar> result = new ArrayList<ClasspathJar>();
            ZipEntry manifest = this.zipFile.getEntry("META-INF/MANIFEST.MF");
            if (manifest != null) {
                inputStream = this.zipFile.getInputStream(manifest);
                ManifestAnalyzer analyzer = new ManifestAnalyzer();
                boolean success = analyzer.analyzeManifestContents(inputStream);
                List calledFileNames = analyzer.getCalledFileNames();
                if (problemReporter != null) {
                    if (!success || analyzer.getClasspathSectionsCount() == 1 && calledFileNames == null) {
                        problemReporter.invalidClasspathSection(this.getPath());
                    } else if (analyzer.getClasspathSectionsCount() > 1) {
                        problemReporter.multipleClasspathSections(this.getPath());
                    }
                }
                if (calledFileNames != null) {
                    Iterator calledFilesIterator = calledFileNames.iterator();
                    String directoryPath = this.getPath();
                    int lastSeparator = directoryPath.lastIndexOf(File.separatorChar);
                    directoryPath = directoryPath.substring(0, lastSeparator + 1);
                    while (calledFilesIterator.hasNext()) {
                        result.add(new ClasspathJar(new File(String.valueOf(directoryPath) + (String)calledFilesIterator.next()), this.closeZipFileAtEnd, this.accessRuleSet, this.destinationPath));
                    }
                }
            }
            arrayList = result;
            if (inputStream == null) break block18;
            try {
                inputStream.close();
            }
            catch (IOException iOException) {}
        }
        return arrayList;
        catch (IOException iOException) {
            block19: {
                try {
                    if (inputStream == null) break block19;
                }
                catch (Throwable throwable) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    throw throwable;
                }
                try {
                    inputStream.close();
                }
                catch (IOException iOException3) {}
            }
            return null;
        }
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName) {
        return this.findClass(typeName, qualifiedPackageName, qualifiedBinaryFileName, false);
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName, boolean asBinaryOnly) {
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        try {
            ClassFileReader reader = ClassFileReader.read(this.zipFile, qualifiedBinaryFileName);
            if (reader != null) {
                return new NameEnvironmentAnswer(reader, this.fetchAccessRestriction(qualifiedBinaryFileName));
            }
        }
        catch (ClassFormatException classFormatException) {
        }
        catch (IOException iOException) {}
        return null;
    }

    public char[][][] findTypeNames(String qualifiedPackageName) {
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        ArrayList<char[][]> answers = new ArrayList<char[][]>();
        Enumeration<? extends ZipEntry> e = this.zipFile.entries();
        block0: while (e.hasMoreElements()) {
            String fileName = e.nextElement().getName();
            int last = fileName.lastIndexOf(47);
            while (last > 0) {
                String packageName = fileName.substring(0, last);
                if (!qualifiedPackageName.equals(packageName)) continue block0;
                int indexOfDot = fileName.lastIndexOf(46);
                if (indexOfDot == -1) continue;
                String typeName = fileName.substring(last + 1, indexOfDot);
                char[] packageArray = packageName.toCharArray();
                answers.add(CharOperation.arrayConcat(CharOperation.splitOn('/', packageArray), typeName.toCharArray()));
            }
        }
        int size = answers.size();
        if (size != 0) {
            char[][][] result = new char[size][][];
            answers.toArray((T[])result);
            return null;
        }
        return null;
    }

    public void initialize() throws IOException {
        if (this.zipFile == null) {
            this.zipFile = new ZipFile(this.file);
        }
    }

    public boolean isPackage(String qualifiedPackageName) {
        if (this.packageCache != null) {
            return this.packageCache.containsKey(qualifiedPackageName);
        }
        this.packageCache = new Hashtable(41);
        this.packageCache.put(Util.EMPTY_STRING, Util.EMPTY_STRING);
        Enumeration<? extends ZipEntry> e = this.zipFile.entries();
        block0: while (e.hasMoreElements()) {
            String fileName = e.nextElement().getName();
            int last = fileName.lastIndexOf(47);
            while (last > 0) {
                String packageName = fileName.substring(0, last);
                if (this.packageCache.containsKey(packageName)) continue block0;
                this.packageCache.put(packageName, packageName);
                last = packageName.lastIndexOf(47);
            }
        }
        return this.packageCache.containsKey(qualifiedPackageName);
    }

    public void reset() {
        if (this.zipFile != null && this.closeZipFileAtEnd) {
            try {
                this.zipFile.close();
            }
            catch (IOException iOException) {}
            this.zipFile = null;
        }
        this.packageCache = null;
    }

    public String toString() {
        return "Classpath for jar file " + this.file.getPath();
    }

    public char[] normalizedPath() {
        if (this.normalizedPath == null) {
            String path2 = this.getPath();
            char[] rawName = path2.toCharArray();
            if (File.separatorChar == '\\') {
                CharOperation.replace(rawName, '\\', '/');
            }
            this.normalizedPath = CharOperation.subarray(rawName, 0, CharOperation.lastIndexOf('.', rawName));
        }
        return this.normalizedPath;
    }

    public String getPath() {
        if (this.path == null) {
            try {
                this.path = this.file.getCanonicalPath();
            }
            catch (IOException iOException) {
                this.path = this.file.getAbsolutePath();
            }
        }
        return this.path;
    }

    public int getMode() {
        return 2;
    }
}

