/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Hashtable;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.ClasspathLocation;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClasspathDirectory
extends ClasspathLocation {
    private Hashtable directoryCache;
    private String[] missingPackageHolder = new String[1];
    private int mode;
    private String encoding;

    ClasspathDirectory(File directory, String encoding, int mode, AccessRuleSet accessRuleSet, String destinationPath) {
        super(accessRuleSet, destinationPath);
        this.mode = mode;
        try {
            this.path = directory.getCanonicalPath();
        }
        catch (IOException iOException) {
            this.path = directory.getAbsolutePath();
        }
        if (!this.path.endsWith(File.separator)) {
            this.path = String.valueOf(this.path) + File.separator;
        }
        this.directoryCache = new Hashtable(11);
        this.encoding = encoding;
    }

    String[] directoryList(String qualifiedPackageName) {
        String[] dirList = (String[])this.directoryCache.get(qualifiedPackageName);
        if (dirList == this.missingPackageHolder) {
            return null;
        }
        if (dirList != null) {
            return dirList;
        }
        File dir = new File(String.valueOf(this.path) + qualifiedPackageName);
        if (dir.isDirectory()) {
            String parentPackage;
            String packageName;
            int index = qualifiedPackageName.length();
            int last = qualifiedPackageName.lastIndexOf(File.separatorChar);
            while (--index > last && !ScannerHelper.isUpperCase(qualifiedPackageName.charAt(index))) {
            }
            if (index <= last || !(last != -1 ? !this.doesFileExist(packageName = qualifiedPackageName.substring(last + 1), parentPackage = qualifiedPackageName.substring(0, last)) : !this.doesFileExist(qualifiedPackageName, Util.EMPTY_STRING))) {
                dirList = dir.list();
                if (dirList == null) {
                    dirList = CharOperation.NO_STRINGS;
                }
                this.directoryCache.put(qualifiedPackageName, dirList);
                return dirList;
            }
        }
        this.directoryCache.put(qualifiedPackageName, this.missingPackageHolder);
        return null;
    }

    boolean doesFileExist(String fileName, String qualifiedPackageName) {
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

    public List fetchLinkedJars(FileSystem.ClasspathSectionProblemReporter problemReporter) {
        return null;
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName) {
        return this.findClass(typeName, qualifiedPackageName, qualifiedBinaryFileName, false);
    }

    public NameEnvironmentAnswer findClass(char[] typeName, String qualifiedPackageName, String qualifiedBinaryFileName, boolean asBinaryOnly) {
        boolean sourceExists;
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        String fileName = new String(typeName);
        boolean binaryExists = (this.mode & 2) != 0 && this.doesFileExist(String.valueOf(fileName) + ".class", qualifiedPackageName);
        boolean bl = sourceExists = (this.mode & 1) != 0 && this.doesFileExist(String.valueOf(fileName) + ".java", qualifiedPackageName);
        if (sourceExists && !asBinaryOnly) {
            String fullSourcePath = String.valueOf(this.path) + qualifiedBinaryFileName.substring(0, qualifiedBinaryFileName.length() - 6) + ".java";
            if (!binaryExists) {
                return new NameEnvironmentAnswer(new CompilationUnit(null, fullSourcePath, this.encoding, this.destinationPath), this.fetchAccessRestriction(qualifiedBinaryFileName));
            }
            String fullBinaryPath = String.valueOf(this.path) + qualifiedBinaryFileName;
            long binaryModified = new File(fullBinaryPath).lastModified();
            long sourceModified = new File(fullSourcePath).lastModified();
            if (sourceModified > binaryModified) {
                return new NameEnvironmentAnswer(new CompilationUnit(null, fullSourcePath, this.encoding, this.destinationPath), this.fetchAccessRestriction(qualifiedBinaryFileName));
            }
        }
        if (binaryExists) {
            try {
                String typeSearched;
                ClassFileReader reader = ClassFileReader.read(String.valueOf(this.path) + qualifiedBinaryFileName);
                String string = typeSearched = qualifiedPackageName.length() > 0 ? String.valueOf(qualifiedPackageName.replace(File.separatorChar, '/')) + "/" + fileName : fileName;
                if (!CharOperation.equals(reader.getName(), typeSearched.toCharArray())) {
                    reader = null;
                }
                if (reader != null) {
                    return new NameEnvironmentAnswer(reader, this.fetchAccessRestriction(qualifiedBinaryFileName));
                }
            }
            catch (IOException iOException) {
            }
            catch (ClassFormatException classFormatException) {}
        }
        return null;
    }

    public char[][][] findTypeNames(String qualifiedPackageName) {
        int length;
        if (!this.isPackage(qualifiedPackageName)) {
            return null;
        }
        File dir = new File(String.valueOf(this.path) + qualifiedPackageName);
        if (!dir.exists() || !dir.isDirectory()) {
            return null;
        }
        String[] listFiles = dir.list(new FilenameFilter(){

            public boolean accept(File directory, String name) {
                String fileName = name.toLowerCase();
                return fileName.endsWith(".class") || fileName.endsWith(".java");
            }
        });
        if (listFiles == null || (length = listFiles.length) == 0) {
            return null;
        }
        char[][][] result = new char[length][][];
        char[][] packageName = CharOperation.splitOn(File.separatorChar, qualifiedPackageName.toCharArray());
        int i = 0;
        while (i < length) {
            String fileName = listFiles[i];
            int indexOfLastDot = fileName.indexOf(46);
            result[i] = CharOperation.arrayConcat(packageName, fileName.substring(0, indexOfLastDot).toCharArray());
            ++i;
        }
        return result;
    }

    public void initialize() throws IOException {
    }

    public boolean isPackage(String qualifiedPackageName) {
        return this.directoryList(qualifiedPackageName) != null;
    }

    public void reset() {
        this.directoryCache = new Hashtable(11);
    }

    public String toString() {
        return "ClasspathDirectory " + this.path;
    }

    public char[] normalizedPath() {
        if (this.normalizedPath == null) {
            this.normalizedPath = this.path.toCharArray();
            if (File.separatorChar == '\\') {
                CharOperation.replace(this.normalizedPath, '\\', '/');
            }
        }
        return this.normalizedPath;
    }

    public String getPath() {
        return this.path;
    }

    public int getMode() {
        return this.mode;
    }
}

