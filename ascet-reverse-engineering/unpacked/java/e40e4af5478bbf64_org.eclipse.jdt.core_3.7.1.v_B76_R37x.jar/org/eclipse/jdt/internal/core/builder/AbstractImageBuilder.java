/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.builder;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.BuildContext;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.BatchImageBuilder;
import org.eclipse.jdt.internal.core.builder.BuildNotifier;
import org.eclipse.jdt.internal.core.builder.ClasspathMultiDirectory;
import org.eclipse.jdt.internal.core.builder.CompilationParticipantResult;
import org.eclipse.jdt.internal.core.builder.ICompilationUnitLocator;
import org.eclipse.jdt.internal.core.builder.ImageBuilderInternalException;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.NameEnvironment;
import org.eclipse.jdt.internal.core.builder.ProblemFactory;
import org.eclipse.jdt.internal.core.builder.ReferenceCollection;
import org.eclipse.jdt.internal.core.builder.SourceFile;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.builder.WorkQueue;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class AbstractImageBuilder
implements ICompilerRequestor,
ICompilationUnitLocator {
    protected JavaBuilder javaBuilder;
    protected State newState;
    protected NameEnvironment nameEnvironment;
    protected ClasspathMultiDirectory[] sourceLocations;
    protected BuildNotifier notifier;
    protected Compiler compiler;
    protected WorkQueue workQueue;
    protected ArrayList problemSourceFiles;
    protected boolean compiledAllAtOnce;
    private boolean inCompiler;
    protected boolean keepStoringProblemMarkers;
    protected SimpleSet filesWithAnnotations = null;
    public static int MAX_AT_ONCE = 2000;
    public static final String[] JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES = new String[]{"message", "severity", "id", "charStart", "charEnd", "lineNumber", "arguments", "categoryId"};
    public static final String[] JAVA_TASK_MARKER_ATTRIBUTE_NAMES = new String[]{"message", "priority", "id", "charStart", "charEnd", "lineNumber", "userEditable", "sourceId"};
    public static final Integer S_ERROR = new Integer(2);
    public static final Integer S_WARNING = new Integer(1);
    public static final Integer P_HIGH = new Integer(2);
    public static final Integer P_NORMAL = new Integer(1);
    public static final Integer P_LOW = new Integer(0);

    protected AbstractImageBuilder(JavaBuilder javaBuilder, boolean buildStarting, State newState) {
        this.javaBuilder = javaBuilder;
        this.nameEnvironment = javaBuilder.nameEnvironment;
        this.sourceLocations = this.nameEnvironment.sourceLocations;
        this.notifier = javaBuilder.notifier;
        this.keepStoringProblemMarkers = true;
        if (buildStarting) {
            this.newState = newState == null ? new State(javaBuilder) : newState;
            this.compiler = this.newCompiler();
            this.workQueue = new WorkQueue();
            this.problemSourceFiles = new ArrayList(3);
            if (this.javaBuilder.participants != null) {
                int i = 0;
                int l = this.javaBuilder.participants.length;
                while (i < l) {
                    if (this.javaBuilder.participants[i].isAnnotationProcessor()) {
                        this.filesWithAnnotations = new SimpleSet(1);
                        break;
                    }
                    ++i;
                }
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    public void acceptResult(CompilationResult result) {
        block17: {
            compilationUnit = (SourceFile)result.getCompilationUnit();
            if (this.workQueue.isCompiled(compilationUnit)) break block17;
            this.workQueue.finished(compilationUnit);
            try {
                this.updateProblemsFor(compilationUnit, result);
                this.updateTasksFor(compilationUnit, result);
            }
            catch (CoreException e) {
                throw this.internalException(e);
            }
            if (result.hasInconsistentToplevelHierarchies && !this.problemSourceFiles.contains(compilationUnit)) {
                this.problemSourceFiles.add(compilationUnit);
            }
            mainType = null;
            mainTypeName = null;
            typeLocator = compilationUnit.typeLocator();
            classFiles = result.getClassFiles();
            length = classFiles.length;
            duplicateTypeNames = null;
            definedTypeNames = new ArrayList<char[]>(length);
            i = 0;
            while (i < length) {
                block19: {
                    block18: {
                        classFile = classFiles[i];
                        compoundName = classFile.getCompoundName();
                        typeName = compoundName[compoundName.length - 1];
                        isNestedType = classFile.isNestedType;
                        if (!isNestedType) break block18;
                        qualifiedTypeName = new String(classFile.outerMostEnclosingClassFile().fileName());
                        if (!this.newState.isDuplicateLocator(qualifiedTypeName, typeLocator)) ** GOTO lbl53
                        break block19;
                    }
                    qualifiedTypeName = new String(classFile.fileName());
                    if (this.newState.isDuplicateLocator(qualifiedTypeName, typeLocator)) {
                        if (duplicateTypeNames == null) {
                            duplicateTypeNames = new ArrayList<char[][]>();
                        }
                        duplicateTypeNames.add(compoundName);
                        if (mainType == null) {
                            try {
                                mainTypeName = compilationUnit.initialTypeName;
                                mainType = this.javaBuilder.javaProject.findType(mainTypeName.replace('/', '.'));
                            }
                            catch (JavaModelException v0) {}
                        }
                        if (qualifiedTypeName.equals(mainTypeName)) {
                            type = mainType;
                        } else {
                            simpleName = qualifiedTypeName.substring(qualifiedTypeName.lastIndexOf(47) + 1);
                            type = mainType == null ? null : mainType.getCompilationUnit().getType(simpleName);
                        }
                        this.createProblemFor((IResource)compilationUnit.resource, type, Messages.bind(Messages.build_duplicateClassFile, new String(typeName)), "error");
                    } else {
                        this.newState.recordLocatorForType(qualifiedTypeName, typeLocator);
                        if (result.checkSecondaryTypes && !qualifiedTypeName.equals(compilationUnit.initialTypeName)) {
                            this.acceptSecondaryType(classFile);
                        }
lbl53:
                        // 4 sources

                        try {
                            definedTypeNames.add(this.writeClassFile(classFile, compilationUnit, isNestedType == false));
                        }
                        catch (CoreException e) {
                            Util.log(e, "JavaBuilder handling CoreException");
                            if (e.getStatus().getCode() == 275) {
                                this.createProblemFor((IResource)compilationUnit.resource, null, Messages.bind(Messages.build_classFileCollision, e.getMessage()), "error");
                            }
                            this.createProblemFor((IResource)compilationUnit.resource, null, Messages.build_inconsistentClassFile, "error");
                        }
                    }
                }
                ++i;
            }
            if (result.hasAnnotations && this.filesWithAnnotations != null) {
                this.filesWithAnnotations.add(compilationUnit);
            }
            this.compiler.lookupEnvironment.releaseClassFiles(classFiles);
            this.finishedWith(typeLocator, result, compilationUnit.getMainTypeName(), definedTypeNames, duplicateTypeNames);
            this.notifier.compiled(compilationUnit);
        }
    }

    protected void acceptSecondaryType(ClassFile classFile) {
    }

    protected void addAllSourceFiles(final ArrayList sourceFiles) throws CoreException {
        int i = 0;
        int l = this.sourceLocations.length;
        while (i < l) {
            final ClasspathMultiDirectory sourceLocation = this.sourceLocations[i];
            final char[][] exclusionPatterns = sourceLocation.exclusionPatterns;
            final char[][] inclusionPatterns = sourceLocation.inclusionPatterns;
            final boolean isAlsoProject = sourceLocation.sourceFolder.equals((Object)this.javaBuilder.currentProject);
            final int segmentCount = sourceLocation.sourceFolder.getFullPath().segmentCount();
            final IContainer outputFolder = sourceLocation.binaryFolder;
            final boolean isOutputFolder = sourceLocation.sourceFolder.equals((Object)outputFolder);
            sourceLocation.sourceFolder.accept(new IResourceProxyVisitor(){

                public boolean visit(IResourceProxy proxy) throws CoreException {
                    switch (proxy.getType()) {
                        case 1: {
                            if (Util.isJavaLikeFileName(proxy.getName())) {
                                IResource resource = proxy.requestResource();
                                if ((exclusionPatterns != null || inclusionPatterns != null) && Util.isExcluded(resource.getFullPath(), inclusionPatterns, exclusionPatterns, false)) {
                                    return false;
                                }
                                sourceFiles.add(new SourceFile((IFile)resource, sourceLocation));
                            }
                            return false;
                        }
                        case 2: {
                            String complianceLevel;
                            String sourceLevel;
                            String packageName;
                            IPath folderPath = null;
                            if (isAlsoProject && AbstractImageBuilder.this.isExcludedFromProject(folderPath = proxy.requestFullPath())) {
                                return false;
                            }
                            if (exclusionPatterns != null) {
                                if (folderPath == null) {
                                    folderPath = proxy.requestFullPath();
                                }
                                if (Util.isExcluded(folderPath, inclusionPatterns, exclusionPatterns, true)) {
                                    return inclusionPatterns != null;
                                }
                            }
                            if (isOutputFolder) break;
                            if (folderPath == null) {
                                folderPath = proxy.requestFullPath();
                            }
                            if ((packageName = folderPath.lastSegment()).length() <= 0 || JavaConventions.validatePackageName(packageName, sourceLevel = AbstractImageBuilder.this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), complianceLevel = AbstractImageBuilder.this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4) break;
                            AbstractImageBuilder.this.createFolder(folderPath.removeFirstSegments(segmentCount), outputFolder);
                        }
                    }
                    return true;
                }
            }, 0);
            this.notifier.checkCancel();
            ++i;
        }
    }

    protected void cleanUp() {
        this.nameEnvironment.cleanup();
        this.javaBuilder = null;
        this.nameEnvironment = null;
        this.sourceLocations = null;
        this.notifier = null;
        this.compiler = null;
        this.workQueue = null;
        this.problemSourceFiles = null;
    }

    protected void compile(SourceFile[] units) {
        int unitsLength;
        CompilationParticipantResult[] participantResults;
        if (this.filesWithAnnotations != null && this.filesWithAnnotations.elementSize > 0) {
            this.filesWithAnnotations.clear();
        }
        CompilationParticipantResult[] compilationParticipantResultArray = participantResults = this.javaBuilder.participants == null ? null : this.notifyParticipants(units);
        if (participantResults != null && participantResults.length > units.length) {
            units = new SourceFile[participantResults.length];
            int i = participantResults.length;
            while (--i >= 0) {
                units[i] = participantResults[i].sourceFile;
            }
        }
        boolean bl = this.compiledAllAtOnce = (unitsLength = units.length) <= MAX_AT_ONCE;
        if (this.compiledAllAtOnce) {
            if (JavaBuilder.DEBUG) {
                int i = 0;
                while (i < unitsLength) {
                    System.out.println("About to compile " + units[i].typeLocator());
                    ++i;
                }
            }
            this.compile(units, null, true);
        } else {
            SourceFile[] remainingUnits = new SourceFile[unitsLength];
            System.arraycopy(units, 0, remainingUnits, 0, unitsLength);
            int doNow = unitsLength < MAX_AT_ONCE ? unitsLength : MAX_AT_ONCE;
            SourceFile[] toCompile = new SourceFile[doNow];
            int remainingIndex = 0;
            boolean compilingFirstGroup = true;
            while (remainingIndex < unitsLength) {
                int count = 0;
                while (remainingIndex < unitsLength && count < doNow) {
                    SourceFile unit = remainingUnits[remainingIndex];
                    if (unit != null && (compilingFirstGroup || this.workQueue.isWaiting(unit))) {
                        if (JavaBuilder.DEBUG) {
                            System.out.println("About to compile #" + remainingIndex + " : " + unit.typeLocator());
                        }
                        toCompile[count++] = unit;
                    }
                    remainingUnits[remainingIndex++] = null;
                }
                if (count < doNow) {
                    SourceFile[] sourceFileArray = toCompile;
                    toCompile = new SourceFile[count];
                    System.arraycopy(sourceFileArray, 0, toCompile, 0, count);
                }
                if (!compilingFirstGroup) {
                    int a = remainingIndex;
                    while (a < unitsLength) {
                        if (remainingUnits[a] != null && this.workQueue.isCompiled(remainingUnits[a])) {
                            remainingUnits[a] = null;
                        }
                        ++a;
                    }
                }
                this.compile(toCompile, remainingUnits, compilingFirstGroup);
                compilingFirstGroup = false;
            }
        }
        if (participantResults != null) {
            int i = participantResults.length;
            while (--i >= 0) {
                if (participantResults[i] == null) continue;
                this.recordParticipantResult(participantResults[i]);
            }
            this.processAnnotations(participantResults);
        }
    }

    protected void compile(SourceFile[] units, SourceFile[] additionalUnits, boolean compilingFirstGroup) {
        block11: {
            if (units.length == 0) {
                return;
            }
            this.notifier.aboutToCompile(units[0]);
            if (!this.problemSourceFiles.isEmpty()) {
                int length;
                int toAdd = this.problemSourceFiles.size();
                int n = length = additionalUnits == null ? 0 : additionalUnits.length;
                if (length == 0) {
                    additionalUnits = new SourceFile[toAdd];
                } else {
                    SourceFile[] sourceFileArray = additionalUnits;
                    additionalUnits = new SourceFile[length + toAdd];
                    System.arraycopy(sourceFileArray, 0, additionalUnits, 0, length);
                }
                int i = 0;
                while (i < toAdd) {
                    additionalUnits[length + i] = (SourceFile)this.problemSourceFiles.get(i);
                    ++i;
                }
            }
            String[] initialTypeNames = new String[units.length];
            int i = 0;
            int l = units.length;
            while (i < l) {
                initialTypeNames[i] = units[i].initialTypeName;
                ++i;
            }
            this.nameEnvironment.setNames(initialTypeNames, additionalUnits);
            this.notifier.checkCancel();
            try {
                try {
                    this.inCompiler = true;
                    this.compiler.compile(units);
                }
                catch (AbortCompilation abortCompilation) {
                    this.inCompiler = false;
                    break block11;
                }
            }
            catch (Throwable throwable) {
                this.inCompiler = false;
                throw throwable;
            }
            this.inCompiler = false;
        }
        this.notifier.checkCancel();
    }

    protected void copyResource(IResource source, IResource destination) throws CoreException {
        IPath destPath = destination.getFullPath();
        try {
            source.copy(destPath, 1025, null);
        }
        catch (CoreException e) {
            source.refreshLocal(0, null);
            if (!source.exists()) {
                return;
            }
            throw e;
        }
        Util.setReadOnly(destination, false);
    }

    protected void createProblemFor(IResource resource, IMember javaElement, String message, String problemSeverity) {
        try {
            ISourceRange range;
            int severity;
            IMarker marker;
            block6: {
                marker = resource.createMarker("org.eclipse.jdt.core.problem");
                severity = problemSeverity.equals("warning") ? 1 : 2;
                range = null;
                if (javaElement != null) {
                    try {
                        range = javaElement.getNameRange();
                    }
                    catch (JavaModelException e) {
                        if (e.getJavaModelStatus().getCode() != 969) {
                            throw e;
                        }
                        if (CharOperation.equals(javaElement.getElementName().toCharArray(), TypeConstants.PACKAGE_INFO_NAME)) break block6;
                        throw e;
                    }
                }
            }
            int start = range == null ? 0 : range.getOffset();
            int end = range == null ? 1 : start + range.getLength();
            marker.setAttributes(new String[]{"message", "severity", "charStart", "charEnd", "sourceId"}, new Object[]{message, new Integer(severity), new Integer(start), new Integer(end), "JDT"});
        }
        catch (CoreException e) {
            throw this.internalException(e);
        }
    }

    protected void deleteGeneratedFiles(IFile[] deletedGeneratedFiles) {
    }

    protected SourceFile findSourceFile(IFile file, boolean mustExist) {
        if (mustExist && !file.exists()) {
            return null;
        }
        ClasspathMultiDirectory md = this.sourceLocations[0];
        if (this.sourceLocations.length > 1) {
            IPath sourceFileFullPath = file.getFullPath();
            int j = 0;
            int m = this.sourceLocations.length;
            while (j < m) {
                if (this.sourceLocations[j].sourceFolder.getFullPath().isPrefixOf(sourceFileFullPath)) {
                    md = this.sourceLocations[j];
                    if (md.exclusionPatterns == null && md.inclusionPatterns == null || !Util.isExcluded((IResource)file, md.inclusionPatterns, md.exclusionPatterns)) break;
                }
                ++j;
            }
        }
        return new SourceFile(file, md);
    }

    protected void finishedWith(String sourceLocator, CompilationResult result, char[] mainTypeName, ArrayList definedTypeNames, ArrayList duplicateTypeNames) {
        if (duplicateTypeNames == null) {
            this.newState.record(sourceLocator, result.qualifiedReferences, result.simpleNameReferences, result.rootReferences, mainTypeName, definedTypeNames);
            return;
        }
        Object simpleRefs = result.simpleNameReferences;
        int i = 0;
        int l = duplicateTypeNames.size();
        while (i < l) {
            block4: {
                char[][] compoundName = (char[][])duplicateTypeNames.get(i);
                char[] typeName = compoundName[compoundName.length - 1];
                int sLength = ((char[][])simpleRefs).length;
                int j = 0;
                while (j < sLength) {
                    if (!CharOperation.equals(simpleRefs[j], typeName)) {
                        ++j;
                        continue;
                    }
                    break block4;
                }
                char[][] cArray = simpleRefs;
                char[][] cArrayArray = new char[sLength + 1][];
                simpleRefs = cArrayArray;
                System.arraycopy(cArray, 0, cArrayArray, 0, sLength);
                simpleRefs[sLength] = typeName;
            }
            ++i;
        }
        this.newState.record(sourceLocator, result.qualifiedReferences, (char[][])simpleRefs, result.rootReferences, mainTypeName, definedTypeNames);
    }

    protected IContainer createFolder(IPath packagePath, IContainer outputFolder) throws CoreException {
        if (packagePath.isEmpty()) {
            return outputFolder;
        }
        IFolder folder = outputFolder.getFolder(packagePath);
        if (!folder.exists()) {
            this.createFolder(packagePath.removeLastSegments(1), outputFolder);
            folder.create(1025, true, null);
        }
        return folder;
    }

    public ICompilationUnit fromIFile(IFile file) {
        return this.findSourceFile(file, true);
    }

    protected void initializeAnnotationProcessorManager(Compiler newCompiler) {
        AbstractAnnotationProcessorManager annotationManager = JavaModelManager.getJavaModelManager().createAnnotationProcessorManager();
        if (annotationManager != null) {
            annotationManager.configureFromPlatform(newCompiler, this, this.javaBuilder.javaProject);
            annotationManager.setErr(new PrintWriter(System.err));
            annotationManager.setOut(new PrintWriter(System.out));
        }
        newCompiler.annotationProcessorManager = annotationManager;
    }

    protected RuntimeException internalException(CoreException t) {
        ImageBuilderInternalException imageBuilderException = new ImageBuilderInternalException(t);
        if (this.inCompiler) {
            return new AbortCompilation(true, imageBuilderException);
        }
        return imageBuilderException;
    }

    protected boolean isExcludedFromProject(IPath childPath) throws JavaModelException {
        if (childPath.segmentCount() > 2) {
            return false;
        }
        int j = 0;
        int k = this.sourceLocations.length;
        while (j < k) {
            if (childPath.equals((Object)this.sourceLocations[j].binaryFolder.getFullPath())) {
                return true;
            }
            if (childPath.equals((Object)this.sourceLocations[j].sourceFolder.getFullPath())) {
                return true;
            }
            ++j;
        }
        return childPath.equals((Object)this.javaBuilder.javaProject.getOutputLocation());
    }

    protected Compiler newCompiler() {
        Map projectOptions = this.javaBuilder.javaProject.getOptions(true);
        String option = (String)projectOptions.get("org.eclipse.jdt.core.compiler.problem.invalidJavadoc");
        if (!(option != null && !option.equals("ignore") || (option = (String)projectOptions.get("org.eclipse.jdt.core.compiler.problem.missingJavadocTags")) != null && !option.equals("ignore") || (option = (String)projectOptions.get("org.eclipse.jdt.core.compiler.problem.missingJavadocComments")) != null && !option.equals("ignore") || (option = (String)projectOptions.get("org.eclipse.jdt.core.compiler.problem.unusedImport")) != null && !option.equals("ignore"))) {
            projectOptions.put("org.eclipse.jdt.core.compiler.doc.comment.support", "disabled");
        }
        CompilerOptions compilerOptions = new CompilerOptions(projectOptions);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        Compiler newCompiler = new Compiler((INameEnvironment)this.nameEnvironment, DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, (ICompilerRequestor)this, (IProblemFactory)ProblemFactory.getProblemFactory(Locale.getDefault()));
        CompilerOptions options = newCompiler.options;
        String setting = System.getProperty("jdt.compiler.useSingleThread");
        newCompiler.useSingleThread = setting != null && setting.equals("true");
        options.produceReferenceInfo = true;
        if (options.complianceLevel >= 0x320000L && options.processAnnotations) {
            this.initializeAnnotationProcessorManager(newCompiler);
        }
        return newCompiler;
    }

    protected CompilationParticipantResult[] notifyParticipants(SourceFile[] unitsAboutToCompile) {
        BuildContext[] results = new CompilationParticipantResult[unitsAboutToCompile.length];
        int i = unitsAboutToCompile.length;
        while (--i >= 0) {
            results[i] = new CompilationParticipantResult(unitsAboutToCompile[i]);
        }
        i = 0;
        int l = this.javaBuilder.participants.length;
        while (i < l) {
            this.javaBuilder.participants[i].buildStarting(results, this instanceof BatchImageBuilder);
            ++i;
        }
        SimpleSet uniqueFiles = null;
        CompilationParticipantResult[] toAdd = null;
        int added = 0;
        int i2 = results.length;
        while (--i2 >= 0) {
            IFile[] addedGeneratedFiles;
            BuildContext result = results[i2];
            if (result == null) continue;
            IFile[] deletedGeneratedFiles = ((CompilationParticipantResult)result).deletedFiles;
            if (deletedGeneratedFiles != null) {
                this.deleteGeneratedFiles(deletedGeneratedFiles);
            }
            if ((addedGeneratedFiles = ((CompilationParticipantResult)result).addedFiles) == null) continue;
            int j = addedGeneratedFiles.length;
            while (--j >= 0) {
                SourceFile sourceFile = this.findSourceFile(addedGeneratedFiles[j], true);
                if (sourceFile == null) continue;
                if (uniqueFiles == null) {
                    uniqueFiles = new SimpleSet(unitsAboutToCompile.length + 3);
                    int f = unitsAboutToCompile.length;
                    while (--f >= 0) {
                        uniqueFiles.add(unitsAboutToCompile[f]);
                    }
                }
                if (uniqueFiles.addIfNotIncluded(sourceFile) != sourceFile) continue;
                CompilationParticipantResult newResult = new CompilationParticipantResult(sourceFile);
                if (toAdd == null) {
                    toAdd = new CompilationParticipantResult[addedGeneratedFiles.length];
                } else {
                    int length = toAdd.length;
                    if (added == length) {
                        CompilationParticipantResult[] compilationParticipantResultArray = toAdd;
                        toAdd = new CompilationParticipantResult[length + addedGeneratedFiles.length];
                        System.arraycopy(compilationParticipantResultArray, 0, toAdd, 0, length);
                    }
                }
                toAdd[added++] = newResult;
            }
        }
        if (added > 0) {
            int length = results.length;
            BuildContext[] buildContextArray = results;
            results = new CompilationParticipantResult[length + added];
            System.arraycopy(buildContextArray, 0, results, 0, length);
            System.arraycopy(toAdd, 0, results, length, added);
        }
        return results;
    }

    protected abstract void processAnnotationResults(CompilationParticipantResult[] var1);

    protected void processAnnotations(CompilationParticipantResult[] results) {
        boolean hasAnnotationProcessor = false;
        int i = 0;
        int l = this.javaBuilder.participants.length;
        while (!hasAnnotationProcessor && i < l) {
            hasAnnotationProcessor = this.javaBuilder.participants[i].isAnnotationProcessor();
            ++i;
        }
        if (!hasAnnotationProcessor) {
            return;
        }
        boolean foundAnnotations = this.filesWithAnnotations != null && this.filesWithAnnotations.elementSize > 0;
        int i2 = results.length;
        while (--i2 >= 0) {
            results[i2].reset(foundAnnotations && this.filesWithAnnotations.includes(results[i2].sourceFile));
        }
        i2 = 0;
        int l2 = this.javaBuilder.participants.length;
        while (i2 < l2) {
            if (this.javaBuilder.participants[i2].isAnnotationProcessor()) {
                this.javaBuilder.participants[i2].processAnnotations(results);
            }
            ++i2;
        }
        this.processAnnotationResults(results);
    }

    protected void recordParticipantResult(CompilationParticipantResult result) {
        ReferenceCollection refs;
        String[] dependencies;
        CategorizedProblem[] problems = result.problems;
        if (problems != null && problems.length > 0) {
            this.notifier.updateProblemCounts(problems);
            try {
                this.storeProblemsFor(result.sourceFile, problems);
            }
            catch (CoreException e) {
                Util.log(e, "JavaBuilder logging CompilationParticipant's CoreException to help debugging");
            }
        }
        if ((dependencies = result.dependencies) != null && (refs = (ReferenceCollection)this.newState.references.get(result.sourceFile.typeLocator())) != null) {
            refs.addDependencies(dependencies);
        }
    }

    protected void storeProblemsFor(SourceFile sourceFile, CategorizedProblem[] problems) throws CoreException {
        if (sourceFile == null || problems == null || problems.length == 0) {
            return;
        }
        if (!this.keepStoringProblemMarkers) {
            return;
        }
        IFile resource = sourceFile.resource;
        HashSet managedMarkerTypes = JavaModelManager.getJavaModelManager().compilationParticipants.managedMarkerTypes();
        int i = 0;
        int l = problems.length;
        while (i < l) {
            IMarker marker;
            CategorizedProblem problem = problems[i];
            int id = problem.getID();
            if (id == 0x1000144) {
                boolean isInvalidClasspathError;
                String missingClassfileName = problem.getArguments()[0];
                if (JavaBuilder.DEBUG) {
                    System.out.println(Messages.bind(Messages.build_incompleteClassPath, missingClassfileName));
                }
                if ((isInvalidClasspathError = "error".equals(this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.incompleteClasspath", true))) && "abort".equals(this.javaBuilder.javaProject.getOption("org.eclipse.jdt.core.builder.invalidClasspath", true))) {
                    JavaBuilder.removeProblemsAndTasksFor((IResource)this.javaBuilder.currentProject);
                    this.keepStoringProblemMarkers = false;
                }
                marker = this.javaBuilder.currentProject.createMarker("org.eclipse.jdt.core.problem");
                marker.setAttributes(new String[]{"message", "severity", "categoryId", "sourceId"}, new Object[]{Messages.bind(Messages.build_incompleteClassPath, missingClassfileName), new Integer(isInvalidClasspathError ? 2 : 1), new Integer(10), "JDT"});
            }
            String markerType = problem.getMarkerType();
            boolean managedProblem = false;
            if ("org.eclipse.jdt.core.problem".equals(markerType) || (managedProblem = managedMarkerTypes.contains(markerType))) {
                int extraLength;
                marker = resource.createMarker(markerType);
                String[] attributeNames = JAVA_PROBLEM_MARKER_ATTRIBUTE_NAMES;
                int standardLength = attributeNames.length;
                String[] allNames = attributeNames;
                int managedLength = managedProblem ? 0 : 1;
                String[] extraAttributeNames = problem.getExtraMarkerAttributeNames();
                int n = extraLength = extraAttributeNames == null ? 0 : extraAttributeNames.length;
                if (managedLength > 0 || extraLength > 0) {
                    allNames = new String[standardLength + managedLength + extraLength];
                    System.arraycopy(attributeNames, 0, allNames, 0, standardLength);
                    if (managedLength > 0) {
                        allNames[standardLength] = "sourceId";
                    }
                    System.arraycopy(extraAttributeNames, 0, allNames, standardLength + managedLength, extraLength);
                }
                Object[] allValues = new Object[allNames.length];
                int index = 0;
                allValues[index++] = problem.getMessage();
                allValues[index++] = problem.isError() ? S_ERROR : S_WARNING;
                allValues[index++] = new Integer(id);
                allValues[index++] = new Integer(problem.getSourceStart());
                int end = problem.getSourceEnd();
                allValues[index++] = new Integer(end > 0 ? end + 1 : end);
                allValues[index++] = new Integer(problem.getSourceLineNumber());
                allValues[index++] = Util.getProblemArgumentsForMarker(problem.getArguments());
                allValues[index++] = new Integer(problem.getCategoryID());
                if (managedLength > 0) {
                    allValues[index++] = "JDT";
                }
                if (extraLength > 0) {
                    System.arraycopy(problem.getExtraMarkerAttributeValues(), 0, allValues, index, extraLength);
                }
                marker.setAttributes(allNames, allValues);
                if (!this.keepStoringProblemMarkers) {
                    return;
                }
            }
            ++i;
        }
    }

    protected void storeTasksFor(SourceFile sourceFile, CategorizedProblem[] tasks) throws CoreException {
        if (sourceFile == null || tasks == null || tasks.length == 0) {
            return;
        }
        IFile resource = sourceFile.resource;
        int i = 0;
        int l = tasks.length;
        while (i < l) {
            CategorizedProblem task = tasks[i];
            if (task.getID() == 536871362) {
                int extraLength;
                IMarker marker = resource.createMarker("org.eclipse.jdt.core.task");
                Integer priority = P_NORMAL;
                String compilerPriority = task.getArguments()[2];
                if ("HIGH".equals(compilerPriority)) {
                    priority = P_HIGH;
                } else if ("LOW".equals(compilerPriority)) {
                    priority = P_LOW;
                }
                String[] attributeNames = JAVA_TASK_MARKER_ATTRIBUTE_NAMES;
                int standardLength = attributeNames.length;
                String[] allNames = attributeNames;
                String[] extraAttributeNames = task.getExtraMarkerAttributeNames();
                int n = extraLength = extraAttributeNames == null ? 0 : extraAttributeNames.length;
                if (extraLength > 0) {
                    allNames = new String[standardLength + extraLength];
                    System.arraycopy(attributeNames, 0, allNames, 0, standardLength);
                    System.arraycopy(extraAttributeNames, 0, allNames, standardLength, extraLength);
                }
                Object[] allValues = new Object[allNames.length];
                int index = 0;
                allValues[index++] = task.getMessage();
                allValues[index++] = priority;
                allValues[index++] = new Integer(task.getID());
                allValues[index++] = new Integer(task.getSourceStart());
                allValues[index++] = new Integer(task.getSourceEnd() + 1);
                allValues[index++] = new Integer(task.getSourceLineNumber());
                allValues[index++] = Boolean.FALSE;
                allValues[index++] = "JDT";
                if (extraLength > 0) {
                    System.arraycopy(task.getExtraMarkerAttributeValues(), 0, allValues, index, extraLength);
                }
                marker.setAttributes(allNames, allValues);
            }
            ++i;
        }
    }

    protected void updateProblemsFor(SourceFile sourceFile, CompilationResult result) throws CoreException {
        CategorizedProblem[] problems = result.getProblems();
        if (problems == null || problems.length == 0) {
            return;
        }
        this.notifier.updateProblemCounts(problems);
        this.storeProblemsFor(sourceFile, problems);
    }

    protected void updateTasksFor(SourceFile sourceFile, CompilationResult result) throws CoreException {
        CategorizedProblem[] tasks = result.getTasks();
        if (tasks == null || tasks.length == 0) {
            return;
        }
        this.storeTasksFor(sourceFile, tasks);
    }

    protected char[] writeClassFile(ClassFile classFile, SourceFile compilationUnit, boolean isTopLevelType) throws CoreException {
        IContainer outputFolder;
        String fileName = new String(classFile.fileName());
        Path filePath = new Path(fileName);
        IContainer container = outputFolder = compilationUnit.sourceLocation.binaryFolder;
        if (filePath.segmentCount() > 1) {
            container = this.createFolder(filePath.removeLastSegments(1), outputFolder);
            filePath = new Path(filePath.lastSegment());
        }
        IFile file = container.getFile(filePath.addFileExtension("class"));
        this.writeClassFileContents(classFile, file, fileName, isTopLevelType, compilationUnit);
        return filePath.lastSegment().toCharArray();
    }

    protected void writeClassFileContents(ClassFile classFile, IFile file, String qualifiedFileName, boolean isTopLevelType, SourceFile compilationUnit) throws CoreException {
        ByteArrayInputStream input = new ByteArrayInputStream(classFile.getBytes());
        if (file.exists()) {
            if (JavaBuilder.DEBUG) {
                System.out.println("Writing changed class file " + file.getName());
            }
            if (!file.isDerived()) {
                file.setDerived(true, null);
            }
            file.setContents((InputStream)input, true, false, null);
        } else {
            if (JavaBuilder.DEBUG) {
                System.out.println("Writing new class file " + file.getName());
            }
            file.create((InputStream)input, 1025, null);
        }
    }
}

