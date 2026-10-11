/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import java.io.PrintWriter;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IDebugRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ReadManager;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeCollisionException;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblem;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;

public class Compiler
implements ITypeRequestor,
ProblemSeverities {
    public Parser parser;
    public ICompilerRequestor requestor;
    public CompilerOptions options;
    public ProblemReporter problemReporter;
    protected PrintWriter out;
    public CompilerStats stats;
    public CompilationProgress progress;
    public int remainingIterations = 1;
    public CompilationUnitDeclaration[] unitsToProcess;
    public int totalUnits;
    public LookupEnvironment lookupEnvironment;
    public static boolean DEBUG = false;
    public int parseThreshold = -1;
    public AbstractAnnotationProcessorManager annotationProcessorManager;
    public int annotationProcessorStartIndex = 0;
    public ReferenceBinding[] referenceBindings;
    public boolean useSingleThread = true;
    public static IDebugRequestor DebugRequestor = null;

    public Compiler(INameEnvironment environment, IErrorHandlingPolicy policy, Map settings, ICompilerRequestor requestor, IProblemFactory problemFactory) {
        this(environment, policy, new CompilerOptions(settings), requestor, problemFactory, null, null);
    }

    public Compiler(INameEnvironment environment, IErrorHandlingPolicy policy, Map settings, ICompilerRequestor requestor, IProblemFactory problemFactory, boolean parseLiteralExpressionsAsConstants) {
        this(environment, policy, new CompilerOptions(settings, parseLiteralExpressionsAsConstants), requestor, problemFactory, null, null);
    }

    public Compiler(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions options, ICompilerRequestor requestor, IProblemFactory problemFactory) {
        this(environment, policy, options, requestor, problemFactory, null, null);
    }

    public Compiler(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions options, ICompilerRequestor requestor, IProblemFactory problemFactory, PrintWriter out) {
        this(environment, policy, options, requestor, problemFactory, out, null);
    }

    public Compiler(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions options, final ICompilerRequestor requestor, IProblemFactory problemFactory, PrintWriter out, CompilationProgress progress) {
        this.options = options;
        this.progress = progress;
        this.requestor = DebugRequestor == null ? requestor : new ICompilerRequestor(){

            public void acceptResult(CompilationResult result) {
                if (DebugRequestor.isActive()) {
                    DebugRequestor.acceptDebugResult(result);
                }
                requestor.acceptResult(result);
            }
        };
        this.problemReporter = new ProblemReporter(policy, this.options, problemFactory);
        this.lookupEnvironment = new LookupEnvironment(this, this.options, this.problemReporter, environment);
        this.out = out == null ? new PrintWriter(System.out, true) : out;
        this.stats = new CompilerStats();
        this.initializeParser();
    }

    public void accept(IBinaryType binaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        if (this.options.verbose) {
            this.out.println(Messages.bind(Messages.compilation_loadBinary, new String(binaryType.getName())));
        }
        this.lookupEnvironment.createBinaryTypeFrom(binaryType, packageBinding, accessRestriction);
    }

    public void accept(ICompilationUnit sourceUnit, AccessRestriction accessRestriction) {
        CompilationResult unitResult = new CompilationResult(sourceUnit, this.totalUnits, this.totalUnits, this.options.maxProblemsPerUnit);
        unitResult.checkSecondaryTypes = true;
        try {
            if (this.options.verbose) {
                String count = String.valueOf(this.totalUnits + 1);
                this.out.println(Messages.bind(Messages.compilation_request, new String[]{count, count, new String(sourceUnit.getFileName())}));
            }
            CompilationUnitDeclaration parsedUnit = this.totalUnits < this.parseThreshold ? this.parser.parse(sourceUnit, unitResult) : this.parser.dietParse(sourceUnit, unitResult);
            parsedUnit.bits |= 1;
            this.lookupEnvironment.buildTypeBindings(parsedUnit, accessRestriction);
            this.addCompilationUnit(sourceUnit, parsedUnit);
            this.lookupEnvironment.completeTypeBindings(parsedUnit);
        }
        catch (AbortCompilationUnit e) {
            if (unitResult.compilationUnit == sourceUnit) {
                this.requestor.acceptResult(unitResult.tagAsAccepted());
            }
            throw e;
        }
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        this.problemReporter.abortDueToInternalError(Messages.bind(Messages.abort_againstSourceModel, new String[]{String.valueOf(sourceTypes[0].getName()), String.valueOf(sourceTypes[0].getFileName())}));
    }

    protected synchronized void addCompilationUnit(ICompilationUnit sourceUnit, CompilationUnitDeclaration parsedUnit) {
        if (this.unitsToProcess == null) {
            return;
        }
        int size = this.unitsToProcess.length;
        if (this.totalUnits == size) {
            this.unitsToProcess = new CompilationUnitDeclaration[size * 2];
            System.arraycopy(this.unitsToProcess, 0, this.unitsToProcess, 0, this.totalUnits);
        }
        this.unitsToProcess[this.totalUnits++] = parsedUnit;
    }

    protected void beginToCompile(ICompilationUnit[] sourceUnits) {
        int maxUnits = sourceUnits.length;
        this.totalUnits = 0;
        this.unitsToProcess = new CompilationUnitDeclaration[maxUnits];
        this.internalBeginToCompile(sourceUnits, maxUnits);
    }

    protected void reportProgress(String taskDecription) {
        if (this.progress != null) {
            if (this.progress.isCanceled()) {
                throw new AbortCompilation(true, null);
            }
            this.progress.setTaskName(taskDecription);
        }
    }

    protected void reportWorked(int workIncrement, int currentUnitIndex) {
        if (this.progress != null) {
            if (this.progress.isCanceled()) {
                throw new AbortCompilation(true, null);
            }
            this.progress.worked(workIncrement, this.totalUnits * this.remainingIterations - currentUnitIndex - 1);
        }
    }

    /*
     * Exception decompiling
     */
    public void compile(ICompilationUnit[] sourceUnits) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
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

    public synchronized CompilationUnitDeclaration getUnitToProcess(int next) {
        if (next < this.totalUnits) {
            CompilationUnitDeclaration unit = this.unitsToProcess[next];
            this.unitsToProcess[next] = null;
            return unit;
        }
        return null;
    }

    public void setBinaryTypes(ReferenceBinding[] binaryTypes) {
        this.referenceBindings = binaryTypes;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void handleInternalException(Throwable internalException, CompilationUnitDeclaration unit, CompilationResult result) {
        if (result == null && unit != null) {
            result = unit.compilationResult;
        }
        if (result == null && this.lookupEnvironment.unitBeingCompleted != null) {
            result = this.lookupEnvironment.unitBeingCompleted.compilationResult;
        }
        if (result == null) {
            Compiler compiler = this;
            synchronized (compiler) {
                if (this.unitsToProcess != null && this.totalUnits > 0) {
                    result = this.unitsToProcess[this.totalUnits - 1].compilationResult;
                }
            }
        }
        boolean needToPrint = true;
        if (result != null) {
            String[] pbArguments = new String[]{Messages.bind(Messages.compilation_internalError, Util.getExceptionSummary(internalException))};
            result.record(this.problemReporter.createProblem(result.getFileName(), 0, pbArguments, pbArguments, 1, 0, 0, 0, 0), unit);
            if (!result.hasBeenAccepted) {
                this.requestor.acceptResult(result.tagAsAccepted());
                needToPrint = false;
            }
        }
        if (needToPrint) {
            internalException.printStackTrace();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void handleInternalException(AbortCompilation abortException, CompilationUnitDeclaration unit) {
        if (abortException.isSilent) {
            if (abortException.silentException == null) {
                return;
            }
            throw abortException.silentException;
        }
        CompilationResult result = abortException.compilationResult;
        if (result == null && unit != null) {
            result = unit.compilationResult;
        }
        if (result == null && this.lookupEnvironment.unitBeingCompleted != null) {
            result = this.lookupEnvironment.unitBeingCompleted.compilationResult;
        }
        if (result == null) {
            Compiler compiler = this;
            synchronized (compiler) {
                if (this.unitsToProcess != null && this.totalUnits > 0) {
                    result = this.unitsToProcess[this.totalUnits - 1].compilationResult;
                }
            }
        }
        if (result != null && !result.hasBeenAccepted) {
            block18: {
                if (abortException.problem != null) {
                    CategorizedProblem distantProblem = abortException.problem;
                    CategorizedProblem[] knownProblems = result.problems;
                    int i = 0;
                    while (i < result.problemCount) {
                        if (knownProblems[i] != distantProblem) {
                            ++i;
                            continue;
                        }
                        break block18;
                    }
                    if (distantProblem instanceof DefaultProblem) {
                        ((DefaultProblem)distantProblem).setOriginatingFileName(result.getFileName());
                    }
                    result.record(distantProblem, unit);
                } else if (abortException.exception != null) {
                    this.handleInternalException(abortException.exception, null, result);
                    return;
                }
            }
            if (!result.hasBeenAccepted) {
                this.requestor.acceptResult(result.tagAsAccepted());
            }
        } else {
            abortException.printStackTrace();
        }
    }

    public void initializeParser() {
        this.parser = new Parser(this.problemReporter, this.options.parseLiteralExpressionsAsConstants);
    }

    protected void internalBeginToCompile(ICompilationUnit[] sourceUnits, int maxUnits) {
        if (!this.useSingleThread && maxUnits >= 10) {
            this.parser.readManager = new ReadManager(sourceUnits, maxUnits);
        }
        int i = 0;
        while (i < maxUnits) {
            try {
                if (this.options.verbose) {
                    this.out.println(Messages.bind(Messages.compilation_request, new String[]{String.valueOf(i + 1), String.valueOf(maxUnits), new String(sourceUnits[i].getFileName())}));
                }
                CompilationResult unitResult = new CompilationResult(sourceUnits[i], i, maxUnits, this.options.maxProblemsPerUnit);
                long parseStart = System.currentTimeMillis();
                CompilationUnitDeclaration parsedUnit = this.totalUnits < this.parseThreshold ? this.parser.parse(sourceUnits[i], unitResult) : this.parser.dietParse(sourceUnits[i], unitResult);
                long resolveStart = System.currentTimeMillis();
                this.stats.parseTime += resolveStart - parseStart;
                this.lookupEnvironment.buildTypeBindings(parsedUnit, null);
                this.stats.resolveTime += System.currentTimeMillis() - resolveStart;
                this.addCompilationUnit(sourceUnits[i], parsedUnit);
                ImportReference currentPackage = parsedUnit.currentPackage;
                if (currentPackage != null) {
                    unitResult.recordPackageName(currentPackage.tokens);
                }
            }
            finally {
                sourceUnits[i] = null;
            }
            ++i;
        }
        if (this.parser.readManager != null) {
            this.parser.readManager.shutdown();
            this.parser.readManager = null;
        }
        this.lookupEnvironment.completeTypeBindings();
    }

    public void process(CompilationUnitDeclaration unit, int i) {
        this.lookupEnvironment.unitBeingCompleted = unit;
        long parseStart = System.currentTimeMillis();
        this.parser.getMethodBodies(unit);
        long resolveStart = System.currentTimeMillis();
        this.stats.parseTime += resolveStart - parseStart;
        if (unit.scope != null) {
            unit.scope.faultInTypes();
        }
        if (unit.scope != null) {
            unit.scope.verifyMethods(this.lookupEnvironment.methodVerifier());
        }
        unit.resolve();
        long analyzeStart = System.currentTimeMillis();
        this.stats.resolveTime += analyzeStart - resolveStart;
        if (!this.options.ignoreMethodBodies) {
            unit.analyseCode();
        }
        long generateStart = System.currentTimeMillis();
        this.stats.analyzeTime += generateStart - analyzeStart;
        if (!this.options.ignoreMethodBodies) {
            unit.generateCode();
        }
        if (this.options.produceReferenceInfo && unit.scope != null) {
            unit.scope.storeDependencyInfo();
        }
        unit.finalizeProblems();
        this.stats.generateTime += System.currentTimeMillis() - generateStart;
        unit.compilationResult.totalUnitsKnown = this.totalUnits;
        this.lookupEnvironment.unitBeingCompleted = null;
    }

    protected void processAnnotations() {
        block18: {
            int newUnitSize = 0;
            int newClassFilesSize = 0;
            int bottom = this.annotationProcessorStartIndex;
            int top = this.totalUnits;
            ReferenceBinding[] binaryTypeBindingsTemp = this.referenceBindings;
            if (top == 0 && binaryTypeBindingsTemp == null) {
                return;
            }
            this.referenceBindings = null;
            do {
                int length = top - bottom;
                CompilationUnitDeclaration[] currentUnits = new CompilationUnitDeclaration[length];
                int index = 0;
                int i = bottom;
                while (i < top) {
                    CompilationUnitDeclaration currentUnit = this.unitsToProcess[i];
                    if ((currentUnit.bits & 1) == 0) {
                        currentUnits[index++] = currentUnit;
                    }
                    ++i;
                }
                if (index != length) {
                    CompilationUnitDeclaration[] compilationUnitDeclarationArray = currentUnits;
                    currentUnits = new CompilationUnitDeclaration[index];
                    System.arraycopy(compilationUnitDeclarationArray, 0, currentUnits, 0, index);
                }
                this.annotationProcessorManager.processAnnotations(currentUnits, binaryTypeBindingsTemp, false);
                ICompilationUnit[] newUnits = this.annotationProcessorManager.getNewUnits();
                newUnitSize = newUnits.length;
                ReferenceBinding[] newClassFiles = this.annotationProcessorManager.getNewClassFiles();
                binaryTypeBindingsTemp = newClassFiles;
                newClassFilesSize = newClassFiles.length;
                if (newUnitSize != 0) {
                    ICompilationUnit[] newProcessedUnits = (ICompilationUnit[])newUnits.clone();
                    try {
                        try {
                            this.lookupEnvironment.isProcessingAnnotations = true;
                            this.internalBeginToCompile(newUnits, newUnitSize);
                        }
                        catch (SourceTypeCollisionException e) {
                            e.newAnnotationProcessorUnits = newProcessedUnits;
                            throw e;
                        }
                    }
                    finally {
                        this.lookupEnvironment.isProcessingAnnotations = false;
                        this.annotationProcessorManager.reset();
                    }
                    bottom = top;
                    top = this.totalUnits;
                    continue;
                }
                bottom = top;
                this.annotationProcessorManager.reset();
            } while (newUnitSize != 0 || newClassFilesSize != 0);
            this.annotationProcessorManager.processAnnotations(null, null, true);
            ICompilationUnit[] newUnits = this.annotationProcessorManager.getNewUnits();
            newUnitSize = newUnits.length;
            if (newUnitSize != 0) {
                ICompilationUnit[] newProcessedUnits = (ICompilationUnit[])newUnits.clone();
                try {
                    try {
                        this.lookupEnvironment.isProcessingAnnotations = true;
                        this.internalBeginToCompile(newUnits, newUnitSize);
                        break block18;
                    }
                    catch (SourceTypeCollisionException e) {
                        e.newAnnotationProcessorUnits = newProcessedUnits;
                        throw e;
                    }
                }
                finally {
                    this.lookupEnvironment.isProcessingAnnotations = false;
                    this.annotationProcessorManager.reset();
                }
            }
            this.annotationProcessorManager.reset();
        }
    }

    public void reset() {
        this.lookupEnvironment.reset();
        this.parser.scanner.source = null;
        this.unitsToProcess = null;
        if (DebugRequestor != null) {
            DebugRequestor.reset();
        }
        this.problemReporter.reset();
    }

    public CompilationUnitDeclaration resolve(CompilationUnitDeclaration unit, ICompilationUnit sourceUnit, boolean verifyMethods, boolean analyzeCode, boolean generateCode) {
        try {
            if (unit == null) {
                this.parseThreshold = 0;
                this.beginToCompile(new ICompilationUnit[]{sourceUnit});
                int i = 0;
                while (i < this.totalUnits) {
                    if (this.unitsToProcess[i] != null && this.unitsToProcess[i].compilationResult.compilationUnit == sourceUnit) {
                        unit = this.unitsToProcess[i];
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
            this.lookupEnvironment.unitBeingCompleted = unit;
            this.parser.getMethodBodies(unit);
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

    public CompilationUnitDeclaration resolve(ICompilationUnit sourceUnit, boolean verifyMethods, boolean analyzeCode, boolean generateCode) {
        return this.resolve(null, sourceUnit, verifyMethods, analyzeCode, generateCode);
    }
}

