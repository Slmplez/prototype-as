/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.MemberRef;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MemberValuePairBinding;
import org.eclipse.jdt.core.dom.MethodBinding;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.PackageBinding;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.RecoveredTypeBinding;
import org.eclipse.jdt.core.dom.RecoveredVariableBinding;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeBinding;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.VariableBinding;
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.util.Util;

class DefaultBindingResolver
extends BindingResolver {
    Map astNodesToBlockScope;
    Map bindingsToAstNodes;
    BindingTables bindingTables;
    Map newAstToOldAst = new HashMap();
    private CompilationUnitScope scope;
    WorkingCopyOwner workingCopyOwner;
    boolean isRecoveringBindings;
    boolean fromJavaProject;

    DefaultBindingResolver(CompilationUnitScope scope, WorkingCopyOwner workingCopyOwner, BindingTables bindingTables, boolean isRecoveringBindings, boolean fromJavaProject) {
        this.astNodesToBlockScope = new HashMap();
        this.bindingsToAstNodes = new HashMap();
        this.bindingTables = bindingTables;
        this.scope = scope;
        this.workingCopyOwner = workingCopyOwner;
        this.isRecoveringBindings = isRecoveringBindings;
        this.fromJavaProject = fromJavaProject;
    }

    DefaultBindingResolver(LookupEnvironment lookupEnvironment, WorkingCopyOwner workingCopyOwner, BindingTables bindingTables, boolean isRecoveringBindings, boolean fromJavaProject) {
        this.astNodesToBlockScope = new HashMap();
        this.bindingsToAstNodes = new HashMap();
        this.bindingTables = bindingTables;
        this.scope = new CompilationUnitScope(new CompilationUnitDeclaration(null, null, -1), lookupEnvironment);
        this.workingCopyOwner = workingCopyOwner;
        this.isRecoveringBindings = isRecoveringBindings;
        this.fromJavaProject = fromJavaProject;
    }

    synchronized ASTNode findDeclaringNode(IBinding binding) {
        if (binding == null) {
            return null;
        }
        if (binding instanceof IMethodBinding) {
            IMethodBinding methodBinding = (IMethodBinding)binding;
            return (ASTNode)this.bindingsToAstNodes.get(methodBinding.getMethodDeclaration());
        }
        if (binding instanceof ITypeBinding) {
            ITypeBinding typeBinding = (ITypeBinding)binding;
            return (ASTNode)this.bindingsToAstNodes.get(typeBinding.getTypeDeclaration());
        }
        if (binding instanceof IVariableBinding) {
            IVariableBinding variableBinding = (IVariableBinding)binding;
            return (ASTNode)this.bindingsToAstNodes.get(variableBinding.getVariableDeclaration());
        }
        return (ASTNode)this.bindingsToAstNodes.get(binding);
    }

    synchronized ASTNode findDeclaringNode(String bindingKey) {
        if (bindingKey == null) {
            return null;
        }
        Object binding = this.bindingTables.bindingKeysToBindings.get(bindingKey);
        if (binding == null) {
            return null;
        }
        return (ASTNode)this.bindingsToAstNodes.get(binding);
    }

    IBinding getBinding(Binding binding) {
        switch (binding.kind()) {
            case 16: {
                return this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
            }
            case 4: 
            case 132: 
            case 260: 
            case 1028: 
            case 2052: {
                return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
            }
            case 68: 
            case 4100: {
                return new TypeBinding(this, (org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
            }
            case 8: {
                return this.getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding)binding);
            }
            case 1: 
            case 2: {
                return this.getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding)binding);
            }
        }
        return null;
    }

    Util.BindingsToNodesMap getBindingsToNodesMap() {
        return new Util.BindingsToNodesMap(){

            public org.eclipse.jdt.internal.compiler.ast.ASTNode get(Binding binding) {
                return (org.eclipse.jdt.internal.compiler.ast.ASTNode)DefaultBindingResolver.this.newAstToOldAst.get(DefaultBindingResolver.this.bindingsToAstNodes.get(binding));
            }
        };
    }

    synchronized org.eclipse.jdt.internal.compiler.ast.ASTNode getCorrespondingNode(ASTNode currentNode) {
        return (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(currentNode);
    }

    synchronized IMethodBinding getMethodBinding(org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding) {
        if (methodBinding != null && !methodBinding.isValidBinding()) {
            ProblemMethodBinding problemMethodBinding = (ProblemMethodBinding)methodBinding;
            methodBinding = problemMethodBinding.closestMatch;
        }
        if (methodBinding != null) {
            if (!this.isRecoveringBindings && (methodBinding.tagBits & 0x80L) != 0L) {
                return null;
            }
            IMethodBinding binding = (IMethodBinding)this.bindingTables.compilerBindingsToASTBindings.get(methodBinding);
            if (binding != null) {
                return binding;
            }
            binding = new MethodBinding(this, methodBinding);
            this.bindingTables.compilerBindingsToASTBindings.put(methodBinding, binding);
            return binding;
        }
        return null;
    }

    synchronized IMemberValuePairBinding getMemberValuePairBinding(ElementValuePair valuePair) {
        if (valuePair == null || valuePair.binding == null) {
            return null;
        }
        IMemberValuePairBinding binding = (IMemberValuePairBinding)this.bindingTables.compilerBindingsToASTBindings.get(valuePair);
        if (binding != null) {
            return binding;
        }
        binding = new MemberValuePairBinding(valuePair, this);
        this.bindingTables.compilerBindingsToASTBindings.put(valuePair, binding);
        return binding;
    }

    synchronized IPackageBinding getPackageBinding(org.eclipse.jdt.internal.compiler.lookup.PackageBinding packageBinding) {
        if (packageBinding == null) {
            return null;
        }
        IPackageBinding binding = (IPackageBinding)this.bindingTables.compilerBindingsToASTBindings.get(packageBinding);
        if (binding != null) {
            return binding;
        }
        binding = new PackageBinding(packageBinding, this);
        this.bindingTables.compilerBindingsToASTBindings.put(packageBinding, binding);
        return binding;
    }

    private int getTypeArguments(ParameterizedQualifiedTypeReference typeReference) {
        TypeReference[][] typeArguments = typeReference.typeArguments;
        int value = 0;
        int i = 0;
        int max = typeArguments.length;
        while (i < max) {
            if (typeArguments[i] != null || value != 0) {
                ++value;
            }
            ++i;
        }
        return value;
    }

    synchronized ITypeBinding getTypeBinding(VariableDeclaration variableDeclaration) {
        ITypeBinding binding = (ITypeBinding)this.bindingTables.compilerBindingsToASTBindings.get(variableDeclaration);
        if (binding != null) {
            return binding;
        }
        binding = new RecoveredTypeBinding((BindingResolver)this, variableDeclaration);
        this.bindingTables.compilerBindingsToASTBindings.put(variableDeclaration, binding);
        return binding;
    }

    synchronized ITypeBinding getTypeBinding(Type type) {
        ITypeBinding binding = (ITypeBinding)this.bindingTables.compilerBindingsToASTBindings.get(type);
        if (binding != null) {
            return binding;
        }
        binding = new RecoveredTypeBinding((BindingResolver)this, type);
        this.bindingTables.compilerBindingsToASTBindings.put(type, binding);
        return binding;
    }

    synchronized ITypeBinding getTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding referenceBinding) {
        if (referenceBinding == null) {
            return null;
        }
        if (!referenceBinding.isValidBinding()) {
            switch (referenceBinding.problemId()) {
                case 2: 
                case 7: {
                    if (!(referenceBinding instanceof ProblemReferenceBinding)) break;
                    ProblemReferenceBinding problemReferenceBinding = (ProblemReferenceBinding)referenceBinding;
                    org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding2 = problemReferenceBinding.closestMatch();
                    ITypeBinding binding = (ITypeBinding)this.bindingTables.compilerBindingsToASTBindings.get(binding2);
                    if (binding != null) {
                        return binding;
                    }
                    binding = new TypeBinding(this, binding2);
                    this.bindingTables.compilerBindingsToASTBindings.put(binding2, binding);
                    return binding;
                }
                case 1: {
                    if (!this.isRecoveringBindings) {
                        return null;
                    }
                    ITypeBinding binding = (ITypeBinding)this.bindingTables.compilerBindingsToASTBindings.get(referenceBinding);
                    if (binding != null) {
                        return binding;
                    }
                    binding = (referenceBinding.tagBits & 0x80L) != 0L ? new TypeBinding(this, referenceBinding) : new RecoveredTypeBinding((BindingResolver)this, referenceBinding);
                    this.bindingTables.compilerBindingsToASTBindings.put(referenceBinding, binding);
                    return binding;
                }
            }
            return null;
        }
        if ((referenceBinding.tagBits & 0x80L) != 0L && !this.isRecoveringBindings) {
            return null;
        }
        ITypeBinding binding = (ITypeBinding)this.bindingTables.compilerBindingsToASTBindings.get(referenceBinding);
        if (binding != null) {
            return binding;
        }
        binding = new TypeBinding(this, referenceBinding);
        this.bindingTables.compilerBindingsToASTBindings.put(referenceBinding, binding);
        return binding;
    }

    synchronized ITypeBinding getTypeBinding(RecoveredTypeBinding recoveredTypeBinding, int dimensions) {
        if (recoveredTypeBinding == null) {
            return null;
        }
        return new RecoveredTypeBinding(this, recoveredTypeBinding, dimensions);
    }

    synchronized IVariableBinding getVariableBinding(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding, VariableDeclaration variableDeclaration) {
        if (this.isRecoveringBindings) {
            if (variableBinding != null) {
                if (variableBinding.isValidBinding()) {
                    IVariableBinding binding = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(variableBinding);
                    if (binding != null) {
                        return binding;
                    }
                    binding = variableBinding.type != null ? new VariableBinding(this, variableBinding) : new RecoveredVariableBinding(this, variableDeclaration);
                    this.bindingTables.compilerBindingsToASTBindings.put(variableBinding, binding);
                    return binding;
                }
                if (variableBinding instanceof ProblemFieldBinding) {
                    ProblemFieldBinding problemFieldBinding = (ProblemFieldBinding)variableBinding;
                    switch (problemFieldBinding.problemId()) {
                        case 2: 
                        case 6: 
                        case 7: {
                            ReferenceBinding declaringClass = problemFieldBinding.declaringClass;
                            FieldBinding exactBinding = declaringClass.getField(problemFieldBinding.name, true);
                            if (exactBinding == null) break;
                            IVariableBinding variableBinding2 = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(exactBinding);
                            if (variableBinding2 != null) {
                                return variableBinding2;
                            }
                            variableBinding2 = new VariableBinding(this, exactBinding);
                            this.bindingTables.compilerBindingsToASTBindings.put(exactBinding, variableBinding2);
                            return variableBinding2;
                        }
                    }
                }
            }
            return null;
        }
        return this.getVariableBinding(variableBinding);
    }

    public WorkingCopyOwner getWorkingCopyOwner() {
        return this.workingCopyOwner;
    }

    synchronized IVariableBinding getVariableBinding(org.eclipse.jdt.internal.compiler.lookup.VariableBinding variableBinding) {
        if (variableBinding != null) {
            if (variableBinding.isValidBinding()) {
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding variableType = variableBinding.type;
                if (variableType != null) {
                    if (!this.isRecoveringBindings && (variableType.tagBits & 0x80L) != 0L) {
                        return null;
                    }
                    IVariableBinding binding = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(variableBinding);
                    if (binding != null) {
                        return binding;
                    }
                    binding = new VariableBinding(this, variableBinding);
                    this.bindingTables.compilerBindingsToASTBindings.put(variableBinding, binding);
                    return binding;
                }
            } else if (variableBinding instanceof ProblemFieldBinding) {
                ProblemFieldBinding problemFieldBinding = (ProblemFieldBinding)variableBinding;
                switch (problemFieldBinding.problemId()) {
                    case 2: 
                    case 6: 
                    case 7: {
                        ReferenceBinding declaringClass = problemFieldBinding.declaringClass;
                        FieldBinding exactBinding = declaringClass.getField(problemFieldBinding.name, true);
                        if (exactBinding == null) break;
                        IVariableBinding variableBinding2 = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(exactBinding);
                        if (variableBinding2 != null) {
                            return variableBinding2;
                        }
                        variableBinding2 = new VariableBinding(this, exactBinding);
                        this.bindingTables.compilerBindingsToASTBindings.put(exactBinding, variableBinding2);
                        return variableBinding2;
                    }
                }
            }
        }
        return null;
    }

    synchronized IAnnotationBinding getAnnotationInstance(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding internalInstance) {
        if (internalInstance == null) {
            return null;
        }
        ReferenceBinding annotationType = internalInstance.getAnnotationType();
        if (!(this.isRecoveringBindings || annotationType != null && (annotationType.tagBits & 0x80L) == 0L)) {
            return null;
        }
        IAnnotationBinding domInstance = (IAnnotationBinding)this.bindingTables.compilerBindingsToASTBindings.get(internalInstance);
        if (domInstance != null) {
            return domInstance;
        }
        domInstance = new AnnotationBinding(internalInstance, this);
        this.bindingTables.compilerBindingsToASTBindings.put(internalInstance, domInstance);
        return domInstance;
    }

    boolean isResolvedTypeInferredFromExpectedType(MethodInvocation methodInvocation) {
        Object oldNode = this.newAstToOldAst.get(methodInvocation);
        if (oldNode instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)oldNode;
            org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = messageSend.binding;
            if (methodBinding instanceof ParameterizedGenericMethodBinding) {
                ParameterizedGenericMethodBinding genericMethodBinding = (ParameterizedGenericMethodBinding)methodBinding;
                return genericMethodBinding.inferredReturnType;
            }
        }
        return false;
    }

    boolean isResolvedTypeInferredFromExpectedType(SuperMethodInvocation superMethodInvocation) {
        Object oldNode = this.newAstToOldAst.get(superMethodInvocation);
        if (oldNode instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)oldNode;
            org.eclipse.jdt.internal.compiler.lookup.MethodBinding methodBinding = messageSend.binding;
            if (methodBinding instanceof ParameterizedGenericMethodBinding) {
                ParameterizedGenericMethodBinding genericMethodBinding = (ParameterizedGenericMethodBinding)methodBinding;
                return genericMethodBinding.inferredReturnType;
            }
        }
        return false;
    }

    boolean isResolvedTypeInferredFromExpectedType(ClassInstanceCreation classInstanceCreation) {
        Object oldNode = this.newAstToOldAst.get(classInstanceCreation);
        if (oldNode instanceof AllocationExpression) {
            AllocationExpression allocationExpression = (AllocationExpression)oldNode;
            return allocationExpression.inferredReturnType;
        }
        return false;
    }

    LookupEnvironment lookupEnvironment() {
        return this.scope.environment();
    }

    synchronized void recordScope(ASTNode astNode, BlockScope blockScope) {
        this.astNodesToBlockScope.put(astNode, blockScope);
    }

    boolean resolveBoxing(Expression expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression compilerExpression = (org.eclipse.jdt.internal.compiler.ast.Expression)node;
            return (compilerExpression.implicitConversion & 0x200) != 0;
        }
        return false;
    }

    boolean resolveUnboxing(Expression expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression compilerExpression = (org.eclipse.jdt.internal.compiler.ast.Expression)node;
            return (compilerExpression.implicitConversion & 0x400) != 0;
        }
        return false;
    }

    Object resolveConstantExpressionValue(Expression expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression compilerExpression = (org.eclipse.jdt.internal.compiler.ast.Expression)node;
            Constant constant = compilerExpression.constant;
            if (constant != null && constant != Constant.NotAConstant) {
                switch (constant.typeID()) {
                    case 10: {
                        return new Integer(constant.intValue());
                    }
                    case 3: {
                        return new Byte(constant.byteValue());
                    }
                    case 4: {
                        return new Short(constant.shortValue());
                    }
                    case 2: {
                        return new Character(constant.charValue());
                    }
                    case 9: {
                        return new Float(constant.floatValue());
                    }
                    case 8: {
                        return new Double(constant.doubleValue());
                    }
                    case 5: {
                        return constant.booleanValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                    case 7: {
                        return new Long(constant.longValue());
                    }
                    case 11: {
                        return constant.stringValue();
                    }
                }
                return null;
            }
        }
        return null;
    }

    synchronized IMethodBinding resolveConstructor(ClassInstanceCreation expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node != null && (node.bits & 0x200) != 0) {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration anonymousLocalTypeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
            return this.getMethodBinding(anonymousLocalTypeDeclaration.allocation.binding);
        }
        if (node instanceof AllocationExpression) {
            return this.getMethodBinding(((AllocationExpression)node).binding);
        }
        return null;
    }

    synchronized IMethodBinding resolveConstructor(ConstructorInvocation expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node instanceof ExplicitConstructorCall) {
            ExplicitConstructorCall explicitConstructorCall = (ExplicitConstructorCall)node;
            return this.getMethodBinding(explicitConstructorCall.binding);
        }
        return null;
    }

    IMethodBinding resolveConstructor(EnumConstantDeclaration enumConstantDeclaration) {
        FieldDeclaration fieldDeclaration;
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(enumConstantDeclaration);
        if (node instanceof FieldDeclaration && (fieldDeclaration = (FieldDeclaration)node).getKind() == 3 && fieldDeclaration.initialization != null) {
            AllocationExpression allocationExpression = (AllocationExpression)fieldDeclaration.initialization;
            return this.getMethodBinding(allocationExpression.binding);
        }
        return null;
    }

    synchronized IMethodBinding resolveConstructor(SuperConstructorInvocation expression) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
        if (node instanceof ExplicitConstructorCall) {
            ExplicitConstructorCall explicitConstructorCall = (ExplicitConstructorCall)node;
            return this.getMethodBinding(explicitConstructorCall.binding);
        }
        return null;
    }

    synchronized ITypeBinding resolveExpressionType(Expression expression) {
        try {
            switch (expression.getNodeType()) {
                case 14: {
                    org.eclipse.jdt.internal.compiler.ast.ASTNode astNode = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(expression);
                    if (astNode instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)astNode;
                        ITypeBinding typeBinding = this.getTypeBinding(typeDeclaration.binding);
                        if (typeBinding != null) {
                            return typeBinding;
                        }
                    } else if (astNode instanceof AllocationExpression) {
                        AllocationExpression allocationExpression = (AllocationExpression)astNode;
                        return this.getTypeBinding(allocationExpression.resolvedType);
                    }
                    break;
                }
                case 40: 
                case 42: {
                    return this.resolveTypeBindingForName((Name)expression);
                }
                case 2: 
                case 3: 
                case 4: 
                case 7: 
                case 11: 
                case 16: 
                case 22: 
                case 27: 
                case 32: 
                case 37: 
                case 38: 
                case 47: 
                case 48: 
                case 57: 
                case 62: 
                case 77: 
                case 78: 
                case 79: {
                    org.eclipse.jdt.internal.compiler.ast.Expression compilerExpression = (org.eclipse.jdt.internal.compiler.ast.Expression)this.newAstToOldAst.get(expression);
                    if (compilerExpression != null) {
                        return this.getTypeBinding(compilerExpression.resolvedType);
                    }
                    break;
                }
                case 45: {
                    if (this.scope != null) {
                        return this.getTypeBinding(this.scope.getJavaLangString());
                    }
                    break;
                }
                case 9: 
                case 13: 
                case 33: 
                case 34: {
                    Literal literal = (Literal)this.newAstToOldAst.get(expression);
                    if (literal != null) {
                        return this.getTypeBinding(literal.literalType(null));
                    }
                    break;
                }
                case 52: {
                    ThisReference thisReference = (ThisReference)this.newAstToOldAst.get(expression);
                    BlockScope blockScope = (BlockScope)this.astNodesToBlockScope.get(expression);
                    if (blockScope != null) {
                        return this.getTypeBinding(thisReference.resolveType(blockScope));
                    }
                    break;
                }
                case 36: {
                    ParenthesizedExpression parenthesizedExpression = (ParenthesizedExpression)expression;
                    return this.resolveExpressionType(parenthesizedExpression.getExpression());
                }
                case 58: {
                    VariableDeclarationExpression variableDeclarationExpression = (VariableDeclarationExpression)expression;
                    Type type = variableDeclarationExpression.getType();
                    if (type != null) {
                        return type.resolveBinding();
                    }
                    break;
                }
            }
        }
        catch (AbortCompilation abortCompilation) {}
        return null;
    }

    synchronized IVariableBinding resolveField(FieldAccess fieldAccess) {
        Object oldNode = this.newAstToOldAst.get(fieldAccess);
        if (oldNode instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference)oldNode;
            return this.getVariableBinding(fieldReference.binding);
        }
        return null;
    }

    synchronized IVariableBinding resolveField(SuperFieldAccess fieldAccess) {
        Object oldNode = this.newAstToOldAst.get(fieldAccess);
        if (oldNode instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference)oldNode;
            return this.getVariableBinding(fieldReference.binding);
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    synchronized IBinding resolveImport(ImportDeclaration importDeclaration) {
        if (this.scope == null) {
            return null;
        }
        try {
            org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(importDeclaration);
            if (!(node instanceof ImportReference)) return null;
            ImportReference importReference = (ImportReference)node;
            boolean isStatic = importReference.isStatic();
            if ((importReference.bits & 0x20000) != 0) {
                Binding binding = this.scope.getImport(CharOperation.subarray(importReference.tokens, 0, importReference.tokens.length), true, isStatic);
                if (binding == null) return null;
                if (isStatic) {
                    if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding)) return null;
                    ITypeBinding typeBinding = this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                    if (typeBinding == null) {
                        return null;
                    }
                    ITypeBinding iTypeBinding = typeBinding;
                    return iTypeBinding;
                }
                if ((binding.kind() & 0x10) != 0) {
                    IPackageBinding packageBinding = this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
                    if (packageBinding != null) return packageBinding;
                    return null;
                }
                ITypeBinding typeBinding = this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                if (typeBinding != null) return typeBinding;
                return null;
            }
            Binding binding = this.scope.getImport(importReference.tokens, false, isStatic);
            if (binding == null) return null;
            if (isStatic) {
                if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                    ITypeBinding typeBinding = this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                    if (typeBinding == null) {
                        return null;
                    }
                    ITypeBinding iTypeBinding = typeBinding;
                    return iTypeBinding;
                }
                if (!(binding instanceof FieldBinding)) {
                    if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding)) return null;
                    return this.getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding)binding);
                }
                IVariableBinding variableBinding = this.getVariableBinding((FieldBinding)binding);
                if (variableBinding == null) {
                    return null;
                }
                IVariableBinding iVariableBinding = variableBinding;
                return iVariableBinding;
            }
            if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding)) return null;
            ITypeBinding typeBinding = this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
            if (typeBinding == null) {
                return null;
            }
            ITypeBinding iTypeBinding = typeBinding;
            return iTypeBinding;
        }
        catch (AbortCompilation abortCompilation) {}
        return null;
    }

    IMethodBinding resolveMember(AnnotationTypeMemberDeclaration declaration) {
        Object oldNode = this.newAstToOldAst.get(declaration);
        if (oldNode instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)oldNode;
            IMethodBinding methodBinding = this.getMethodBinding(methodDeclaration.binding);
            if (methodBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(methodBinding, declaration);
            String key = methodBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, methodBinding);
            }
            return methodBinding;
        }
        return null;
    }

    synchronized IMethodBinding resolveMethod(MethodDeclaration method) {
        Object oldNode = this.newAstToOldAst.get(method);
        if (oldNode instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration methodDeclaration = (AbstractMethodDeclaration)oldNode;
            IMethodBinding methodBinding = this.getMethodBinding(methodDeclaration.binding);
            if (methodBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(methodBinding, method);
            String key = methodBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, methodBinding);
            }
            return methodBinding;
        }
        return null;
    }

    synchronized IMethodBinding resolveMethod(MethodInvocation method) {
        Object oldNode = this.newAstToOldAst.get(method);
        if (oldNode instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)oldNode;
            return this.getMethodBinding(messageSend.binding);
        }
        return null;
    }

    synchronized IMethodBinding resolveMethod(SuperMethodInvocation method) {
        Object oldNode = this.newAstToOldAst.get(method);
        if (oldNode instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)oldNode;
            return this.getMethodBinding(messageSend.binding);
        }
        return null;
    }

    /*
     * WARNING - void declaration
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    synchronized ITypeBinding resolveTypeBindingForName(Name name) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node;
        block59: {
            block61: {
                int index;
                block60: {
                    block58: {
                        node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(name);
                        index = name.index;
                        if (!(node instanceof QualifiedNameReference)) break block58;
                        QualifiedNameReference qualifiedNameReference = (QualifiedNameReference)node;
                        char[][] tokens = qualifiedNameReference.tokens;
                        if (tokens.length == index) {
                            return this.getTypeBinding(qualifiedNameReference.resolvedType);
                        }
                        int indexOfFirstFieldBinding = qualifiedNameReference.indexOfFirstFieldBinding;
                        if (index < indexOfFirstFieldBinding) {
                            void var8_43;
                            BlockScope internalScope = (BlockScope)this.astNodesToBlockScope.get(name);
                            Object var8_40 = null;
                            try {
                                if (internalScope == null) {
                                    if (this.scope == null) {
                                        return null;
                                    }
                                    Binding binding = this.scope.getTypeOrPackage(CharOperation.subarray(tokens, 0, index));
                                } else {
                                    Binding binding = internalScope.getTypeOrPackage(CharOperation.subarray(tokens, 0, index));
                                }
                            }
                            catch (AbortCompilation abortCompilation) {}
                            if (var8_43 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                                return null;
                            }
                            if (var8_43 instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                                return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var8_43);
                            }
                            break block59;
                        } else {
                            void var9_52;
                            if (index == indexOfFirstFieldBinding) {
                                void var8_47;
                                if (qualifiedNameReference.isTypeReference()) {
                                    return this.getTypeBinding(qualifiedNameReference.resolvedType);
                                }
                                if (qualifiedNameReference.otherBindings == null) {
                                    return null;
                                }
                                FieldBinding fieldBinding = qualifiedNameReference.otherBindings[0];
                                if (fieldBinding == null) {
                                    return null;
                                }
                                ReferenceBinding referenceBinding = fieldBinding.declaringClass;
                                if (referenceBinding != null) return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var8_47);
                                switch (qualifiedNameReference.bits & 7) {
                                    case 1: {
                                        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = ((FieldBinding)qualifiedNameReference.binding).type;
                                        return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var8_47);
                                    }
                                    case 2: {
                                        org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = ((LocalVariableBinding)qualifiedNameReference.binding).type;
                                        return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var8_47);
                                    }
                                }
                                return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var8_47);
                            }
                            if (qualifiedNameReference.otherBindings == null) {
                                return null;
                            }
                            int otherBindingsLength = qualifiedNameReference.otherBindings.length;
                            if (otherBindingsLength == index - indexOfFirstFieldBinding) {
                                return this.getTypeBinding(qualifiedNameReference.resolvedType);
                            }
                            FieldBinding fieldBinding = qualifiedNameReference.otherBindings[index - indexOfFirstFieldBinding];
                            if (fieldBinding == null) {
                                return null;
                            }
                            ReferenceBinding referenceBinding = fieldBinding.declaringClass;
                            if (referenceBinding != null) return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var9_52);
                            FieldBinding fieldBinding2 = qualifiedNameReference.otherBindings[index - indexOfFirstFieldBinding - 1];
                            if (fieldBinding2 == null) {
                                return null;
                            }
                            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = fieldBinding2.type;
                            return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)var9_52);
                        }
                    }
                    if (!(node instanceof QualifiedTypeReference)) break block60;
                    QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference)node;
                    if (qualifiedTypeReference.resolvedType == null) {
                        return null;
                    }
                    if (index == qualifiedTypeReference.tokens.length) {
                        if (qualifiedTypeReference.resolvedType.isValidBinding()) return this.getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType());
                        if (!(qualifiedTypeReference instanceof JavadocQualifiedTypeReference)) return this.getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType());
                        JavadocQualifiedTypeReference typeRef = (JavadocQualifiedTypeReference)node;
                        if (typeRef.packageBinding == null) return this.getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType());
                        return null;
                    }
                    if (index >= 0) {
                        BlockScope internalScope = (BlockScope)this.astNodesToBlockScope.get(name);
                        Binding binding = null;
                        try {
                            if (internalScope == null) {
                                if (this.scope == null) {
                                    return null;
                                }
                                binding = this.scope.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, index));
                            } else {
                                binding = internalScope.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, index));
                            }
                        }
                        catch (AbortCompilation abortCompilation) {}
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                            return null;
                        }
                        if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding)) return null;
                        return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                    }
                    break block59;
                }
                if (!(node instanceof ImportReference)) break block61;
                ImportReference importReference = (ImportReference)node;
                int importReferenceLength = importReference.tokens.length;
                if (index >= 0) {
                    Binding binding = null;
                    if (this.scope == null) {
                        return null;
                    }
                    if (importReferenceLength == index) {
                        try {
                            binding = this.scope.getImport(CharOperation.subarray(importReference.tokens, 0, index), (importReference.bits & 0x20000) != 0, importReference.isStatic());
                        }
                        catch (AbortCompilation abortCompilation) {}
                    } else {
                        try {
                            binding = this.scope.getImport(CharOperation.subarray(importReference.tokens, 0, index), true, importReference.isStatic());
                        }
                        catch (AbortCompilation abortCompilation) {}
                    }
                    if (binding != null) {
                        if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding)) return null;
                        return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                    }
                }
                break block59;
            }
            if (node instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration)node;
                IMethodBinding method = this.getMethodBinding(abstractMethodDeclaration.binding);
                if (method != null) return method.getReturnType();
                return null;
            }
            if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
                ITypeBinding typeBinding = this.getTypeBinding(typeDeclaration.binding);
                if (typeBinding != null) {
                    return typeBinding;
                }
            }
        }
        if (node instanceof JavadocSingleNameReference) {
            JavadocSingleNameReference javadocSingleNameReference = (JavadocSingleNameReference)node;
            LocalVariableBinding localVariable = (LocalVariableBinding)javadocSingleNameReference.binding;
            if (localVariable != null) {
                return this.getTypeBinding(localVariable.type);
            }
        }
        if (node instanceof SingleNameReference) {
            SingleNameReference singleNameReference = (SingleNameReference)node;
            return this.getTypeBinding(singleNameReference.resolvedType);
        }
        if (node instanceof QualifiedSuperReference) {
            QualifiedSuperReference qualifiedSuperReference = (QualifiedSuperReference)node;
            return this.getTypeBinding(qualifiedSuperReference.qualification.resolvedType);
        }
        if (node instanceof LocalDeclaration) {
            IVariableBinding iVariableBinding = this.getVariableBinding(((LocalDeclaration)node).binding);
            if (iVariableBinding != null) return iVariableBinding.getType();
            return null;
        }
        if (node instanceof JavadocFieldReference) {
            JavadocFieldReference javadocFieldReference = (JavadocFieldReference)node;
            if (javadocFieldReference.methodBinding == null) return this.getTypeBinding(javadocFieldReference.resolvedType);
            return this.getMethodBinding(javadocFieldReference.methodBinding).getReturnType();
        }
        if (node instanceof FieldReference) {
            return this.getTypeBinding(((FieldReference)node).resolvedType);
        }
        if (node instanceof SingleTypeReference) {
            SingleTypeReference singleTypeReference = (SingleTypeReference)node;
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding = singleTypeReference.resolvedType;
            if (binding == null) return null;
            return this.getTypeBinding(binding.leafComponentType());
        }
        if (node instanceof FieldDeclaration) {
            FieldDeclaration fieldDeclaration = (FieldDeclaration)node;
            IVariableBinding field = this.getVariableBinding(fieldDeclaration.binding);
            if (field != null) return field.getType();
            return null;
        }
        if (node instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)node;
            IMethodBinding method = this.getMethodBinding(messageSend.binding);
            if (method != null) return method.getReturnType();
            return null;
        }
        if (node instanceof AllocationExpression) {
            AllocationExpression allocationExpression = (AllocationExpression)node;
            return this.getTypeBinding(allocationExpression.resolvedType);
        }
        if (node instanceof JavadocImplicitTypeReference) {
            JavadocImplicitTypeReference javadocImplicitTypeReference = (JavadocImplicitTypeReference)node;
            return this.getTypeBinding(javadocImplicitTypeReference.resolvedType);
        }
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter) {
            org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter = (org.eclipse.jdt.internal.compiler.ast.TypeParameter)node;
            return this.getTypeBinding(typeParameter.binding);
        }
        if (!(node instanceof org.eclipse.jdt.internal.compiler.ast.MemberValuePair)) return null;
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair = (org.eclipse.jdt.internal.compiler.ast.MemberValuePair)node;
        IMethodBinding method = this.getMethodBinding(memberValuePair.binding);
        if (method != null) return method.getReturnType();
        return null;
    }

    /*
     * Unable to fully structure code
     */
    synchronized IBinding resolveName(Name name) {
        block78: {
            block77: {
                block74: {
                    block76: {
                        block71: {
                            block70: {
                                block72: {
                                    block75: {
                                        block73: {
                                            block69: {
                                                block68: {
                                                    node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(name);
                                                    index = name.index;
                                                    if (!(node instanceof QualifiedNameReference)) break block72;
                                                    qualifiedNameReference = (QualifiedNameReference)node;
                                                    tokens = qualifiedNameReference.tokens;
                                                    indexOfFirstFieldBinding = qualifiedNameReference.indexOfFirstFieldBinding;
                                                    if (index >= indexOfFirstFieldBinding) break block73;
                                                    internalScope = (BlockScope)this.astNodesToBlockScope.get(name);
                                                    binding = null;
                                                    try {
                                                        if (internalScope != null) ** GOTO lbl19
                                                        if (this.scope != null) break block68;
                                                        return null;
                                                    }
                                                    catch (AbortCompilation v0) {}
                                                }
                                                binding = this.scope.getTypeOrPackage(CharOperation.subarray(tokens, 0, index));
                                                break block69;
lbl19:
                                                // 1 sources

                                                binding = internalScope.getTypeOrPackage(CharOperation.subarray(tokens, 0, index));
                                            }
                                            if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                                                return this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
                                            }
                                            if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                                                return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                                            }
                                            break block74;
                                        }
                                        if (index != indexOfFirstFieldBinding) break block75;
                                        if (qualifiedNameReference.isTypeReference()) {
                                            return this.getTypeBinding(qualifiedNameReference.resolvedType);
                                        }
                                        binding = qualifiedNameReference.binding;
                                        if (binding == null) break block74;
                                        if (binding.isValidBinding()) {
                                            return this.getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding)binding);
                                        }
                                        if (!(binding instanceof ProblemFieldBinding)) break block74;
                                        problemFieldBinding = (ProblemFieldBinding)binding;
                                        switch (problemFieldBinding.problemId()) {
                                            case 2: 
                                            case 7: {
                                                declaringClass = problemFieldBinding.declaringClass;
                                                if (declaringClass != null && (exactBinding = declaringClass.getField(tokens[tokens.length - 1], true)) != null && exactBinding.type != null) {
                                                    variableBinding = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(exactBinding);
                                                    if (variableBinding != null) {
                                                        return variableBinding;
                                                    }
                                                    variableBinding = new VariableBinding(this, exactBinding);
                                                    this.bindingTables.compilerBindingsToASTBindings.put(exactBinding, variableBinding);
                                                    return variableBinding;
                                                }
                                                break block74;
                                            }
                                            default: {
                                                ** break;
                                            }
                                        }
lbl52:
                                        // 1 sources

                                        break block74;
                                    }
                                    if (qualifiedNameReference.otherBindings == null || index - indexOfFirstFieldBinding - 1 < 0) {
                                        return null;
                                    }
                                    return this.getVariableBinding(qualifiedNameReference.otherBindings[index - indexOfFirstFieldBinding - 1]);
                                }
                                if (!(node instanceof QualifiedTypeReference)) break block76;
                                qualifiedTypeReference = (QualifiedTypeReference)node;
                                if (qualifiedTypeReference.resolvedType == null) {
                                    return null;
                                }
                                if (index == qualifiedTypeReference.tokens.length) {
                                    if (!qualifiedTypeReference.resolvedType.isValidBinding() && qualifiedTypeReference instanceof JavadocQualifiedTypeReference) {
                                        typeRef = (JavadocQualifiedTypeReference)node;
                                        if (typeRef.packageBinding != null) {
                                            return this.getPackageBinding(typeRef.packageBinding);
                                        }
                                    }
                                    return this.getTypeBinding(qualifiedTypeReference.resolvedType.leafComponentType());
                                }
                                if (index < 0) break block74;
                                internalScope = (BlockScope)this.astNodesToBlockScope.get(name);
                                binding = null;
                                try {
                                    if (internalScope != null) ** GOTO lbl80
                                    if (this.scope != null) break block70;
                                    return null;
                                }
                                catch (AbortCompilation v1) {}
                            }
                            binding = this.scope.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, index));
                            break block71;
lbl80:
                            // 1 sources

                            binding = internalScope.getTypeOrPackage(CharOperation.subarray(qualifiedTypeReference.tokens, 0, index));
                        }
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                            return this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
                        }
                        if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                            return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                        }
                        return null;
                    }
                    if (node instanceof ImportReference) {
                        importReference = (ImportReference)node;
                        importReferenceLength = importReference.tokens.length;
                        if (index >= 0) {
                            binding = null;
                            if (this.scope == null) {
                                return null;
                            }
                            if (importReferenceLength == index) {
                                try {
                                    binding = this.scope.getImport(CharOperation.subarray(importReference.tokens, 0, index), (importReference.bits & 131072) != 0, importReference.isStatic());
                                }
                                catch (AbortCompilation v2) {}
                            } else {
                                try {
                                    binding = this.scope.getImport(CharOperation.subarray(importReference.tokens, 0, index), true, importReference.isStatic());
                                }
                                catch (AbortCompilation v3) {}
                            }
                            if (binding != null) {
                                if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) {
                                    return this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
                                }
                                if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.TypeBinding) {
                                    return this.getTypeBinding((org.eclipse.jdt.internal.compiler.lookup.TypeBinding)binding);
                                }
                                if (binding instanceof FieldBinding) {
                                    return this.getVariableBinding((FieldBinding)binding);
                                }
                                if (binding instanceof org.eclipse.jdt.internal.compiler.lookup.MethodBinding) {
                                    return this.getMethodBinding((org.eclipse.jdt.internal.compiler.lookup.MethodBinding)binding);
                                }
                                return null;
                            }
                        }
                    } else if (node instanceof CompilationUnitDeclaration) {
                        compilationUnitDeclaration = (CompilationUnitDeclaration)node;
                        types = compilationUnitDeclaration.types;
                        if (types == null || types.length == 0) {
                            return null;
                        }
                        type = types[0];
                        if (type != null && (typeBinding = this.getTypeBinding(type.binding)) != null) {
                            return typeBinding.getPackage();
                        }
                    } else if (node instanceof AbstractMethodDeclaration) {
                        methodDeclaration = (AbstractMethodDeclaration)node;
                        methodBinding = this.getMethodBinding(methodDeclaration.binding);
                        if (methodBinding != null) {
                            return methodBinding;
                        }
                    } else if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                        typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
                        typeBinding = this.getTypeBinding(typeDeclaration.binding);
                        if (typeBinding != null) {
                            return typeBinding;
                        }
                    }
                }
                if (!(node instanceof SingleNameReference)) break block77;
                singleNameReference = (SingleNameReference)node;
                if (singleNameReference.isTypeReference()) {
                    return this.getTypeBinding(singleNameReference.resolvedType);
                }
                binding = singleNameReference.binding;
                if (binding == null) break block78;
                if (binding.isValidBinding()) {
                    return this.getVariableBinding((org.eclipse.jdt.internal.compiler.lookup.VariableBinding)binding);
                }
                if (!(binding instanceof ProblemFieldBinding)) break block78;
                problemFieldBinding = (ProblemFieldBinding)binding;
                switch (problemFieldBinding.problemId()) {
                    case 2: 
                    case 6: 
                    case 7: {
                        declaringClass = problemFieldBinding.declaringClass;
                        exactBinding = declaringClass.getField(problemFieldBinding.name, true);
                        if (exactBinding != null && exactBinding.type != null) {
                            variableBinding2 = (IVariableBinding)this.bindingTables.compilerBindingsToASTBindings.get(exactBinding);
                            if (variableBinding2 != null) {
                                return variableBinding2;
                            }
                            variableBinding2 = new VariableBinding(this, exactBinding);
                            this.bindingTables.compilerBindingsToASTBindings.put(exactBinding, variableBinding2);
                            return variableBinding2;
                        }
                        break block78;
                    }
                    default: {
                        ** break;
                    }
                }
lbl165:
                // 1 sources

                break block78;
            }
            if (node instanceof QualifiedSuperReference) {
                qualifiedSuperReference = (QualifiedSuperReference)node;
                return this.getTypeBinding(qualifiedSuperReference.qualification.resolvedType);
            }
            if (node instanceof LocalDeclaration) {
                return this.getVariableBinding(((LocalDeclaration)node).binding);
            }
            if (node instanceof JavadocFieldReference) {
                fieldRef = (JavadocFieldReference)node;
                if (fieldRef.methodBinding != null) {
                    return this.getMethodBinding(fieldRef.methodBinding);
                }
                return this.getVariableBinding(fieldRef.binding);
            }
            if (node instanceof FieldReference) {
                return this.getVariableBinding(((FieldReference)node).binding);
            }
            if (node instanceof SingleTypeReference) {
                if (node instanceof JavadocSingleTypeReference) {
                    typeRef = (JavadocSingleTypeReference)node;
                    if (typeRef.packageBinding != null) {
                        return this.getPackageBinding(typeRef.packageBinding);
                    }
                }
                singleTypeReference = (SingleTypeReference)node;
                binding = singleTypeReference.resolvedType;
                if (binding == null) {
                    return null;
                }
                return this.getTypeBinding(binding.leafComponentType());
            }
            if (node instanceof FieldDeclaration) {
                fieldDeclaration = (FieldDeclaration)node;
                return this.getVariableBinding(fieldDeclaration.binding);
            }
            if (node instanceof MessageSend) {
                messageSend = (MessageSend)node;
                return this.getMethodBinding(messageSend.binding);
            }
            if (node instanceof AllocationExpression) {
                allocation = (AllocationExpression)node;
                return this.getMethodBinding(allocation.binding);
            }
            if (node instanceof JavadocImplicitTypeReference) {
                implicitRef = (JavadocImplicitTypeReference)node;
                return this.getTypeBinding(implicitRef.resolvedType);
            }
            if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter) {
                typeParameter = (org.eclipse.jdt.internal.compiler.ast.TypeParameter)node;
                return this.getTypeBinding(typeParameter.binding);
            }
            if (node instanceof org.eclipse.jdt.internal.compiler.ast.MemberValuePair) {
                memberValuePair = (org.eclipse.jdt.internal.compiler.ast.MemberValuePair)node;
                return this.getMethodBinding(memberValuePair.binding);
            }
        }
        return null;
    }

    synchronized IPackageBinding resolvePackage(PackageDeclaration pkg) {
        block6: {
            IPackageBinding packageBinding;
            block7: {
                if (this.scope == null) {
                    return null;
                }
                try {
                    org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(pkg);
                    if (!(node instanceof ImportReference)) break block6;
                    ImportReference importReference = (ImportReference)node;
                    Binding binding = this.scope.getTypeOrPackage(CharOperation.subarray(importReference.tokens, 0, importReference.tokens.length));
                    if (binding == null || !binding.isValidBinding()) break block6;
                    if (binding instanceof ReferenceBinding) {
                        ReferenceBinding referenceBinding = (ReferenceBinding)binding;
                        binding = referenceBinding.fPackage;
                    }
                    if (!(binding instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding)) break block6;
                    packageBinding = this.getPackageBinding((org.eclipse.jdt.internal.compiler.lookup.PackageBinding)binding);
                    if (packageBinding != null) break block7;
                    return null;
                }
                catch (AbortCompilation abortCompilation) {}
            }
            this.bindingsToAstNodes.put(packageBinding, pkg);
            String key = packageBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, packageBinding);
            }
            return packageBinding;
        }
        return null;
    }

    synchronized IBinding resolveReference(MemberRef ref) {
        org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression)this.newAstToOldAst.get(ref);
        if (expression instanceof TypeReference) {
            return this.getTypeBinding(expression.resolvedType);
        }
        if (expression instanceof JavadocFieldReference) {
            JavadocFieldReference fieldRef = (JavadocFieldReference)expression;
            if (fieldRef.methodBinding != null) {
                return this.getMethodBinding(fieldRef.methodBinding);
            }
            return this.getVariableBinding(fieldRef.binding);
        }
        return null;
    }

    synchronized IMemberValuePairBinding resolveMemberValuePair(MemberValuePair memberValuePair) {
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair valuePair = (org.eclipse.jdt.internal.compiler.ast.MemberValuePair)this.newAstToOldAst.get(memberValuePair);
        if (valuePair != null) {
            return this.getMemberValuePairBinding(valuePair.compilerElementPair);
        }
        return null;
    }

    synchronized IBinding resolveReference(MethodRef ref) {
        org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression)this.newAstToOldAst.get(ref);
        if (expression instanceof JavadocMessageSend) {
            return this.getMethodBinding(((JavadocMessageSend)expression).binding);
        }
        if (expression instanceof JavadocAllocationExpression) {
            return this.getMethodBinding(((JavadocAllocationExpression)expression).binding);
        }
        return null;
    }

    ITypeBinding resolveType(AnnotationTypeDeclaration type) {
        Object node = this.newAstToOldAst.get(type);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
            ITypeBinding typeBinding = this.getTypeBinding(typeDeclaration.binding);
            if (typeBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(typeBinding, type);
            String key = typeBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
            }
            return typeBinding;
        }
        return null;
    }

    synchronized ITypeBinding resolveType(AnonymousClassDeclaration type) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(type);
        if (node != null && (node.bits & 0x200) != 0) {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration anonymousLocalTypeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
            ITypeBinding typeBinding = this.getTypeBinding(anonymousLocalTypeDeclaration.binding);
            if (typeBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(typeBinding, type);
            String key = typeBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
            }
            return typeBinding;
        }
        return null;
    }

    ITypeBinding resolveType(EnumDeclaration type) {
        Object node = this.newAstToOldAst.get(type);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
            ITypeBinding typeBinding = this.getTypeBinding(typeDeclaration.binding);
            if (typeBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(typeBinding, type);
            String key = typeBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
            }
            return typeBinding;
        }
        return null;
    }

    synchronized ITypeBinding resolveType(Type type) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode node = (org.eclipse.jdt.internal.compiler.ast.ASTNode)this.newAstToOldAst.get(type);
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding = null;
        if (node != null) {
            TypeReference typeReference;
            if (node instanceof ParameterizedQualifiedTypeReference) {
                int numberOfTypeArgumentsNotNull;
                int index;
                typeReference = (ParameterizedQualifiedTypeReference)node;
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = typeReference.resolvedType;
                if (type.isArrayType()) {
                    if (this.scope == null) {
                        return null;
                    }
                    ArrayType arrayType = (ArrayType)type;
                    ArrayBinding arrayBinding = (ArrayBinding)typeBinding;
                    return this.getTypeBinding(this.scope.createArrayType(arrayBinding.leafComponentType, arrayType.getDimensions()));
                }
                if (typeBinding.isArrayType()) {
                    typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
                }
                if ((index = type.isQualifiedType() ? ((QualifiedType)type).index : (type.isParameterizedType() ? ((ParameterizedType)type).index : 1)) != (numberOfTypeArgumentsNotNull = this.getTypeArguments((ParameterizedQualifiedTypeReference)typeReference))) {
                    int i = numberOfTypeArgumentsNotNull;
                    while (i != index) {
                        typeBinding = typeBinding.enclosingType();
                        --i;
                    }
                    binding = typeBinding;
                } else {
                    binding = typeBinding;
                }
            } else if (node instanceof TypeReference) {
                typeReference = (TypeReference)node;
                binding = typeReference.resolvedType;
            } else if (node instanceof SingleNameReference && ((SingleNameReference)node).isTypeReference()) {
                binding = ((SingleNameReference)node).resolvedType;
            } else if (node instanceof QualifiedNameReference && ((QualifiedNameReference)node).isTypeReference()) {
                binding = ((QualifiedNameReference)node).resolvedType;
            } else if (node instanceof ArrayAllocationExpression) {
                binding = ((ArrayAllocationExpression)node).resolvedType;
            }
            if (binding != null) {
                if (type.isArrayType()) {
                    ArrayType arrayType = (ArrayType)type;
                    if (this.scope == null) {
                        return null;
                    }
                    ArrayBinding arrayBinding = (ArrayBinding)binding;
                    return this.getTypeBinding(this.scope.createArrayType(arrayBinding.leafComponentType, arrayType.getDimensions()));
                }
                if (binding.isArrayType()) {
                    ArrayBinding arrayBinding = (ArrayBinding)binding;
                    return this.getTypeBinding(arrayBinding.leafComponentType);
                }
                return this.getTypeBinding(binding);
            }
        } else if (type.isPrimitiveType() && ((PrimitiveType)type).getPrimitiveTypeCode() == PrimitiveType.VOID) {
            return this.getTypeBinding(org.eclipse.jdt.internal.compiler.lookup.TypeBinding.VOID);
        }
        return null;
    }

    synchronized ITypeBinding resolveType(TypeDeclaration type) {
        Object node = this.newAstToOldAst.get(type);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration)node;
            ITypeBinding typeBinding = this.getTypeBinding(typeDeclaration.binding);
            if (typeBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(typeBinding, type);
            String key = typeBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
            }
            return typeBinding;
        }
        return null;
    }

    synchronized ITypeBinding resolveTypeParameter(TypeParameter typeParameter) {
        Object node = this.newAstToOldAst.get(typeParameter);
        if (node instanceof org.eclipse.jdt.internal.compiler.ast.TypeParameter) {
            org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter2 = (org.eclipse.jdt.internal.compiler.ast.TypeParameter)node;
            ITypeBinding typeBinding = this.getTypeBinding(typeParameter2.binding);
            if (typeBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(typeBinding, typeParameter);
            String key = typeBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, typeBinding);
            }
            return typeBinding;
        }
        return null;
    }

    synchronized IVariableBinding resolveVariable(EnumConstantDeclaration enumConstant) {
        Object node = this.newAstToOldAst.get(enumConstant);
        if (node instanceof FieldDeclaration) {
            FieldDeclaration fieldDeclaration = (FieldDeclaration)node;
            IVariableBinding variableBinding = this.getVariableBinding(fieldDeclaration.binding);
            if (variableBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(variableBinding, enumConstant);
            String key = variableBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, variableBinding);
            }
            return variableBinding;
        }
        return null;
    }

    synchronized IVariableBinding resolveVariable(VariableDeclaration variable) {
        Object node = this.newAstToOldAst.get(variable);
        if (node instanceof AbstractVariableDeclaration) {
            AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration)node;
            IVariableBinding variableBinding = null;
            if (abstractVariableDeclaration instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration = (FieldDeclaration)abstractVariableDeclaration;
                variableBinding = this.getVariableBinding(fieldDeclaration.binding, variable);
            } else {
                variableBinding = this.getVariableBinding(((LocalDeclaration)abstractVariableDeclaration).binding, variable);
            }
            if (variableBinding == null) {
                return null;
            }
            this.bindingsToAstNodes.put(variableBinding, variable);
            String key = variableBinding.getKey();
            if (key != null) {
                this.bindingTables.bindingKeysToBindings.put(key, variableBinding);
            }
            return variableBinding;
        }
        return null;
    }

    synchronized ITypeBinding resolveWellKnownType(String name) {
        if (this.scope == null) {
            return null;
        }
        IBinding typeBinding = null;
        try {
            if ("boolean".equals(name) || "char".equals(name) || "byte".equals(name) || "short".equals(name) || "int".equals(name) || "long".equals(name) || "float".equals(name) || "double".equals(name) || "void".equals(name)) {
                typeBinding = this.getTypeBinding(Scope.getBaseType(name.toCharArray()));
            } else if ("java.lang.Object".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaLangObject());
            } else if ("java.lang.String".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaLangString());
            } else if ("java.lang.StringBuffer".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_STRINGBUFFER, 3));
            } else if ("java.lang.Throwable".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaLangThrowable());
            } else if ("java.lang.Exception".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_EXCEPTION, 3));
            } else if ("java.lang.RuntimeException".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION, 3));
            } else if ("java.lang.Error".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_ERROR, 3));
            } else if ("java.lang.Class".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaLangClass());
            } else if ("java.lang.Cloneable".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaLangCloneable());
            } else if ("java.io.Serializable".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getJavaIoSerializable());
            } else if ("java.lang.Boolean".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_BOOLEAN, 3));
            } else if ("java.lang.Byte".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_BYTE, 3));
            } else if ("java.lang.Character".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_CHARACTER, 3));
            } else if ("java.lang.Double".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_DOUBLE, 3));
            } else if ("java.lang.Float".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_FLOAT, 3));
            } else if ("java.lang.Integer".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_INTEGER, 3));
            } else if ("java.lang.Long".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_LONG, 3));
            } else if ("java.lang.Short".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_SHORT, 3));
            } else if ("java.lang.Void".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_VOID, 3));
            } else if ("java.lang.AssertionError".equals(name)) {
                typeBinding = this.getTypeBinding(this.scope.getType(TypeConstants.JAVA_LANG_ASSERTIONERROR, 3));
            }
        }
        catch (AbortCompilation abortCompilation) {}
        if (typeBinding != null && !typeBinding.isRecovered()) {
            return typeBinding;
        }
        return null;
    }

    synchronized IAnnotationBinding resolveAnnotation(Annotation domASTNode) {
        Object oldNode = this.newAstToOldAst.get(domASTNode);
        if (oldNode instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            org.eclipse.jdt.internal.compiler.ast.Annotation internalAstNode = (org.eclipse.jdt.internal.compiler.ast.Annotation)oldNode;
            IAnnotationBinding domAnnotation = this.getAnnotationInstance(internalAstNode.getCompilerAnnotation());
            if (domAnnotation == null) {
                return null;
            }
            this.bindingsToAstNodes.put(domAnnotation, domASTNode);
            return domAnnotation;
        }
        return null;
    }

    public CompilationUnitScope scope() {
        return this.scope;
    }

    synchronized void store(ASTNode node, org.eclipse.jdt.internal.compiler.ast.ASTNode oldASTNode) {
        this.newAstToOldAst.put(node, oldASTNode);
    }

    synchronized void updateKey(ASTNode node, ASTNode newNode) {
        Object astNode = this.newAstToOldAst.remove(node);
        if (astNode != null) {
            this.newAstToOldAst.put(newNode, astNode);
        }
    }

    ITypeBinding resolveArrayType(ITypeBinding typeBinding, int dimensions) {
        if (typeBinding instanceof RecoveredTypeBinding) {
            throw new IllegalArgumentException("Cannot be called on a recovered type binding");
        }
        ITypeBinding leafComponentType = typeBinding;
        int actualDimensions = dimensions;
        if (typeBinding.isArray()) {
            leafComponentType = typeBinding.getElementType();
            actualDimensions += typeBinding.getDimensions();
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding leafTypeBinding = null;
        if (leafComponentType.isPrimitive()) {
            String name = leafComponentType.getBinaryName();
            switch (name.charAt(0)) {
                case 'I': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.INT;
                    break;
                }
                case 'B': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.BYTE;
                    break;
                }
                case 'Z': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.BOOLEAN;
                    break;
                }
                case 'C': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.CHAR;
                    break;
                }
                case 'J': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.LONG;
                    break;
                }
                case 'S': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.SHORT;
                    break;
                }
                case 'D': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.DOUBLE;
                    break;
                }
                case 'F': {
                    leafTypeBinding = org.eclipse.jdt.internal.compiler.lookup.TypeBinding.FLOAT;
                    break;
                }
                case 'V': {
                    throw new IllegalArgumentException();
                }
            }
        } else {
            if (!(leafComponentType instanceof TypeBinding)) {
                return null;
            }
            leafTypeBinding = ((TypeBinding)leafComponentType).binding;
        }
        return this.getTypeBinding(this.lookupEnvironment().createArrayType(leafTypeBinding, actualDimensions));
    }

    static class BindingTables {
        Map bindingKeysToBindings;
        Map compilerBindingsToASTBindings = new HashMap();

        BindingTables() {
            this.bindingKeysToBindings = new HashMap();
        }
    }
}

