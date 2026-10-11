/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.ClasspathDirectory;
import org.eclipse.jdt.internal.compiler.batch.ClasspathJar;
import org.eclipse.jdt.internal.compiler.batch.ClasspathLocation;
import org.eclipse.jdt.internal.compiler.batch.ClasspathSourceJar;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;

public class FileSystem
implements INameEnvironment,
SuffixConstants {
    Classpath[] classpaths;
    Set knownFileNames;

    public FileSystem(String[] classpathNames, String[] initialFileNames, String encoding) {
        int classpathSize = classpathNames.length;
        this.classpaths = new Classpath[classpathSize];
        int counter = 0;
        int i = 0;
        while (i < classpathSize) {
            Classpath classpath = FileSystem.getClasspath(classpathNames[i], encoding, null);
            try {
                classpath.initialize();
                this.classpaths[counter++] = classpath;
            }
            catch (IOException iOException) {}
            ++i;
        }
        if (counter != classpathSize) {
            this.classpaths = new Classpath[counter];
            System.arraycopy(this.classpaths, 0, this.classpaths, 0, counter);
        }
        this.initializeKnownFileNames(initialFileNames);
    }

    protected FileSystem(Classpath[] paths, String[] initialFileNames) {
        int length = paths.length;
        int counter = 0;
        this.classpaths = new Classpath[length];
        int i = 0;
        while (i < length) {
            Classpath classpath = paths[i];
            try {
                classpath.initialize();
                this.classpaths[counter++] = classpath;
            }
            catch (IOException iOException) {}
            ++i;
        }
        if (counter != length) {
            this.classpaths = new Classpath[counter];
            System.arraycopy(this.classpaths, 0, this.classpaths, 0, counter);
        }
        this.initializeKnownFileNames(initialFileNames);
    }

    public static Classpath getClasspath(String classpathName, String encoding, AccessRuleSet accessRuleSet) {
        return FileSystem.getClasspath(classpathName, encoding, false, accessRuleSet, null);
    }

    public static Classpath getClasspath(String classpathName, String encoding, boolean isSourceOnly, AccessRuleSet accessRuleSet, String destinationPath) {
        ClasspathLocation result = null;
        File file = new File(FileSystem.convertPathSeparators(classpathName));
        if (file.isDirectory()) {
            if (file.exists()) {
                result = new ClasspathDirectory(file, encoding, isSourceOnly ? 1 : 3, accessRuleSet, destinationPath == null || destinationPath == "none" ? destinationPath : FileSystem.convertPathSeparators(destinationPath));
            }
        } else if (Util.isPotentialZipArchive(classpathName)) {
            if (isSourceOnly) {
                result = new ClasspathSourceJar(file, true, accessRuleSet, encoding, destinationPath == null || destinationPath == "none" ? destinationPath : FileSystem.convertPathSeparators(destinationPath));
            } else if (destinationPath == null) {
                result = new ClasspathJar(file, true, accessRuleSet, null);
            }
        }
        return result;
    }

    private void initializeKnownFileNames(String[] initialFileNames) {
        if (initialFileNames == null) {
            this.knownFileNames = new HashSet(0);
            return;
        }
        this.knownFileNames = new HashSet(initialFileNames.length * 2);
        int i = initialFileNames.length;
        while (--i >= 0) {
            File compilationUnitFile = new File(initialFileNames[i]);
            char[] fileName = null;
            try {
                fileName = compilationUnitFile.getCanonicalPath().toCharArray();
            }
            catch (IOException iOException) {
                continue;
            }
            char[] matchingPathName = null;
            int lastIndexOf = CharOperation.lastIndexOf('.', fileName);
            if (lastIndexOf != -1) {
                fileName = CharOperation.subarray(fileName, 0, lastIndexOf);
            }
            CharOperation.replace(fileName, '\\', '/');
            boolean globalPathMatches = false;
            int j = 0;
            int max = this.classpaths.length;
            while (j < max) {
                char[] matchCandidate = this.classpaths[j].normalizedPath();
                boolean currentPathMatch = false;
                if (this.classpaths[j] instanceof ClasspathDirectory && CharOperation.prefixEquals(matchCandidate, fileName)) {
                    currentPathMatch = true;
                    if (matchingPathName == null) {
                        matchingPathName = matchCandidate;
                    } else if (currentPathMatch) {
                        if (matchCandidate.length > matchingPathName.length) {
                            matchingPathName = matchCandidate;
                        }
                    } else if (!globalPathMatches && matchCandidate.length < matchingPathName.length) {
                        matchingPathName = matchCandidate;
                    }
                    if (currentPathMatch) {
                        globalPathMatches = true;
                    }
                }
                ++j;
            }
            if (matchingPathName == null) {
                this.knownFileNames.add(new String(fileName));
            } else {
                this.knownFileNames.add(new String(CharOperation.subarray(fileName, matchingPathName.length, fileName.length)));
            }
            matchingPathName = null;
        }
    }

    public void cleanup() {
        int i = 0;
        int max = this.classpaths.length;
        while (i < max) {
            this.classpaths[i].reset();
            ++i;
        }
    }

    private static String convertPathSeparators(String path) {
        return File.separatorChar == '/' ? path.replace('\\', '/') : path.replace('/', '\\');
    }

    private NameEnvironmentAnswer findClass(String qualifiedTypeName, char[] typeName, boolean asBinaryOnly) {
        if (this.knownFileNames.contains(qualifiedTypeName)) {
            return null;
        }
        String qualifiedBinaryFileName = String.valueOf(qualifiedTypeName) + ".class";
        String qualifiedPackageName = qualifiedTypeName.length() == typeName.length ? Util.EMPTY_STRING : qualifiedBinaryFileName.substring(0, qualifiedTypeName.length() - typeName.length - 1);
        String qp2 = File.separatorChar == '/' ? qualifiedPackageName : qualifiedPackageName.replace('/', File.separatorChar);
        NameEnvironmentAnswer suggestedAnswer = null;
        if (qualifiedPackageName == qp2) {
            int i = 0;
            int length = this.classpaths.length;
            while (i < length) {
                NameEnvironmentAnswer answer = this.classpaths[i].findClass(typeName, qualifiedPackageName, qualifiedBinaryFileName, asBinaryOnly);
                if (answer != null) {
                    if (!answer.ignoreIfBetter()) {
                        if (answer.isBetter(suggestedAnswer)) {
                            return answer;
                        }
                    } else if (answer.isBetter(suggestedAnswer)) {
                        suggestedAnswer = answer;
                    }
                }
                ++i;
            }
        } else {
            String qb2 = qualifiedBinaryFileName.replace('/', File.separatorChar);
            int i = 0;
            int length = this.classpaths.length;
            while (i < length) {
                NameEnvironmentAnswer answer;
                Classpath p = this.classpaths[i];
                NameEnvironmentAnswer nameEnvironmentAnswer = answer = p instanceof ClasspathJar ? p.findClass(typeName, qualifiedPackageName, qualifiedBinaryFileName, asBinaryOnly) : p.findClass(typeName, qp2, qb2, asBinaryOnly);
                if (answer != null) {
                    if (!answer.ignoreIfBetter()) {
                        if (answer.isBetter(suggestedAnswer)) {
                            return answer;
                        }
                    } else if (answer.isBetter(suggestedAnswer)) {
                        suggestedAnswer = answer;
                    }
                }
                ++i;
            }
        }
        if (suggestedAnswer != null) {
            return suggestedAnswer;
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[][] compoundName) {
        if (compoundName != null) {
            return this.findClass(new String(CharOperation.concatWith(compoundName, '/')), compoundName[compoundName.length - 1], false);
        }
        return null;
    }

    public char[][][] findTypeNames(char[][] packageName) {
        Object result;
        block10: {
            String qualifiedPackageName2;
            result = null;
            if (packageName == null) break block10;
            String qualifiedPackageName = new String(CharOperation.concatWith(packageName, '/'));
            String string = qualifiedPackageName2 = File.separatorChar == '/' ? qualifiedPackageName : qualifiedPackageName.replace('/', File.separatorChar);
            if (qualifiedPackageName == qualifiedPackageName2) {
                int i = 0;
                int length = this.classpaths.length;
                while (i < length) {
                    char[][][] answers = this.classpaths[i].findTypeNames(qualifiedPackageName);
                    if (answers != null) {
                        if (result == null) {
                            result = answers;
                        } else {
                            int resultLength = ((char[][][])result).length;
                            int answersLength = answers.length;
                            char[][][] cArray = result;
                            char[][][] cArrayArray = new char[answersLength + resultLength][][];
                            result = cArrayArray;
                            System.arraycopy(cArray, 0, cArrayArray, 0, resultLength);
                            System.arraycopy(answers, 0, result, resultLength, answersLength);
                        }
                    }
                    ++i;
                }
            } else {
                int i = 0;
                int length = this.classpaths.length;
                while (i < length) {
                    char[][][] answers;
                    Classpath p = this.classpaths[i];
                    char[][][] cArray = answers = p instanceof ClasspathJar ? p.findTypeNames(qualifiedPackageName) : p.findTypeNames(qualifiedPackageName2);
                    if (answers != null) {
                        if (result == null) {
                            result = answers;
                        } else {
                            int resultLength = ((char[][][])result).length;
                            int answersLength = answers.length;
                            char[][][] cArray2 = result;
                            char[][][] cArrayArray = new char[answersLength + resultLength][][];
                            result = cArrayArray;
                            System.arraycopy(cArray2, 0, cArrayArray, 0, resultLength);
                            System.arraycopy(answers, 0, result, resultLength, answersLength);
                        }
                    }
                    ++i;
                }
            }
        }
        return result;
    }

    public NameEnvironmentAnswer findType(char[][] compoundName, boolean asBinaryOnly) {
        if (compoundName != null) {
            return this.findClass(new String(CharOperation.concatWith(compoundName, '/')), compoundName[compoundName.length - 1], asBinaryOnly);
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[] typeName, char[][] packageName) {
        if (typeName != null) {
            return this.findClass(new String(CharOperation.concatWith(packageName, typeName, '/')), typeName, false);
        }
        return null;
    }

    public boolean isPackage(char[][] compoundName, char[] packageName) {
        String qp2;
        String qualifiedPackageName = new String(CharOperation.concatWith(compoundName, packageName, '/'));
        String string = qp2 = File.separatorChar == '/' ? qualifiedPackageName : qualifiedPackageName.replace('/', File.separatorChar);
        if (qualifiedPackageName == qp2) {
            int i = 0;
            int length = this.classpaths.length;
            while (i < length) {
                if (this.classpaths[i].isPackage(qualifiedPackageName)) {
                    return true;
                }
                ++i;
            }
        } else {
            int i = 0;
            int length = this.classpaths.length;
            while (i < length) {
                Classpath p = this.classpaths[i];
                if (p instanceof ClasspathJar ? p.isPackage(qualifiedPackageName) : p.isPackage(qp2)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public static interface Classpath {
        public char[][][] findTypeNames(String var1);

        public NameEnvironmentAnswer findClass(char[] var1, String var2, String var3);

        public NameEnvironmentAnswer findClass(char[] var1, String var2, String var3, boolean var4);

        public boolean isPackage(String var1);

        public List fetchLinkedJars(ClasspathSectionProblemReporter var1);

        public void reset();

        public char[] normalizedPath();

        public String getPath();

        public void initialize() throws IOException;
    }

    public static class ClasspathNormalizer {
        public static ArrayList normalize(ArrayList classpaths) {
            ArrayList<Classpath> normalizedClasspath = new ArrayList<Classpath>();
            HashSet<Classpath> cache = new HashSet<Classpath>();
            Iterator iterator = classpaths.iterator();
            while (iterator.hasNext()) {
                Classpath classpath = (Classpath)iterator.next();
                if (cache.contains(classpath)) continue;
                normalizedClasspath.add(classpath);
                cache.add(classpath);
            }
            return normalizedClasspath;
        }
    }

    public static interface ClasspathSectionProblemReporter {
        public void invalidClasspathSection(String var1);

        public void multipleClasspathSections(String var1);
    }
}

