/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.util.HashMap;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.builder.ClasspathJar;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.search.matching.ClasspathSourceDirectory;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchNameEnvironment
implements INameEnvironment,
SuffixConstants {
    ClasspathLocation[] locations;
    HashMap workingCopies;

    public JavaSearchNameEnvironment(IJavaProject javaProject, org.eclipse.jdt.core.ICompilationUnit[] copies) {
        this.computeClasspathLocations(javaProject.getProject().getWorkspace().getRoot(), (JavaProject)javaProject);
        try {
            int length = copies == null ? 0 : copies.length;
            this.workingCopies = new HashMap(length);
            if (copies != null) {
                int i = 0;
                while (i < length) {
                    org.eclipse.jdt.core.ICompilationUnit workingCopy = copies[i];
                    IPackageDeclaration[] pkgs = workingCopy.getPackageDeclarations();
                    String pkg = pkgs.length > 0 ? pkgs[0].getElementName() : "";
                    String cuName = workingCopy.getElementName();
                    String mainTypeName = Util.getNameWithoutJavaLikeExtension(cuName);
                    String qualifiedMainTypeName = pkg.length() == 0 ? mainTypeName : String.valueOf(pkg.replace('.', '/')) + '/' + mainTypeName;
                    this.workingCopies.put(qualifiedMainTypeName, workingCopy);
                    ++i;
                }
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    public void cleanup() {
        int i = 0;
        int length = this.locations.length;
        while (i < length) {
            this.locations[i].cleanup();
            ++i;
        }
    }

    private void computeClasspathLocations(IWorkspaceRoot workspaceRoot, JavaProject javaProject) {
        IPackageFragmentRoot[] roots = null;
        try {
            roots = javaProject.getAllPackageFragmentRoots();
        }
        catch (JavaModelException javaModelException) {
            this.locations = new ClasspathLocation[0];
            return;
        }
        int length = roots.length;
        ClasspathLocation[] cpLocations = new ClasspathLocation[length];
        int index = 0;
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        int i = 0;
        while (i < length) {
            PackageFragmentRoot root = (PackageFragmentRoot)roots[i];
            IPath path = root.getPath();
            try {
                if (root.isArchive()) {
                    ZipFile zipFile = manager.getZipFile(path);
                    cpLocations[index++] = new ClasspathJar(zipFile, ((ClasspathEntry)root.getRawClasspathEntry()).getAccessRuleSet());
                } else {
                    Object target = JavaModel.getTarget(path, true);
                    if (target == null) {
                        ClasspathLocation[] classpathLocationArray = cpLocations;
                        cpLocations = new ClasspathLocation[cpLocations.length - 1];
                        System.arraycopy(classpathLocationArray, 0, cpLocations, 0, index);
                    } else {
                        cpLocations[index++] = root.getKind() == 1 ? new ClasspathSourceDirectory((IContainer)target, root.fullExclusionPatternChars(), root.fullInclusionPatternChars()) : ClasspathLocation.forBinaryFolder((IContainer)target, false, ((ClasspathEntry)root.getRawClasspathEntry()).getAccessRuleSet());
                    }
                }
            }
            catch (CoreException coreException) {
                ClasspathLocation[] classpathLocationArray = cpLocations;
                cpLocations = new ClasspathLocation[cpLocations.length - 1];
                System.arraycopy(classpathLocationArray, 0, cpLocations, 0, index);
            }
            ++i;
        }
        this.locations = cpLocations;
    }

    private NameEnvironmentAnswer findClass(String qualifiedTypeName, char[] typeName) {
        String binaryFileName = null;
        String qBinaryFileName = null;
        String sourceFileName = null;
        String qSourceFileName = null;
        String qPackageName = null;
        NameEnvironmentAnswer suggestedAnswer = null;
        int i = 0;
        int length = this.locations.length;
        while (i < length) {
            NameEnvironmentAnswer answer;
            ClasspathLocation location = this.locations[i];
            if (location instanceof ClasspathSourceDirectory) {
                ICompilationUnit workingCopy;
                if (sourceFileName == null) {
                    sourceFileName = qSourceFileName = qualifiedTypeName;
                    qPackageName = "";
                    if (qualifiedTypeName.length() > typeName.length) {
                        int typeNameStart = qSourceFileName.length() - typeName.length;
                        qPackageName = qSourceFileName.substring(0, typeNameStart - 1);
                        sourceFileName = qSourceFileName.substring(typeNameStart);
                    }
                }
                answer = (workingCopy = (ICompilationUnit)this.workingCopies.get(qualifiedTypeName)) != null ? new NameEnvironmentAnswer(workingCopy, null) : location.findClass(sourceFileName, qPackageName, qSourceFileName);
            } else {
                if (binaryFileName == null) {
                    binaryFileName = qBinaryFileName = String.valueOf(qualifiedTypeName) + ".class";
                    qPackageName = "";
                    if (qualifiedTypeName.length() > typeName.length) {
                        int typeNameStart = qBinaryFileName.length() - typeName.length - 6;
                        qPackageName = qBinaryFileName.substring(0, typeNameStart - 1);
                        binaryFileName = qBinaryFileName.substring(typeNameStart);
                    }
                }
                answer = location.findClass(binaryFileName, qPackageName, qBinaryFileName);
            }
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
        if (suggestedAnswer != null) {
            return suggestedAnswer;
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[] typeName, char[][] packageName) {
        if (typeName != null) {
            return this.findClass(new String(CharOperation.concatWith(packageName, typeName, '/')), typeName);
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[][] compoundName) {
        if (compoundName != null) {
            return this.findClass(new String(CharOperation.concatWith(compoundName, '/')), compoundName[compoundName.length - 1]);
        }
        return null;
    }

    public boolean isPackage(char[][] compoundName, char[] packageName) {
        return this.isPackage(new String(CharOperation.concatWith(compoundName, packageName, '/')));
    }

    public boolean isPackage(String qualifiedPackageName) {
        int i = 0;
        int length = this.locations.length;
        while (i < length) {
            if (this.locations[i].isPackage(qualifiedPackageName)) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

