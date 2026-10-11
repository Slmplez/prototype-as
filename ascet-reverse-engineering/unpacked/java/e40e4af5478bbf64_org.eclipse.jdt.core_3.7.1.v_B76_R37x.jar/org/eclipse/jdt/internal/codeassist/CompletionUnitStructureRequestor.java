/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import java.util.Map;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMarkerAnnotationName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMemberValueName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnQualifiedTypeReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleNameReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.codeassist.impl.AssistAnnotation;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportContainer;
import org.eclipse.jdt.internal.codeassist.impl.AssistImportDeclaration;
import org.eclipse.jdt.internal.codeassist.impl.AssistInitializer;
import org.eclipse.jdt.internal.codeassist.impl.AssistPackageDeclaration;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceField;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceMethod;
import org.eclipse.jdt.internal.codeassist.impl.AssistSourceType;
import org.eclipse.jdt.internal.codeassist.impl.AssistTypeParameter;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.CompilationUnitStructureRequestor;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.MemberValuePair;
import org.eclipse.jdt.internal.core.PackageDeclaration;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.TypeParameter;

public class CompletionUnitStructureRequestor
extends CompilationUnitStructureRequestor {
    private ASTNode assistNode;
    private Map bindingCache;
    private Map elementCache;
    private Map elementWithProblemCache;

    public CompletionUnitStructureRequestor(ICompilationUnit unit, CompilationUnitElementInfo unitInfo, Parser parser, ASTNode assistNode, Map bindingCache, Map elementCache, Map elementWithProblemCache, Map newElements) {
        super(unit, unitInfo, newElements);
        this.parser = parser;
        this.assistNode = assistNode;
        this.bindingCache = bindingCache;
        this.elementCache = elementCache;
        this.elementWithProblemCache = elementWithProblemCache;
    }

    protected Annotation createAnnotation(JavaElement parent, String name) {
        return new AssistAnnotation(parent, name, this.newElements);
    }

    protected SourceField createField(JavaElement parent, ISourceElementRequestor.FieldInfo fieldInfo) {
        String fieldName = JavaModelManager.getJavaModelManager().intern(new String(fieldInfo.name));
        AssistSourceField field = new AssistSourceField(parent, fieldName, this.bindingCache, this.newElements);
        if (fieldInfo.node.binding != null) {
            this.bindingCache.put(field, fieldInfo.node.binding);
            this.elementCache.put(fieldInfo.node.binding, field);
        } else {
            this.elementWithProblemCache.put(fieldInfo.node, field);
        }
        return field;
    }

    protected ImportContainer createImportContainer(ICompilationUnit parent) {
        return new AssistImportContainer((CompilationUnit)parent, this.newElements);
    }

    protected ImportDeclaration createImportDeclaration(ImportContainer parent, String name, boolean onDemand) {
        return new AssistImportDeclaration(parent, name, onDemand, this.newElements);
    }

    protected Initializer createInitializer(JavaElement parent) {
        return new AssistInitializer(parent, 1, this.bindingCache, this.newElements);
    }

    protected SourceMethod createMethodHandle(JavaElement parent, ISourceElementRequestor.MethodInfo methodInfo) {
        String selector = JavaModelManager.getJavaModelManager().intern(new String(methodInfo.name));
        String[] parameterTypeSigs = CompletionUnitStructureRequestor.convertTypeNamesToSigs(methodInfo.parameterTypes);
        AssistSourceMethod method = new AssistSourceMethod(parent, selector, parameterTypeSigs, this.bindingCache, this.newElements);
        if (methodInfo.node.binding != null) {
            this.bindingCache.put(method, methodInfo.node.binding);
            this.elementCache.put(methodInfo.node.binding, method);
        } else {
            this.elementWithProblemCache.put(methodInfo.node, method);
        }
        return method;
    }

    protected PackageDeclaration createPackageDeclaration(JavaElement parent, String name) {
        return new AssistPackageDeclaration((CompilationUnit)parent, name, this.newElements);
    }

    protected SourceType createTypeHandle(JavaElement parent, ISourceElementRequestor.TypeInfo typeInfo) {
        String nameString = new String(typeInfo.name);
        AssistSourceType type = new AssistSourceType(parent, nameString, this.bindingCache, this.newElements);
        if (typeInfo.node.binding != null) {
            this.bindingCache.put(type, typeInfo.node.binding);
            this.elementCache.put(typeInfo.node.binding, type);
        } else {
            this.elementWithProblemCache.put(typeInfo.node, type);
        }
        return type;
    }

    protected TypeParameter createTypeParameter(JavaElement parent, String name) {
        return new AssistTypeParameter(parent, name, this.newElements);
    }

    protected IAnnotation acceptAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, AnnotatableInfo parentInfo, JavaElement parentHandle) {
        if (annotation instanceof CompletionOnMarkerAnnotationName && CompletionUnitStructureRequestor.hasEmptyName(annotation.type, this.assistNode)) {
            super.acceptAnnotation(annotation, null, parentHandle);
            return null;
        }
        return super.acceptAnnotation(annotation, parentInfo, parentHandle);
    }

    protected Object getMemberValue(MemberValuePair memberValuePair, Expression expression) {
        if (expression instanceof CompletionOnSingleNameReference) {
            CompletionOnSingleNameReference reference = (CompletionOnSingleNameReference)expression;
            if (reference.token.length == 0) {
                return null;
            }
        } else if (expression instanceof CompletionOnQualifiedNameReference) {
            CompletionOnQualifiedNameReference reference = (CompletionOnQualifiedNameReference)expression;
            if (reference.tokens[reference.tokens.length - 1].length == 0) {
                return null;
            }
        }
        return super.getMemberValue(memberValuePair, expression);
    }

    protected IMemberValuePair[] getMemberValuePairs(org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairs) {
        int membersLength = memberValuePairs.length;
        int membersCount = 0;
        IMemberValuePair[] members = new IMemberValuePair[membersLength];
        int j = 0;
        while (j < membersLength) {
            if (!(memberValuePairs[j] instanceof CompletionOnMemberValueName)) {
                members[membersCount++] = this.getMemberValuePair(memberValuePairs[j]);
            }
            ++j;
        }
        if (membersCount > membersLength) {
            System.arraycopy(members, 0, members, 0, membersCount);
        }
        return members;
    }

    protected static boolean hasEmptyName(TypeReference reference, ASTNode assistNode) {
        block12: {
            TypeReference parameterizedReference;
            block11: {
                char[][] typeName;
                if (reference == null) {
                    return false;
                }
                if (reference.sourceStart <= assistNode.sourceStart && assistNode.sourceEnd <= reference.sourceEnd) {
                    return false;
                }
                if ((reference instanceof CompletionOnSingleTypeReference || reference instanceof CompletionOnQualifiedTypeReference || reference instanceof CompletionOnParameterizedQualifiedTypeReference) && (typeName = reference.getTypeName())[typeName.length - 1].length == 0) {
                    return true;
                }
                if (!(reference instanceof ParameterizedSingleTypeReference)) break block11;
                parameterizedReference = (ParameterizedSingleTypeReference)reference;
                TypeReference[] typeArguments = parameterizedReference.typeArguments;
                if (typeArguments == null) break block12;
                int i = 0;
                while (i < typeArguments.length) {
                    if (CompletionUnitStructureRequestor.hasEmptyName(typeArguments[i], assistNode)) {
                        return true;
                    }
                    ++i;
                }
                break block12;
            }
            if (reference instanceof ParameterizedQualifiedTypeReference) {
                parameterizedReference = (ParameterizedQualifiedTypeReference)reference;
                TypeReference[][] typeArguments = ((ParameterizedQualifiedTypeReference)parameterizedReference).typeArguments;
                if (typeArguments != null) {
                    int i = 0;
                    while (i < typeArguments.length) {
                        if (typeArguments[i] != null) {
                            int j = 0;
                            while (j < typeArguments[i].length) {
                                if (CompletionUnitStructureRequestor.hasEmptyName(typeArguments[i][j], assistNode)) {
                                    return true;
                                }
                                ++j;
                            }
                        }
                        ++i;
                    }
                }
            }
        }
        return false;
    }
}

