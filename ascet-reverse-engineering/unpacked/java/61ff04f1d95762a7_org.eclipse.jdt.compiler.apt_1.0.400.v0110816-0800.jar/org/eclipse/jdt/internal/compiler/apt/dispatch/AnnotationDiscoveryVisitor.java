/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.ASTVisitor
 *  org.eclipse.jdt.internal.compiler.ast.ASTNode
 *  org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.Annotation
 *  org.eclipse.jdt.internal.compiler.ast.Argument
 *  org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.FieldDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.MethodDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.TypeDeclaration
 *  org.eclipse.jdt.internal.compiler.impl.ReferenceContext
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.BlockScope
 *  org.eclipse.jdt.internal.compiler.lookup.ClassScope
 *  org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope
 *  org.eclipse.jdt.internal.compiler.lookup.FieldBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodScope
 *  org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding
 */
package org.eclipse.jdt.internal.compiler.apt.dispatch;

import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.Factory;
import org.eclipse.jdt.internal.compiler.apt.util.ManyToMany;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.AptSourceLocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;

public class AnnotationDiscoveryVisitor
extends ASTVisitor {
    final BaseProcessingEnvImpl _env;
    final Factory _factory;
    final ManyToMany<TypeElement, Element> _annoToElement;

    public AnnotationDiscoveryVisitor(BaseProcessingEnvImpl env) {
        this._env = env;
        this._factory = env.getFactory();
        this._annoToElement = new ManyToMany();
    }

    public boolean visit(Argument argument, BlockScope scope) {
        Annotation[] annotations = argument.annotations;
        ReferenceContext referenceContext = scope.referenceContext();
        if (referenceContext instanceof AbstractMethodDeclaration) {
            MethodBinding binding = ((AbstractMethodDeclaration)referenceContext).binding;
            if (binding != null) {
                TypeDeclaration typeDeclaration = scope.referenceType();
                typeDeclaration.binding.resolveTypesFor(binding);
                if (argument.binding != null) {
                    argument.binding = new AptSourceLocalVariableBinding(argument.binding, binding);
                }
            }
            if (annotations != null) {
                this.resolveAnnotations(scope, annotations, (Binding)argument.binding);
            }
        }
        return false;
    }

    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope scope) {
        Argument[] arguments;
        Annotation[] annotations = constructorDeclaration.annotations;
        if (annotations != null) {
            MethodBinding constructorBinding = constructorDeclaration.binding;
            if (constructorBinding == null) {
                return false;
            }
            ((SourceTypeBinding)constructorBinding.declaringClass).resolveTypesFor(constructorBinding);
            this.resolveAnnotations((BlockScope)constructorDeclaration.scope, annotations, (Binding)constructorBinding);
        }
        if ((arguments = constructorDeclaration.arguments) != null) {
            int argumentLength = arguments.length;
            int i = 0;
            while (i < argumentLength) {
                arguments[i].traverse((ASTVisitor)this, (BlockScope)constructorDeclaration.scope);
                ++i;
            }
        }
        return false;
    }

    public boolean visit(FieldDeclaration fieldDeclaration, MethodScope scope) {
        Annotation[] annotations = fieldDeclaration.annotations;
        if (annotations != null) {
            FieldBinding fieldBinding = fieldDeclaration.binding;
            if (fieldBinding == null) {
                return false;
            }
            ((SourceTypeBinding)fieldBinding.declaringClass).resolveTypeFor(fieldBinding);
            this.resolveAnnotations((BlockScope)scope, annotations, (Binding)fieldBinding);
        }
        return false;
    }

    public boolean visit(MethodDeclaration methodDeclaration, ClassScope scope) {
        Argument[] arguments;
        Annotation[] annotations = methodDeclaration.annotations;
        if (annotations != null) {
            MethodBinding methodBinding = methodDeclaration.binding;
            if (methodBinding == null) {
                return false;
            }
            ((SourceTypeBinding)methodBinding.declaringClass).resolveTypesFor(methodBinding);
            this.resolveAnnotations((BlockScope)methodDeclaration.scope, annotations, (Binding)methodDeclaration.binding);
        }
        if ((arguments = methodDeclaration.arguments) != null) {
            int argumentLength = arguments.length;
            int i = 0;
            while (i < argumentLength) {
                arguments[i].traverse((ASTVisitor)this, (BlockScope)methodDeclaration.scope);
                ++i;
            }
        }
        return false;
    }

    public boolean visit(TypeDeclaration memberTypeDeclaration, ClassScope scope) {
        SourceTypeBinding binding = memberTypeDeclaration.binding;
        if (binding == null) {
            return false;
        }
        Annotation[] annotations = memberTypeDeclaration.annotations;
        if (annotations != null) {
            this.resolveAnnotations((BlockScope)memberTypeDeclaration.staticInitializerScope, annotations, (Binding)binding);
        }
        return true;
    }

    public boolean visit(TypeDeclaration typeDeclaration, CompilationUnitScope scope) {
        SourceTypeBinding binding = typeDeclaration.binding;
        if (binding == null) {
            return false;
        }
        Annotation[] annotations = typeDeclaration.annotations;
        if (annotations != null) {
            this.resolveAnnotations((BlockScope)typeDeclaration.staticInitializerScope, annotations, (Binding)binding);
        }
        return true;
    }

    private void resolveAnnotations(BlockScope scope, Annotation[] annotations, Binding currentBinding) {
        ASTNode.resolveAnnotations((BlockScope)scope, (Annotation[])annotations, (Binding)currentBinding);
        Annotation[] annotationArray = annotations;
        int n = annotations.length;
        int n2 = 0;
        while (n2 < n) {
            Annotation annotation = annotationArray[n2];
            AnnotationBinding binding = annotation.getCompilerAnnotation();
            if (binding != null) {
                TypeElement anno = (TypeElement)this._factory.newElement((Binding)binding.getAnnotationType());
                Element element = this._factory.newElement(currentBinding);
                this._annoToElement.put(anno, element);
            }
            ++n2;
        }
    }
}

