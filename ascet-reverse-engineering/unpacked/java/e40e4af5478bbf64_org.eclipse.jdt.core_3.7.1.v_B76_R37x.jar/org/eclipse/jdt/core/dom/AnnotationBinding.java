/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.DefaultValuePairBinding;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.MemberValuePairBinding;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;

class AnnotationBinding
implements IAnnotationBinding {
    static final AnnotationBinding[] NoAnnotations = new AnnotationBinding[0];
    private org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding binding;
    private BindingResolver bindingResolver;
    private String key;

    AnnotationBinding(org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding annotation, BindingResolver resolver) {
        if (annotation == null) {
            throw new IllegalStateException();
        }
        this.binding = annotation;
        this.bindingResolver = resolver;
    }

    public IAnnotationBinding[] getAnnotations() {
        return NoAnnotations;
    }

    public ITypeBinding getAnnotationType() {
        ITypeBinding typeBinding = this.bindingResolver.getTypeBinding(this.binding.getAnnotationType());
        if (typeBinding == null) {
            return null;
        }
        return typeBinding;
    }

    public IMemberValuePairBinding[] getDeclaredMemberValuePairs() {
        ReferenceBinding typeBinding = this.binding.getAnnotationType();
        if (typeBinding == null || (typeBinding.tagBits & 0x80L) != 0L) {
            return MemberValuePairBinding.NoPair;
        }
        ElementValuePair[] internalPairs = this.binding.getElementValuePairs();
        int length = internalPairs.length;
        IMemberValuePairBinding[] pairs = length == 0 ? MemberValuePairBinding.NoPair : new MemberValuePairBinding[length];
        int counter = 0;
        int i = 0;
        while (i < length) {
            ElementValuePair valuePair = internalPairs[i];
            if (valuePair.binding != null) {
                pairs[counter++] = this.bindingResolver.getMemberValuePairBinding(valuePair);
            }
            ++i;
        }
        if (counter == 0) {
            return MemberValuePairBinding.NoPair;
        }
        if (counter != length) {
            IMemberValuePairBinding[] iMemberValuePairBindingArray = pairs;
            pairs = new MemberValuePairBinding[counter];
            System.arraycopy(iMemberValuePairBindingArray, 0, pairs, 0, counter);
        }
        return pairs;
    }

    public IMemberValuePairBinding[] getAllMemberValuePairs() {
        int methodLength;
        IMemberValuePairBinding[] pairs = this.getDeclaredMemberValuePairs();
        ReferenceBinding typeBinding = this.binding.getAnnotationType();
        if (typeBinding == null || (typeBinding.tagBits & 0x80L) != 0L) {
            return pairs;
        }
        MethodBinding[] methods = typeBinding.availableMethods();
        int n = methodLength = methods == null ? 0 : methods.length;
        if (methodLength == 0) {
            return pairs;
        }
        int declaredLength = pairs.length;
        if (declaredLength == methodLength) {
            return pairs;
        }
        HashtableOfObject table = new HashtableOfObject(declaredLength);
        int i = 0;
        while (i < declaredLength) {
            char[] internalName = ((MemberValuePairBinding)pairs[i]).internalName();
            if (internalName != null) {
                table.put(internalName, pairs[i]);
            }
            ++i;
        }
        IMemberValuePairBinding[] allPairs = new IMemberValuePairBinding[methodLength];
        int i2 = 0;
        while (i2 < methodLength) {
            Object pair = table.get(methods[i2].selector);
            allPairs[i2] = pair == null ? new DefaultValuePairBinding(methods[i2], this.bindingResolver) : (IMemberValuePairBinding)pair;
            ++i2;
        }
        return allPairs;
    }

    public IJavaElement getJavaElement() {
        if (!(this.bindingResolver instanceof DefaultBindingResolver)) {
            return null;
        }
        ASTNode node = (ASTNode)((DefaultBindingResolver)this.bindingResolver).bindingsToAstNodes.get(this);
        if (!(node instanceof Annotation)) {
            return null;
        }
        ASTNode parent = node.getParent();
        IJavaElement parentElement = null;
        switch (parent.getNodeType()) {
            case 35: {
                IJavaElement cu = ((CompilationUnit)parent.getParent()).getJavaElement();
                if (!(cu instanceof ICompilationUnit)) break;
                String pkgName = ((PackageDeclaration)parent).getName().getFullyQualifiedName();
                parentElement = ((ICompilationUnit)cu).getPackageDeclaration(pkgName);
                break;
            }
            case 55: 
            case 71: 
            case 81: {
                parentElement = ((AbstractTypeDeclaration)parent).resolveBinding().getJavaElement();
                break;
            }
            case 23: {
                VariableDeclarationFragment fragment = (VariableDeclarationFragment)((FieldDeclaration)parent).fragments().get(0);
                IVariableBinding variableBinding = fragment.resolveBinding();
                if (variableBinding == null) {
                    return null;
                }
                parentElement = variableBinding.getJavaElement();
                break;
            }
            case 31: {
                IMethodBinding methodBinding = ((MethodDeclaration)parent).resolveBinding();
                if (methodBinding == null) {
                    return null;
                }
                parentElement = methodBinding.getJavaElement();
                break;
            }
            case 60: {
                VariableDeclarationFragment fragment = (VariableDeclarationFragment)((VariableDeclarationStatement)parent).fragments().get(0);
                IVariableBinding variableBinding = fragment.resolveBinding();
                if (variableBinding == null) {
                    return null;
                }
                parentElement = variableBinding.getJavaElement();
                break;
            }
            default: {
                return null;
            }
        }
        if (!(parentElement instanceof IAnnotatable)) {
            return null;
        }
        if (parentElement instanceof IMember && ((IMember)parentElement).isBinary()) {
            return ((IAnnotatable)((Object)parentElement)).getAnnotation(this.getAnnotationType().getQualifiedName());
        }
        return ((IAnnotatable)((Object)parentElement)).getAnnotation(this.getName());
    }

    public String getKey() {
        if (this.key == null) {
            String recipientKey = this.getRecipientKey();
            this.key = new String(this.binding.computeUniqueKey(recipientKey.toCharArray()));
        }
        return this.key;
    }

    private String getRecipientKey() {
        if (!(this.bindingResolver instanceof DefaultBindingResolver)) {
            return "";
        }
        DefaultBindingResolver resolver = (DefaultBindingResolver)this.bindingResolver;
        ASTNode node = (ASTNode)resolver.bindingsToAstNodes.get(this);
        if (node == null) {
            return "";
        }
        ASTNode recipient = node.getParent();
        switch (recipient.getNodeType()) {
            case 35: {
                String pkgName = ((PackageDeclaration)recipient).getName().getFullyQualifiedName();
                return pkgName.replace('.', '/');
            }
            case 55: {
                return ((TypeDeclaration)recipient).resolveBinding().getKey();
            }
            case 23: {
                VariableDeclarationFragment fragment = (VariableDeclarationFragment)((FieldDeclaration)recipient).fragments().get(0);
                return fragment.resolveBinding().getKey();
            }
            case 31: {
                return ((MethodDeclaration)recipient).resolveBinding().getKey();
            }
            case 60: {
                VariableDeclarationFragment fragment = (VariableDeclarationFragment)((VariableDeclarationStatement)recipient).fragments().get(0);
                return fragment.resolveBinding().getKey();
            }
        }
        return "";
    }

    public int getKind() {
        return 5;
    }

    public int getModifiers() {
        return 0;
    }

    public String getName() {
        ITypeBinding annotationType = this.getAnnotationType();
        if (annotationType == null) {
            return new String(this.binding.getAnnotationType().sourceName());
        }
        return annotationType.getName();
    }

    public boolean isDeprecated() {
        ReferenceBinding typeBinding = this.binding.getAnnotationType();
        if (typeBinding == null) {
            return false;
        }
        return typeBinding.isDeprecated();
    }

    public boolean isEqualTo(IBinding otherBinding) {
        IMemberValuePairBinding[] otherMemberValuePairs;
        if (this == otherBinding) {
            return true;
        }
        if (otherBinding.getKind() != 5) {
            return false;
        }
        IAnnotationBinding other = (IAnnotationBinding)otherBinding;
        if (!this.getAnnotationType().isEqualTo(other.getAnnotationType())) {
            return false;
        }
        IMemberValuePairBinding[] memberValuePairs = this.getDeclaredMemberValuePairs();
        if (memberValuePairs.length != (otherMemberValuePairs = other.getDeclaredMemberValuePairs()).length) {
            return false;
        }
        int i = 0;
        int length = memberValuePairs.length;
        while (i < length) {
            if (!memberValuePairs[i].isEqualTo(otherMemberValuePairs[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isRecovered() {
        ReferenceBinding annotationType = this.binding.getAnnotationType();
        return annotationType == null || (annotationType.tagBits & 0x80L) != 0L;
    }

    public boolean isSynthetic() {
        return false;
    }

    public String toString() {
        ITypeBinding type = this.getAnnotationType();
        StringBuffer buffer = new StringBuffer();
        buffer.append('@');
        if (type != null) {
            buffer.append(type.getName());
        }
        buffer.append('(');
        IMemberValuePairBinding[] pairs = this.getDeclaredMemberValuePairs();
        int i = 0;
        int len = pairs.length;
        while (i < len) {
            if (i != 0) {
                buffer.append(", ");
            }
            buffer.append(pairs[i].toString());
            ++i;
        }
        buffer.append(')');
        return buffer.toString();
    }
}

