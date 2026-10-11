/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.eval.CodeSnippetCompiler;
import org.eclipse.jdt.internal.eval.CodeSnippetEnvironment;
import org.eclipse.jdt.internal.eval.CodeSnippetParser;
import org.eclipse.jdt.internal.eval.CodeSnippetToCuMapper;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.EvaluationResult;
import org.eclipse.jdt.internal.eval.Evaluator;
import org.eclipse.jdt.internal.eval.IRequestor;
import org.eclipse.jdt.internal.eval.VariablesInfo;

public class CodeSnippetEvaluator
extends Evaluator
implements EvaluationConstants {
    static final boolean DEVELOPMENT_MODE = false;
    char[] codeSnippet;
    CodeSnippetToCuMapper mapper;

    CodeSnippetEvaluator(char[] codeSnippet, EvaluationContext context, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) {
        super(context, environment, options, requestor, problemFactory);
        this.codeSnippet = codeSnippet;
    }

    protected void addEvaluationResultForCompilationProblem(Map resultsByIDs, CategorizedProblem problem, char[] cuSource) {
        CodeSnippetToCuMapper sourceMapper = this.getMapper();
        int pbLineNumber = problem.getSourceLineNumber();
        int evaluationType = sourceMapper.getEvaluationType(pbLineNumber);
        char[] evaluationID = null;
        switch (evaluationType) {
            case 4: {
                evaluationID = this.context.packageName;
                problem.setSourceLineNumber(1);
                problem.setSourceStart(0);
                problem.setSourceEnd(evaluationID.length - 1);
                break;
            }
            case 3: {
                evaluationID = sourceMapper.getImport(pbLineNumber);
                problem.setSourceLineNumber(1);
                problem.setSourceStart(0);
                problem.setSourceEnd(evaluationID.length - 1);
                break;
            }
            case 2: {
                evaluationID = this.codeSnippet;
                problem.setSourceLineNumber(pbLineNumber - this.mapper.lineNumberOffset);
                problem.setSourceStart(problem.getSourceStart() - this.mapper.startPosOffset);
                problem.setSourceEnd(problem.getSourceEnd() - this.mapper.startPosOffset);
                break;
            }
            case 5: {
                evaluationID = cuSource;
            }
        }
        EvaluationResult result = (EvaluationResult)resultsByIDs.get(evaluationID);
        if (result == null) {
            resultsByIDs.put(evaluationID, new EvaluationResult(evaluationID, evaluationType, new CategorizedProblem[]{problem}));
        } else {
            result.addProblem(problem);
        }
    }

    protected char[] getClassName() {
        return CharOperation.concat(CODE_SNIPPET_CLASS_NAME_PREFIX, Integer.toString(EvaluationContext.CODE_SNIPPET_COUNTER + 1).toCharArray());
    }

    Compiler getCompiler(ICompilerRequestor compilerRequestor) {
        VariablesInfo installedVars;
        CodeSnippetCompiler compiler = null;
        CompilerOptions compilerOptions = new CompilerOptions(this.options);
        compilerOptions.performMethodsFullRecovery = true;
        compilerOptions.performStatementsRecovery = true;
        compiler = new CodeSnippetCompiler(this.environment, DefaultErrorHandlingPolicies.exitAfterAllProblems(), compilerOptions, compilerRequestor, this.problemFactory, this.context, this.getMapper().startPosOffset, this.getMapper().startPosOffset + this.codeSnippet.length - 1);
        ((CodeSnippetParser)compiler.parser).lineSeparatorLength = this.context.lineSeparator.length();
        IBinaryType binary = this.context.getRootCodeSnippetBinary();
        if (binary != null) {
            compiler.lookupEnvironment.cacheBinaryType(binary, null);
        }
        if ((installedVars = this.context.installedVars) != null) {
            ClassFile[] globalClassFiles = installedVars.classFiles;
            int i = 0;
            while (i < globalClassFiles.length) {
                ClassFileReader binaryType = null;
                try {
                    binaryType = new ClassFileReader(globalClassFiles[i].getBytes(), null);
                }
                catch (ClassFormatException e) {
                    e.printStackTrace();
                }
                compiler.lookupEnvironment.cacheBinaryType(binaryType, null);
                ++i;
            }
        }
        return compiler;
    }

    private CodeSnippetToCuMapper getMapper() {
        if (this.mapper == null) {
            char[] varClassName = null;
            VariablesInfo installedVars = this.context.installedVars;
            if (installedVars != null) {
                char[] superPackageName = installedVars.packageName;
                varClassName = superPackageName != null && superPackageName.length != 0 ? CharOperation.concat(superPackageName, installedVars.className, '.') : installedVars.className;
            }
            this.mapper = new CodeSnippetToCuMapper(this.codeSnippet, this.context.packageName, this.context.imports, this.getClassName(), varClassName, this.context.localVariableNames, this.context.localVariableTypeNames, this.context.localVariableModifiers, this.context.declaringTypeName, this.context.lineSeparator, CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance")));
        }
        return this.mapper;
    }

    protected char[] getSource() {
        return this.getMapper().cuSource;
    }

    private INameEnvironment getWrapperEnvironment() {
        return new CodeSnippetEnvironment(this.environment, this.context);
    }
}

