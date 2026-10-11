/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.StackMapFrameCodeStream;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ConstructorDeclaration
extends AbstractMethodDeclaration {
    public ExplicitConstructorCall constructorCall;
    public TypeParameter[] typeParameters;

    public ConstructorDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    public void analyseCode(ClassScope classScope, InitializationFlowContext initializerFlowContext, FlowInfo flowInfo) {
        this.analyseCode(classScope, initializerFlowContext, flowInfo, 0);
    }

    public void analyseCode(ClassScope classScope, InitializationFlowContext initializerFlowContext, FlowInfo flowInfo, int initialReachMode) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        int nonStaticFieldInfoReachMode = flowInfo.reachMode();
        flowInfo.setReachMode(initialReachMode);
        MethodBinding constructorBinding = this.binding;
        if (constructorBinding != null && (this.bits & 0x80) == 0 && !constructorBinding.isUsed() && !(!constructorBinding.isPrivate() ? !constructorBinding.isOrEnclosedByPrivateType() : (this.binding.declaringClass.tagBits & 0x40000000000000L) == 0L)) {
            MethodBinding methodBinding;
            ReferenceBinding superClass;
            if (this.constructorCall != null && (this.constructorCall.accessMode == 3 || (superClass = constructorBinding.declaringClass.superclass()) != null && (methodBinding = superClass.getExactConstructor(Binding.NO_PARAMETERS)) != null && methodBinding.canBeSeenBy(SuperReference.implicitSuperConstructorCall(), this.scope))) {
                this.scope.problemReporter().unusedPrivateConstructor(this);
            }
        }
        if (this.isRecursive(null)) {
            this.scope.problemReporter().recursiveConstructorInvocation(this.constructorCall);
        }
        try {
            FieldBinding field;
            int size;
            ArrayList computedExceptions;
            ExceptionHandlingFlowContext constructorContext = new ExceptionHandlingFlowContext(initializerFlowContext.parent, this, this.binding.thrownExceptions, initializerFlowContext, this.scope, FlowInfo.DEAD_END);
            initializerFlowContext.checkInitializerExceptions(this.scope, constructorContext, flowInfo);
            if (this.binding.declaringClass.isAnonymousType() && (computedExceptions = constructorContext.extendedExceptions) != null && (size = computedExceptions.size()) > 0) {
                ReferenceBinding[] actuallyThrownExceptions = new ReferenceBinding[size];
                computedExceptions.toArray(actuallyThrownExceptions);
                this.binding.thrownExceptions = actuallyThrownExceptions;
            }
            if (this.arguments != null) {
                int i = 0;
                int count = this.arguments.length;
                while (i < count) {
                    flowInfo.markAsDefinitelyAssigned(this.arguments[i].binding);
                    ++i;
                }
            }
            if (this.constructorCall != null) {
                if (this.constructorCall.accessMode == 3) {
                    FieldBinding[] fields = this.binding.declaringClass.fields();
                    int i = 0;
                    int count = fields.length;
                    while (i < count) {
                        field = fields[i];
                        if (!field.isStatic()) {
                            flowInfo.markAsDefinitelyAssigned(field);
                        }
                        ++i;
                    }
                }
                flowInfo = this.constructorCall.analyseCode(this.scope, constructorContext, flowInfo);
            }
            flowInfo.setReachMode(nonStaticFieldInfoReachMode);
            if (this.statements != null) {
                int complaintLevel = (nonStaticFieldInfoReachMode & 3) == 0 ? 0 : 1;
                int i = 0;
                int count = this.statements.length;
                while (i < count) {
                    Statement stat = this.statements[i];
                    if ((complaintLevel = stat.complainIfUnreachable(flowInfo, this.scope, complaintLevel)) < 2) {
                        flowInfo = stat.analyseCode(this.scope, constructorContext, flowInfo);
                    }
                    ++i;
                }
            }
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= 0x40;
            }
            if (this.constructorCall != null && this.constructorCall.accessMode != 3) {
                flowInfo = flowInfo.mergedWith(constructorContext.initsOnReturn);
                FieldBinding[] fields = this.binding.declaringClass.fields();
                int i = 0;
                int count = fields.length;
                while (i < count) {
                    field = fields[i];
                    if (!field.isStatic() && field.isFinal() && !flowInfo.isDefinitelyAssigned(fields[i])) {
                        this.scope.problemReporter().uninitializedBlankFinalField(field, (this.bits & 0x80) != 0 ? this.scope.referenceType() : this);
                    }
                    ++i;
                }
            }
            constructorContext.complainIfUnusedExceptionHandlers(this);
            this.scope.checkUnusedParameters(this.binding);
        }
        catch (AbortMethod abortMethod) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        int problemResetPC = 0;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CategorizedProblem[] problems = this.scope.referenceCompilationUnit().compilationResult.getProblems();
            int problemsLength = problems.length;
            CategorizedProblem[] problemsCopy = new CategorizedProblem[problemsLength];
            System.arraycopy(problems, 0, problemsCopy, 0, problemsLength);
            classFile.addProblemConstructor(this, this.binding, problemsCopy);
            return;
        }
        boolean restart = false;
        boolean abort = false;
        do {
            try {
                problemResetPC = classFile.contentsOffset;
                this.internalGenerateCode(classScope, classFile);
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
            classFile.addProblemConstructor(this, this.binding, problemsCopy, problemResetPC);
        }
    }

    public void generateSyntheticFieldInitializationsIfNecessary(MethodScope methodScope, CodeStream codeStream, ReferenceBinding declaringClass) {
        SyntheticArgumentBinding syntheticArg;
        int max;
        int i;
        if (!declaringClass.isNestedType()) {
            return;
        }
        NestedTypeBinding nestedType = (NestedTypeBinding)declaringClass;
        SyntheticArgumentBinding[] syntheticArgs = nestedType.syntheticEnclosingInstances();
        if (syntheticArgs != null) {
            i = 0;
            max = syntheticArgs.length;
            while (i < max) {
                syntheticArg = syntheticArgs[i];
                if (syntheticArg.matchingField != null) {
                    codeStream.aload_0();
                    codeStream.load(syntheticArg);
                    codeStream.fieldAccess((byte)-75, syntheticArg.matchingField, null);
                }
                ++i;
            }
        }
        if ((syntheticArgs = nestedType.syntheticOuterLocalVariables()) != null) {
            i = 0;
            max = syntheticArgs.length;
            while (i < max) {
                syntheticArg = syntheticArgs[i];
                if (syntheticArg.matchingField != null) {
                    codeStream.aload_0();
                    codeStream.load(syntheticArg);
                    codeStream.fieldAccess((byte)-75, syntheticArg.matchingField, null);
                }
                ++i;
            }
        }
    }

    private void internalGenerateCode(ClassScope classScope, ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        int methodAttributeOffset = classFile.contentsOffset;
        int attributeNumber = classFile.generateMethodInfoAttributes(this.binding);
        if (!this.binding.isNative() && !this.binding.isAbstract()) {
            int max;
            int i;
            boolean preInitSyntheticFields;
            TypeDeclaration declaringType = classScope.referenceContext;
            int codeAttributeOffset = classFile.contentsOffset;
            classFile.generateCodeAttributeHeader();
            CodeStream codeStream = classFile.codeStream;
            codeStream.reset(this, classFile);
            ReferenceBinding declaringClass = this.binding.declaringClass;
            int enumOffset = declaringClass.isEnum() ? 2 : 0;
            int argSlotSize = 1 + enumOffset;
            if (declaringClass.isNestedType()) {
                this.scope.extraSyntheticArguments = declaringClass.syntheticOuterLocalVariables();
                this.scope.computeLocalVariablePositions(declaringClass.getEnclosingInstancesSlotSize() + 1 + enumOffset, codeStream);
                argSlotSize += declaringClass.getEnclosingInstancesSlotSize();
                argSlotSize += declaringClass.getOuterLocalVariablesSlotSize();
            } else {
                this.scope.computeLocalVariablePositions(1 + enumOffset, codeStream);
            }
            if (this.arguments != null) {
                int i2 = 0;
                int max2 = this.arguments.length;
                while (i2 < max2) {
                    LocalVariableBinding argBinding = this.arguments[i2].binding;
                    codeStream.addVisibleLocalVariable(argBinding);
                    argBinding.recordInitializationStartPC(0);
                    switch (argBinding.type.id) {
                        case 7: 
                        case 8: {
                            argSlotSize += 2;
                            break;
                        }
                        default: {
                            ++argSlotSize;
                        }
                    }
                    ++i2;
                }
            }
            MethodScope initializerScope = declaringType.initializerScope;
            initializerScope.computeLocalVariablePositions(argSlotSize, codeStream);
            boolean needFieldInitializations = this.constructorCall == null || this.constructorCall.accessMode != 3;
            boolean bl = preInitSyntheticFields = this.scope.compilerOptions().targetJDK >= 0x300000L;
            if (needFieldInitializations && preInitSyntheticFields) {
                this.generateSyntheticFieldInitializationsIfNecessary(this.scope, codeStream, declaringClass);
                codeStream.recordPositionsFrom(0, this.bodyStart);
            }
            if (this.constructorCall != null) {
                this.constructorCall.generateCode(this.scope, codeStream);
            }
            if (needFieldInitializations) {
                if (!preInitSyntheticFields) {
                    this.generateSyntheticFieldInitializationsIfNecessary(this.scope, codeStream, declaringClass);
                }
                if (declaringType.fields != null) {
                    i = 0;
                    max = declaringType.fields.length;
                    while (i < max) {
                        FieldDeclaration fieldDecl = declaringType.fields[i];
                        if (!fieldDecl.isStatic()) {
                            fieldDecl.generateCode(initializerScope, codeStream);
                        }
                        ++i;
                    }
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
            codeStream.recordPositionsFrom(0, this.bodyEnd);
            try {
                classFile.completeCodeAttribute(codeAttributeOffset);
            }
            catch (NegativeArraySizeException negativeArraySizeException) {
                throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            ++attributeNumber;
            if (codeStream instanceof StackMapFrameCodeStream && needFieldInitializations && declaringType.fields != null) {
                ((StackMapFrameCodeStream)codeStream).resetSecretLocals();
            }
        }
        classFile.completeMethodInfo(this.binding, methodAttributeOffset, attributeNumber);
    }

    public boolean isConstructor() {
        return true;
    }

    public boolean isDefaultConstructor() {
        return (this.bits & 0x80) != 0;
    }

    public boolean isInitializationMethod() {
        return true;
    }

    public boolean isRecursive(ArrayList visited) {
        if (this.binding == null || this.constructorCall == null || this.constructorCall.binding == null || this.constructorCall.isSuperAccess() || !this.constructorCall.binding.isValidBinding()) {
            return false;
        }
        ConstructorDeclaration targetConstructor = (ConstructorDeclaration)this.scope.referenceType().declarationOf(this.constructorCall.binding.original());
        if (this == targetConstructor) {
            return true;
        }
        if (visited == null) {
            visited = new ArrayList<ConstructorDeclaration>(1);
        } else {
            int index = visited.indexOf(this);
            if (index >= 0) {
                return index == 0;
            }
        }
        visited.add(this);
        return targetConstructor.isRecursive(visited);
    }

    public void parseStatements(Parser parser, CompilationUnitDeclaration unit) {
        if ((this.bits & 0x80) != 0 && this.constructorCall == null) {
            this.constructorCall = SuperReference.implicitSuperConstructorCall();
            this.constructorCall.sourceStart = this.sourceStart;
            this.constructorCall.sourceEnd = this.sourceEnd;
            return;
        }
        parser.parse(this, unit, false);
    }

    public StringBuffer printBody(int indent, StringBuffer output) {
        output.append(" {");
        if (this.constructorCall != null) {
            output.append('\n');
            this.constructorCall.printStatement(indent, output);
        }
        if (this.statements != null) {
            int i = 0;
            while (i < this.statements.length) {
                output.append('\n');
                this.statements[i].printStatement(indent, output);
                ++i;
            }
        }
        output.append('\n');
        ConstructorDeclaration.printIndent(indent == 0 ? 0 : indent - 1, output).append('}');
        return output;
    }

    public void resolveJavadoc() {
        if (this.binding == null || this.javadoc != null) {
            super.resolveJavadoc();
        } else if ((this.bits & 0x80) == 0 && this.binding.declaringClass != null && !this.binding.declaringClass.isLocalType()) {
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
        SourceTypeBinding sourceType = this.scope.enclosingSourceType();
        if (!CharOperation.equals(sourceType.sourceName, this.selector)) {
            this.scope.problemReporter().missingReturnType(this);
        }
        if (this.typeParameters != null) {
            int i = 0;
            int length = this.typeParameters.length;
            while (i < length) {
                this.typeParameters[i].resolve(this.scope);
                ++i;
            }
        }
        if (this.binding != null && !this.binding.isPrivate()) {
            sourceType.tagBits |= 0x40000000000000L;
        }
        if (this.constructorCall != null) {
            if (sourceType.id == 1 && this.constructorCall.accessMode != 3) {
                if (this.constructorCall.accessMode == 2) {
                    this.scope.problemReporter().cannotUseSuperInJavaLangObject(this.constructorCall);
                }
                this.constructorCall = null;
            } else {
                this.constructorCall.resolve(this.scope);
            }
        }
        if ((this.modifiers & 0x1000000) != 0) {
            this.scope.problemReporter().methodNeedBody(this);
        }
        super.resolveStatements();
    }

    public void traverse(ASTVisitor visitor, ClassScope classScope) {
        if (visitor.visit(this, classScope)) {
            int i;
            if (this.javadoc != null) {
                this.javadoc.traverse(visitor, this.scope);
            }
            if (this.annotations != null) {
                int annotationsLength = this.annotations.length;
                i = 0;
                while (i < annotationsLength) {
                    this.annotations[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.typeParameters != null) {
                int typeParametersLength = this.typeParameters.length;
                i = 0;
                while (i < typeParametersLength) {
                    this.typeParameters[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.arguments != null) {
                int argumentLength = this.arguments.length;
                i = 0;
                while (i < argumentLength) {
                    this.arguments[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.thrownExceptions != null) {
                int thrownExceptionsLength = this.thrownExceptions.length;
                i = 0;
                while (i < thrownExceptionsLength) {
                    this.thrownExceptions[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.constructorCall != null) {
                this.constructorCall.traverse(visitor, this.scope);
            }
            if (this.statements != null) {
                int statementsLength = this.statements.length;
                i = 0;
                while (i < statementsLength) {
                    this.statements[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, classScope);
    }

    public TypeParameter[] typeParameters() {
        return this.typeParameters;
    }
}

