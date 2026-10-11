/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingComparator;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.util.Util;

class VariableBinding
implements IVariableBinding {
    private static final int VALID_MODIFIERS = 223;
    private org.eclipse.jdt.internal.compiler.lookup.VariableBinding binding;
    private ITypeBinding declaringClass;
    private String key;
    private String name;
    private BindingResolver resolver;
    private ITypeBinding type;
    private IAnnotationBinding[] annotations;

    VariableBinding(BindingResolver resolver, org.eclipse.jdt.internal.compiler.lookup.VariableBinding binding) {
        this.resolver = resolver;
        this.binding = binding;
    }

    public IAnnotationBinding[] getAnnotations() {
        int length;
        if (this.annotations != null) {
            return this.annotations;
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] internalAnnotations = this.binding.getAnnotations();
        int n = length = internalAnnotations == null ? 0 : internalAnnotations.length;
        if (length != 0) {
            IAnnotationBinding[] tempAnnotations = new IAnnotationBinding[length];
            int convertedAnnotationCount = 0;
            int i = 0;
            while (i < length) {
                org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding internalAnnotation = internalAnnotations[i];
                IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(internalAnnotation);
                if (annotationInstance != null) {
                    tempAnnotations[convertedAnnotationCount++] = annotationInstance;
                }
                ++i;
            }
            if (convertedAnnotationCount != length) {
                if (convertedAnnotationCount == 0) {
                    this.annotations = AnnotationBinding.NoAnnotations;
                    return AnnotationBinding.NoAnnotations;
                }
                IAnnotationBinding[] iAnnotationBindingArray = tempAnnotations;
                tempAnnotations = new IAnnotationBinding[convertedAnnotationCount];
                System.arraycopy(iAnnotationBindingArray, 0, tempAnnotations, 0, convertedAnnotationCount);
            }
            this.annotations = tempAnnotations;
            return tempAnnotations;
        }
        this.annotations = AnnotationBinding.NoAnnotations;
        return AnnotationBinding.NoAnnotations;
    }

    public Object getConstantValue() {
        Constant c = this.binding.constant();
        if (c == null || c == Constant.NotAConstant) {
            return null;
        }
        switch (c.typeID()) {
            case 5: {
                return c.booleanValue();
            }
            case 3: {
                return new Byte(c.byteValue());
            }
            case 2: {
                return new Character(c.charValue());
            }
            case 8: {
                return new Double(c.doubleValue());
            }
            case 9: {
                return new Float(c.floatValue());
            }
            case 10: {
                return new Integer(c.intValue());
            }
            case 7: {
                return new Long(c.longValue());
            }
            case 4: {
                return new Short(c.shortValue());
            }
            case 11: {
                return c.stringValue();
            }
        }
        return null;
    }

    public ITypeBinding getDeclaringClass() {
        if (this.isField()) {
            if (this.declaringClass == null) {
                FieldBinding fieldBinding = (FieldBinding)this.binding;
                this.declaringClass = this.resolver.getTypeBinding(fieldBinding.declaringClass);
            }
            return this.declaringClass;
        }
        return null;
    }

    public IMethodBinding getDeclaringMethod() {
        if (!this.isField()) {
            ASTNode node = this.resolver.findDeclaringNode(this);
            while (true) {
                if (node == null) {
                    if (this.binding instanceof LocalVariableBinding) {
                        LocalVariableBinding localVariableBinding = (LocalVariableBinding)this.binding;
                        BlockScope blockScope = localVariableBinding.declaringScope;
                        if (blockScope != null) {
                            ReferenceContext referenceContext = blockScope.referenceContext();
                            if (referenceContext instanceof Initializer) {
                                return null;
                            }
                            if (referenceContext instanceof AbstractMethodDeclaration) {
                                return this.resolver.getMethodBinding(((AbstractMethodDeclaration)referenceContext).binding);
                            }
                        }
                    }
                    return null;
                }
                switch (node.getNodeType()) {
                    case 28: {
                        return null;
                    }
                    case 31: {
                        MethodDeclaration methodDeclaration = (MethodDeclaration)node;
                        return methodDeclaration.resolveBinding();
                    }
                }
                node = node.getParent();
            }
        }
        return null;
    }

    public IJavaElement getJavaElement() {
        JavaElement element = this.getUnresolvedJavaElement();
        if (element == null) {
            return null;
        }
        return element.resolved(this.binding);
    }

    public String getKey() {
        if (this.key == null) {
            this.key = new String(this.binding.computeUniqueKey());
        }
        return this.key;
    }

    public int getKind() {
        return 3;
    }

    public int getModifiers() {
        if (this.isField()) {
            return ((FieldBinding)this.binding).getAccessFlags() & 0xDF;
        }
        if (this.binding.isFinal()) {
            return 16;
        }
        return 0;
    }

    public String getName() {
        if (this.name == null) {
            this.name = new String(this.binding.name);
        }
        return this.name;
    }

    public ITypeBinding getType() {
        if (this.type == null) {
            this.type = this.resolver.getTypeBinding(this.binding.type);
        }
        return this.type;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private JavaElement getUnresolvedJavaElement() {
        Object parent;
        int nameLength;
        int nameStart;
        int sourceLength;
        int sourceStart;
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        if (this.isField()) {
            if (!(this.resolver instanceof DefaultBindingResolver)) return null;
            DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver)this.resolver;
            if (defaultBindingResolver.fromJavaProject) return Util.getUnresolvedJavaElement((FieldBinding)this.binding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
            return null;
        }
        if (!(this.resolver instanceof DefaultBindingResolver)) {
            return null;
        }
        DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver)this.resolver;
        if (!defaultBindingResolver.fromJavaProject) {
            return null;
        }
        VariableDeclaration localVar = (VariableDeclaration)defaultBindingResolver.bindingsToAstNodes.get(this);
        if (localVar == null) {
            return null;
        }
        int modifiers = 0;
        if (localVar instanceof SingleVariableDeclaration) {
            sourceStart = localVar.getStartPosition();
            sourceLength = localVar.getLength();
            SingleVariableDeclaration singleVariableDeclaration = (SingleVariableDeclaration)localVar;
            SimpleName simpleName = singleVariableDeclaration.getName();
            nameStart = simpleName.getStartPosition();
            nameLength = simpleName.getLength();
            modifiers = singleVariableDeclaration.getModifiers();
        } else {
            nameStart = localVar.getStartPosition();
            nameLength = localVar.getLength();
            ASTNode node = localVar.getParent();
            sourceStart = node.getStartPosition();
            sourceLength = node.getLength();
            VariableDeclarationFragment fragment = (VariableDeclarationFragment)localVar;
            parent = fragment.getParent();
            switch (((ASTNode)parent).getNodeType()) {
                case 58: {
                    VariableDeclarationExpression expression = (VariableDeclarationExpression)parent;
                    modifiers = expression.getModifiers();
                    break;
                }
                case 60: {
                    VariableDeclarationStatement statement = (VariableDeclarationStatement)parent;
                    modifiers = statement.getModifiers();
                    break;
                }
                case 23: {
                    FieldDeclaration fieldDeclaration = (FieldDeclaration)parent;
                    modifiers = fieldDeclaration.getModifiers();
                }
            }
        }
        int sourceEnd = sourceStart + sourceLength - 1;
        char[] typeSig = this.binding.type.genericTypeSignature();
        parent = null;
        IMethodBinding declaringMethod = this.getDeclaringMethod();
        LocalVariableBinding localVariableBinding = (LocalVariableBinding)this.binding;
        if (declaringMethod == null) {
            ReferenceContext referenceContext = localVariableBinding.declaringScope.referenceContext();
            if (!(referenceContext instanceof TypeDeclaration)) return null;
            TypeDeclaration typeDeclaration = (TypeDeclaration)referenceContext;
            JavaElement typeHandle = null;
            typeHandle = Util.getUnresolvedJavaElement(typeDeclaration.binding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
            parent = Util.getUnresolvedJavaElement(sourceStart, sourceEnd, typeHandle);
        } else {
            parent = (JavaElement)declaringMethod.getJavaElement();
        }
        if (parent != null) return new LocalVariable((JavaElement)parent, localVar.getName().getIdentifier(), sourceStart, sourceEnd, nameStart, nameStart + nameLength - 1, new String(typeSig), localVariableBinding.declaration.annotations, modifiers, (localVariableBinding.tagBits & 0x400L) != 0L);
        return null;
    }

    public IVariableBinding getVariableDeclaration() {
        if (this.isField()) {
            FieldBinding fieldBinding = (FieldBinding)this.binding;
            return this.resolver.getVariableBinding(fieldBinding.original());
        }
        return this;
    }

    public int getVariableId() {
        return this.binding.id;
    }

    public boolean isParameter() {
        return (this.binding.tagBits & 0x400L) != 0L;
    }

    public boolean isDeprecated() {
        if (this.isField()) {
            return ((FieldBinding)this.binding).isDeprecated();
        }
        return false;
    }

    public boolean isEnumConstant() {
        return (this.binding.modifiers & 0x4000) != 0;
    }

    public boolean isEqualTo(IBinding other) {
        if (other == this) {
            return true;
        }
        if (other == null) {
            return false;
        }
        if (!(other instanceof VariableBinding)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.VariableBinding otherBinding = ((VariableBinding)other).binding;
        if (this.binding instanceof FieldBinding) {
            if (otherBinding instanceof FieldBinding) {
                return BindingComparator.isEqual((FieldBinding)this.binding, (FieldBinding)otherBinding);
            }
            return false;
        }
        if (BindingComparator.isEqual(this.binding, otherBinding)) {
            IMethodBinding declaringMethod = this.getDeclaringMethod();
            IMethodBinding otherDeclaringMethod = ((VariableBinding)other).getDeclaringMethod();
            if (declaringMethod == null) {
                return otherDeclaringMethod == null;
            }
            return declaringMethod.isEqualTo(otherDeclaringMethod);
        }
        return false;
    }

    public boolean isField() {
        return this.binding instanceof FieldBinding;
    }

    public boolean isSynthetic() {
        if (this.isField()) {
            return ((FieldBinding)this.binding).isSynthetic();
        }
        return false;
    }

    public boolean isRecovered() {
        return false;
    }

    public String toString() {
        return this.binding.toString();
    }
}

