/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.EvaluationResult;
import org.eclipse.jdt.internal.eval.Evaluator;
import org.eclipse.jdt.internal.eval.GlobalVariable;
import org.eclipse.jdt.internal.eval.IRequestor;
import org.eclipse.jdt.internal.eval.VariablesInfo;

public class VariablesEvaluator
extends Evaluator
implements EvaluationConstants {
    VariablesEvaluator(EvaluationContext context, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) {
        super(context, environment, options, requestor, problemFactory);
    }

    protected void addEvaluationResultForCompilationProblem(Map resultsByIDs, CategorizedProblem problem, char[] cuSource) {
        char[] evaluationID = cuSource;
        int evaluationType = 5;
        int pbLine = problem.getSourceLineNumber();
        int currentLine = 1;
        char[] packageName = this.getPackageName();
        if (packageName.length > 0) {
            if (pbLine == 1) {
                evaluationID = packageName;
                evaluationType = 4;
                problem.setSourceLineNumber(1);
                problem.setSourceStart(0);
                problem.setSourceEnd(evaluationID.length - 1);
            }
            ++currentLine;
        }
        char[][] imports = this.context.imports;
        if (currentLine <= pbLine && pbLine < currentLine + imports.length) {
            evaluationID = imports[pbLine - currentLine];
            evaluationType = 3;
            problem.setSourceLineNumber(1);
            problem.setSourceStart(0);
            problem.setSourceEnd(evaluationID.length - 1);
        }
        int varCount = this.context.variableCount;
        if ((currentLine += imports.length + 1) <= pbLine && pbLine < currentLine + varCount) {
            GlobalVariable var = this.context.variables[pbLine - currentLine];
            evaluationID = var.getName();
            evaluationType = 1;
            int pbStart = problem.getSourceStart() - var.declarationStart;
            int pbEnd = problem.getSourceEnd() - var.declarationStart;
            int typeLength = var.getTypeName().length;
            if (pbStart >= 0 && pbEnd < typeLength) {
                problem.setSourceLineNumber(-1);
            } else {
                pbStart -= typeLength + 1;
                pbEnd -= typeLength + 1;
                problem.setSourceLineNumber(0);
            }
            problem.setSourceStart(pbStart);
            problem.setSourceEnd(pbEnd);
        }
        currentLine = -1;
        int i = 0;
        while (i < varCount) {
            int initializerLength;
            GlobalVariable var = this.context.variables[i];
            char[] initializer = var.getInitializer();
            int n = initializerLength = initializer == null ? 0 : initializer.length;
            if (var.initializerStart <= problem.getSourceStart() && problem.getSourceEnd() < var.initializerStart + var.name.length) {
                return;
            }
            if (var.initExpressionStart <= problem.getSourceStart() && problem.getSourceEnd() < var.initExpressionStart + initializerLength) {
                evaluationID = var.name;
                evaluationType = 1;
                problem.setSourceLineNumber(pbLine - var.initializerLineStart + 1);
                problem.setSourceStart(problem.getSourceStart() - var.initExpressionStart);
                problem.setSourceEnd(problem.getSourceEnd() - var.initExpressionStart);
                break;
            }
            ++i;
        }
        EvaluationResult result = (EvaluationResult)resultsByIDs.get(evaluationID);
        if (result == null) {
            resultsByIDs.put(evaluationID, new EvaluationResult(evaluationID, evaluationType, new CategorizedProblem[]{problem}));
        } else {
            result.addProblem(problem);
        }
    }

    protected char[] getClassName() {
        return CharOperation.concat(EvaluationConstants.GLOBAL_VARS_CLASS_NAME_PREFIX, Integer.toString(EvaluationContext.VAR_CLASS_COUNTER + 1).toCharArray());
    }

    Compiler getCompiler(ICompilerRequestor compilerRequestor) {
        VariablesInfo installedVars;
        Compiler compiler = super.getCompiler(compilerRequestor);
        IBinaryType binaryType = this.context.getRootCodeSnippetBinary();
        if (binaryType != null) {
            compiler.lookupEnvironment.cacheBinaryType(binaryType, null);
        }
        if ((installedVars = this.context.installedVars) != null) {
            ClassFile[] classFiles = installedVars.classFiles;
            int i = 0;
            while (i < classFiles.length) {
                ClassFile classFile = classFiles[i];
                ClassFileReader binary = null;
                try {
                    binary = new ClassFileReader(classFile.getBytes(), null);
                }
                catch (ClassFormatException e) {
                    e.printStackTrace();
                }
                compiler.lookupEnvironment.cacheBinaryType(binary, null);
                ++i;
            }
        }
        return compiler;
    }

    protected char[] getPackageName() {
        return this.context.packageName;
    }

    protected char[] getSource() {
        char[] varName;
        GlobalVariable var;
        StringBuffer buffer = new StringBuffer();
        int lineNumberOffset = 1;
        char[] packageName = this.getPackageName();
        if (packageName.length != 0) {
            buffer.append("package ");
            buffer.append(packageName);
            buffer.append(';').append(this.context.lineSeparator);
            ++lineNumberOffset;
        }
        char[][] imports = this.context.imports;
        int i = 0;
        while (i < imports.length) {
            buffer.append("import ");
            buffer.append(imports[i]);
            buffer.append(';').append(this.context.lineSeparator);
            ++lineNumberOffset;
            ++i;
        }
        buffer.append("public class ");
        buffer.append(this.getClassName());
        buffer.append(" extends ");
        buffer.append(PACKAGE_NAME);
        buffer.append(".");
        buffer.append(ROOT_CLASS_NAME);
        buffer.append(" {").append(this.context.lineSeparator);
        ++lineNumberOffset;
        GlobalVariable[] vars = this.context.variables;
        VariablesInfo installedVars = this.context.installedVars;
        int i2 = 0;
        while (i2 < this.context.variableCount) {
            var = vars[i2];
            buffer.append("\tpublic static ");
            var.declarationStart = buffer.length();
            buffer.append(var.typeName);
            buffer.append(" ");
            varName = var.name;
            buffer.append(varName);
            buffer.append(';').append(this.context.lineSeparator);
            ++lineNumberOffset;
            ++i2;
        }
        buffer.append("\tstatic {").append(this.context.lineSeparator);
        ++lineNumberOffset;
        i2 = 0;
        while (i2 < this.context.variableCount) {
            GlobalVariable installedVar;
            var = vars[i2];
            varName = var.name;
            GlobalVariable globalVariable = installedVar = installedVars == null ? null : installedVars.varNamed(varName);
            if (installedVar == null || !CharOperation.equals(installedVar.typeName, var.typeName)) {
                char[] initializer = var.initializer;
                if (initializer != null) {
                    buffer.append("\t\ttry {").append(this.context.lineSeparator);
                    var.initializerLineStart = ++lineNumberOffset;
                    buffer.append("\t\t\t");
                    var.initializerStart = buffer.length();
                    buffer.append(varName);
                    buffer.append("= ");
                    var.initExpressionStart = buffer.length();
                    buffer.append(initializer);
                    lineNumberOffset += this.numberOfCRs(initializer);
                    buffer.append(';').append(this.context.lineSeparator);
                    buffer.append("\t\t} catch (Throwable e) {").append(this.context.lineSeparator);
                    buffer.append("\t\t\te.printStackTrace();").append(this.context.lineSeparator);
                    buffer.append("\t\t}").append(this.context.lineSeparator);
                    lineNumberOffset += 4;
                }
            } else {
                buffer.append("\t\t");
                buffer.append(varName);
                buffer.append("= ");
                char[] installedPackageName = installedVars.packageName;
                if (installedPackageName != null && installedPackageName.length != 0) {
                    buffer.append(installedPackageName);
                    buffer.append(".");
                }
                buffer.append(installedVars.className);
                buffer.append(".");
                buffer.append(varName);
                buffer.append(';').append(this.context.lineSeparator);
                ++lineNumberOffset;
            }
            ++i2;
        }
        buffer.append("\t}").append(this.context.lineSeparator);
        buffer.append('}').append(this.context.lineSeparator);
        int length = buffer.length();
        char[] result = new char[length];
        buffer.getChars(0, length, result, 0);
        return result;
    }

    private int numberOfCRs(char[] source) {
        int numberOfCRs = 0;
        boolean lastWasCR = false;
        int i = 0;
        while (i < source.length) {
            char currentChar = source[i];
            switch (currentChar) {
                case '\r': {
                    lastWasCR = true;
                    ++numberOfCRs;
                    break;
                }
                case '\n': {
                    if (!lastWasCR) {
                        ++numberOfCRs;
                    }
                    lastWasCR = false;
                    break;
                }
                default: {
                    lastWasCR = false;
                }
            }
            ++i;
        }
        return numberOfCRs;
    }
}

