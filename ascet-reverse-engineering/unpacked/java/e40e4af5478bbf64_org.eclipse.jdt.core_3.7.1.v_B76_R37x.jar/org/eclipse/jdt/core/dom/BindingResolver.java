/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
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
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.MethodRef;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.RecoveredTypeBinding;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

class BindingResolver {
    BindingResolver() {
    }

    ASTNode findDeclaringNode(IBinding binding) {
        return null;
    }

    ASTNode findDeclaringNode(String bindingKey) {
        return null;
    }

    ASTNode findDeclaringNode(IAnnotationBinding instance) {
        return null;
    }

    org.eclipse.jdt.internal.compiler.ast.ASTNode getCorrespondingNode(ASTNode currentNode) {
        return null;
    }

    IMethodBinding getMethodBinding(MethodBinding methodBinding) {
        return null;
    }

    IMemberValuePairBinding getMemberValuePairBinding(ElementValuePair valuePair) {
        return null;
    }

    IPackageBinding getPackageBinding(PackageBinding packageBinding) {
        return null;
    }

    ITypeBinding getTypeBinding(TypeBinding referenceBinding) {
        return null;
    }

    ITypeBinding getTypeBinding(VariableDeclaration variableDeclaration) {
        return null;
    }

    ITypeBinding getTypeBinding(Type type) {
        return null;
    }

    ITypeBinding getTypeBinding(RecoveredTypeBinding recoveredTypeBinding, int dimensions) {
        return null;
    }

    IVariableBinding getVariableBinding(VariableBinding binding) {
        return null;
    }

    public WorkingCopyOwner getWorkingCopyOwner() {
        return null;
    }

    IAnnotationBinding getAnnotationInstance(AnnotationBinding instance) {
        return null;
    }

    boolean isResolvedTypeInferredFromExpectedType(MethodInvocation methodInvocation) {
        return false;
    }

    boolean isResolvedTypeInferredFromExpectedType(SuperMethodInvocation methodInvocation) {
        return false;
    }

    boolean isResolvedTypeInferredFromExpectedType(ClassInstanceCreation classInstanceCreation) {
        return false;
    }

    LookupEnvironment lookupEnvironment() {
        return null;
    }

    void recordScope(ASTNode astNode, BlockScope blockScope) {
    }

    boolean resolveBoxing(Expression expression) {
        return false;
    }

    boolean resolveUnboxing(Expression expression) {
        return false;
    }

    Object resolveConstantExpressionValue(Expression expression) {
        return null;
    }

    IMethodBinding resolveConstructor(ClassInstanceCreation expression) {
        return null;
    }

    IMethodBinding resolveConstructor(ConstructorInvocation expression) {
        return null;
    }

    IMethodBinding resolveConstructor(EnumConstantDeclaration enumConstantDeclaration) {
        return null;
    }

    IMethodBinding resolveConstructor(SuperConstructorInvocation expression) {
        return null;
    }

    ITypeBinding resolveExpressionType(Expression expression) {
        return null;
    }

    IVariableBinding resolveField(FieldAccess fieldAccess) {
        return null;
    }

    IVariableBinding resolveField(SuperFieldAccess fieldAccess) {
        return null;
    }

    IBinding resolveImport(ImportDeclaration importDeclaration) {
        return null;
    }

    IMethodBinding resolveMember(AnnotationTypeMemberDeclaration member) {
        return null;
    }

    IMethodBinding resolveMethod(MethodDeclaration method) {
        return null;
    }

    IMethodBinding resolveMethod(MethodInvocation method) {
        return null;
    }

    IMethodBinding resolveMethod(SuperMethodInvocation method) {
        return null;
    }

    IBinding resolveName(Name name) {
        return null;
    }

    IPackageBinding resolvePackage(PackageDeclaration pkg) {
        return null;
    }

    IBinding resolveReference(MemberRef ref) {
        return null;
    }

    IMemberValuePairBinding resolveMemberValuePair(MemberValuePair memberValuePair) {
        return null;
    }

    IBinding resolveReference(MethodRef ref) {
        return null;
    }

    ITypeBinding resolveType(AnnotationTypeDeclaration type) {
        return null;
    }

    ITypeBinding resolveType(AnonymousClassDeclaration type) {
        return null;
    }

    ITypeBinding resolveType(EnumDeclaration type) {
        return null;
    }

    ITypeBinding resolveType(Type type) {
        return null;
    }

    ITypeBinding resolveType(TypeDeclaration type) {
        return null;
    }

    ITypeBinding resolveTypeParameter(TypeParameter typeParameter) {
        return null;
    }

    IVariableBinding resolveVariable(EnumConstantDeclaration enumConstant) {
        return null;
    }

    IVariableBinding resolveVariable(VariableDeclaration variable) {
        return null;
    }

    ITypeBinding resolveWellKnownType(String name) {
        return null;
    }

    IAnnotationBinding resolveAnnotation(Annotation annotation) {
        return null;
    }

    ITypeBinding resolveArrayType(ITypeBinding typeBinding, int dimensions) {
        return null;
    }

    public CompilationUnitScope scope() {
        return null;
    }

    void store(ASTNode newNode, org.eclipse.jdt.internal.compiler.ast.ASTNode oldASTNode) {
    }

    void updateKey(ASTNode node, ASTNode newNode) {
    }
}

