/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclaration;

class RecoveredVariableBinding
implements IVariableBinding {
    private VariableDeclaration variableDeclaration;
    private BindingResolver resolver;

    RecoveredVariableBinding(BindingResolver resolver, VariableDeclaration variableDeclaration) {
        this.resolver = resolver;
        this.variableDeclaration = variableDeclaration;
    }

    public Object getConstantValue() {
        return null;
    }

    public ITypeBinding getDeclaringClass() {
        ASTNode parent = this.variableDeclaration.getParent();
        while (parent != null && parent.getNodeType() != 55) {
            parent = parent.getParent();
        }
        if (parent != null) {
            return ((TypeDeclaration)parent).resolveBinding();
        }
        return null;
    }

    public IMethodBinding getDeclaringMethod() {
        ASTNode parent = this.variableDeclaration.getParent();
        while (parent != null && parent.getNodeType() != 31) {
            parent = parent.getParent();
        }
        if (parent != null) {
            return ((MethodDeclaration)parent).resolveBinding();
        }
        return null;
    }

    public String getName() {
        return this.variableDeclaration.getName().getIdentifier();
    }

    public ITypeBinding getType() {
        return this.resolver.getTypeBinding(this.variableDeclaration);
    }

    public IVariableBinding getVariableDeclaration() {
        return this;
    }

    public int getVariableId() {
        return 0;
    }

    public boolean isEnumConstant() {
        return false;
    }

    public boolean isField() {
        return this.variableDeclaration.getParent() instanceof FieldDeclaration;
    }

    public boolean isParameter() {
        return this.variableDeclaration instanceof SingleVariableDeclaration;
    }

    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    public IJavaElement getJavaElement() {
        return null;
    }

    public String getKey() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Recovered#");
        if (this.variableDeclaration != null) {
            buffer.append("variableDeclaration").append(this.variableDeclaration.getClass()).append(this.variableDeclaration.getName().getIdentifier()).append(this.variableDeclaration.getExtraDimensions());
        }
        return String.valueOf(buffer);
    }

    public int getKind() {
        return 3;
    }

    public int getModifiers() {
        return 0;
    }

    public boolean isDeprecated() {
        return false;
    }

    public boolean isEqualTo(IBinding binding) {
        if (binding.isRecovered() && binding.getKind() == 3) {
            return this.getKey().equals(binding.getKey());
        }
        return false;
    }

    public boolean isRecovered() {
        return true;
    }

    public boolean isSynthetic() {
        return false;
    }
}

