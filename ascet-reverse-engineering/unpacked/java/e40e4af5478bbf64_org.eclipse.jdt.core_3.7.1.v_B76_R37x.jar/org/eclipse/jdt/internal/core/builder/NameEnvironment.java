/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.AbortIncrementalBuildException;
import org.eclipse.jdt.internal.core.builder.BuildNotifier;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.SourceFile;

public class NameEnvironment
implements INameEnvironment,
SuffixConstants {
    boolean isIncrementalBuild = false;
    ClasspathMultiDirectory[] sourceLocations;
    ClasspathLocation[] binaryLocations;
    BuildNotifier notifier;
    SimpleSet initialTypeNames;
    SimpleLookupTable additionalUnits;

    NameEnvironment(IWorkspaceRoot root, JavaProject javaProject, SimpleLookupTable binaryLocationsPerProject, BuildNotifier notifier) throws CoreException {
        this.notifier = notifier;
        this.computeClasspathLocations(root, javaProject, binaryLocationsPerProject);
        this.setNames(null, null);
    }

    public NameEnvironment(IJavaProject javaProject) {
        try {
            this.computeClasspathLocations(javaProject.getProject().getWorkspace().getRoot(), (JavaProject)javaProject, null);
        }
        catch (CoreException coreException) {
            this.sourceLocations = new ClasspathMultiDirectory[0];
            this.binaryLocations = new ClasspathLocation[0];
        }
        this.setNames(null, null);
    }

    private void computeClasspathLocations(IWorkspaceRoot root, JavaProject javaProject, SimpleLookupTable binaryLocationsPerProject) throws CoreException {
        IMarker cycleMarker = javaProject.getCycleMarker();
        if (cycleMarker != null) {
            int severity;
            int n = severity = "error".equals(javaProject.getOption("org.eclipse.jdt.core.circularClasspath", true)) ? 2 : 1;
            if (severity != cycleMarker.getAttribute("severity", severity)) {
                cycleMarker.setAttribute("severity", severity);
            }
        }
        IClasspathEntry[] classpathEntries = javaProject.getExpandedClasspath();
        ArrayList<ClasspathLocation> sLocations = new ArrayList<ClasspathLocation>(classpathEntries.length);
        ArrayList<ClasspathLocation> bLocations = new ArrayList<ClasspathLocation>(classpathEntries.length);
        int i = 0;
        int l = classpathEntries.length;
        while (i < l) {
            ClasspathEntry entry = (ClasspathEntry)classpathEntries[i];
            IPath path = entry.getPath();
            Object target = JavaModel.getTarget(path, true);
            if (target != null) {
                switch (entry.getEntryKind()) {
                    case 3: {
                        IProject outputFolder;
                        IPath outputPath;
                        if (!(target instanceof IContainer)) break;
                        IPath iPath = outputPath = entry.getOutputLocation() != null ? entry.getOutputLocation() : javaProject.getOutputLocation();
                        if (outputPath.segmentCount() == 1) {
                            outputFolder = javaProject.getProject();
                        } else {
                            outputFolder = root.getFolder(outputPath);
                            if (!outputFolder.exists()) {
                                this.createOutputFolder((IContainer)outputFolder);
                            }
                        }
                        sLocations.add(ClasspathLocation.forSourceFolder((IContainer)target, (IContainer)outputFolder, entry.fullInclusionPatternChars(), entry.fullExclusionPatternChars()));
                        break;
                    }
                    case 2: {
                        IProject prereqProject;
                        if (!(target instanceof IProject) || !JavaProject.hasJavaNature(prereqProject = (IProject)target)) break;
                        JavaProject prereqJavaProject = (JavaProject)JavaCore.create(prereqProject);
                        IClasspathEntry[] prereqClasspathEntries = prereqJavaProject.getRawClasspath();
                        ArrayList<IProject> seen = new ArrayList<IProject>();
                        int j = 0;
                        int m = prereqClasspathEntries.length;
                        while (j < m) {
                            Object prereqTarget;
                            IClasspathEntry prereqEntry = prereqClasspathEntries[j];
                            if (prereqEntry.getEntryKind() == 3 && (prereqTarget = JavaModel.getTarget(prereqEntry.getPath(), true)) instanceof IContainer) {
                                IProject binaryFolder;
                                IPath prereqOutputPath = prereqEntry.getOutputLocation() != null ? prereqEntry.getOutputLocation() : prereqJavaProject.getOutputLocation();
                                Object object = binaryFolder = prereqOutputPath.segmentCount() == 1 ? prereqProject : root.getFolder(prereqOutputPath);
                                if (binaryFolder.exists() && !seen.contains(binaryFolder)) {
                                    seen.add(binaryFolder);
                                    ClasspathLocation bLocation = ClasspathLocation.forBinaryFolder((IContainer)binaryFolder, true, entry.getAccessRuleSet());
                                    bLocations.add(bLocation);
                                    if (binaryLocationsPerProject != null) {
                                        ClasspathLocation[] existingLocations = (ClasspathLocation[])binaryLocationsPerProject.get(prereqProject);
                                        if (existingLocations == null) {
                                            existingLocations = new ClasspathLocation[]{bLocation};
                                        } else {
                                            int size = existingLocations.length;
                                            ClasspathLocation[] classpathLocationArray = existingLocations;
                                            existingLocations = new ClasspathLocation[size + 1];
                                            System.arraycopy(classpathLocationArray, 0, existingLocations, 0, size);
                                            existingLocations[size] = bLocation;
                                        }
                                        binaryLocationsPerProject.put(prereqProject, existingLocations);
                                    }
                                }
                            }
                            ++j;
                        }
                        break;
                    }
                    case 1: {
                        if (target instanceof IResource) {
                            AccessRuleSet accessRuleSet;
                            IResource resource = (IResource)target;
                            ClasspathLocation bLocation = null;
                            if (resource instanceof IFile) {
                                accessRuleSet = "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true)) ? null : entry.getAccessRuleSet();
                                bLocation = ClasspathLocation.forLibrary((IFile)resource, accessRuleSet);
                            } else if (resource instanceof IContainer) {
                                accessRuleSet = "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true)) ? null : entry.getAccessRuleSet();
                                bLocation = ClasspathLocation.forBinaryFolder((IContainer)target, false, accessRuleSet);
                            }
                            bLocations.add(bLocation);
                            if (binaryLocationsPerProject == null) break;
                            IProject p = resource.getProject();
                            ClasspathLocation[] existingLocations = (ClasspathLocation[])binaryLocationsPerProject.get(p);
                            if (existingLocations == null) {
                                existingLocations = new ClasspathLocation[]{bLocation};
                            } else {
                                int size = existingLocations.length;
                                ClasspathLocation[] classpathLocationArray = existingLocations;
                                existingLocations = new ClasspathLocation[size + 1];
                                System.arraycopy(classpathLocationArray, 0, existingLocations, 0, size);
                                existingLocations[size] = bLocation;
                            }
                            binaryLocationsPerProject.put(p, existingLocations);
                            break;
                        }
                        if (!(target instanceof File)) break;
                        AccessRuleSet accessRuleSet = "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.forbiddenReference", true)) && "ignore".equals(javaProject.getOption("org.eclipse.jdt.core.compiler.problem.discouragedReference", true)) ? null : entry.getAccessRuleSet();
                        bLocations.add(ClasspathLocation.forLibrary(path.toString(), accessRuleSet));
                    }
                }
            }
            ++i;
        }
        ArrayList<ClasspathMultiDirectory> outputFolders = new ArrayList<ClasspathMultiDirectory>(1);
        this.sourceLocations = new ClasspathMultiDirectory[sLocations.size()];
        if (!sLocations.isEmpty()) {
            sLocations.toArray(this.sourceLocations);
            int i2 = 0;
            int l2 = this.sourceLocations.length;
            while (i2 < l2) {
                block32: {
                    ClasspathMultiDirectory md = this.sourceLocations[i2];
                    IPath outputPath = md.binaryFolder.getFullPath();
                    int j = 0;
                    while (j < i2) {
                        if (outputPath.equals((Object)this.sourceLocations[j].binaryFolder.getFullPath())) {
                            md.hasIndependentOutputFolder = this.sourceLocations[j].hasIndependentOutputFolder;
                            break block32;
                        }
                        ++j;
                    }
                    outputFolders.add(md);
                    j = 0;
                    int m = this.sourceLocations.length;
                    while (j < m) {
                        if (!outputPath.equals((Object)this.sourceLocations[j].sourceFolder.getFullPath())) {
                            ++j;
                            continue;
                        }
                        break block32;
                    }
                    md.hasIndependentOutputFolder = true;
                }
                ++i2;
            }
        }
        this.binaryLocations = new ClasspathLocation[outputFolders.size() + bLocations.size()];
        int index = 0;
        int i3 = 0;
        int l3 = outputFolders.size();
        while (i3 < l3) {
            this.binaryLocations[index++] = (ClasspathLocation)outputFolders.get(i3);
            ++i3;
        }
        i3 = 0;
        l3 = bLocations.size();
        while (i3 < l3) {
            this.binaryLocations[index++] = (ClasspathLocation)bLocations.get(i3);
            ++i3;
        }
    }

    public void cleanup() {
        this.initialTypeNames = null;
        this.additionalUnits = null;
        int i = 0;
        int l = this.sourceLocations.length;
        while (i < l) {
            this.sourceLocations[i].cleanup();
            ++i;
        }
        i = 0;
        l = this.binaryLocations.length;
        while (i < l) {
            this.binaryLocations[i].cleanup();
            ++i;
        }
    }

    private void createOutputFolder(IContainer outputFolder) throws CoreException {
        this.createParentFolder(outputFolder.getParent());
        ((IFolder)outputFolder).create(1025, true, null);
    }

    private void createParentFolder(IContainer parent) throws CoreException {
        if (!parent.exists()) {
            this.createParentFolder(parent.getParent());
            ((IFolder)parent).create(true, true, null);
        }
    }

    private NameEnvironmentAnswer findClass(String qualifiedTypeName, char[] typeName) {
        String qBinaryFileName;
        SourceFile unit;
        if (this.notifier != null) {
            this.notifier.checkCancelWithinCompiler();
        }
        if (this.initialTypeNames != null && this.initialTypeNames.includes(qualifiedTypeName)) {
            if (this.isIncrementalBuild) {
                throw new AbortCompilation(true, new AbortIncrementalBuildException(qualifiedTypeName));
            }
            return null;
        }
        if (this.additionalUnits != null && this.sourceLocations.length > 0 && (unit = (SourceFile)this.additionalUnits.get(qualifiedTypeName)) != null) {
            return new NameEnvironmentAnswer(unit, null);
        }
        String binaryFileName = qBinaryFileName = String.valueOf(qualifiedTypeName) + ".class";
        String qPackageName = "";
        if (qualifiedTypeName.length() > typeName.length) {
            int typeNameStart = qBinaryFileName.length() - typeName.length - 6;
            qPackageName = qBinaryFileName.substring(0, typeNameStart - 1);
            binaryFileName = qBinaryFileName.substring(typeNameStart);
        }
        NameEnvironmentAnswer suggestedAnswer = null;
        int i = 0;
        int l = this.binaryLocations.length;
        while (i < l) {
            NameEnvironmentAnswer answer = this.binaryLocations[i].findClass(binaryFileName, qPackageName, qBinaryFileName);
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

    public NameEnvironmentAnswer findType(char[][] compoundName) {
        if (compoundName != null) {
            return this.findClass(new String(CharOperation.concatWith(compoundName, '/')), compoundName[compoundName.length - 1]);
        }
        return null;
    }

    public NameEnvironmentAnswer findType(char[] typeName, char[][] packageName) {
        if (typeName != null) {
            return this.findClass(new String(CharOperation.concatWith(packageName, typeName, '/')), typeName);
        }
        return null;
    }

    public boolean isPackage(char[][] compoundName, char[] packageName) {
        return this.isPackage(new String(CharOperation.concatWith(compoundName, packageName, '/')));
    }

    public boolean isPackage(String qualifiedPackageName) {
        int i = 0;
        int l = this.binaryLocations.length;
        while (i < l) {
            if (this.binaryLocations[i].isPackage(qualifiedPackageName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void setNames(String[] typeNames, SourceFile[] additionalFiles) {
        int l;
        int i;
        if (typeNames == null) {
            this.initialTypeNames = null;
        } else {
            this.initialTypeNames = new SimpleSet(typeNames.length);
            i = 0;
            l = typeNames.length;
            while (i < l) {
                this.initialTypeNames.add(typeNames[i]);
                ++i;
            }
        }
        if (additionalFiles == null) {
            this.additionalUnits = null;
        } else {
            this.additionalUnits = new SimpleLookupTable(additionalFiles.length);
            i = 0;
            l = additionalFiles.length;
            while (i < l) {
                SourceFile additionalUnit = additionalFiles[i];
                if (additionalUnit != null) {
                    this.additionalUnits.put(additionalUnit.initialTypeName, additionalFiles[i]);
                }
                ++i;
            }
        }
        i = 0;
        l = this.sourceLocations.length;
        while (i < l) {
            this.sourceLocations[i].reset();
            ++i;
        }
        i = 0;
        l = this.binaryLocations.length;
        while (i < l) {
            this.binaryLocations[i].reset();
            ++i;
        }
    }
}

