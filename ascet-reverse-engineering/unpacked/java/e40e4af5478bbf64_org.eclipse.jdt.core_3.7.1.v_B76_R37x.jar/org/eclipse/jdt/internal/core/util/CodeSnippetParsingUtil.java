/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import java.util.Locale;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.util.CommentRecorderParser;
import org.eclipse.jdt.internal.core.util.RecordedParsingInformation;

public class CodeSnippetParsingUtil {
    public RecordedParsingInformation recordedParsingInformation;
    public boolean ignoreMethodBodies;

    public CodeSnippetParsingUtil(boolean ignoreMethodBodies) {
        this.ignoreMethodBodies = ignoreMethodBodies;
    }

    public CodeSnippetParsingUtil() {
        this(false);
    }

    private RecordedParsingInformation getRecordedParsingInformation(CompilationResult compilationResult, int[][] commentPositions) {
        int problemsCount = compilationResult.problemCount;
        CategorizedProblem[] problems = null;
        if (problemsCount != 0) {
            CategorizedProblem[] compilationResultProblems = compilationResult.problems;
            if (compilationResultProblems.length == problemsCount) {
                problems = compilationResultProblems;
            } else {
                problems = new CategorizedProblem[problemsCount];
                System.arraycopy(compilationResultProblems, 0, problems, 0, problemsCount);
            }
        }
        return new RecordedParsingInformation(problems, compilationResult.getLineSeparatorPositions(), commentPositions);
    }

    public ASTNode[] parseClassBodyDeclarations(char[] source, Map settings, boolean recordParsingInformation) {
        return this.parseClassBodyDeclarations(source, 0, source.length, settings, recordParsingInformation, false);
    }

    public ASTNode[] parseClassBodyDeclarations(char[] source, int offset, int length, Map settings, boolean recordParsingInformation, boolean enabledStatementRecovery) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        CompilerOptions compilerOptions = new CompilerOptions(settings);
        compilerOptions.ignoreMethodBodies = this.ignoreMethodBodies;
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
        CommentRecorderParser parser = new CommentRecorderParser(problemReporter, false);
        parser.setMethodsFullRecovery(false);
        parser.setStatementsRecovery(enabledStatementRecovery);
        CompilationUnit sourceUnit = new CompilationUnit(source, "", compilerOptions.defaultEncoding);
        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter, compilationResult, source.length);
        ASTNode[] result = parser.parseClassBodyDeclarations(source, offset, length, compilationUnitDeclaration);
        if (recordParsingInformation) {
            this.recordedParsingInformation = this.getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
        }
        return result;
    }

    public CompilationUnitDeclaration parseCompilationUnit(char[] source, Map settings, boolean recordParsingInformation) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        CompilerOptions compilerOptions = new CompilerOptions(settings);
        compilerOptions.ignoreMethodBodies = this.ignoreMethodBodies;
        CommentRecorderParser parser = new CommentRecorderParser(new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault())), false);
        CompilationUnit sourceUnit = new CompilationUnit(source, "", compilerOptions.defaultEncoding);
        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration compilationUnitDeclaration = parser.dietParse(sourceUnit, compilationResult);
        if (recordParsingInformation) {
            this.recordedParsingInformation = this.getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
        }
        if (compilationUnitDeclaration.ignoreMethodBodies) {
            compilationUnitDeclaration.ignoreFurtherInvestigation = true;
            return compilationUnitDeclaration;
        }
        parser.scanner.setSource(compilationResult);
        TypeDeclaration[] types = compilationUnitDeclaration.types;
        if (types != null) {
            int i = 0;
            int length = types.length;
            while (i < length) {
                types[i].parseMethods(parser, compilationUnitDeclaration);
                ++i;
            }
        }
        if (recordParsingInformation) {
            this.recordedParsingInformation.updateRecordedParsingInformation(compilationResult);
        }
        return compilationUnitDeclaration;
    }

    public Expression parseExpression(char[] source, Map settings, boolean recordParsingInformation) {
        return this.parseExpression(source, 0, source.length, settings, recordParsingInformation);
    }

    public Expression parseExpression(char[] source, int offset, int length, Map settings, boolean recordParsingInformation) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        CompilerOptions compilerOptions = new CompilerOptions(settings);
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
        CommentRecorderParser parser = new CommentRecorderParser(problemReporter, false);
        CompilationUnit sourceUnit = new CompilationUnit(source, "", compilerOptions.defaultEncoding);
        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration unit = new CompilationUnitDeclaration(problemReporter, compilationResult, source.length);
        Expression result = parser.parseExpression(source, offset, length, unit);
        if (recordParsingInformation) {
            this.recordedParsingInformation = this.getRecordedParsingInformation(compilationResult, unit.comments);
        }
        return result;
    }

    public ConstructorDeclaration parseStatements(char[] source, Map settings, boolean recordParsingInformation, boolean enabledStatementRecovery) {
        return this.parseStatements(source, 0, source.length, settings, recordParsingInformation, enabledStatementRecovery);
    }

    public ConstructorDeclaration parseStatements(char[] source, int offset, int length, Map settings, boolean recordParsingInformation, boolean enabledStatementRecovery) {
        if (source == null) {
            throw new IllegalArgumentException();
        }
        CompilerOptions compilerOptions = new CompilerOptions(settings);
        ProblemReporter problemReporter = new ProblemReporter(DefaultErrorHandlingPolicies.proceedWithAllProblems(), compilerOptions, new DefaultProblemFactory(Locale.getDefault()));
        CommentRecorderParser parser = new CommentRecorderParser(problemReporter, false);
        parser.setMethodsFullRecovery(false);
        parser.setStatementsRecovery(enabledStatementRecovery);
        CompilationUnit sourceUnit = new CompilationUnit(source, "", compilerOptions.defaultEncoding);
        CompilationResult compilationResult = new CompilationResult(sourceUnit, 0, 0, compilerOptions.maxProblemsPerUnit);
        CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter, compilationResult, length);
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(compilationResult);
        constructorDeclaration.sourceEnd = -1;
        constructorDeclaration.declarationSourceEnd = offset + length - 1;
        constructorDeclaration.bodyStart = offset;
        constructorDeclaration.bodyEnd = offset + length - 1;
        parser.scanner.setSource(compilationResult);
        parser.scanner.resetTo(offset, offset + length);
        parser.parse(constructorDeclaration, compilationUnitDeclaration, true);
        if (recordParsingInformation) {
            this.recordedParsingInformation = this.getRecordedParsingInformation(compilationResult, compilationUnitDeclaration.comments);
        }
        return constructorDeclaration;
    }
}

