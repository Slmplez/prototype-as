/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.problem;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ProblemHandler {
    public static final String[] NoArgument = CharOperation.NO_STRINGS;
    public final IErrorHandlingPolicy policy;
    public final IProblemFactory problemFactory;
    public final CompilerOptions options;

    public ProblemHandler(IErrorHandlingPolicy policy, CompilerOptions options, IProblemFactory problemFactory) {
        this.policy = policy;
        this.problemFactory = problemFactory;
        this.options = options;
    }

    public int computeSeverity(int problemId) {
        return 1;
    }

    public CategorizedProblem createProblem(char[] fileName, int problemId, String[] problemArguments, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition, int lineNumber, int columnNumber) {
        return this.problemFactory.createProblem(fileName, problemId, problemArguments, messageArguments, severity, problemStartPosition, problemEndPosition, lineNumber, columnNumber);
    }

    public CategorizedProblem createProblem(char[] fileName, int problemId, String[] problemArguments, int elaborationId, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition, int lineNumber, int columnNumber) {
        return this.problemFactory.createProblem(fileName, problemId, problemArguments, elaborationId, messageArguments, severity, problemStartPosition, problemEndPosition, lineNumber, columnNumber);
    }

    public void handle(int problemId, String[] problemArguments, int elaborationId, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition, ReferenceContext referenceContext, CompilationResult unitResult) {
        int n;
        if (severity == 256) {
            return;
        }
        if (referenceContext == null) {
            if ((severity & 1) != 0) {
                CategorizedProblem problem = this.createProblem(null, problemId, problemArguments, elaborationId, messageArguments, severity, 0, 0, 0, 0);
                throw new AbortCompilation(null, problem);
            }
            return;
        }
        if (problemStartPosition >= 0) {
            int[] lineEnds = unitResult.getLineSeparatorPositions();
            n = Util.getLineNumber(problemStartPosition, lineEnds, 0, lineEnds.length - 1);
        } else {
            n = 0;
        }
        int lineNumber = n;
        int columnNumber = problemStartPosition >= 0 ? Util.searchColumnNumber(unitResult.getLineSeparatorPositions(), lineNumber, problemStartPosition) : 0;
        CategorizedProblem problem = this.createProblem(unitResult.getFileName(), problemId, problemArguments, elaborationId, messageArguments, severity, problemStartPosition, problemEndPosition, lineNumber, columnNumber);
        if (problem == null) {
            return;
        }
        switch (severity & 1) {
            case 1: {
                this.record(problem, unitResult, referenceContext);
                if ((severity & 0x80) == 0) break;
                referenceContext.tagAsHavingErrors();
                int abortLevel = this.policy.stopOnFirstError() ? 2 : severity & 0x1E;
                if (abortLevel == 0) break;
                referenceContext.abort(abortLevel, problem);
                break;
            }
            case 0: {
                this.record(problem, unitResult, referenceContext);
            }
        }
    }

    public void handle(int problemId, String[] problemArguments, String[] messageArguments, int problemStartPosition, int problemEndPosition, ReferenceContext referenceContext, CompilationResult unitResult) {
        this.handle(problemId, problemArguments, 0, messageArguments, this.computeSeverity(problemId), problemStartPosition, problemEndPosition, referenceContext, unitResult);
    }

    public void record(CategorizedProblem problem, CompilationResult unitResult, ReferenceContext referenceContext) {
        unitResult.record(problem, referenceContext);
    }
}

