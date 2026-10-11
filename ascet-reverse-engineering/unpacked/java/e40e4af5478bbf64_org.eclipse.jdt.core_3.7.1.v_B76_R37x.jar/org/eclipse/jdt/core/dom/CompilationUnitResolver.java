/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.core.dom;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTConverter;
import org.eclipse.jdt.core.dom.ASTRequestor;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.CompilationUnitResolver;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.FileASTRequestor;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.NameEnvironmentWithProgress;
import org.eclipse.jdt.core.dom.NodeSearcher;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.CancelableNameEnvironment;
import org.eclipse.jdt.internal.core.CancelableProblemFactory;
import org.eclipse.jdt.internal.core.INameEnvironmentWithProgress;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.BindingKeyResolver;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.DOMFinder;

class CompilationUnitResolver
extends Compiler {
    public static final int RESOLVE_BINDING = 1;
    public static final int PARTIAL = 2;
    public static final int STATEMENT_RECOVERY = 4;
    public static final int IGNORE_METHOD_BODIES = 8;
    public static final int BINDING_RECOVERY = 16;
    public static final int INCLUDE_RUNNING_VM_BOOTCLASSPATH = 32;
    HashtableOfObject requestedSources;
    HashtableOfObject requestedKeys;
    DefaultBindingResolver.BindingTables bindingTables;
    boolean hasCompilationAborted = false;
    private IProgressMonitor monitor;
    boolean fromJavaProject;

    public CompilationUnitResolver(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions compilerOptions, ICompilerRequestor requestor, IProblemFactory problemFactory, IProgressMonitor monitor, boolean fromJavaProject) {
        super(environment, policy, compilerOptions, requestor, problemFactory);
        this.monitor = monitor;
        this.fromJavaProject = fromJavaProject;
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        SourceTypeElementInfo sourceType = (SourceTypeElementInfo)sourceTypes[0];
        this.accept((org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)sourceType.getHandle().getCompilationUnit()), accessRestriction);
    }

    public synchronized void accept(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        super.accept(sourceUnit, accessRestriction);
    }

    protected void beginToCompile(org.eclipse.jdt.internal.compiler.env.ICompilationUnit[] sourceUnits, String[] bindingKeys) {
        CompilationUnitDeclaration parsedUnit;
        int sourceLength = sourceUnits.length;
        int keyLength = bindingKeys.length;
        int maxUnits = sourceLength + keyLength;
        this.totalUnits = 0;
        this.unitsToProcess = new CompilationUnitDeclaration[maxUnits];
        int index = 0;
        this.requestedSources = new HashtableOfObject();
        int i = 0;
        while (i < sourceLength) {
            org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit = sourceUnits[i];
            CompilationResult unitResult = new CompilationResult(sourceUnit, index++, maxUnits, this.options.maxProblemsPerUnit);
            try {
                if (this.options.verbose) {
                    this.out.println(Messages.bind(Messages.compilation_request, new String[]{String.valueOf(index++ + 1), String.valueOf(maxUnits), new String(sourceUnit.getFileName())}));
                }
                parsedUnit = this.totalUnits < this.parseThreshold ? this.parser.parse(sourceUnit, unitResult) : this.parser.dietParse(sourceUnit, unitResult);
                this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                this.addCompilationUnit(sourceUnit, parsedUnit);
                this.requestedSources.put(unitResult.getFileName(), sourceUnit);
                this.worked(1);
            }
            finally {
                sourceUnits[i] = null;
            }
            ++i;
        }
        this.requestedKeys = new HashtableOfObject();
        i = 0;
        while (i < keyLength) {
            BindingKeyResolver resolver = new BindingKeyResolver(bindingKeys[i], this, this.lookupEnvironment);
            resolver.parse(true);
            CompilationUnitDeclaration compilationUnitDeclaration = parsedUnit = resolver.hasTypeName() ? resolver.getCompilationUnitDeclaration() : null;
            if (parsedUnit != null) {
                char[] fileName = parsedUnit.compilationResult.getFileName();
                Object existing = this.requestedKeys.get(fileName);
                if (existing == null) {
                    this.requestedKeys.put(fileName, resolver);
                } else if (existing instanceof ArrayList) {
                    ((ArrayList)existing).add(resolver);
                } else {
                    ArrayList<Object> list = new ArrayList<Object>();
                    list.add(existing);
                    list.add(resolver);
                    this.requestedKeys.put(fileName, list);
                }
            } else {
                char[] key = resolver.hasTypeName() ? resolver.getKey().toCharArray() : CharOperation.concatWith(resolver.compoundName(), '.');
                this.requestedKeys.put(key, resolver);
            }
            this.worked(1);
            ++i;
        }
        this.lookupEnvironment.completeTypeBindings();
    }

    IBinding createBinding(String key) {
        if (this.bindingTables == null) {
            throw new RuntimeException("Cannot be called outside ASTParser#createASTs(...)");
        }
        BindingKeyResolver keyResolver = new BindingKeyResolver(key, this, this.lookupEnvironment);
        Binding compilerBinding = keyResolver.getCompilerBinding();
        if (compilerBinding == null) {
            return null;
        }
        DefaultBindingResolver resolver = new DefaultBindingResolver(this.lookupEnvironment, null, this.bindingTables, false, this.fromJavaProject);
        return resolver.getBinding(compilerBinding);
    }

    public static CompilationUnit convert(CompilationUnitDeclaration compilationUnitDeclaration, char[] source, int apiLevel, Map options, boolean needToResolveBindings, WorkingCopyOwner owner, DefaultBindingResolver.BindingTables bindingTables, int flags, IProgressMonitor monitor, boolean fromJavaProject) {
        BindingResolver resolver = null;
        AST ast = AST.newAST(apiLevel);
        ast.setDefaultNodeFlag(2);
        CompilationUnit compilationUnit = null;
        ASTConverter converter = new ASTConverter(options, needToResolveBindings, monitor);
        if (needToResolveBindings) {
            resolver = new DefaultBindingResolver(compilationUnitDeclaration.scope, owner, bindingTables, (flags & 4) != 0, fromJavaProject);
            ast.setFlag(flags | Integer.MIN_VALUE);
        } else {
            resolver = new BindingResolver();
            ast.setFlag(flags);
        }
        ast.setBindingResolver(resolver);
        converter.setAST(ast);
        compilationUnit = converter.convert(compilationUnitDeclaration, source);
        compilationUnit.setLineEndTable(compilationUnitDeclaration.compilationResult.getLineSeparatorPositions());
        ast.setDefaultNodeFlag(0);
        ast.setOriginalModificationCount(ast.modificationCount());
        return compilationUnit;
    }

    protected static CompilerOptions getCompilerOptions(Map options, boolean statementsRecovery) {
        CompilerOptions compilerOptions = new CompilerOptions(options);
        compilerOptions.performMethodsFullRecovery = statementsRecovery;
        compilerOptions.performStatementsRecovery = statementsRecovery;
        compilerOptions.parseLiteralExpressionsAsConstants = false;
        compilerOptions.storeAnnotations = true;
        return compilerOptions;
    }

    protected static IErrorHandlingPolicy getHandlingPolicy() {
        return new IErrorHandlingPolicy(){

            public boolean stopOnFirstError() {
                return false;
            }

            public boolean proceedOnErrors() {
                return false;
            }
        };
    }

    protected static ICompilerRequestor getRequestor() {
        return new ICompilerRequestor(){

            public void acceptResult(CompilationResult compilationResult) {
            }
        };
    }

    public void initializeParser() {
        this.parser = new CommentRecorderParser(this.problemReporter, false);
    }

    public void process(CompilationUnitDeclaration unit, int i) {
        char[] fileName = unit.compilationResult.getFileName();
        if (this.requestedKeys.get(fileName) == null && this.requestedSources.get(fileName) == null) {
            super.process(unit, i);
        }
    }

    protected void handleInternalException(Throwable internalException, CompilationUnitDeclaration unit, CompilationResult result) {
        super.handleInternalException(internalException, unit, result);
        if (unit != null) {
            this.removeUnresolvedBindings(unit);
        }
    }

    protected void handleInternalException(AbortCompilation abortException, CompilationUnitDeclaration unit) {
        super.handleInternalException(abortException, unit);
        if (unit != null) {
            this.removeUnresolvedBindings(unit);
        }
        this.hasCompilationAborted = true;
    }

    public static void parse(ICompilationUnit[] compilationUnits, ASTRequestor astRequestor, int apiLevel, Map options, int flags, IProgressMonitor monitor) {
        try {
            CompilerOptions compilerOptions = new CompilerOptions(options);
            compilerOptions.ignoreMethodBodies = (flags & 8) != 0;
            CommentRecorderParser parser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
            int unitLength = compilationUnits.length;
            if (monitor != null) {
                monitor.beginTask("", unitLength);
            }
            int i = 0;
            while (i < unitLength) {
                org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit = (org.eclipse.jdt.internal.compiler.env.ICompilationUnit)((Object)compilationUnits[i]);
                CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
                CompilationUnitDeclaration compilationUnitDeclaration = parser.dietParse(sourceUnit, compilationResult);
                if (compilationUnitDeclaration.ignoreMethodBodies) {
                    compilationUnitDeclaration.ignoreFurtherInvestigation = true;
                } else {
                    TypeDeclaration[] types = compilationUnitDeclaration.types;
                    if (types != null) {
                        int j = 0;
                        int typeLength = types.length;
                        while (j < typeLength) {
                            types[j].parseMethods(parser, compilationUnitDeclaration);
                            ++j;
                        }
                    }
                    CompilationUnit node = CompilationUnitResolver.convert(compilationUnitDeclaration, parser.scanner.getSource(), apiLevel, options, false, null, null, flags, monitor, true);
                    node.setTypeRoot(compilationUnits[i]);
                    astRequestor.acceptAST(compilationUnits[i], node);
                    if (monitor != null) {
                        monitor.worked(1);
                    }
                }
                ++i;
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public static void parse(String[] sourceUnits, String[] encodings, FileASTRequestor astRequestor, int apiLevel, Map options, int flags, IProgressMonitor monitor) {
        try {
            CompilerOptions compilerOptions = new CompilerOptions(options);
            compilerOptions.ignoreMethodBodies = (flags & 8) != 0;
            CommentRecorderParser parser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
            int unitLength = sourceUnits.length;
            if (monitor != null) {
                monitor.beginTask("", unitLength);
            }
            int i = 0;
            while (i < unitLength) {
                block14: {
                    char[] contents = null;
                    String encoding = encodings != null ? encodings[i] : null;
                    try {
                        contents = Util.getFileCharContent(new File(sourceUnits[i]), encoding);
                    }
                    catch (IOException iOException) {
                        break block14;
                    }
                    if (contents != null) {
                        org.eclipse.jdt.internal.compiler.batch.CompilationUnit compilationUnit;
                        org.eclipse.jdt.internal.compiler.batch.CompilationUnit sourceUnit = compilationUnit = new org.eclipse.jdt.internal.compiler.batch.CompilationUnit(contents, sourceUnits[i], encoding);
                        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
                        CompilationUnitDeclaration compilationUnitDeclaration = parser.dietParse(sourceUnit, compilationResult);
                        if (compilationUnitDeclaration.ignoreMethodBodies) {
                            compilationUnitDeclaration.ignoreFurtherInvestigation = true;
                        } else {
                            TypeDeclaration[] types = compilationUnitDeclaration.types;
                            if (types != null) {
                                int j = 0;
                                int typeLength = types.length;
                                while (j < typeLength) {
                                    types[j].parseMethods(parser, compilationUnitDeclaration);
                                    ++j;
                                }
                            }
                            CompilationUnit node = CompilationUnitResolver.convert(compilationUnitDeclaration, parser.scanner.getSource(), apiLevel, options, false, null, null, flags, monitor, true);
                            node.setTypeRoot(null);
                            astRequestor.acceptAST(sourceUnits[i], node);
                            if (monitor != null) {
                                monitor.worked(1);
                            }
                        }
                    }
                }
                ++i;
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public static CompilationUnitDeclaration parse(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, NodeSearcher nodeSearcher, Map settings, int flags) {
        CompilationUnitDeclaration compilationUnitDeclaration;
        block8: {
            CommentRecorderParser parser;
            block6: {
                ASTNode node;
                block9: {
                    TypeDeclaration enclosingTypeDeclaration;
                    block7: {
                        boolean statementsRecovery;
                        if (sourceUnit == null) {
                            throw new IllegalStateException();
                        }
                        CompilerOptions compilerOptions = new CompilerOptions(settings);
                        compilerOptions.performMethodsFullRecovery = statementsRecovery = (flags & 2) != 0;
                        compilerOptions.performStatementsRecovery = statementsRecovery;
                        compilerOptions.ignoreMethodBodies = (flags & 8) != 0;
                        parser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory()), false);
                        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
                        compilationUnitDeclaration = parser.dietParse(sourceUnit, compilationResult);
                        if (compilationUnitDeclaration.ignoreMethodBodies) {
                            compilationUnitDeclaration.ignoreFurtherInvestigation = true;
                            return compilationUnitDeclaration;
                        }
                        if (nodeSearcher == null) break block6;
                        char[] source = parser.scanner.getSource();
                        int searchPosition = nodeSearcher.position;
                        if (searchPosition < 0 || searchPosition > source.length) {
                            return compilationUnitDeclaration;
                        }
                        compilationUnitDeclaration.traverse((ASTVisitor)nodeSearcher, compilationUnitDeclaration.scope);
                        node = nodeSearcher.found;
                        if (node == null) {
                            return compilationUnitDeclaration;
                        }
                        enclosingTypeDeclaration = nodeSearcher.enclosingType;
                        if (!(node instanceof AbstractMethodDeclaration)) break block7;
                        ((AbstractMethodDeclaration)node).parseStatements(parser, compilationUnitDeclaration);
                        break block8;
                    }
                    if (enclosingTypeDeclaration == null) break block8;
                    if (!(node instanceof Initializer)) break block9;
                    ((Initializer)node).parseStatements(parser, enclosingTypeDeclaration, compilationUnitDeclaration);
                    break block8;
                }
                if (!(node instanceof TypeDeclaration)) break block8;
                ((TypeDeclaration)node).parseMethods(parser, compilationUnitDeclaration);
                break block8;
            }
            TypeDeclaration[] types = compilationUnitDeclaration.types;
            if (types != null) {
                int j = 0;
                int typeLength = types.length;
                while (j < typeLength) {
                    types[j].parseMethods(parser, compilationUnitDeclaration);
                    ++j;
                }
            }
        }
        return compilationUnitDeclaration;
    }

    public static void resolve(ICompilationUnit[] compilationUnits, String[] bindingKeys, ASTRequestor requestor, int apiLevel, Map options, IJavaProject javaProject, WorkingCopyOwner owner, int flags, IProgressMonitor monitor) {
        CancelableNameEnvironment environment = null;
        CancelableProblemFactory problemFactory = null;
        try {
            try {
                if (monitor != null) {
                    int amountOfWork = (compilationUnits.length + bindingKeys.length) * 2;
                    monitor.beginTask("", amountOfWork);
                }
                environment = new CancelableNameEnvironment((JavaProject)javaProject, owner, monitor);
                problemFactory = new CancelableProblemFactory(monitor);
                CompilerOptions compilerOptions = CompilationUnitResolver.getCompilerOptions(options, (flags & 2) != 0);
                compilerOptions.ignoreMethodBodies = (flags & 8) != 0;
                CompilationUnitResolver resolver = new CompilationUnitResolver((INameEnvironment)environment, CompilationUnitResolver.getHandlingPolicy(), compilerOptions, CompilationUnitResolver.getRequestor(), (IProblemFactory)problemFactory, monitor, javaProject != null);
                resolver.resolve(compilationUnits, bindingKeys, requestor, apiLevel, options, owner, flags);
                if (NameLookup.VERBOSE) {
                    System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
                    System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
                }
            }
            catch (JavaModelException javaModelException) {
                CompilationUnitResolver.parse(compilationUnits, requestor, apiLevel, options, flags, monitor);
                if (monitor != null) {
                    monitor.done();
                }
                if (environment != null) {
                    environment.setMonitor(null);
                }
                if (problemFactory != null) {
                    problemFactory.monitor = null;
                }
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
            if (environment != null) {
                environment.setMonitor(null);
            }
            if (problemFactory != null) {
                problemFactory.monitor = null;
            }
        }
    }

    public static void resolve(String[] sourceUnits, String[] encodings, String[] bindingKeys, FileASTRequestor requestor, int apiLevel, Map options, List classpaths, int flags, IProgressMonitor monitor) {
        INameEnvironmentWithProgress environment = null;
        CancelableProblemFactory problemFactory = null;
        try {
            if (monitor != null) {
                int amountOfWork = (sourceUnits.length + bindingKeys.length) * 2;
                monitor.beginTask("", amountOfWork);
            }
            FileSystem.Classpath[] allEntries = new FileSystem.Classpath[classpaths.size()];
            classpaths.toArray(allEntries);
            environment = new NameEnvironmentWithProgress(allEntries, null, monitor);
            problemFactory = new CancelableProblemFactory(monitor);
            CompilerOptions compilerOptions = CompilationUnitResolver.getCompilerOptions(options, (flags & 2) != 0);
            compilerOptions.ignoreMethodBodies = (flags & 8) != 0;
            CompilationUnitResolver resolver = new CompilationUnitResolver((INameEnvironment)environment, CompilationUnitResolver.getHandlingPolicy(), compilerOptions, CompilationUnitResolver.getRequestor(), (IProblemFactory)problemFactory, monitor, false);
            resolver.resolve(sourceUnits, encodings, bindingKeys, requestor, apiLevel, options, flags);
            if (NameLookup.VERBOSE && environment instanceof CancelableNameEnvironment) {
                CancelableNameEnvironment cancelableNameEnvironment = (CancelableNameEnvironment)environment;
                System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + cancelableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
                System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + cancelableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
            if (environment != null) {
                environment.setMonitor(null);
            }
            if (problemFactory != null) {
                problemFactory.monitor = null;
            }
        }
    }

    public static CompilationUnitDeclaration resolve(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, IJavaProject javaProject, List classpaths, NodeSearcher nodeSearcher, Map options, WorkingCopyOwner owner, int flags, IProgressMonitor monitor) throws JavaModelException {
        CompilationUnitDeclaration unit = null;
        INameEnvironmentWithProgress environment = null;
        CancelableProblemFactory problemFactory = null;
        CompilationUnitResolver resolver = null;
        try {
            boolean ignoreMethodBodies;
            if (javaProject == null) {
                FileSystem.Classpath[] allEntries = new FileSystem.Classpath[classpaths.size()];
                classpaths.toArray(allEntries);
                environment = new NameEnvironmentWithProgress(allEntries, null, monitor);
            } else {
                environment = new CancelableNameEnvironment((JavaProject)javaProject, owner, monitor);
            }
            problemFactory = new CancelableProblemFactory(monitor);
            CompilerOptions compilerOptions = CompilationUnitResolver.getCompilerOptions(options, (flags & 2) != 0);
            compilerOptions.ignoreMethodBodies = ignoreMethodBodies = (flags & 8) != 0;
            resolver = new CompilationUnitResolver((INameEnvironment)environment, CompilationUnitResolver.getHandlingPolicy(), compilerOptions, CompilationUnitResolver.getRequestor(), (IProblemFactory)problemFactory, monitor, javaProject != null);
            boolean analyzeAndGenerateCode = !ignoreMethodBodies;
            unit = resolver.resolve(null, sourceUnit, nodeSearcher, true, analyzeAndGenerateCode, analyzeAndGenerateCode);
            if (resolver.hasCompilationAborted) {
                CompilationUnitDeclaration unitDeclaration = CompilationUnitResolver.parse(sourceUnit, nodeSearcher, options, flags);
                int problemCount = unit.compilationResult.problemCount;
                if (problemCount != 0) {
                    unitDeclaration.compilationResult.problems = new CategorizedProblem[problemCount];
                    System.arraycopy(unit.compilationResult.problems, 0, unitDeclaration.compilationResult.problems, 0, problemCount);
                    unitDeclaration.compilationResult.problemCount = problemCount;
                }
                CompilationUnitDeclaration compilationUnitDeclaration = unitDeclaration;
                return compilationUnitDeclaration;
            }
            if (NameLookup.VERBOSE && environment instanceof CancelableNameEnvironment) {
                CancelableNameEnvironment cancelableNameEnvironment = (CancelableNameEnvironment)environment;
                System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + cancelableNameEnvironment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
                System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + cancelableNameEnvironment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
            }
            CompilationUnitDeclaration compilationUnitDeclaration = unit;
            return compilationUnitDeclaration;
        }
        finally {
            if (environment != null) {
                environment.setMonitor(null);
            }
            if (problemFactory != null) {
                problemFactory.monitor = null;
            }
        }
    }

    public static IBinding[] resolve(IJavaElement[] elements, int apiLevel, Map compilerOptions, IJavaProject javaProject, WorkingCopyOwner owner, int flags, IProgressMonitor monitor) {
        int length = elements.length;
        HashMap<IJavaElement, IntArrayList> sourceElementPositions = new HashMap<IJavaElement, IntArrayList>();
        int cuNumber = 0;
        HashtableOfObjectToInt binaryElementPositions = new HashtableOfObjectToInt();
        int i = 0;
        while (i < length) {
            IJavaElement element = elements[i];
            if (!(element instanceof SourceRefElement)) {
                throw new IllegalStateException(element + " is not part of a compilation unit or class file");
            }
            IJavaElement cu = element.getAncestor(5);
            if (cu != null) {
                IntArrayList intList = (IntArrayList)sourceElementPositions.get(cu);
                if (intList == null) {
                    intList = new IntArrayList();
                    sourceElementPositions.put(cu, intList);
                    ++cuNumber;
                }
                intList.add(i);
            } else {
                try {
                    String key = ((BinaryMember)element).getKey(true);
                    binaryElementPositions.put(key, i);
                }
                catch (JavaModelException javaModelException) {
                    throw new IllegalArgumentException(element + " does not exist");
                }
            }
            ++i;
        }
        ICompilationUnit[] cus = new ICompilationUnit[cuNumber];
        sourceElementPositions.keySet().toArray(cus);
        int bindingKeyNumber = binaryElementPositions.size();
        Object[] bindingKeys = new String[bindingKeyNumber];
        binaryElementPositions.keysToArray(bindingKeys);
        class Requestor
        extends ASTRequestor {
            IBinding[] bindings;
            private final /* synthetic */ HashMap val$sourceElementPositions;
            private final /* synthetic */ IJavaElement[] val$elements;
            private final /* synthetic */ HashtableOfObjectToInt val$binaryElementPositions;

            Requestor(int n, HashMap hashMap, IJavaElement[] iJavaElementArray, HashtableOfObjectToInt hashtableOfObjectToInt) {
                this.val$sourceElementPositions = hashMap;
                this.val$elements = iJavaElementArray;
                this.val$binaryElementPositions = hashtableOfObjectToInt;
                this.bindings = new IBinding[n];
            }

            public void acceptAST(ICompilationUnit source, CompilationUnit ast) {
                IntArrayList intList = (IntArrayList)this.val$sourceElementPositions.get(source);
                int i = 0;
                while (i < intList.length) {
                    int index = intList.list[i];
                    SourceRefElement element = (SourceRefElement)this.val$elements[index];
                    DOMFinder finder = new DOMFinder(ast, element, true);
                    try {
                        finder.search();
                    }
                    catch (JavaModelException javaModelException) {
                        throw new IllegalArgumentException(element + " does not exist");
                    }
                    this.bindings[index] = finder.foundBinding;
                    ++i;
                }
            }

            public void acceptBinding(String bindingKey, IBinding binding) {
                int index = this.val$binaryElementPositions.get(bindingKey);
                this.bindings[index] = binding;
            }
        }
        Requestor requestor = new Requestor(length, sourceElementPositions, elements, binaryElementPositions);
        CompilationUnitResolver.resolve(cus, (String[])bindingKeys, requestor, apiLevel, compilerOptions, javaProject, owner, flags, monitor);
        return requestor.bindings;
    }

    public void removeUnresolvedBindings(CompilationUnitDeclaration compilationUnitDeclaration) {
        TypeDeclaration[] types = compilationUnitDeclaration.types;
        if (types != null) {
            int i = 0;
            int max = types.length;
            while (i < max) {
                this.removeUnresolvedBindings(types[i]);
                ++i;
            }
        }
    }

    private void removeUnresolvedBindings(TypeDeclaration type) {
        AbstractMethodDeclaration[] methods;
        FieldDeclaration[] fields;
        TypeDeclaration[] memberTypes = type.memberTypes;
        if (memberTypes != null) {
            int i = 0;
            int max = memberTypes.length;
            while (i < max) {
                this.removeUnresolvedBindings(memberTypes[i]);
                ++i;
            }
        }
        if (type.binding != null && (type.binding.modifiers & 0x2000000) != 0) {
            type.binding = null;
        }
        if ((fields = type.fields) != null) {
            int i = 0;
            int max = fields.length;
            while (i < max) {
                if (fields[i].binding != null && (fields[i].binding.modifiers & 0x2000000) != 0) {
                    fields[i].binding = null;
                }
                ++i;
            }
        }
        if ((methods = type.methods) != null) {
            int i = 0;
            int max = methods.length;
            while (i < max) {
                if (methods[i].binding != null && (methods[i].binding.modifiers & 0x2000000) != 0) {
                    methods[i].binding = null;
                }
                ++i;
            }
        }
    }

    /*
     * Exception decompiling
     */
    private void resolve(ICompilationUnit[] compilationUnits, String[] bindingKeys, ASTRequestor astRequestor, int apiLevel, Map compilerOptions, WorkingCopyOwner owner, int flags) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [7[CATCHBLOCK]], but top level block is 3[TRYBLOCK]
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

    /*
     * Exception decompiling
     */
    private void resolve(String[] sourceCompilationUnits, String[] encodings, String[] bindingKeys, FileASTRequestor astRequestor, int apiLevel, Map compilerOptions, int flags) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [9[CATCHBLOCK]], but top level block is 4[TRYBLOCK]
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

    private void reportBinding(Object key, ASTRequestor astRequestor, WorkingCopyOwner owner, CompilationUnitDeclaration unit) {
        BindingKeyResolver keyResolver = (BindingKeyResolver)key;
        Binding compilerBinding = keyResolver.getCompilerBinding();
        if (compilerBinding != null) {
            DefaultBindingResolver resolver = new DefaultBindingResolver(unit.scope, owner, this.bindingTables, false, this.fromJavaProject);
            AnnotationBinding annotationBinding = keyResolver.getAnnotationBinding();
            IBinding binding = annotationBinding != null ? resolver.getAnnotationInstance(annotationBinding) : resolver.getBinding(compilerBinding);
            if (binding != null) {
                astRequestor.acceptBinding(keyResolver.getKey(), binding);
            }
        }
    }

    private void reportBinding(Object key, FileASTRequestor astRequestor, CompilationUnitDeclaration unit) {
        BindingKeyResolver keyResolver = (BindingKeyResolver)key;
        Binding compilerBinding = keyResolver.getCompilerBinding();
        if (compilerBinding != null) {
            DefaultBindingResolver resolver = new DefaultBindingResolver(unit.scope, null, this.bindingTables, false, this.fromJavaProject);
            AnnotationBinding annotationBinding = keyResolver.getAnnotationBinding();
            IBinding binding = annotationBinding != null ? resolver.getAnnotationInstance(annotationBinding) : resolver.getBinding(compilerBinding);
            if (binding != null) {
                astRequestor.acceptBinding(keyResolver.getKey(), binding);
            }
        }
    }

    private CompilationUnitDeclaration resolve(CompilationUnitDeclaration unit, org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, NodeSearcher nodeSearcher, boolean verifyMethods, boolean analyzeCode, boolean generateCode) {
        try {
            if (unit == null) {
                this.parseThreshold = 0;
                this.beginToCompile(new org.eclipse.jdt.internal.compiler.env.ICompilationUnit[]{sourceUnit});
                int i = 0;
                int max = this.totalUnits;
                while (i < max) {
                    CompilationUnitDeclaration currentCompilationUnitDeclaration = this.unitsToProcess[i];
                    if (currentCompilationUnitDeclaration != null && currentCompilationUnitDeclaration.compilationResult.compilationUnit == sourceUnit) {
                        unit = currentCompilationUnitDeclaration;
                        break;
                    }
                    ++i;
                }
                if (unit == null) {
                    unit = this.unitsToProcess[0];
                }
            } else {
                this.lookupEnvironment.buildTypeBindings(unit, null);
                this.lookupEnvironment.completeTypeBindings();
            }
            if (nodeSearcher == null) {
                this.parser.getMethodBodies(unit);
            } else {
                int searchPosition = nodeSearcher.position;
                char[] source = sourceUnit.getContents();
                int length = source.length;
                if (searchPosition >= 0 && searchPosition <= length) {
                    unit.traverse((ASTVisitor)nodeSearcher, unit.scope);
                    ASTNode node = nodeSearcher.found;
                    if (node != null) {
                        int[] oldLineEnds = this.parser.scanner.lineEnds;
                        int oldLinePtr = this.parser.scanner.linePtr;
                        this.parser.scanner.setSource(source, unit.compilationResult);
                        TypeDeclaration enclosingTypeDeclaration = nodeSearcher.enclosingType;
                        if (node instanceof AbstractMethodDeclaration) {
                            ((AbstractMethodDeclaration)node).parseStatements(this.parser, unit);
                        } else if (enclosingTypeDeclaration != null) {
                            if (node instanceof Initializer) {
                                ((Initializer)node).parseStatements(this.parser, enclosingTypeDeclaration, unit);
                            } else if (node instanceof TypeDeclaration) {
                                ((TypeDeclaration)node).parseMethods(this.parser, unit);
                            }
                        }
                        this.parser.scanner.lineEnds = oldLineEnds;
                        this.parser.scanner.linePtr = oldLinePtr;
                    }
                }
            }
            if (unit.scope != null) {
                unit.scope.faultInTypes();
                if (unit.scope != null && verifyMethods) {
                    unit.scope.verifyMethods(this.lookupEnvironment.methodVerifier());
                }
                unit.resolve();
                if (analyzeCode) {
                    unit.analyseCode();
                }
                if (generateCode) {
                    unit.generateCode();
                }
                unit.finalizeProblems();
            }
            if (this.unitsToProcess != null) {
                this.unitsToProcess[0] = null;
            }
            this.requestor.acceptResult(unit.compilationResult.tagAsAccepted());
            return unit;
        }
        catch (AbortCompilation e) {
            this.handleInternalException(e, unit);
            return unit == null ? this.unitsToProcess[0] : unit;
        }
        catch (Error e) {
            this.handleInternalException(e, unit, null);
            throw e;
        }
        catch (RuntimeException e) {
            this.handleInternalException(e, unit, null);
            throw e;
        }
    }

    public CompilationUnitDeclaration resolve(org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, boolean verifyMethods, boolean analyzeCode, boolean generateCode) {
        return this.resolve(null, sourceUnit, null, verifyMethods, analyzeCode, generateCode);
    }

    boolean resolvedRequestedSourcesAndKeys(int unitIndexToProcess) {
        if (unitIndexToProcess < this.requestedSources.size() && unitIndexToProcess < this.requestedKeys.size()) {
            return false;
        }
        Object[] sources = this.requestedSources.valueTable;
        int i = 0;
        int l = sources.length;
        while (i < l) {
            if (sources[i] != null) {
                return false;
            }
            ++i;
        }
        Object[] keys = this.requestedKeys.valueTable;
        int i2 = 0;
        int l2 = keys.length;
        while (i2 < l2) {
            if (keys[i2] != null) {
                return false;
            }
            ++i2;
        }
        return true;
    }

    public CompilationUnitDeclaration resolve(CompilationUnitDeclaration unit, org.eclipse.jdt.internal.compiler.env.ICompilationUnit sourceUnit, boolean verifyMethods, boolean analyzeCode, boolean generateCode) {
        return this.resolve(unit, sourceUnit, null, verifyMethods, analyzeCode, generateCode);
    }

    private void worked(int work) {
        if (this.monitor != null) {
            if (this.monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            this.monitor.worked(work);
        }
    }

    static class IntArrayList {
        public int[] list = new int[5];
        public int length = 0;

        IntArrayList() {
        }

        public void add(int i) {
            if (this.list.length == this.length) {
                this.list = new int[this.length * 2];
                System.arraycopy(this.list, 0, this.list, 0, this.length);
            }
            this.list[this.length++] = i;
        }
    }
}

