/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Clinit;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.Util;

public class TypeDeclaration
extends Statement
implements ProblemSeverities,
ReferenceContext {
    public static final int CLASS_DECL = 1;
    public static final int INTERFACE_DECL = 2;
    public static final int ENUM_DECL = 3;
    public static final int ANNOTATION_TYPE_DECL = 4;
    public int modifiers = 0;
    public int modifiersSourceStart;
    public Annotation[] annotations;
    public char[] name;
    public TypeReference superclass;
    public TypeReference[] superInterfaces;
    public FieldDeclaration[] fields;
    public AbstractMethodDeclaration[] methods;
    public TypeDeclaration[] memberTypes;
    public SourceTypeBinding binding;
    public ClassScope scope;
    public MethodScope initializerScope;
    public MethodScope staticInitializerScope;
    public boolean ignoreFurtherInvestigation = false;
    public int maxFieldCount;
    public int declarationSourceStart;
    public int declarationSourceEnd;
    public int bodyStart;
    public int bodyEnd;
    public CompilationResult compilationResult;
    public MethodDeclaration[] missingAbstractMethods;
    public Javadoc javadoc;
    public QualifiedAllocationExpression allocation;
    public TypeDeclaration enclosingType;
    public FieldBinding enumValuesSyntheticfield;
    public int enumConstantsCounter;
    public TypeParameter[] typeParameters;

    public TypeDeclaration(CompilationResult compilationResult) {
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
            case 16: {
                throw new AbortMethod(this.compilationResult, problem);
            }
        }
        throw new AbortType(this.compilationResult, problem);
    }

    public final void addClinit() {
        if (this.needClassInitMethod()) {
            AbstractMethodDeclaration[] methodDeclarations = this.methods;
            if (this.methods == null) {
                boolean length = false;
                methodDeclarations = new AbstractMethodDeclaration[1];
            } else {
                int length = methodDeclarations.length;
                AbstractMethodDeclaration[] abstractMethodDeclarationArray = methodDeclarations;
                methodDeclarations = new AbstractMethodDeclaration[length + 1];
                System.arraycopy(abstractMethodDeclarationArray, 0, methodDeclarations, 1, length);
            }
            Clinit clinit = new Clinit(this.compilationResult);
            methodDeclarations[0] = clinit;
            clinit.declarationSourceStart = clinit.sourceStart = this.sourceStart;
            clinit.declarationSourceEnd = clinit.sourceEnd = this.sourceEnd;
            clinit.bodyEnd = this.sourceEnd;
            this.methods = methodDeclarations;
        }
    }

    public MethodDeclaration addMissingAbstractMethodFor(MethodBinding methodBinding) {
        TypeBinding[] argumentTypes = methodBinding.parameters;
        int argumentsLength = argumentTypes.length;
        MethodDeclaration methodDeclaration = new MethodDeclaration(this.compilationResult);
        methodDeclaration.selector = methodBinding.selector;
        methodDeclaration.sourceStart = this.sourceStart;
        methodDeclaration.sourceEnd = this.sourceEnd;
        methodDeclaration.modifiers = methodBinding.getAccessFlags() & 0xFFFFFBFF;
        if (argumentsLength > 0) {
            String baseName = "arg";
            methodDeclaration.arguments = new Argument[argumentsLength];
            Argument[] arguments = methodDeclaration.arguments;
            int i = argumentsLength;
            while (--i >= 0) {
                arguments[i] = new Argument((String.valueOf(baseName) + i).toCharArray(), 0L, null, 0);
            }
        }
        if (this.missingAbstractMethods == null) {
            this.missingAbstractMethods = new MethodDeclaration[]{methodDeclaration};
        } else {
            MethodDeclaration[] newMethods = new MethodDeclaration[this.missingAbstractMethods.length + 1];
            System.arraycopy(this.missingAbstractMethods, 0, newMethods, 1, this.missingAbstractMethods.length);
            newMethods[0] = methodDeclaration;
            this.missingAbstractMethods = newMethods;
        }
        methodDeclaration.binding = new MethodBinding(methodDeclaration.modifiers | 0x1000, methodBinding.selector, methodBinding.returnType, argumentsLength == 0 ? Binding.NO_PARAMETERS : argumentTypes, methodBinding.thrownExceptions, this.binding);
        methodDeclaration.scope = new MethodScope(this.scope, methodDeclaration, true);
        methodDeclaration.bindArguments();
        return methodDeclaration;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return flowInfo;
        }
        try {
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= Integer.MIN_VALUE;
                LocalTypeBinding localType = (LocalTypeBinding)this.binding;
                localType.setConstantPoolName(currentScope.compilationUnitScope().computeConstantPoolName(localType));
            }
            this.manageEnclosingInstanceAccessIfNecessary(currentScope, flowInfo);
            this.updateMaxFieldCount();
            this.internalAnalyseCode(flowContext, flowInfo);
        }
        catch (AbortType abortType) {
            this.ignoreFurtherInvestigation = true;
        }
        return flowInfo;
    }

    public void analyseCode(ClassScope enclosingClassScope) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            this.updateMaxFieldCount();
            this.internalAnalyseCode(null, FlowInfo.initial(this.maxFieldCount));
        }
        catch (AbortType abortType) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void analyseCode(ClassScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= Integer.MIN_VALUE;
                LocalTypeBinding localType = (LocalTypeBinding)this.binding;
                localType.setConstantPoolName(currentScope.compilationUnitScope().computeConstantPoolName(localType));
            }
            this.manageEnclosingInstanceAccessIfNecessary(currentScope, flowInfo);
            this.updateMaxFieldCount();
            this.internalAnalyseCode(flowContext, flowInfo);
        }
        catch (AbortType abortType) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void analyseCode(CompilationUnitScope unitScope) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            this.internalAnalyseCode(null, FlowInfo.initial(this.maxFieldCount));
        }
        catch (AbortType abortType) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public boolean checkConstructors(Parser parser) {
        boolean hasConstructor = false;
        if (this.methods != null) {
            int i = this.methods.length;
            while (--i >= 0) {
                AbstractMethodDeclaration am = this.methods[i];
                if (!am.isConstructor()) continue;
                if (!CharOperation.equals(am.selector, this.name)) {
                    ConstructorDeclaration c = (ConstructorDeclaration)am;
                    if (c.constructorCall != null && !c.constructorCall.isImplicitSuper()) continue;
                    MethodDeclaration m = parser.convertToMethodDeclaration(c, this.compilationResult);
                    this.methods[i] = m;
                    continue;
                }
                switch (TypeDeclaration.kind(this.modifiers)) {
                    case 2: {
                        parser.problemReporter().interfaceCannotHaveConstructors((ConstructorDeclaration)am);
                        break;
                    }
                    case 4: {
                        parser.problemReporter().annotationTypeDeclarationCannotHaveConstructor((ConstructorDeclaration)am);
                    }
                }
                hasConstructor = true;
            }
        }
        return hasConstructor;
    }

    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public ConstructorDeclaration createDefaultConstructor(boolean needExplicitConstructorCall, boolean needToInsert) {
        ConstructorDeclaration constructor = new ConstructorDeclaration(this.compilationResult);
        constructor.bits |= 0x80;
        constructor.selector = this.name;
        constructor.modifiers = this.modifiers & 7;
        constructor.declarationSourceStart = constructor.sourceStart = this.sourceStart;
        constructor.sourceEnd = constructor.bodyEnd = this.sourceEnd;
        constructor.declarationSourceEnd = constructor.bodyEnd;
        if (needExplicitConstructorCall) {
            constructor.constructorCall = SuperReference.implicitSuperConstructorCall();
            constructor.constructorCall.sourceStart = this.sourceStart;
            constructor.constructorCall.sourceEnd = this.sourceEnd;
        }
        if (needToInsert) {
            if (this.methods == null) {
                this.methods = new AbstractMethodDeclaration[]{constructor};
            } else {
                AbstractMethodDeclaration[] newMethods = new AbstractMethodDeclaration[this.methods.length + 1];
                System.arraycopy(this.methods, 0, newMethods, 1, this.methods.length);
                newMethods[0] = constructor;
                this.methods = newMethods;
            }
        }
        return constructor;
    }

    public MethodBinding createDefaultConstructorWithBinding(MethodBinding inheritedConstructorBinding, boolean eraseThrownExceptions) {
        MethodBinding[] methodBindings;
        int i;
        String baseName = "$anonymous";
        TypeBinding[] argumentTypes = inheritedConstructorBinding.parameters;
        int argumentsLength = argumentTypes.length;
        ConstructorDeclaration constructor = new ConstructorDeclaration(this.compilationResult);
        constructor.selector = new char[]{'x'};
        constructor.sourceStart = this.sourceStart;
        constructor.sourceEnd = this.sourceEnd;
        int newModifiers = this.modifiers & 7;
        if (inheritedConstructorBinding.isVarargs()) {
            newModifiers |= 0x80;
        }
        constructor.modifiers = newModifiers;
        constructor.bits |= 0x80;
        if (argumentsLength > 0) {
            constructor.arguments = new Argument[argumentsLength];
            Argument[] arguments = constructor.arguments;
            i = argumentsLength;
            while (--i >= 0) {
                arguments[i] = new Argument((String.valueOf(baseName) + i).toCharArray(), 0L, null, 0);
            }
        }
        constructor.constructorCall = SuperReference.implicitSuperConstructorCall();
        constructor.constructorCall.sourceStart = this.sourceStart;
        constructor.constructorCall.sourceEnd = this.sourceEnd;
        if (argumentsLength > 0) {
            constructor.constructorCall.arguments = new Expression[argumentsLength];
            Expression[] args = constructor.constructorCall.arguments;
            i = argumentsLength;
            while (--i >= 0) {
                args[i] = new SingleNameReference((String.valueOf(baseName) + i).toCharArray(), 0L);
            }
        }
        if (this.methods == null) {
            this.methods = new AbstractMethodDeclaration[]{constructor};
        } else {
            AbstractMethodDeclaration[] newMethods = new AbstractMethodDeclaration[this.methods.length + 1];
            System.arraycopy(this.methods, 0, newMethods, 1, this.methods.length);
            newMethods[0] = constructor;
            this.methods = newMethods;
        }
        ReferenceBinding[] thrownExceptions = eraseThrownExceptions ? this.scope.environment().convertToRawTypes(inheritedConstructorBinding.thrownExceptions, true, true) : inheritedConstructorBinding.thrownExceptions;
        SourceTypeBinding sourceType = this.binding;
        constructor.binding = new MethodBinding(constructor.modifiers, argumentsLength == 0 ? Binding.NO_PARAMETERS : argumentTypes, thrownExceptions, sourceType);
        constructor.binding.tagBits |= inheritedConstructorBinding.tagBits & 0x80L;
        constructor.binding.modifiers |= 0x4000000;
        constructor.scope = new MethodScope(this.scope, constructor, true);
        constructor.bindArguments();
        constructor.constructorCall.resolve(constructor.scope);
        MethodBinding[] methodBindingArray = methodBindings = sourceType.methods();
        int length = methodBindings.length;
        methodBindings = new MethodBinding[length + 1];
        System.arraycopy(methodBindingArray, 0, methodBindings, 1, length);
        methodBindings[0] = constructor.binding;
        if (++length > 1) {
            ReferenceBinding.sortMethods(methodBindings, 0, length);
        }
        sourceType.setMethods(methodBindings);
        return constructor.binding;
    }

    public FieldDeclaration declarationOf(FieldBinding fieldBinding) {
        if (fieldBinding != null && this.fields != null) {
            int i = 0;
            int max = this.fields.length;
            while (i < max) {
                FieldDeclaration fieldDecl = this.fields[i];
                if (fieldDecl.binding == fieldBinding) {
                    return fieldDecl;
                }
                ++i;
            }
        }
        return null;
    }

    public TypeDeclaration declarationOf(MemberTypeBinding memberTypeBinding) {
        if (memberTypeBinding != null && this.memberTypes != null) {
            int i = 0;
            int max = this.memberTypes.length;
            while (i < max) {
                TypeDeclaration memberTypeDecl = this.memberTypes[i];
                if (memberTypeDecl.binding == memberTypeBinding) {
                    return memberTypeDecl;
                }
                ++i;
            }
        }
        return null;
    }

    public AbstractMethodDeclaration declarationOf(MethodBinding methodBinding) {
        if (methodBinding != null && this.methods != null) {
            int i = 0;
            int max = this.methods.length;
            while (i < max) {
                AbstractMethodDeclaration methodDecl = this.methods[i];
                if (methodDecl.binding == methodBinding) {
                    return methodDecl;
                }
                ++i;
            }
        }
        return null;
    }

    public TypeDeclaration declarationOfType(char[][] typeName) {
        int typeNameLength = typeName.length;
        if (typeNameLength < 1 || !CharOperation.equals(typeName[0], this.name)) {
            return null;
        }
        if (typeNameLength == 1) {
            return this;
        }
        char[][] subTypeName = new char[typeNameLength - 1][];
        System.arraycopy(typeName, 1, subTypeName, 0, typeNameLength - 1);
        int i = 0;
        while (i < this.memberTypes.length) {
            TypeDeclaration typeDecl = this.memberTypes[i].declarationOfType(subTypeName);
            if (typeDecl != null) {
                return typeDecl;
            }
            ++i;
        }
        return null;
    }

    public void generateCode(ClassFile enclosingClassFile) {
        if ((this.bits & 0x2000) != 0) {
            return;
        }
        this.bits |= 0x2000;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            ClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
            return;
        }
        try {
            ClassFile classFile = ClassFile.getNewInstance(this.binding);
            classFile.initialize(this.binding, enclosingClassFile, false);
            if (this.binding.isMemberType()) {
                classFile.recordInnerClasses(this.binding);
            } else if (this.binding.isLocalType()) {
                enclosingClassFile.recordInnerClasses(this.binding);
                classFile.recordInnerClasses(this.binding);
            }
            TypeVariableBinding[] typeVariables = this.binding.typeVariables();
            int i = 0;
            int max = typeVariables.length;
            while (i < max) {
                TypeVariableBinding typeVariableBinding = typeVariables[i];
                if ((typeVariableBinding.tagBits & 0x800L) != 0L) {
                    Util.recordNestedType(classFile, typeVariableBinding);
                }
                ++i;
            }
            classFile.addFieldInfos();
            if (this.memberTypes != null) {
                i = 0;
                max = this.memberTypes.length;
                while (i < max) {
                    TypeDeclaration memberType = this.memberTypes[i];
                    classFile.recordInnerClasses(memberType.binding);
                    memberType.generateCode(this.scope, classFile);
                    ++i;
                }
            }
            classFile.setForMethodInfos();
            if (this.methods != null) {
                i = 0;
                max = this.methods.length;
                while (i < max) {
                    this.methods[i].generateCode(this.scope, classFile);
                    ++i;
                }
            }
            classFile.addSpecialMethods();
            if (this.ignoreFurtherInvestigation) {
                throw new AbortType(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            classFile.addAttributes();
            this.scope.referenceCompilationUnit().compilationResult.record(this.binding.constantPoolName(), classFile);
        }
        catch (AbortType abortType) {
            if (this.binding == null) {
                return;
            }
            ClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
        }
    }

    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        if ((this.bits & 0x2000) != 0) {
            return;
        }
        int pc = codeStream.position;
        if (this.binding != null) {
            SyntheticArgumentBinding[] enclosingInstances = ((NestedTypeBinding)this.binding).syntheticEnclosingInstances();
            int i = 0;
            int slotSize = 0;
            int count = enclosingInstances == null ? 0 : enclosingInstances.length;
            while (i < count) {
                SyntheticArgumentBinding enclosingInstance = enclosingInstances[i];
                enclosingInstance.resolvedPosition = ++slotSize;
                if (slotSize > 255) {
                    blockScope.problemReporter().noMoreAvailableSpaceForArgument(enclosingInstance, blockScope.referenceType());
                }
                ++i;
            }
        }
        this.generateCode(codeStream.classFile);
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void generateCode(ClassScope classScope, ClassFile enclosingClassFile) {
        if ((this.bits & 0x2000) != 0) {
            return;
        }
        if (this.binding != null) {
            SyntheticArgumentBinding[] enclosingInstances = ((NestedTypeBinding)this.binding).syntheticEnclosingInstances();
            int i = 0;
            int slotSize = 0;
            int count = enclosingInstances == null ? 0 : enclosingInstances.length;
            while (i < count) {
                SyntheticArgumentBinding enclosingInstance = enclosingInstances[i];
                enclosingInstance.resolvedPosition = ++slotSize;
                if (slotSize > 255) {
                    classScope.problemReporter().noMoreAvailableSpaceForArgument(enclosingInstance, classScope.referenceType());
                }
                ++i;
            }
        }
        this.generateCode(enclosingClassFile);
    }

    public void generateCode(CompilationUnitScope unitScope) {
        this.generateCode((ClassFile)null);
    }

    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    private void internalAnalyseCode(FlowContext flowContext, FlowInfo flowInfo) {
        int count;
        int i;
        if (!this.binding.isUsed() && this.binding.isOrEnclosedByPrivateType() && !this.scope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
            this.scope.problemReporter().unusedPrivateType(this);
        }
        InitializationFlowContext initializerContext = new InitializationFlowContext(null, this, flowInfo, flowContext, this.initializerScope);
        InitializationFlowContext staticInitializerContext = new InitializationFlowContext(null, this, flowInfo, flowContext, this.staticInitializerScope);
        FlowInfo nonStaticFieldInfo = flowInfo.unconditionalFieldLessCopy();
        FlowInfo staticFieldInfo = flowInfo.unconditionalFieldLessCopy();
        if (this.fields != null) {
            i = 0;
            count = this.fields.length;
            while (i < count) {
                FieldDeclaration field = this.fields[i];
                if (field.isStatic()) {
                    if ((staticFieldInfo.tagBits & 1) != 0) {
                        field.bits &= Integer.MAX_VALUE;
                    }
                    staticInitializerContext.handledExceptions = Binding.ANY_EXCEPTION;
                    if ((staticFieldInfo = field.analyseCode(this.staticInitializerScope, (FlowContext)staticInitializerContext, staticFieldInfo)) == FlowInfo.DEAD_END) {
                        this.staticInitializerScope.problemReporter().initializerMustCompleteNormally(field);
                        staticFieldInfo = FlowInfo.initial(this.maxFieldCount).setReachMode(1);
                    }
                } else {
                    if ((nonStaticFieldInfo.tagBits & 1) != 0) {
                        field.bits &= Integer.MAX_VALUE;
                    }
                    initializerContext.handledExceptions = Binding.ANY_EXCEPTION;
                    if ((nonStaticFieldInfo = field.analyseCode(this.initializerScope, (FlowContext)initializerContext, nonStaticFieldInfo)) == FlowInfo.DEAD_END) {
                        this.initializerScope.problemReporter().initializerMustCompleteNormally(field);
                        nonStaticFieldInfo = FlowInfo.initial(this.maxFieldCount).setReachMode(1);
                    }
                }
                ++i;
            }
        }
        if (this.memberTypes != null) {
            i = 0;
            count = this.memberTypes.length;
            while (i < count) {
                if (flowContext != null) {
                    this.memberTypes[i].analyseCode(this.scope, flowContext, ((FlowInfo)nonStaticFieldInfo).copy().setReachMode(flowInfo.reachMode()));
                } else {
                    this.memberTypes[i].analyseCode(this.scope);
                }
                ++i;
            }
        }
        if (this.methods != null) {
            UnconditionalFlowInfo outerInfo = flowInfo.unconditionalFieldLessCopy();
            FlowInfo constructorInfo = ((FlowInfo)nonStaticFieldInfo).unconditionalInits().discardNonFieldInitializations().addInitializationsFrom(outerInfo);
            int i2 = 0;
            int count2 = this.methods.length;
            while (i2 < count2) {
                AbstractMethodDeclaration method = this.methods[i2];
                if (!method.ignoreFurtherInvestigation) {
                    if (method.isInitializationMethod()) {
                        if (method.isStatic()) {
                            method.analyseCode(this.scope, staticInitializerContext, staticFieldInfo.unconditionalInits().discardNonFieldInitializations().addInitializationsFrom(outerInfo));
                        } else {
                            ((ConstructorDeclaration)method).analyseCode(this.scope, initializerContext, constructorInfo.copy(), flowInfo.reachMode());
                        }
                    } else {
                        method.analyseCode(this.scope, null, flowInfo.copy());
                    }
                }
                ++i2;
            }
        }
        if (this.binding.isEnum() && !this.binding.isAnonymousType()) {
            this.enumValuesSyntheticfield = this.binding.addSyntheticFieldForEnumValues();
        }
    }

    public static final int kind(int flags) {
        switch (flags & 0x6200) {
            case 512: {
                return 2;
            }
            case 8704: {
                return 4;
            }
            case 16384: {
                return 3;
            }
        }
        return 1;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        NestedTypeBinding nestedType = (NestedTypeBinding)this.binding;
        MethodScope methodScope = currentScope.methodScope();
        if (!methodScope.isStatic && !methodScope.isConstructorCall) {
            nestedType.addSyntheticArgumentAndField(nestedType.enclosingType());
        }
        if (nestedType.isAnonymousType()) {
            NestedTypeBinding nestedEnclosing;
            SyntheticArgumentBinding syntheticEnclosingInstanceArgument;
            ReferenceBinding enclosing;
            ReferenceBinding superclassBinding = (ReferenceBinding)nestedType.superclass.erasure();
            if (!(superclassBinding.enclosingType() == null || superclassBinding.isStatic() || superclassBinding.isLocalType() && ((NestedTypeBinding)superclassBinding).getSyntheticField(superclassBinding.enclosingType(), true) == null)) {
                nestedType.addSyntheticArgument(superclassBinding.enclosingType());
            }
            if (!methodScope.isStatic && methodScope.isConstructorCall && currentScope.compilerOptions().complianceLevel >= 0x310000L && (enclosing = nestedType.enclosingType()).isNestedType() && (syntheticEnclosingInstanceArgument = (nestedEnclosing = (NestedTypeBinding)enclosing).getSyntheticArgument(nestedEnclosing.enclosingType(), true)) != null) {
                nestedType.addSyntheticArgumentAndField(syntheticEnclosingInstanceArgument);
            }
        }
    }

    public void manageEnclosingInstanceAccessIfNecessary(ClassScope currentScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            NestedTypeBinding nestedType = (NestedTypeBinding)this.binding;
            nestedType.addSyntheticArgumentAndField(this.binding.enclosingType());
        }
    }

    public final boolean needClassInitMethod() {
        if ((this.bits & 1) != 0) {
            return true;
        }
        switch (TypeDeclaration.kind(this.modifiers)) {
            case 2: 
            case 4: {
                return this.fields != null;
            }
            case 3: {
                return true;
            }
        }
        if (this.fields != null) {
            int i = this.fields.length;
            while (--i >= 0) {
                FieldDeclaration field = this.fields[i];
                if ((field.modifiers & 8) == 0) continue;
                return true;
            }
        }
        return false;
    }

    public void parseMethods(Parser parser, CompilationUnitDeclaration unit) {
        int i;
        int length;
        if (unit.ignoreMethodBodies) {
            return;
        }
        if (this.memberTypes != null) {
            length = this.memberTypes.length;
            i = 0;
            while (i < length) {
                TypeDeclaration typeDeclaration = this.memberTypes[i];
                typeDeclaration.parseMethods(parser, unit);
                this.bits |= typeDeclaration.bits & 0x80000;
                ++i;
            }
        }
        if (this.methods != null) {
            length = this.methods.length;
            i = 0;
            while (i < length) {
                AbstractMethodDeclaration abstractMethodDeclaration = this.methods[i];
                abstractMethodDeclaration.parseStatements(parser, unit);
                this.bits |= abstractMethodDeclaration.bits & 0x80000;
                ++i;
            }
        }
        if (this.fields != null) {
            length = this.fields.length;
            i = 0;
            while (i < length) {
                FieldDeclaration fieldDeclaration = this.fields[i];
                switch (fieldDeclaration.getKind()) {
                    case 2: {
                        ((Initializer)fieldDeclaration).parseStatements(parser, this, unit);
                        this.bits |= fieldDeclaration.bits & 0x80000;
                    }
                }
                ++i;
            }
        }
    }

    public StringBuffer print(int indent, StringBuffer output) {
        if (this.javadoc != null) {
            this.javadoc.print(indent, output);
        }
        if ((this.bits & 0x200) == 0) {
            TypeDeclaration.printIndent(indent, output);
            this.printHeader(0, output);
        }
        return this.printBody(indent, output);
    }

    public StringBuffer printBody(int indent, StringBuffer output) {
        int i;
        output.append(" {");
        if (this.memberTypes != null) {
            i = 0;
            while (i < this.memberTypes.length) {
                if (this.memberTypes[i] != null) {
                    output.append('\n');
                    this.memberTypes[i].print(indent + 1, output);
                }
                ++i;
            }
        }
        if (this.fields != null) {
            int fieldI = 0;
            while (fieldI < this.fields.length) {
                if (this.fields[fieldI] != null) {
                    output.append('\n');
                    this.fields[fieldI].print(indent + 1, output);
                }
                ++fieldI;
            }
        }
        if (this.methods != null) {
            i = 0;
            while (i < this.methods.length) {
                if (this.methods[i] != null) {
                    output.append('\n');
                    this.methods[i].print(indent + 1, output);
                }
                ++i;
            }
        }
        output.append('\n');
        return TypeDeclaration.printIndent(indent, output).append('}');
    }

    public StringBuffer printHeader(int indent, StringBuffer output) {
        int i;
        TypeDeclaration.printModifiers(this.modifiers, output);
        if (this.annotations != null) {
            TypeDeclaration.printAnnotations(this.annotations, output);
        }
        switch (TypeDeclaration.kind(this.modifiers)) {
            case 1: {
                output.append("class ");
                break;
            }
            case 2: {
                output.append("interface ");
                break;
            }
            case 3: {
                output.append("enum ");
                break;
            }
            case 4: {
                output.append("@interface ");
            }
        }
        output.append(this.name);
        if (this.typeParameters != null) {
            output.append("<");
            i = 0;
            while (i < this.typeParameters.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.typeParameters[i].print(0, output);
                ++i;
            }
            output.append(">");
        }
        if (this.superclass != null) {
            output.append(" extends ");
            this.superclass.print(0, output);
        }
        if (this.superInterfaces != null && this.superInterfaces.length > 0) {
            switch (TypeDeclaration.kind(this.modifiers)) {
                case 1: 
                case 3: {
                    output.append(" implements ");
                    break;
                }
                case 2: 
                case 4: {
                    output.append(" extends ");
                }
            }
            i = 0;
            while (i < this.superInterfaces.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.superInterfaces[i].print(0, output);
                ++i;
            }
        }
        return output;
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        return this.print(tab, output);
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    public void resolve() {
        sourceType = this.binding;
        if (sourceType == null) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
        try {
            block64: {
                block61: {
                    block63: {
                        block62: {
                            old = this.staticInitializerScope.insideTypeAnnotation;
                            try {
                                this.staticInitializerScope.insideTypeAnnotation = true;
                                TypeDeclaration.resolveAnnotations(this.staticInitializerScope, this.annotations, sourceType);
                            }
                            finally {
                                this.staticInitializerScope.insideTypeAnnotation = old;
                            }
                            if ((sourceType.getAnnotationTagBits() & 0x400000000000L) == 0L && (sourceType.modifiers & 0x100000) != 0 && this.scope.compilerOptions().sourceLevel >= 0x310000L) {
                                this.scope.problemReporter().missingDeprecatedAnnotationForType(this);
                            }
                            if ((this.bits & 8) != 0) {
                                this.scope.problemReporter().undocumentedEmptyBlock(this.bodyStart - 1, this.bodyEnd);
                            }
                            v0 = needSerialVersion = this.scope.compilerOptions().getSeverity(0x20000008) != 256 && sourceType.isClass() != false && sourceType.findSuperTypeOriginatingFrom(56, false) == null && sourceType.findSuperTypeOriginatingFrom(37, false) != null;
                            if (!needSerialVersion) break block61;
                            compilationUnitScope = this.scope.compilationUnitScope();
                            methodBinding = sourceType.getExactMethod(TypeConstants.WRITEREPLACE, Binding.NO_TYPES, compilationUnitScope);
                            if (methodBinding == null || !methodBinding.isValidBinding() || methodBinding.returnType.id != 1) ** GOTO lbl-1000
                            throwsExceptions = methodBinding.thrownExceptions;
                            if (methodBinding.thrownExceptions.length == 1 && throwsExceptions[0].id == 57) {
                                v1 = false;
                            } else lbl-1000:
                            // 2 sources

                            {
                                v1 = needSerialVersion = true;
                            }
                            if (!needSerialVersion) break block61;
                            hasWriteObjectMethod = false;
                            hasReadObjectMethod = false;
                            argumentTypeBinding = this.scope.getType(TypeConstants.JAVA_IO_OBJECTOUTPUTSTREAM, 3);
                            if (!argumentTypeBinding.isValidBinding()) break block62;
                            methodBinding = sourceType.getExactMethod(TypeConstants.WRITEOBJECT, new TypeBinding[]{argumentTypeBinding}, compilationUnitScope);
                            if (methodBinding == null || !methodBinding.isValidBinding() || methodBinding.modifiers != 2 || methodBinding.returnType != TypeBinding.VOID) ** GOTO lbl-1000
                            throwsExceptions = methodBinding.thrownExceptions;
                            if (methodBinding.thrownExceptions.length == 1 && throwsExceptions[0].id == 58) {
                                v2 = true;
                            } else lbl-1000:
                            // 2 sources

                            {
                                v2 = hasWriteObjectMethod = false;
                            }
                        }
                        if (!(argumentTypeBinding = this.scope.getType(TypeConstants.JAVA_IO_OBJECTINPUTSTREAM, 3)).isValidBinding()) break block63;
                        methodBinding = sourceType.getExactMethod(TypeConstants.READOBJECT, new TypeBinding[]{argumentTypeBinding}, compilationUnitScope);
                        if (methodBinding == null || !methodBinding.isValidBinding() || methodBinding.modifiers != 2 || methodBinding.returnType != TypeBinding.VOID) ** GOTO lbl-1000
                        throwsExceptions = methodBinding.thrownExceptions;
                        if (methodBinding.thrownExceptions.length == 1 && throwsExceptions[0].id == 58) {
                            v3 = true;
                        } else lbl-1000:
                        // 2 sources

                        {
                            v3 = false;
                        }
                        hasReadObjectMethod = v3;
                    }
                    v4 = needSerialVersion = hasWriteObjectMethod == false || hasReadObjectMethod == false;
                }
                if (sourceType.findSuperTypeOriginatingFrom(21, true) != null) {
                    current /* !! */  = sourceType;
                    do {
                        if (current /* !! */ .isGenericType()) {
                            this.scope.problemReporter().genericTypeCannotExtendThrowable(this);
                            break;
                        }
                        if (current /* !! */ .isStatic()) break;
                        if (!current /* !! */ .isLocalType()) continue;
                        nestedType = (NestedTypeBinding)current /* !! */ .erasure();
                        if (nestedType.scope.methodScope().isStatic) break;
                    } while ((current /* !! */  = current /* !! */ .enclosingType()) != null);
                }
                localMaxFieldCount = 0;
                lastVisibleFieldID = -1;
                hasEnumConstants = false;
                enumConstantsWithoutBody = null;
                if (this.typeParameters != null) {
                    i = 0;
                    count = this.typeParameters.length;
                    while (i < count) {
                        this.typeParameters[i].resolve(this.scope);
                        ++i;
                    }
                }
                if (this.memberTypes != null) {
                    i = 0;
                    count = this.memberTypes.length;
                    while (i < count) {
                        this.memberTypes[i].resolve(this.scope);
                        ++i;
                    }
                }
                if (this.fields == null) break block64;
                i = 0;
                count = this.fields.length;
                while (i < count) {
                    field = this.fields[i];
                    switch (field.getKind()) {
                        case 3: {
                            hasEnumConstants = true;
                            if (!(field.initialization instanceof QualifiedAllocationExpression)) {
                                if (enumConstantsWithoutBody == null) {
                                    enumConstantsWithoutBody = new FieldDeclaration[count];
                                }
                                enumConstantsWithoutBody[i] = field;
                            }
                        }
                        case 1: {
                            fieldBinding = field.binding;
                            if (fieldBinding == null) {
                                if (field.initialization != null) {
                                    field.initialization.resolve(field.isStatic() != false ? this.staticInitializerScope : this.initializerScope);
                                }
                                this.ignoreFurtherInvestigation = true;
                                break;
                            }
                            if (needSerialVersion && (fieldBinding.modifiers & 24) == 24 && CharOperation.equals(TypeConstants.SERIALVERSIONUID, fieldBinding.name) && TypeBinding.LONG == fieldBinding.type) {
                                needSerialVersion = false;
                            }
                            ++localMaxFieldCount;
                            lastVisibleFieldID = field.binding.id;
                            ** GOTO lbl109
                        }
                        case 2: {
                            ((Initializer)field).lastVisibleFieldID = lastVisibleFieldID + 1;
                        }
lbl109:
                        // 3 sources

                        default: {
                            field.resolve(field.isStatic() != false ? this.staticInitializerScope : this.initializerScope);
                        }
                    }
                    ++i;
                }
            }
            if (this.maxFieldCount < localMaxFieldCount) {
                this.maxFieldCount = localMaxFieldCount;
            }
            if (needSerialVersion) {
                javaxRmiCorbaStub = this.scope.getType(TypeConstants.JAVAX_RMI_CORBA_STUB, 4);
                if (javaxRmiCorbaStub.isValidBinding()) {
                    superclassBinding = this.binding.superclass;
                    while (superclassBinding != null) {
                        if (superclassBinding == javaxRmiCorbaStub) {
                            needSerialVersion = false;
                            break;
                        }
                        superclassBinding = superclassBinding.superclass();
                    }
                }
                if (needSerialVersion) {
                    this.scope.problemReporter().missingSerialVersion(this);
                }
            }
            switch (TypeDeclaration.kind(this.modifiers)) {
                case 4: {
                    if (this.superclass != null) {
                        this.scope.problemReporter().annotationTypeDeclarationCannotHaveSuperclass(this);
                    }
                    if (this.superInterfaces == null) break;
                    this.scope.problemReporter().annotationTypeDeclarationCannotHaveSuperinterfaces(this);
                    break;
                }
                case 3: {
                    if (!this.binding.isAbstract()) break;
                    if (!hasEnumConstants) {
                        i = 0;
                        count = this.methods.length;
                        while (i < count) {
                            methodDeclaration = this.methods[i];
                            if (methodDeclaration.isAbstract() && methodDeclaration.binding != null) {
                                this.scope.problemReporter().enumAbstractMethodMustBeImplemented(methodDeclaration);
                            }
                            ++i;
                        }
                    } else {
                        if (enumConstantsWithoutBody == null) break;
                        i = 0;
                        count = this.methods.length;
                        while (i < count) {
                            methodDeclaration = this.methods[i];
                            if (methodDeclaration.isAbstract() && methodDeclaration.binding != null) {
                                f = 0;
                                l = enumConstantsWithoutBody.length;
                                while (f < l) {
                                    if (enumConstantsWithoutBody[f] != null) {
                                        this.scope.problemReporter().enumConstantMustImplementAbstractMethod(methodDeclaration, enumConstantsWithoutBody[f]);
                                    }
                                    ++f;
                                }
                            }
                            ++i;
                        }
                    }
                    break;
                }
            }
            missingAbstractMethodslength = this.missingAbstractMethods == null ? 0 : this.missingAbstractMethods.length;
            v5 = methodsLength = this.methods == null ? 0 : this.methods.length;
            if (methodsLength + missingAbstractMethodslength > 65535) {
                this.scope.problemReporter().tooManyMethods(this);
            }
            if (this.methods != null) {
                i = 0;
                count = this.methods.length;
                while (i < count) {
                    this.methods[i].resolve(this.scope);
                    ++i;
                }
            }
            if (this.javadoc != null) {
                if (this.scope != null && this.name != TypeConstants.PACKAGE_INFO_NAME) {
                    this.javadoc.resolve(this.scope);
                }
            } else if (!sourceType.isLocalType()) {
                visibility = sourceType.modifiers & 7;
                reporter = this.scope.problemReporter();
                severity = reporter.computeSeverity(-1610612250);
                if (severity != 256) {
                    if (this.enclosingType != null) {
                        visibility = Util.computeOuterMostVisibility(this.enclosingType, visibility);
                    }
                    javadocModifiers = this.binding.modifiers & -8 | visibility;
                    reporter.javadocMissing(this.sourceStart, this.sourceEnd, severity, javadocModifiers);
                }
            }
        }
        catch (AbortType v6) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
    }

    public void resolve(BlockScope blockScope) {
        if ((this.bits & 0x200) == 0) {
            TypeBinding existing = blockScope.getType(this.name);
            if (existing instanceof ReferenceBinding && existing != this.binding && existing.isValidBinding()) {
                ReferenceBinding existingType = (ReferenceBinding)existing;
                if (existingType instanceof TypeVariableBinding) {
                    blockScope.problemReporter().typeHiding(this, (TypeVariableBinding)existingType);
                    Scope outerScope = blockScope.parent;
                    while (outerScope != null) {
                        TypeBinding existing2 = outerScope.getType(this.name);
                        if (existing2 instanceof TypeVariableBinding && existing2.isValidBinding()) {
                            TypeVariableBinding tvb = (TypeVariableBinding)existingType;
                            Binding declaringElement = tvb.declaringElement;
                            if (declaringElement instanceof ReferenceBinding && CharOperation.equals(((ReferenceBinding)declaringElement).sourceName(), this.name)) {
                                blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                                break;
                            }
                        } else {
                            if (existing2 instanceof ReferenceBinding && existing2.isValidBinding() && outerScope.isDefinedInType((ReferenceBinding)existing2)) {
                                blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                                break;
                            }
                            if (existing2 == null) break;
                        }
                        outerScope = outerScope.parent;
                    }
                } else if (existingType instanceof LocalTypeBinding && ((LocalTypeBinding)existingType).scope.methodScope() == blockScope.methodScope()) {
                    blockScope.problemReporter().duplicateNestedType(this);
                } else if (blockScope.isDefinedInType(existingType)) {
                    blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                } else if (blockScope.isDefinedInSameUnit(existingType)) {
                    blockScope.problemReporter().typeHiding(this, existingType);
                }
            }
            blockScope.addLocalType(this);
        }
        if (this.binding != null) {
            blockScope.referenceCompilationUnit().record((LocalTypeBinding)this.binding);
            this.resolve();
            this.updateMaxFieldCount();
        }
    }

    public void resolve(ClassScope upperScope) {
        if (this.binding != null && this.binding instanceof LocalTypeBinding) {
            upperScope.referenceCompilationUnit().record((LocalTypeBinding)this.binding);
        }
        this.resolve();
        this.updateMaxFieldCount();
    }

    public void resolve(CompilationUnitScope upperScope) {
        this.resolve();
        this.updateMaxFieldCount();
    }

    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    public void traverse(ASTVisitor visitor, CompilationUnitScope unitScope) {
        try {
            if (visitor.visit(this, unitScope)) {
                int length;
                int i;
                if (this.javadoc != null) {
                    this.javadoc.traverse(visitor, this.scope);
                }
                if (this.annotations != null) {
                    int annotationsLength = this.annotations.length;
                    i = 0;
                    while (i < annotationsLength) {
                        this.annotations[i].traverse(visitor, this.staticInitializerScope);
                        ++i;
                    }
                }
                if (this.superclass != null) {
                    this.superclass.traverse(visitor, this.scope);
                }
                if (this.superInterfaces != null) {
                    length = this.superInterfaces.length;
                    i = 0;
                    while (i < length) {
                        this.superInterfaces[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.typeParameters != null) {
                    length = this.typeParameters.length;
                    i = 0;
                    while (i < length) {
                        this.typeParameters[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.memberTypes != null) {
                    length = this.memberTypes.length;
                    i = 0;
                    while (i < length) {
                        this.memberTypes[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.fields != null) {
                    length = this.fields.length;
                    i = 0;
                    while (i < length) {
                        FieldDeclaration field = this.fields[i];
                        if (field.isStatic()) {
                            field.traverse(visitor, this.staticInitializerScope);
                        } else {
                            field.traverse(visitor, this.initializerScope);
                        }
                        ++i;
                    }
                }
                if (this.methods != null) {
                    length = this.methods.length;
                    i = 0;
                    while (i < length) {
                        this.methods[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
            }
            visitor.endVisit(this, unitScope);
        }
        catch (AbortType abortType) {}
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        try {
            if (visitor.visit(this, blockScope)) {
                int length;
                int i;
                if (this.javadoc != null) {
                    this.javadoc.traverse(visitor, this.scope);
                }
                if (this.annotations != null) {
                    int annotationsLength = this.annotations.length;
                    i = 0;
                    while (i < annotationsLength) {
                        this.annotations[i].traverse(visitor, this.staticInitializerScope);
                        ++i;
                    }
                }
                if (this.superclass != null) {
                    this.superclass.traverse(visitor, this.scope);
                }
                if (this.superInterfaces != null) {
                    length = this.superInterfaces.length;
                    i = 0;
                    while (i < length) {
                        this.superInterfaces[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.typeParameters != null) {
                    length = this.typeParameters.length;
                    i = 0;
                    while (i < length) {
                        this.typeParameters[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.memberTypes != null) {
                    length = this.memberTypes.length;
                    i = 0;
                    while (i < length) {
                        this.memberTypes[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.fields != null) {
                    length = this.fields.length;
                    i = 0;
                    while (i < length) {
                        FieldDeclaration field = this.fields[i];
                        if (!field.isStatic()) {
                            field.traverse(visitor, this.initializerScope);
                        }
                        ++i;
                    }
                }
                if (this.methods != null) {
                    length = this.methods.length;
                    i = 0;
                    while (i < length) {
                        this.methods[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
            }
            visitor.endVisit(this, blockScope);
        }
        catch (AbortType abortType) {}
    }

    public void traverse(ASTVisitor visitor, ClassScope classScope) {
        try {
            if (visitor.visit(this, classScope)) {
                int length;
                int i;
                if (this.javadoc != null) {
                    this.javadoc.traverse(visitor, this.scope);
                }
                if (this.annotations != null) {
                    int annotationsLength = this.annotations.length;
                    i = 0;
                    while (i < annotationsLength) {
                        this.annotations[i].traverse(visitor, this.staticInitializerScope);
                        ++i;
                    }
                }
                if (this.superclass != null) {
                    this.superclass.traverse(visitor, this.scope);
                }
                if (this.superInterfaces != null) {
                    length = this.superInterfaces.length;
                    i = 0;
                    while (i < length) {
                        this.superInterfaces[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.typeParameters != null) {
                    length = this.typeParameters.length;
                    i = 0;
                    while (i < length) {
                        this.typeParameters[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.memberTypes != null) {
                    length = this.memberTypes.length;
                    i = 0;
                    while (i < length) {
                        this.memberTypes[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
                if (this.fields != null) {
                    length = this.fields.length;
                    i = 0;
                    while (i < length) {
                        FieldDeclaration field = this.fields[i];
                        if (field.isStatic()) {
                            field.traverse(visitor, this.staticInitializerScope);
                        } else {
                            field.traverse(visitor, this.initializerScope);
                        }
                        ++i;
                    }
                }
                if (this.methods != null) {
                    length = this.methods.length;
                    i = 0;
                    while (i < length) {
                        this.methods[i].traverse(visitor, this.scope);
                        ++i;
                    }
                }
            }
            visitor.endVisit(this, classScope);
        }
        catch (AbortType abortType) {}
    }

    void updateMaxFieldCount() {
        if (this.binding == null) {
            return;
        }
        TypeDeclaration outerMostType = this.scope.outerMostClassScope().referenceType();
        if (this.maxFieldCount > outerMostType.maxFieldCount) {
            outerMostType.maxFieldCount = this.maxFieldCount;
        } else {
            this.maxFieldCount = outerMostType.maxFieldCount;
        }
    }

    public boolean isSecondary() {
        return (this.bits & 0x1000) != 0;
    }
}

