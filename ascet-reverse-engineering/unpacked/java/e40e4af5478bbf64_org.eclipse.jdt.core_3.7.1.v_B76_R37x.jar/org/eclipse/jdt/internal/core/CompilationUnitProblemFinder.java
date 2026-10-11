/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.parser.SourceTypeConverter;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.CancelableNameEnvironment;
import org.eclipse.jdt.internal.core.CancelableProblemFactory;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.Util;

public class CompilationUnitProblemFinder
extends Compiler {
    protected CompilationUnitProblemFinder(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions compilerOptions, ICompilerRequestor requestor, IProblemFactory problemFactory) {
        super(environment, policy, compilerOptions, requestor, problemFactory);
    }

    public void accept(ISourceType[] sourceTypes, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        CompilationResult result = new CompilationResult(sourceTypes[0].getFileName(), 1, 1, this.options.maxProblemsPerUnit);
        long savedComplianceLevel = this.options.complianceLevel;
        long savedSourceLevel = this.options.sourceLevel;
        try {
            IJavaProject project = ((SourceTypeElementInfo)sourceTypes[0]).getHandle().getJavaProject();
            this.options.complianceLevel = CompilerOptions.versionToJdkLevel(project.getOption("org.eclipse.jdt.core.compiler.compliance", true));
            this.options.sourceLevel = CompilerOptions.versionToJdkLevel(project.getOption("org.eclipse.jdt.core.compiler.source", true));
            CompilationUnitDeclaration unit = SourceTypeConverter.buildCompilationUnit(sourceTypes, 31, this.lookupEnvironment.problemReporter, result);
            if (unit != null) {
                this.lookupEnvironment.buildTypeBindings(unit, accessRestriction);
                this.lookupEnvironment.completeTypeBindings(unit);
            }
        }
        finally {
            this.options.complianceLevel = savedComplianceLevel;
            this.options.sourceLevel = savedSourceLevel;
        }
    }

    protected static CompilerOptions getCompilerOptions(Map settings, boolean creatingAST, boolean statementsRecovery) {
        CompilerOptions compilerOptions = new CompilerOptions(settings);
        compilerOptions.performMethodsFullRecovery = statementsRecovery;
        compilerOptions.performStatementsRecovery = statementsRecovery;
        compilerOptions.parseLiteralExpressionsAsConstants = !creatingAST;
        compilerOptions.storeAnnotations = creatingAST;
        return compilerOptions;
    }

    protected static IErrorHandlingPolicy getHandlingPolicy() {
        return DefaultErrorHandlingPolicies.proceedWithAllProblems();
    }

    protected static ICompilerRequestor getRequestor() {
        return new ICompilerRequestor(){

            public void acceptResult(CompilationResult compilationResult) {
            }
        };
    }

    public static CompilationUnitDeclaration process(CompilationUnit unitElement, SourceElementParser parser, WorkingCopyOwner workingCopyOwner, HashMap problems, boolean creatingAST, int reconcileFlags, IProgressMonitor monitor) throws JavaModelException {
        JavaProject project = (JavaProject)unitElement.getJavaProject();
        CancelableNameEnvironment environment = null;
        CancelableProblemFactory problemFactory = null;
        CompilationUnitProblemFinder problemFinder = null;
        CompilationUnitDeclaration unit = null;
        try {
            try {
                boolean ignoreMethodBodies;
                environment = new CancelableNameEnvironment(project, workingCopyOwner, monitor);
                problemFactory = new CancelableProblemFactory(monitor);
                CompilerOptions compilerOptions = CompilationUnitProblemFinder.getCompilerOptions(project.getOptions(true), creatingAST, (reconcileFlags & 2) != 0);
                compilerOptions.ignoreMethodBodies = ignoreMethodBodies = (reconcileFlags & 8) != 0;
                problemFinder = new CompilationUnitProblemFinder((INameEnvironment)environment, CompilationUnitProblemFinder.getHandlingPolicy(), compilerOptions, CompilationUnitProblemFinder.getRequestor(), (IProblemFactory)problemFactory);
                boolean analyzeAndGenerateCode = true;
                if (ignoreMethodBodies) {
                    analyzeAndGenerateCode = false;
                }
                try {
                    if (parser != null) {
                        problemFinder.parser = parser;
                        unit = parser.parseCompilationUnit(unitElement, true, monitor);
                        problemFinder.resolve(unit, unitElement, true, analyzeAndGenerateCode, analyzeAndGenerateCode);
                    } else {
                        unit = problemFinder.resolve(unitElement, true, analyzeAndGenerateCode, analyzeAndGenerateCode);
                    }
                }
                catch (AbortCompilation e) {
                    problemFinder.handleInternalException(e, unit);
                }
                if (unit != null) {
                    CategorizedProblem[] categorizedProblems;
                    int length;
                    CompilationResult unitResult = unit.compilationResult;
                    CategorizedProblem[] unitProblems = unitResult.getProblems();
                    int n = length = unitProblems == null ? 0 : unitProblems.length;
                    if (length > 0) {
                        categorizedProblems = new CategorizedProblem[length];
                        System.arraycopy(unitProblems, 0, categorizedProblems, 0, length);
                        problems.put("org.eclipse.jdt.core.problem", categorizedProblems);
                    }
                    int n2 = length = (unitProblems = unitResult.getTasks()) == null ? 0 : unitProblems.length;
                    if (length > 0) {
                        categorizedProblems = new CategorizedProblem[length];
                        System.arraycopy(unitProblems, 0, categorizedProblems, 0, length);
                        problems.put("org.eclipse.jdt.core.task", categorizedProblems);
                    }
                    if (NameLookup.VERBOSE) {
                        System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
                        System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
                    }
                }
            }
            catch (OperationCanceledException e) {
                throw e;
            }
            catch (RuntimeException e) {
                String lineDelimiter = unitElement.findRecommendedLineSeparator();
                StringBuffer message = new StringBuffer("Exception occurred during problem detection:");
                message.append(lineDelimiter);
                message.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                message.append(lineDelimiter);
                message.append(unitElement.getSource());
                message.append(lineDelimiter);
                message.append("----------------------------------- SOURCE END -------------------------------------");
                Util.log(e, message.toString());
                throw new JavaModelException(e, 1005);
            }
        }
        finally {
            if (environment != null) {
                environment.setMonitor(null);
            }
            if (problemFactory != null) {
                problemFactory.monitor = null;
            }
            if (problemFinder != null && !creatingAST) {
                problemFinder.lookupEnvironment.reset();
            }
        }
        return unit;
    }

    public static CompilationUnitDeclaration process(CompilationUnit unitElement, WorkingCopyOwner workingCopyOwner, HashMap problems, boolean creatingAST, int reconcileFlags, IProgressMonitor monitor) throws JavaModelException {
        return CompilationUnitProblemFinder.process(unitElement, null, workingCopyOwner, problems, creatingAST, reconcileFlags, monitor);
    }

    public void initializeParser() {
        this.parser = new CommentRecorderParser(this.problemReporter, this.options.parseLiteralExpressionsAsConstants);
    }
}

