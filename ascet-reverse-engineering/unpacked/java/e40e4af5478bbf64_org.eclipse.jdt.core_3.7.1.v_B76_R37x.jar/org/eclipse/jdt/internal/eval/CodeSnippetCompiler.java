/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.eval.CodeSnippetParser;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetCompiler
extends Compiler {
    EvaluationContext evaluationContext;
    int codeSnippetStart;
    int codeSnippetEnd;

    public CodeSnippetCompiler(INameEnvironment environment, IErrorHandlingPolicy policy, CompilerOptions compilerOptions, ICompilerRequestor requestor, IProblemFactory problemFactory, EvaluationContext evaluationContext, int codeSnippetStart, int codeSnippetEnd) {
        super(environment, policy, compilerOptions, requestor, problemFactory);
        this.codeSnippetStart = codeSnippetStart;
        this.codeSnippetEnd = codeSnippetEnd;
        this.evaluationContext = evaluationContext;
        this.parser = new CodeSnippetParser(this.problemReporter, evaluationContext, this.options.parseLiteralExpressionsAsConstants, codeSnippetStart, codeSnippetEnd);
        this.parseThreshold = 1;
    }

    public void initializeParser() {
        this.parser = new CodeSnippetParser(this.problemReporter, this.evaluationContext, this.options.parseLiteralExpressionsAsConstants, this.codeSnippetStart, this.codeSnippetEnd);
    }
}

