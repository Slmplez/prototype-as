/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.Util;

public abstract class AbstractMethodDeclaration
extends ASTNode
implements ProblemSeverities,
ReferenceContext {
    public MethodScope scope;
    public char[] selector;
    public int declarationSourceStart;
    public int declarationSourceEnd;
    public int modifiers;
    public int modifiersSourceStart;
    public Annotation[] annotations;
    public Argument[] arguments;
    public TypeReference[] thrownExceptions;
    public Statement[] statements;
    public int explicitDeclarations;
    public MethodBinding binding;
    public boolean ignoreFurtherInvestigation = false;
    public Javadoc javadoc;
    public int bodyStart;
    public int bodyEnd = -1;
    public CompilationResult compilationResult;

    AbstractMethodDeclaration(CompilationResult compilationResult) {
        this.compilationResult = compilationResult;
    }

    public void abort(int abortLevel, CategorizedProblem problem) {
        switch (abortLevel) {
            case 2: {
                throw new AbortCompilation(this.compilationResult, problem);
            }
            case 4: {
                throw new AbortCompilationUnit(this.compilationResult, problem);
            }
            case 8: {
                throw new AbortType(this.compilationResult, problem);
            }
        }
        throw new AbortMethod(this.compilationResult, problem);
    }

    public abstract void analyseCode(ClassScope var1, InitializationFlowContext var2, FlowInfo var3);

    public void bindArguments() {
        if (this.arguments != null) {
            if (this.binding == null) {
                int i = 0;
                int length = this.arguments.length;
                while (i < length) {
                    this.arguments[i].bind(this.scope, null, true);
                    ++i;
                }
                return;
            }
            boolean used = this.binding.isAbstract() || this.binding.isNative();
            AnnotationBinding[][] paramAnnotations = null;
            int i = 0;
            int length = this.arguments.length;
            while (i < length) {
                Argument argument = this.arguments[i];
                argument.bind(this.scope, this.binding.parameters[i], used);
                if (argument.annotations != null) {
                    if (paramAnnotations == null) {
                        paramAnnotations = new AnnotationBinding[length][];
                        int j = 0;
                        while (j < i) {
                            paramAnnotations[j] = Binding.NO_ANNOTATIONS;
                            ++j;
                        }
                    }
                    paramAnnotations[i] = argument.binding.getAnnotations();
                } else if (paramAnnotations != null) {
                    paramAnnotations[i] = Binding.NO_ANNOTATIONS;
                }
                ++i;
            }
            if (paramAnnotations != null) {
                this.binding.setParameterAnnotations(paramAnnotations);
            }
        }
    }

    public void bindThrownExceptions() {
        block9: {
            if (this.thrownExceptions == null || this.binding == null || this.binding.thrownExceptions == null) break block9;
            int length = this.binding.thrownExceptions.length;
            int thrownExceptionLength = this.thrownExceptions.length;
            if (length == thrownExceptionLength) {
                int i = 0;
                while (i < length) {
                    this.thrownExceptions[i].resolvedType = this.binding.thrownExceptions[i];
                    ++i;
                }
            } else {
                int bindingIndex = 0;
                int i = 0;
                while (i < thrownExceptionLength && bindingIndex < length) {
                    TypeReference thrownException = this.thrownExceptions[i];
                    ReferenceBinding thrownExceptionBinding = this.binding.thrownExceptions[bindingIndex];
                    char[][] bindingCompoundName = thrownExceptionBinding.compoundName;
                    if (bindingCompoundName != null) {
                        if (thrownException instanceof SingleTypeReference) {
                            int lengthName = bindingCompoundName.length;
                            char[] thrownExceptionTypeName = thrownException.getTypeName()[0];
                            if (CharOperation.equals(thrownExceptionTypeName, bindingCompoundName[lengthName - 1])) {
                                thrownException.resolvedType = thrownExceptionBinding;
                                ++bindingIndex;
                            }
                        } else if (CharOperation.equals(thrownException.getTypeName(), bindingCompoundName)) {
                            thrownException.resolvedType = thrownExceptionBinding;
                            ++bindingIndex;
                        }
                    }
                    ++i;
                }
            }
        }
    }

    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        int problemResetPC = 0;
        classFile.codeStream.wideMode = false;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CategorizedProblem[] problems = this.scope.referenceCompilationUnit().compilationResult.getProblems();
            int problemsLength = problems.length;
            CategorizedProblem[] problemsCopy = new CategorizedProblem[problemsLength];
            System.arraycopy(problems, 0, problemsCopy, 0, problemsLength);
            classFile.addProblemMethod(this, this.binding, problemsCopy);
            return;
        }
        boolean restart = false;
        boolean abort = false;
        do {
            try {
                problemResetPC = classFile.contentsOffset;
                this.generateCode(classFile);
                restart = false;
            }
            catch (AbortMethod e) {
                if (e.compilationResult == CodeStream.RESTART_IN_WIDE_MODE) {
                    if (!restart) {
                        classFile.contentsOffset = problemResetPC;
                        --classFile.methodCount;
                        classFile.codeStream.resetInWideMode();
                        restart = true;
                        continue;
                    }
                    restart = false;
                    abort = true;
                    continue;
                }
                if (e.compilationResult == CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE) {
                    classFile.contentsOffset = problemResetPC;
                    --classFile.methodCount;
                    classFile.codeStream.resetForCodeGenUnusedLocals();
                    restart = true;
                    continue;
                }
                restart = false;
                abort = true;
            }
        } while (restart);
        if (abort) {
            CategorizedProblem[] problems = this.scope.referenceCompilationUnit().compilationResult.getAllProblems();
            int problemsLength = problems.length;
            CategorizedProblem[] problemsCopy = new CategorizedProblem[problemsLength];
            System.arraycopy(problems, 0, problemsCopy, 0, problemsLength);
            classFile.addProblemMethod(this, this.binding, problemsCopy, problemResetPC);
        }
    }

    public void generateCode(ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        int methodAttributeOffset = classFile.contentsOffset;
        int attributeNumber = classFile.generateMethodInfoAttributes(this.binding);
        if (!this.binding.isNative() && !this.binding.isAbstract()) {
            int max;
            int i;
            int codeAttributeOffset = classFile.contentsOffset;
            classFile.generateCodeAttributeHeader();
            CodeStream codeStream = classFile.codeStream;
            codeStream.reset(this, classFile);
            this.scope.computeLocalVariablePositions(this.binding.isStatic() ? 0 : 1, codeStream);
            if (this.arguments != null) {
                i = 0;
                max = this.arguments.length;
                while (i < max) {
                    LocalVariableBinding argBinding = this.arguments[i].binding;
                    codeStream.addVisibleLocalVariable(argBinding);
                    argBinding.recordInitializationStartPC(0);
                    ++i;
                }
            }
            if (this.statements != null) {
                i = 0;
                max = this.statements.length;
                while (i < max) {
                    this.statements[i].generateCode(this.scope, codeStream);
                    ++i;
                }
            }
            if (this.ignoreFurtherInvestigation) {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            if ((this.bits & 0x40) != 0) {
                codeStream.return_();
            }
            codeStream.exitUserScope(this.scope);
            codeStream.recordPositionsFrom(0, this.declarationSourceEnd);
            try {
                classFile.completeCodeAttribute(codeAttributeOffset);
            }
            catch (NegativeArraySizeException negativeArraySizeException) {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            ++attributeNumber;
        } else {
            this.checkArgumentsSize();
        }
        classFile.completeMethodInfo(this.binding, methodAttributeOffset, attributeNumber);
    }

    private void checkArgumentsSize() {
        TypeBinding[] parameters = this.binding.parameters;
        int size = 1;
        int i = 0;
        int max = parameters.length;
        while (i < max) {
            switch (parameters[i].id) {
                case 7: 
                case 8: {
                    size += 2;
                    break;
                }
                default: {
                    ++size;
                }
            }
            if (size > 255) {
                this.scope.problemReporter().noMoreAvailableSpaceForArgument(this.scope.locals[i], this.scope.locals[i].declaration);
            }
            ++i;
        }
    }

    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public boolean isAbstract() {
        if (this.binding != null) {
            return this.binding.isAbstract();
        }
        return (this.modifiers & 0x400) != 0;
    }

    public boolean isAnnotationMethod() {
        return false;
    }

    public boolean isClinit() {
        return false;
    }

    public boolean isConstructor() {
        return false;
    }

    public boolean isDefaultConstructor() {
        return false;
    }

    public boolean isInitializationMethod() {
        return false;
    }

    public boolean isMethod() {
        return false;
    }

    public boolean isNative() {
        if (this.binding != null) {
            return this.binding.isNative();
        }
        return (this.modifiers & 0x100) != 0;
    }

    public boolean isStatic() {
        if (this.binding != null) {
            return this.binding.isStatic();
        }
        return (this.modifiers & 8) != 0;
    }

    public abstract void parseStatements(Parser var1, CompilationUnitDeclaration var2);

    public StringBuffer print(int tab, StringBuffer output) {
        int i;
        TypeParameter[] typeParams;
        if (this.javadoc != null) {
            this.javadoc.print(tab, output);
        }
        AbstractMethodDeclaration.printIndent(tab, output);
        AbstractMethodDeclaration.printModifiers(this.modifiers, output);
        if (this.annotations != null) {
            AbstractMethodDeclaration.printAnnotations(this.annotations, output);
        }
        if ((typeParams = this.typeParameters()) != null) {
            output.append('<');
            int max = typeParams.length - 1;
            int j = 0;
            while (j < max) {
                typeParams[j].print(0, output);
                output.append(", ");
                ++j;
            }
            typeParams[max].print(0, output);
            output.append('>');
        }
        this.printReturnType(0, output).append(this.selector).append('(');
        if (this.arguments != null) {
            i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].print(0, output);
                ++i;
            }
        }
        output.append(')');
        if (this.thrownExceptions != null) {
            output.append(" throws ");
            i = 0;
            while (i < this.thrownExceptions.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.thrownExceptions[i].print(0, output);
                ++i;
            }
        }
        this.printBody(tab + 1, output);
        return output;
    }

    public StringBuffer printBody(int indent, StringBuffer output) {
        if (this.isAbstract() || (this.modifiers & 0x1000000) != 0) {
            return output.append(';');
        }
        output.append(" {");
        if (this.statements != null) {
            int i = 0;
            while (i < this.statements.length) {
                output.append('\n');
                this.statements[i].printStatement(indent, output);
                ++i;
            }
        }
        output.append('\n');
        AbstractMethodDeclaration.printIndent(indent == 0 ? 0 : indent - 1, output).append('}');
        return output;
    }

    public StringBuffer printReturnType(int indent, StringBuffer output) {
        return output;
    }

    public void resolve(ClassScope upperScope) {
        if (this.binding == null) {
            this.ignoreFurtherInvestigation = true;
        }
        try {
            this.bindArguments();
            this.bindThrownExceptions();
            this.resolveJavadoc();
            AbstractMethodDeclaration.resolveAnnotations(this.scope, this.annotations, this.binding);
            this.resolveStatements();
            if (this.binding != null && (this.binding.getAnnotationTagBits() & 0x400000000000L) == 0L && (this.binding.modifiers & 0x100000) != 0 && this.scope.compilerOptions().sourceLevel >= 0x310000L) {
                this.scope.problemReporter().missingDeprecatedAnnotationForMethod(this);
            }
        }
        catch (AbortMethod abortMethod) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void resolveJavadoc() {
        if (this.binding == null) {
            return;
        }
        if (this.javadoc != null) {
            this.javadoc.resolve(this.scope);
            return;
        }
        if (this.binding.declaringClass != null && !this.binding.declaringClass.isLocalType()) {
            int javadocVisibility = this.binding.modifiers & 7;
            ClassScope classScope = this.scope.classScope();
            ProblemReporter reporter = this.scope.problemReporter();
            int severity = reporter.computeSeverity(-1610612250);
            if (severity != 256) {
                if (classScope != null) {
                    javadocVisibility = Util.computeOuterMostVisibility(classScope.referenceType(), javadocVisibility);
                }
                int javadocModifiers = this.binding.modifiers & 0xFFFFFFF8 | javadocVisibility;
                reporter.javadocMissing(this.sourceStart, this.sourceEnd, severity, javadocModifiers);
            }
        }
    }

    public void resolveStatements() {
        if (this.statements != null) {
            int i = 0;
            int length = this.statements.length;
            while (i < length) {
                this.statements[i].resolve(this.scope);
                ++i;
            }
        } else if (!((this.bits & 8) == 0 || this.isConstructor() && this.arguments == null)) {
            this.scope.problemReporter().undocumentedEmptyBlock(this.bodyStart - 1, this.bodyEnd + 1);
        }
    }

    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    public void traverse(ASTVisitor visitor, ClassScope classScope) {
    }

    public TypeParameter[] typeParameters() {
        return null;
    }
}

