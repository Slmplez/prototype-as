/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.EvaluationResult;
import org.eclipse.jdt.internal.eval.Evaluator;
import org.eclipse.jdt.internal.eval.IRequestor;

public abstract class Evaluator {
    EvaluationContext context;
    INameEnvironment environment;
    Map options;
    IRequestor requestor;
    IProblemFactory problemFactory;

    Evaluator(EvaluationContext context, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) {
        this.context = context;
        this.environment = environment;
        this.options = options;
        this.requestor = requestor;
        this.problemFactory = problemFactory;
    }

    protected abstract void addEvaluationResultForCompilationProblem(Map var1, CategorizedProblem var2, char[] var3);

    protected EvaluationResult[] evaluationResultsForCompilationProblems(CompilationResult result, char[] cuSource) {
        CategorizedProblem[] problems = result.getAllProblems();
        HashMap resultsByIDs = new HashMap(5);
        int i = 0;
        while (i < problems.length) {
            this.addEvaluationResultForCompilationProblem(resultsByIDs, problems[i], cuSource);
            ++i;
        }
        int size = resultsByIDs.size();
        EvaluationResult[] evalResults = new EvaluationResult[size];
        Iterator results = resultsByIDs.values().iterator();
        int i2 = 0;
        while (i2 < size) {
            evalResults[i2] = (EvaluationResult)results.next();
            ++i2;
        }
        return evalResults;
    }

    ClassFile[] getClasses() {
        final char[] source = this.getSource();
        ArrayList classDefinitions = new ArrayList();
        class CompilerRequestor
        implements ICompilerRequestor {
            boolean hasErrors;
            final /* synthetic */ Evaluator this$0;
            private final /* synthetic */ char[] val$source;
            private final /* synthetic */ ArrayList val$classDefinitions;

            CompilerRequestor(Evaluator evaluator, char[] cArray, ArrayList arrayList) {
                this.this$0 = evaluator;
                this.val$source = cArray;
                this.val$classDefinitions = arrayList;
                this.hasErrors = false;
            }

            public void acceptResult(CompilationResult result) {
                int i;
                if (result.hasProblems()) {
                    EvaluationResult[] evalResults = this.this$0.evaluationResultsForCompilationProblems(result, this.val$source);
                    i = 0;
                    while (i < evalResults.length) {
                        EvaluationResult evalResult = evalResults[i];
                        CategorizedProblem[] problems = evalResult.getProblems();
                        int j = 0;
                        while (j < problems.length) {
                            this.this$0.requestor.acceptProblem(problems[j], evalResult.getEvaluationID(), evalResult.getEvaluationType());
                            ++j;
                        }
                        ++i;
                    }
                }
                if (result.hasErrors()) {
                    this.hasErrors = true;
                } else {
                    ClassFile[] classFiles = result.getClassFiles();
                    i = 0;
                    while (i < classFiles.length) {
                        ClassFile classFile = classFiles[i];
                        this.val$classDefinitions.add(classFile);
                        ++i;
                    }
                }
            }
        }
        CompilerRequestor compilerRequestor = new CompilerRequestor(this, source, classDefinitions);
        Compiler compiler = this.getCompiler(compilerRequestor);
        compiler.compile(new ICompilationUnit[]{new ICompilationUnit(){

            public char[] getFileName() {
                return CharOperation.concat(Evaluator.this.getClassName(), Util.defaultJavaExtension().toCharArray());
            }

            public char[] getContents() {
                return source;
            }

            public char[] getMainTypeName() {
                return Evaluator.this.getClassName();
            }

            public char[][] getPackageName() {
                return null;
            }
        }});
        if (compilerRequestor.hasErrors) {
            return null;
        }
        ClassFile[] result = new ClassFile[classDefinitions.size()];
        classDefinitions.toArray(result);
        return result;
    }

    protected abstract char[] getClassName();

    Compiler getCompiler(ICompilerRequestor compilerRequestor) {
        CompilerOptions compilerOptions = new CompilerOptions(this.options);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        return new Compiler(this.environment, DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, compilerRequestor, this.problemFactory);
    }

    protected abstract char[] getSource();
}

