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
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceStatus
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.builder.AbortIncrementalBuildException;
import org.eclipse.jdt.internal.core.builder.AbstractImageBuilder;
import org.eclipse.jdt.internal.core.builder.BatchImageBuilder;
import org.eclipse.jdt.internal.core.builder.ClasspathJar;
import org.eclipse.jdt.internal.core.builder.ClasspathLocation;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.CompilationParticipantResult;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.ReferenceCollection;
import org.eclipse.jdt.internal.core.builder.SourceFile;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.builder.StringSet;

public class IncrementalImageBuilder
extends AbstractImageBuilder {
    protected ArrayList sourceFiles;
    protected ArrayList previousSourceFiles;
    protected StringSet qualifiedStrings;
    protected StringSet simpleStrings;
    protected StringSet rootStrings;
    protected SimpleLookupTable secondaryTypesToRemove;
    protected boolean hasStructuralChanges;
    protected int compileLoop;
    protected boolean makeOutputFolderConsistent;
    public static int MaxCompileLoop = 5;

    protected IncrementalImageBuilder(JavaBuilder javaBuilder, State buildState) {
        super(javaBuilder, true, buildState);
        this.nameEnvironment.isIncrementalBuild = true;
        this.makeOutputFolderConsistent = "enabled".equals(javaBuilder.javaProject.getOption("org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder", true));
    }

    protected IncrementalImageBuilder(JavaBuilder javaBuilder) {
        this(javaBuilder, null);
        this.newState.copyFrom(javaBuilder.lastState);
    }

    protected IncrementalImageBuilder(BatchImageBuilder batchBuilder) {
        this(batchBuilder.javaBuilder, batchBuilder.newState);
        this.resetCollections();
    }

    /*
     * Exception decompiling
     */
    public boolean build(SimpleLookupTable deltas) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [11[WHILELOOP]], but top level block is 4[TRYBLOCK]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    protected void buildAfterBatchBuild() {
        if (JavaBuilder.DEBUG) {
            System.out.println("INCREMENTAL build after batch build @ " + new Date(System.currentTimeMillis()));
        }
        try {
            try {
                this.addAffectedSourceFiles();
                while (this.sourceFiles.size() > 0) {
                    this.notifier.checkCancel();
                    SourceFile[] allSourceFiles = new SourceFile[this.sourceFiles.size()];
                    this.sourceFiles.toArray(allSourceFiles);
                    this.resetCollections();
                    this.notifier.setProgressPerCompilationUnit(0.08f / (float)allSourceFiles.length);
                    this.workQueue.addAll(allSourceFiles);
                    this.compile(allSourceFiles);
                    this.removeSecondaryTypes();
                    this.addAffectedSourceFiles();
                }
            }
            catch (CoreException e) {
                throw this.internalException(e);
            }
        }
        finally {
            this.cleanUp();
        }
    }

    protected void addAffectedSourceFiles() {
        if (this.qualifiedStrings.elementSize == 0 && this.simpleStrings.elementSize == 0) {
            return;
        }
        this.addAffectedSourceFiles(this.qualifiedStrings, this.simpleStrings, this.rootStrings, null);
    }

    protected void addAffectedSourceFiles(StringSet qualifiedSet, StringSet simpleSet, StringSet rootSet, StringSet affectedTypes) {
        char[][] internedSimpleNames;
        char[][][] internedQualifiedNames = ReferenceCollection.internQualifiedNames(qualifiedSet);
        if (internedQualifiedNames.length < qualifiedSet.elementSize) {
            internedQualifiedNames = null;
        }
        if ((internedSimpleNames = ReferenceCollection.internSimpleNames(simpleSet, true)).length < simpleSet.elementSize) {
            internedSimpleNames = null;
        }
        char[][] internedRootNames = ReferenceCollection.internSimpleNames(rootSet, false);
        Object[] keyTable = this.newState.references.keyTable;
        Object[] valueTable = this.newState.references.valueTable;
        int i = 0;
        int l = valueTable.length;
        while (i < l) {
            IFile file;
            SourceFile sourceFile;
            ReferenceCollection refs;
            String typeLocator = (String)keyTable[i];
            if (!(typeLocator == null || affectedTypes != null && !affectedTypes.includes(typeLocator) || !(refs = (ReferenceCollection)valueTable[i]).includes(internedQualifiedNames, internedSimpleNames, internedRootNames) || (sourceFile = this.findSourceFile(file = this.javaBuilder.currentProject.getFile(typeLocator), true)) == null || this.sourceFiles.contains(sourceFile) || this.compiledAllAtOnce && this.previousSourceFiles != null && this.previousSourceFiles.contains(sourceFile))) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("  adding affected source file " + typeLocator);
                }
                this.sourceFiles.add(sourceFile);
            }
            ++i;
        }
    }

    protected void addDependentsOf(IPath path, boolean isStructuralChange) {
        this.addDependentsOf(path, isStructuralChange, this.qualifiedStrings, this.simpleStrings, this.rootStrings);
    }

    protected void addDependentsOf(IPath path, boolean isStructuralChange, StringSet qualifiedNames, StringSet simpleNames, StringSet rootNames) {
        String last;
        path = path.setDevice(null);
        if (isStructuralChange && (last = path.lastSegment()).length() == TypeConstants.PACKAGE_INFO_NAME.length && CharOperation.equals(last.toCharArray(), TypeConstants.PACKAGE_INFO_NAME) && (path = path.removeLastSegments(1)).isEmpty()) {
            return;
        }
        if (isStructuralChange && !this.hasStructuralChanges) {
            this.newState.tagAsStructurallyChanged();
            this.hasStructuralChanges = true;
        }
        rootNames.add(path.segment(0));
        String packageName = path.removeLastSegments(1).toString();
        boolean wasNew = qualifiedNames.add(packageName);
        String typeName = path.lastSegment();
        int memberIndex = typeName.indexOf(36);
        if (memberIndex > 0) {
            typeName = typeName.substring(0, memberIndex);
        }
        if ((wasNew = simpleNames.add(typeName) | wasNew) && JavaBuilder.DEBUG) {
            System.out.println("  will look for dependents of " + typeName + " in " + packageName);
        }
    }

    protected boolean checkForClassFileChanges(IResourceDelta binaryDelta, ClasspathMultiDirectory md, int segmentCount) throws CoreException {
        IResource resource = binaryDelta.getResource();
        boolean isExcluded = (md.exclusionPatterns != null || md.inclusionPatterns != null) && org.eclipse.jdt.internal.core.util.Util.isExcluded(resource, md.inclusionPatterns, md.exclusionPatterns);
        switch (resource.getType()) {
            case 2: {
                if (isExcluded && md.inclusionPatterns == null) {
                    return true;
                }
                IResourceDelta[] children = binaryDelta.getAffectedChildren();
                int i = 0;
                int l = children.length;
                while (i < l) {
                    if (!this.checkForClassFileChanges(children[i], md, segmentCount)) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            case 1: {
                if (isExcluded || !Util.isClassFileName(resource.getName())) break;
                IPath typePath = resource.getFullPath().removeFirstSegments(segmentCount).removeFileExtension();
                if (this.newState.isKnownType(typePath.toString())) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("MUST DO FULL BUILD. Found change to class file " + typePath);
                    }
                    return false;
                }
                return true;
            }
        }
        return true;
    }

    protected void cleanUp() {
        super.cleanUp();
        this.sourceFiles = null;
        this.previousSourceFiles = null;
        this.qualifiedStrings = null;
        this.simpleStrings = null;
        this.rootStrings = null;
        this.secondaryTypesToRemove = null;
        this.hasStructuralChanges = false;
        this.compileLoop = 0;
    }

    protected void compile(SourceFile[] units, SourceFile[] additionalUnits, boolean compilingFirstGroup) {
        if (compilingFirstGroup && additionalUnits != null) {
            ArrayList<SourceFile> extras = null;
            int i = 0;
            int l = additionalUnits.length;
            while (i < l) {
                SourceFile unit = additionalUnits[i];
                if (unit != null && this.newState.getDefinedTypeNamesFor(unit.typeLocator()) != null) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("About to compile file with secondary types " + unit.typeLocator());
                    }
                    if (extras == null) {
                        extras = new ArrayList<SourceFile>(3);
                    }
                    extras.add(unit);
                }
                ++i;
            }
            if (extras != null) {
                int oldLength = units.length;
                int toAdd = extras.size();
                SourceFile[] sourceFileArray = units;
                units = new SourceFile[oldLength + toAdd];
                System.arraycopy(sourceFileArray, 0, units, 0, oldLength);
                int i2 = 0;
                while (i2 < toAdd) {
                    units[oldLength++] = (SourceFile)extras.get(i2);
                    ++i2;
                }
            }
        }
        super.compile(units, additionalUnits, compilingFirstGroup);
    }

    protected void deleteGeneratedFiles(IFile[] deletedGeneratedFiles) {
        try {
            int j = deletedGeneratedFiles.length;
            while (--j >= 0) {
                IFile deletedFile = deletedGeneratedFiles[j];
                if (deletedFile.exists()) continue;
                SourceFile sourceFile = this.findSourceFile(deletedFile, false);
                String typeLocator = sourceFile.typeLocator();
                int mdSegmentCount = sourceFile.sourceLocation.sourceFolder.getFullPath().segmentCount();
                IPath typePath = sourceFile.resource.getFullPath().removeFirstSegments(mdSegmentCount).removeFileExtension();
                this.addDependentsOf(typePath, true);
                this.previousSourceFiles = null;
                char[][] definedTypeNames = this.newState.getDefinedTypeNamesFor(typeLocator);
                if (definedTypeNames == null) {
                    this.removeClassFile(typePath, sourceFile.sourceLocation.binaryFolder);
                } else if (definedTypeNames.length > 0) {
                    IPath packagePath = typePath.removeLastSegments(1);
                    int d = 0;
                    int l = definedTypeNames.length;
                    while (d < l) {
                        this.removeClassFile(packagePath.append(new String(definedTypeNames[d])), sourceFile.sourceLocation.binaryFolder);
                        ++d;
                    }
                }
                this.newState.removeLocator(typeLocator);
            }
        }
        catch (CoreException e) {
            org.eclipse.jdt.internal.core.util.Util.log(e, "JavaBuilder logging CompilationParticipant's CoreException to help debugging");
        }
    }

    protected boolean findAffectedSourceFiles(IResourceDelta delta, ClasspathLocation[] classFoldersAndJars, IProject prereqProject) {
        int i = 0;
        int l = classFoldersAndJars.length;
        while (i < l) {
            IResourceDelta binaryDelta;
            IPath p;
            ClasspathLocation bLocation = classFoldersAndJars[i];
            if (bLocation != null && (p = bLocation.getProjectRelativePath()) != null && (binaryDelta = delta.findMember(p)) != null) {
                if (bLocation instanceof ClasspathJar) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("ABORTING incremental build... found delta to jar/zip file");
                    }
                    return false;
                }
                if (binaryDelta.getKind() == 1 || binaryDelta.getKind() == 2) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("ABORTING incremental build... found added/removed binary folder");
                    }
                    return false;
                }
                int segmentCount = binaryDelta.getFullPath().segmentCount();
                IResourceDelta[] children = binaryDelta.getAffectedChildren();
                StringSet structurallyChangedTypes = null;
                if (bLocation.isOutputFolder()) {
                    structurallyChangedTypes = this.newState.getStructurallyChangedTypes(this.javaBuilder.getLastState(prereqProject));
                }
                int j = 0;
                int m = children.length;
                while (j < m) {
                    this.findAffectedSourceFiles(children[j], segmentCount, structurallyChangedTypes);
                    ++j;
                }
                this.notifier.checkCancel();
            }
            ++i;
        }
        return true;
    }

    /*
     * Unable to fully structure code
     */
    protected void findAffectedSourceFiles(IResourceDelta binaryDelta, int segmentCount, StringSet structurallyChangedTypes) {
        resource = binaryDelta.getResource();
        switch (resource.getType()) {
            case 2: {
                switch (binaryDelta.getKind()) {
                    case 1: 
                    case 2: {
                        packagePath = resource.getFullPath().removeFirstSegments(segmentCount);
                        packageName = packagePath.toString();
                        if (binaryDelta.getKind() != 1) ** GOTO lbl17
                        if (!this.newState.isKnownPackage(packageName)) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found added package " + packageName);
                            }
                            this.addDependentsOf(packagePath, false);
                            return;
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Skipped dependents of added package " + packageName);
                        }
                        ** GOTO lbl24
lbl17:
                        // 1 sources

                        if (!this.nameEnvironment.isPackage(packageName)) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Found removed package " + packageName);
                            }
                            this.addDependentsOf(packagePath, false);
                            return;
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Skipped dependents of removed package " + packageName);
                        }
                    }
lbl24:
                    // 5 sources

                    case 4: {
                        children = binaryDelta.getAffectedChildren();
                        i = 0;
                        l = children.length;
                        while (i < l) {
                            this.findAffectedSourceFiles(children[i], segmentCount, structurallyChangedTypes);
                            ++i;
                        }
                        break;
                    }
                }
                return;
            }
            case 1: {
                if (!Util.isClassFileName(resource.getName())) break;
                typePath = resource.getFullPath().removeFirstSegments(segmentCount).removeFileExtension();
                switch (binaryDelta.getKind()) {
                    case 1: 
                    case 2: {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found added/removed class file " + typePath);
                        }
                        this.addDependentsOf(typePath, false);
                        return;
                    }
                    case 4: {
                        if ((binaryDelta.getFlags() & 256) == 0) {
                            return;
                        }
                        if (structurallyChangedTypes != null && !structurallyChangedTypes.includes(typePath.toString())) {
                            return;
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found changed class file " + typePath);
                        }
                        this.addDependentsOf(typePath, false);
                    }
                }
                return;
            }
        }
    }

    /*
     * Enabled aggressive exception aggregation
     */
    protected boolean findSourceFiles(IResourceDelta delta) throws CoreException {
        ArrayList<IContainer> visited = this.makeOutputFolderConsistent ? new ArrayList<IContainer>(this.sourceLocations.length) : null;
        int i = 0;
        int l = this.sourceLocations.length;
        while (i < l) {
            int m;
            int j;
            IResourceDelta[] children;
            int segmentCount;
            ClasspathMultiDirectory md = this.sourceLocations[i];
            if (this.makeOutputFolderConsistent && md.hasIndependentOutputFolder && !visited.contains(md.binaryFolder)) {
                visited.add(md.binaryFolder);
                IResourceDelta binaryDelta = delta.findMember(md.binaryFolder.getProjectRelativePath());
                if (binaryDelta != null) {
                    segmentCount = binaryDelta.getFullPath().segmentCount();
                    children = binaryDelta.getAffectedChildren();
                    j = 0;
                    m = children.length;
                    while (j < m) {
                        if (!this.checkForClassFileChanges(children[j], md, segmentCount)) {
                            return false;
                        }
                        ++j;
                    }
                }
            }
            if (md.sourceFolder.equals((Object)this.javaBuilder.currentProject)) {
                int segmentCount2 = delta.getFullPath().segmentCount();
                IResourceDelta[] children2 = delta.getAffectedChildren();
                int j2 = 0;
                int m2 = children2.length;
                while (j2 < m2) {
                    if (!this.isExcludedFromProject(children2[j2].getFullPath()) && !this.findSourceFiles(children2[j2], md, segmentCount2)) {
                        return false;
                    }
                    ++j2;
                }
            } else {
                IResourceDelta sourceDelta = delta.findMember(md.sourceFolder.getProjectRelativePath());
                if (sourceDelta != null) {
                    if (sourceDelta.getKind() == 2) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("ABORTING incremental build... found removed source folder");
                        }
                        return false;
                    }
                    segmentCount = sourceDelta.getFullPath().segmentCount();
                    children = sourceDelta.getAffectedChildren();
                    try {
                        j = 0;
                        m = children.length;
                        while (j < m) {
                            if (!this.findSourceFiles(children[j], md, segmentCount)) {
                                return false;
                            }
                            ++j;
                        }
                    }
                    catch (CoreException e) {
                        if (e.getStatus().getCode() == 275) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("ABORTING incremental build... found renamed package");
                            }
                            return false;
                        }
                        throw e;
                    }
                }
            }
            this.notifier.checkCancel();
            ++i;
        }
        return true;
    }

    protected boolean findSourceFiles(IResourceDelta sourceDelta, ClasspathMultiDirectory md, int segmentCount) throws CoreException {
        IResource resource = sourceDelta.getResource();
        boolean isExcluded = (md.exclusionPatterns != null || md.inclusionPatterns != null) && org.eclipse.jdt.internal.core.util.Util.isExcluded(resource, md.inclusionPatterns, md.exclusionPatterns);
        switch (resource.getType()) {
            case 2: {
                if (isExcluded && md.inclusionPatterns == null) {
                    return true;
                }
                switch (sourceDelta.getKind()) {
                    case 1: {
                        if (!isExcluded) {
                            IPath addedPackagePath = resource.getFullPath().removeFirstSegments(segmentCount);
                            this.createFolder(addedPackagePath, md.binaryFolder);
                            if (this.sourceLocations.length > 1 && this.newState.isKnownPackage(addedPackagePath.toString())) {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Skipped dependents of added package " + addedPackagePath);
                                }
                            } else {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Found added package " + addedPackagePath);
                                }
                                this.addDependentsOf(addedPackagePath, true);
                            }
                        }
                    }
                    case 4: {
                        IResourceDelta[] children = sourceDelta.getAffectedChildren();
                        int i = 0;
                        int l = children.length;
                        while (i < l) {
                            if (!this.findSourceFiles(children[i], md, segmentCount)) {
                                return false;
                            }
                            ++i;
                        }
                        return true;
                    }
                    case 2: {
                        IFolder removedPackageFolder;
                        if (isExcluded) {
                            IResourceDelta[] children = sourceDelta.getAffectedChildren();
                            int i = 0;
                            int l = children.length;
                            while (i < l) {
                                if (!this.findSourceFiles(children[i], md, segmentCount)) {
                                    return false;
                                }
                                ++i;
                            }
                            return true;
                        }
                        IPath removedPackagePath = resource.getFullPath().removeFirstSegments(segmentCount);
                        if (this.sourceLocations.length > 1) {
                            int i = 0;
                            int l = this.sourceLocations.length;
                            while (i < l) {
                                if (this.sourceLocations[i].sourceFolder.getFolder(removedPackagePath).exists()) {
                                    this.createFolder(removedPackagePath, md.binaryFolder);
                                    IResourceDelta[] removedChildren = sourceDelta.getAffectedChildren();
                                    int j = 0;
                                    int m = removedChildren.length;
                                    while (j < m) {
                                        if (!this.findSourceFiles(removedChildren[j], md, segmentCount)) {
                                            return false;
                                        }
                                        ++j;
                                    }
                                    return true;
                                }
                                ++i;
                            }
                        }
                        if ((sourceDelta.getFlags() & 0x2000) != 0) {
                            IFolder movedFolder = this.javaBuilder.workspaceRoot.getFolder(sourceDelta.getMovedToPath());
                            JavaBuilder.removeProblemsAndTasksFor((IResource)movedFolder);
                        }
                        if ((removedPackageFolder = md.binaryFolder.getFolder(removedPackagePath)).exists()) {
                            removedPackageFolder.delete(1, null);
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Found removed package " + removedPackagePath);
                        }
                        this.addDependentsOf(removedPackagePath, true);
                        this.newState.removePackage(sourceDelta);
                    }
                }
                return true;
            }
            case 1: {
                if (isExcluded) {
                    return true;
                }
                String resourceName = resource.getName();
                if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(resourceName)) {
                    IPath typePath = resource.getFullPath().removeFirstSegments(segmentCount).removeFileExtension();
                    String typeLocator = resource.getProjectRelativePath().toString();
                    switch (sourceDelta.getKind()) {
                        case 1: {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Compile this added source file " + typeLocator);
                            }
                            this.sourceFiles.add(new SourceFile((IFile)resource, md, true));
                            String typeName = typePath.toString();
                            if (!this.newState.isDuplicateLocator(typeName, typeLocator)) {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Found added source file " + typeName);
                                }
                                this.addDependentsOf(typePath, true);
                            }
                            return true;
                        }
                        case 2: {
                            char[][] definedTypeNames = this.newState.getDefinedTypeNamesFor(typeLocator);
                            if (definedTypeNames == null) {
                                this.removeClassFile(typePath, md.binaryFolder);
                                if ((sourceDelta.getFlags() & 0x2000) != 0) {
                                    IFile movedFile = this.javaBuilder.workspaceRoot.getFile(sourceDelta.getMovedToPath());
                                    JavaBuilder.removeProblemsAndTasksFor((IResource)movedFile);
                                }
                            } else {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Found removed source file " + typePath.toString());
                                }
                                this.addDependentsOf(typePath, true);
                                if (definedTypeNames.length > 0) {
                                    IPath packagePath = typePath.removeLastSegments(1);
                                    int i = 0;
                                    int l = definedTypeNames.length;
                                    while (i < l) {
                                        this.removeClassFile(packagePath.append(new String(definedTypeNames[i])), md.binaryFolder);
                                        ++i;
                                    }
                                }
                            }
                            this.newState.removeLocator(typeLocator);
                            return true;
                        }
                        case 4: {
                            if ((sourceDelta.getFlags() & 0x100) == 0 && (sourceDelta.getFlags() & 0x100000) == 0) {
                                return true;
                            }
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Compile this changed source file " + typeLocator);
                            }
                            this.sourceFiles.add(new SourceFile((IFile)resource, md, true));
                        }
                    }
                    return true;
                }
                if (Util.isClassFileName(resourceName)) {
                    IPath typePath;
                    if (this.makeOutputFolderConsistent && this.newState.isKnownType((typePath = resource.getFullPath().removeFirstSegments(segmentCount).removeFileExtension()).toString())) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("MUST DO FULL BUILD. Found change to class file " + typePath);
                        }
                        return false;
                    }
                    return true;
                }
                if (!md.hasIndependentOutputFolder) break;
                if (this.javaBuilder.filterExtraResource(resource)) {
                    return true;
                }
                IPath resourcePath = resource.getFullPath().removeFirstSegments(segmentCount);
                IFile outputFile = md.binaryFolder.getFile(resourcePath);
                switch (sourceDelta.getKind()) {
                    case 1: {
                        if (outputFile.exists()) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Deleting existing file " + resourcePath);
                            }
                            outputFile.delete(1, null);
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Copying added file " + resourcePath);
                        }
                        this.createFolder(resourcePath.removeLastSegments(1), md.binaryFolder);
                        this.copyResource(resource, (IResource)outputFile);
                        return true;
                    }
                    case 2: {
                        if (outputFile.exists()) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Deleting removed file " + resourcePath);
                            }
                            outputFile.delete(1, null);
                        }
                        return true;
                    }
                    case 4: {
                        if ((sourceDelta.getFlags() & 0x100) == 0 && (sourceDelta.getFlags() & 0x100000) == 0) {
                            return true;
                        }
                        if (outputFile.exists()) {
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Deleting existing file " + resourcePath);
                            }
                            outputFile.delete(1, null);
                        }
                        if (JavaBuilder.DEBUG) {
                            System.out.println("Copying changed file " + resourcePath);
                        }
                        this.createFolder(resourcePath.removeLastSegments(1), md.binaryFolder);
                        this.copyResource(resource, (IResource)outputFile);
                    }
                }
                return true;
            }
        }
        return true;
    }

    protected void finishedWith(String sourceLocator, CompilationResult result, char[] mainTypeName, ArrayList definedTypeNames, ArrayList duplicateTypeNames) {
        Object previousTypeNames = this.newState.getDefinedTypeNamesFor(sourceLocator);
        if (previousTypeNames == null) {
            previousTypeNames = new char[][]{mainTypeName};
        }
        IPath packagePath = null;
        int i = 0;
        int l = ((char[][])previousTypeNames).length;
        while (i < l) {
            block7: {
                ArrayList<IPath> types;
                char[] previous = previousTypeNames[i];
                int j = 0;
                int m = definedTypeNames.size();
                while (j < m) {
                    if (!CharOperation.equals(previous, (char[])definedTypeNames.get(j))) {
                        ++j;
                        continue;
                    }
                    break block7;
                }
                SourceFile sourceFile = (SourceFile)result.getCompilationUnit();
                if (packagePath == null) {
                    int count = sourceFile.sourceLocation.sourceFolder.getFullPath().segmentCount();
                    packagePath = sourceFile.resource.getFullPath().removeFirstSegments(count).removeLastSegments(1);
                }
                if (this.secondaryTypesToRemove == null) {
                    this.secondaryTypesToRemove = new SimpleLookupTable();
                }
                if ((types = (ArrayList<IPath>)this.secondaryTypesToRemove.get(sourceFile.sourceLocation.binaryFolder)) == null) {
                    types = new ArrayList<IPath>(definedTypeNames.size());
                }
                types.add(packagePath.append(new String(previous)));
                this.secondaryTypesToRemove.put(sourceFile.sourceLocation.binaryFolder, types);
            }
            ++i;
        }
        super.finishedWith(sourceLocator, result, mainTypeName, definedTypeNames, duplicateTypeNames);
    }

    protected void processAnnotationResults(CompilationParticipantResult[] results) {
        int i = results.length;
        while (--i >= 0) {
            IFile[] addedGeneratedFiles;
            CompilationParticipantResult result = results[i];
            if (result == null) continue;
            IFile[] deletedGeneratedFiles = result.deletedFiles;
            if (deletedGeneratedFiles != null) {
                this.deleteGeneratedFiles(deletedGeneratedFiles);
            }
            if ((addedGeneratedFiles = result.addedFiles) != null) {
                int j = addedGeneratedFiles.length;
                while (--j >= 0) {
                    SourceFile sourceFile = this.findSourceFile(addedGeneratedFiles[j], true);
                    if (sourceFile == null || this.sourceFiles.contains(sourceFile)) continue;
                    this.sourceFiles.add(sourceFile);
                }
            }
            this.recordParticipantResult(result);
        }
    }

    protected void removeClassFile(IPath typePath, IContainer outputFolder) throws CoreException {
        IFile classFile;
        if (typePath.lastSegment().indexOf(36) == -1) {
            this.newState.removeQualifiedTypeName(typePath.toString());
            if (JavaBuilder.DEBUG) {
                System.out.println("Found removed type " + typePath);
            }
            this.addDependentsOf(typePath, true);
        }
        if ((classFile = outputFolder.getFile(typePath.addFileExtension("class"))).exists()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Deleting class file of removed type " + typePath);
            }
            classFile.delete(1, null);
        }
    }

    protected void removeSecondaryTypes() throws CoreException {
        if (this.secondaryTypesToRemove != null) {
            Object[] keyTable = this.secondaryTypesToRemove.keyTable;
            Object[] valueTable = this.secondaryTypesToRemove.valueTable;
            int i = 0;
            int l = keyTable.length;
            while (i < l) {
                IContainer outputFolder = (IContainer)keyTable[i];
                if (outputFolder != null) {
                    ArrayList paths = (ArrayList)valueTable[i];
                    int j = 0;
                    int m = paths.size();
                    while (j < m) {
                        this.removeClassFile((IPath)paths.get(j), outputFolder);
                        ++j;
                    }
                }
                ++i;
            }
            this.secondaryTypesToRemove = null;
            if (this.previousSourceFiles != null) {
                this.previousSourceFiles = null;
            }
        }
    }

    protected void resetCollections() {
        if (this.sourceFiles == null) {
            this.sourceFiles = new ArrayList(33);
            this.previousSourceFiles = null;
            this.qualifiedStrings = new StringSet(3);
            this.simpleStrings = new StringSet(3);
            this.rootStrings = new StringSet(3);
            this.hasStructuralChanges = false;
            this.compileLoop = 0;
        } else {
            this.previousSourceFiles = this.sourceFiles.isEmpty() ? null : (ArrayList)this.sourceFiles.clone();
            this.sourceFiles.clear();
            this.qualifiedStrings.clear();
            this.simpleStrings.clear();
            this.rootStrings.clear();
            this.workQueue.clear();
        }
    }

    protected void updateProblemsFor(SourceFile sourceFile, CompilationResult result) throws CoreException {
        IMarker[] markers = JavaBuilder.getProblemsFor((IResource)sourceFile.resource);
        CategorizedProblem[] problems = result.getProblems();
        if (problems == null && markers.length == 0) {
            return;
        }
        this.notifier.updateProblemCounts(markers, problems);
        JavaBuilder.removeProblemsFor((IResource)sourceFile.resource);
        this.storeProblemsFor(sourceFile, problems);
    }

    protected void updateTasksFor(SourceFile sourceFile, CompilationResult result) throws CoreException {
        IMarker[] markers = JavaBuilder.getTasksFor((IResource)sourceFile.resource);
        CategorizedProblem[] tasks = result.getTasks();
        if (tasks == null && markers.length == 0) {
            return;
        }
        JavaBuilder.removeTasksFor((IResource)sourceFile.resource);
        this.storeTasksFor(sourceFile, tasks);
    }

    /*
     * Unable to fully structure code
     */
    protected void writeClassFileContents(ClassFile classfile, IFile file, String qualifiedFileName, boolean isTopLevelType, SourceFile compilationUnit) throws CoreException {
        block18: {
            bytes = classfile.getBytes();
            if (file.exists()) {
                if (this.writeClassFileCheck(file, qualifiedFileName, bytes) || compilationUnit.updateClassFile) {
                    if (JavaBuilder.DEBUG) {
                        System.out.println("Writing changed class file " + file.getName());
                    }
                    if (!file.isDerived()) {
                        file.setDerived(true, null);
                    }
                    file.setContents((InputStream)new ByteArrayInputStream(bytes), true, false, null);
                } else if (JavaBuilder.DEBUG) {
                    System.out.println("Skipped over unchanged class file " + file.getName());
                }
            } else {
                block19: {
                    block20: {
                        block21: {
                            if (isTopLevelType) {
                                this.addDependentsOf((IPath)new Path(qualifiedFileName), true);
                            }
                            if (JavaBuilder.DEBUG) {
                                System.out.println("Writing new class file " + file.getName());
                            }
                            try {
                                file.create((InputStream)new ByteArrayInputStream(bytes), 1025, null);
                                break block18;
                            }
                            catch (CoreException e) {
                                if (e.getStatus().getCode() != 275) break block19;
                                status = e.getStatus();
                                if (!(status instanceof IResourceStatus)) break block20;
                                oldFilePath = ((IResourceStatus)status).getPath();
                                oldTypeName = oldFilePath.removeFileExtension().lastSegment().toCharArray();
                                previousTypeNames = this.newState.getDefinedTypeNamesFor(compilationUnit.typeLocator());
                                fromSameFile = false;
                                if (previousTypeNames == null) {
                                    fromSameFile = CharOperation.equals(compilationUnit.getMainTypeName(), oldTypeName);
                                    break block21;
                                }
                                i = 0;
                                l = previousTypeNames.length;
                                ** while (i < l)
                            }
lbl-1000:
                            // 1 sources

                            {
                                if (CharOperation.equals(previousTypeNames[i], oldTypeName)) {
                                    fromSameFile = true;
                                    break;
                                }
                                ++i;
                                continue;
                            }
                        }
                        if (fromSameFile) {
                            collision = file.getParent().getFile((IPath)new Path(oldFilePath.lastSegment()));
                            collision.delete(true, false, null);
                            success = false;
                            try {
                                file.create((InputStream)new ByteArrayInputStream(bytes), 1025, null);
                                success = true;
                            }
                            catch (CoreException v0) {}
                            if (success) {
                                return;
                            }
                        }
                    }
                    throw new AbortCompilation(true, new AbortIncrementalBuildException(qualifiedFileName));
                }
                throw e;
            }
        }
    }

    protected boolean writeClassFileCheck(IFile file, String fileName, byte[] newBytes) throws CoreException {
        URI location;
        byte[] oldBytes;
        block9: {
            block8: {
                oldBytes = org.eclipse.jdt.internal.core.util.Util.getResourceContentsAsByteArray(file);
                if (newBytes.length != oldBytes.length) break block8;
                int i = newBytes.length;
                while (--i >= 0) {
                    if (newBytes[i] == oldBytes[i]) {
                        continue;
                    }
                    break block8;
                }
                return false;
            }
            location = file.getLocationURI();
            if (location != null) break block9;
            return false;
        }
        try {
            String filePath = location.getSchemeSpecificPart();
            ClassFileReader reader = new ClassFileReader(oldBytes, filePath.toCharArray());
            if (!reader.isLocal() && !reader.isAnonymous() && reader.hasStructuralChanges(newBytes)) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Type has structural changes " + fileName);
                }
                this.addDependentsOf((IPath)new Path(fileName), true);
                this.newState.wasStructurallyChanged(fileName);
            }
        }
        catch (ClassFormatException classFormatException) {
            this.addDependentsOf((IPath)new Path(fileName), true);
            this.newState.wasStructurallyChanged(fileName);
        }
        return true;
    }

    public String toString() {
        return "incremental image builder for:\n\tnew state: " + this.newState;
    }
}

