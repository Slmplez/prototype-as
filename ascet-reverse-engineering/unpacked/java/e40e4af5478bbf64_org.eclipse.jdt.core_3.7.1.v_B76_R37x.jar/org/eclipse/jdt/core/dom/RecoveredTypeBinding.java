/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.List;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.QualifiedType;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SimpleType;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeBinding;
import org.eclipse.jdt.core.dom.VariableDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.PackageFragment;

class RecoveredTypeBinding
implements ITypeBinding {
    private VariableDeclaration variableDeclaration;
    private Type currentType;
    private BindingResolver resolver;
    private int dimensions;
    private RecoveredTypeBinding innerTypeBinding;
    private ITypeBinding[] typeArguments;
    private org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding;

    RecoveredTypeBinding(BindingResolver resolver, VariableDeclaration variableDeclaration) {
        this.variableDeclaration = variableDeclaration;
        this.resolver = resolver;
        this.currentType = this.getType();
        this.dimensions = variableDeclaration.getExtraDimensions();
        if (this.currentType.isArrayType()) {
            this.dimensions += ((ArrayType)this.currentType).getDimensions();
        }
    }

    RecoveredTypeBinding(BindingResolver resolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        this.resolver = resolver;
        this.dimensions = typeBinding.dimensions();
        this.binding = typeBinding;
    }

    RecoveredTypeBinding(BindingResolver resolver, Type type) {
        this.currentType = type;
        this.resolver = resolver;
        this.dimensions = 0;
        if (type.isArrayType()) {
            this.dimensions += ((ArrayType)type).getDimensions();
        }
    }

    RecoveredTypeBinding(BindingResolver resolver, RecoveredTypeBinding typeBinding, int dimensions) {
        this.innerTypeBinding = typeBinding;
        this.dimensions = typeBinding.getDimensions() + dimensions;
        this.resolver = resolver;
    }

    public ITypeBinding createArrayType(int dims) {
        return this.resolver.getTypeBinding(this, dims);
    }

    public String getBinaryName() {
        return null;
    }

    public ITypeBinding getBound() {
        return null;
    }

    public ITypeBinding getGenericTypeOfWildcardType() {
        return null;
    }

    public int getRank() {
        return -1;
    }

    public ITypeBinding getComponentType() {
        if (this.dimensions == 0) {
            return null;
        }
        return this.resolver.getTypeBinding(this, -1);
    }

    public IVariableBinding[] getDeclaredFields() {
        return TypeBinding.NO_VARIABLE_BINDINGS;
    }

    public IMethodBinding[] getDeclaredMethods() {
        return TypeBinding.NO_METHOD_BINDINGS;
    }

    public int getDeclaredModifiers() {
        return 0;
    }

    public ITypeBinding[] getDeclaredTypes() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    public ITypeBinding getDeclaringClass() {
        return null;
    }

    public IMethodBinding getDeclaringMethod() {
        return null;
    }

    public int getDimensions() {
        return this.dimensions;
    }

    public ITypeBinding getElementType() {
        if (this.binding != null) {
            if (this.binding.isArrayType()) {
                ArrayBinding arrayBinding = (ArrayBinding)this.binding;
                return new RecoveredTypeBinding(this.resolver, arrayBinding.leafComponentType);
            }
            return new RecoveredTypeBinding(this.resolver, this.binding);
        }
        if (this.innerTypeBinding != null) {
            return this.innerTypeBinding.getElementType();
        }
        if (this.currentType != null && this.currentType.isArrayType()) {
            return this.resolver.getTypeBinding(((ArrayType)this.currentType).getElementType());
        }
        if (this.variableDeclaration != null && this.variableDeclaration.getExtraDimensions() != 0) {
            return this.resolver.getTypeBinding(this.getType());
        }
        return null;
    }

    public ITypeBinding getErasure() {
        return this;
    }

    public ITypeBinding[] getInterfaces() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    public int getModifiers() {
        return 0;
    }

    public String getName() {
        char[] brackets = new char[this.dimensions * 2];
        int i = this.dimensions * 2 - 1;
        while (i >= 0) {
            brackets[i] = 93;
            brackets[i - 1] = 91;
            i -= 2;
        }
        StringBuffer buffer = new StringBuffer(this.getInternalName());
        buffer.append(brackets);
        return String.valueOf(buffer);
    }

    private String getInternalName() {
        if (this.innerTypeBinding != null) {
            return this.innerTypeBinding.getInternalName();
        }
        ReferenceBinding referenceBinding = this.getReferenceBinding();
        if (referenceBinding != null) {
            return new String(referenceBinding.compoundName[referenceBinding.compoundName.length - 1]);
        }
        return this.getTypeNameFrom(this.getType());
    }

    public IPackageBinding getPackage() {
        if (this.binding != null) {
            switch (this.binding.kind()) {
                case 68: 
                case 132: 
                case 516: 
                case 4100: 
                case 8196: {
                    return null;
                }
            }
            IPackageBinding packageBinding = this.resolver.getPackageBinding(this.binding.getPackage());
            if (packageBinding != null) {
                return packageBinding;
            }
        }
        if (this.innerTypeBinding != null && this.dimensions > 0) {
            return null;
        }
        CompilationUnitScope scope = this.resolver.scope();
        if (scope != null) {
            return this.resolver.getPackageBinding(scope.getCurrentPackage());
        }
        return null;
    }

    public String getQualifiedName() {
        ReferenceBinding referenceBinding = this.getReferenceBinding();
        if (referenceBinding != null) {
            StringBuffer buffer = new StringBuffer();
            char[] brackets = new char[this.dimensions * 2];
            int i = this.dimensions * 2 - 1;
            while (i >= 0) {
                brackets[i] = 93;
                brackets[i - 1] = 91;
                i -= 2;
            }
            buffer.append(CharOperation.toString(referenceBinding.compoundName));
            buffer.append(brackets);
            return String.valueOf(buffer);
        }
        return this.getName();
    }

    private ReferenceBinding getReferenceBinding() {
        if (this.binding != null) {
            if (this.binding.isArrayType()) {
                ArrayBinding arrayBinding = (ArrayBinding)this.binding;
                if (arrayBinding.leafComponentType instanceof ReferenceBinding) {
                    return (ReferenceBinding)arrayBinding.leafComponentType;
                }
            } else if (this.binding instanceof ReferenceBinding) {
                return (ReferenceBinding)this.binding;
            }
        } else if (this.innerTypeBinding != null) {
            return this.innerTypeBinding.getReferenceBinding();
        }
        return null;
    }

    public ITypeBinding getSuperclass() {
        if (this.getQualifiedName().equals("java.lang.Object")) {
            return null;
        }
        return this.resolver.resolveWellKnownType("java.lang.Object");
    }

    public ITypeBinding[] getTypeArguments() {
        if (this.binding != null) {
            this.typeArguments = TypeBinding.NO_TYPE_BINDINGS;
            return TypeBinding.NO_TYPE_BINDINGS;
        }
        if (this.typeArguments != null) {
            return this.typeArguments;
        }
        if (this.innerTypeBinding != null) {
            return this.innerTypeBinding.getTypeArguments();
        }
        if (this.currentType.isParameterizedType()) {
            ParameterizedType parameterizedType = (ParameterizedType)this.currentType;
            List typeArgumentsList = parameterizedType.typeArguments();
            int size = typeArgumentsList.size();
            ITypeBinding[] temp = new ITypeBinding[size];
            int i = 0;
            while (i < size) {
                ITypeBinding currentTypeBinding = ((Type)typeArgumentsList.get(i)).resolveBinding();
                if (currentTypeBinding == null) {
                    this.typeArguments = TypeBinding.NO_TYPE_BINDINGS;
                    return TypeBinding.NO_TYPE_BINDINGS;
                }
                temp[i] = currentTypeBinding;
                ++i;
            }
            this.typeArguments = temp;
            return temp;
        }
        this.typeArguments = TypeBinding.NO_TYPE_BINDINGS;
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    public ITypeBinding[] getTypeBounds() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    public ITypeBinding getTypeDeclaration() {
        return this;
    }

    public ITypeBinding[] getTypeParameters() {
        return TypeBinding.NO_TYPE_BINDINGS;
    }

    public ITypeBinding getWildcard() {
        return null;
    }

    public boolean isAnnotation() {
        return false;
    }

    public boolean isAnonymous() {
        return false;
    }

    public boolean isArray() {
        return false;
    }

    public boolean isAssignmentCompatible(ITypeBinding typeBinding) {
        if ("java.lang.Object".equals(typeBinding.getQualifiedName())) {
            return true;
        }
        return this.isEqualTo(typeBinding);
    }

    public boolean isCapture() {
        return false;
    }

    public boolean isCastCompatible(ITypeBinding typeBinding) {
        if ("java.lang.Object".equals(typeBinding.getQualifiedName())) {
            return true;
        }
        return this.isEqualTo(typeBinding);
    }

    public boolean isClass() {
        return true;
    }

    public boolean isEnum() {
        return false;
    }

    public boolean isFromSource() {
        return false;
    }

    public boolean isGenericType() {
        return false;
    }

    public boolean isInterface() {
        return false;
    }

    public boolean isLocal() {
        return false;
    }

    public boolean isMember() {
        return false;
    }

    public boolean isNested() {
        return false;
    }

    public boolean isNullType() {
        return false;
    }

    public boolean isParameterizedType() {
        if (this.innerTypeBinding != null) {
            return this.innerTypeBinding.isParameterizedType();
        }
        if (this.currentType != null) {
            return this.currentType.isParameterizedType();
        }
        return false;
    }

    public boolean isPrimitive() {
        return false;
    }

    public boolean isRawType() {
        return false;
    }

    public boolean isSubTypeCompatible(ITypeBinding typeBinding) {
        if ("java.lang.Object".equals(typeBinding.getQualifiedName())) {
            return true;
        }
        return this.isEqualTo(typeBinding);
    }

    public boolean isTopLevel() {
        return true;
    }

    public boolean isTypeVariable() {
        return false;
    }

    public boolean isUpperbound() {
        return false;
    }

    public boolean isWildcardType() {
        return false;
    }

    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    public IJavaElement getJavaElement() {
        IJavaElement javaElement;
        IPackageBinding packageBinding = this.getPackage();
        if (packageBinding != null && (javaElement = packageBinding.getJavaElement()) != null && javaElement.getElementType() == 4) {
            return ((PackageFragment)javaElement).getCompilationUnit(String.valueOf(this.getInternalName()) + ".java").getType(this.getName());
        }
        return null;
    }

    public String getKey() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Recovered#");
        if (this.innerTypeBinding != null) {
            buffer.append("innerTypeBinding").append(this.innerTypeBinding.getKey());
        } else if (this.currentType != null) {
            buffer.append("currentType").append(this.currentType.toString());
        } else if (this.binding != null) {
            buffer.append("typeBinding").append(this.binding.computeUniqueKey());
        } else if (this.variableDeclaration != null) {
            buffer.append("variableDeclaration").append(this.variableDeclaration.getClass()).append(this.variableDeclaration.getName().getIdentifier()).append(this.variableDeclaration.getExtraDimensions());
        }
        buffer.append(this.getDimensions());
        if (this.typeArguments != null) {
            buffer.append('<');
            int i = 0;
            int max = this.typeArguments.length;
            while (i < max) {
                if (i != 0) {
                    buffer.append(',');
                }
                buffer.append(this.typeArguments[i].getKey());
                ++i;
            }
            buffer.append('>');
        }
        return String.valueOf(buffer);
    }

    public int getKind() {
        return 2;
    }

    public boolean isDeprecated() {
        return false;
    }

    public boolean isEqualTo(IBinding other) {
        if (!other.isRecovered() || other.getKind() != 2) {
            return false;
        }
        return this.getKey().equals(other.getKey());
    }

    public boolean isRecovered() {
        return true;
    }

    public boolean isSynthetic() {
        return false;
    }

    private String getTypeNameFrom(Type type) {
        if (type == null) {
            return Util.EMPTY_STRING;
        }
        switch (type.getNodeType0()) {
            case 5: {
                ArrayType arrayType = (ArrayType)type;
                type = arrayType.getElementType();
                return this.getTypeNameFrom(type);
            }
            case 74: {
                ParameterizedType parameterizedType = (ParameterizedType)type;
                StringBuffer buffer = new StringBuffer(this.getTypeNameFrom(parameterizedType.getType()));
                ITypeBinding[] tArguments = this.getTypeArguments();
                int typeArgumentsLength = tArguments.length;
                if (typeArgumentsLength != 0) {
                    buffer.append('<');
                    int i = 0;
                    while (i < typeArgumentsLength) {
                        if (i > 0) {
                            buffer.append(',');
                        }
                        buffer.append(tArguments[i].getName());
                        ++i;
                    }
                    buffer.append('>');
                }
                return String.valueOf(buffer);
            }
            case 39: {
                PrimitiveType primitiveType = (PrimitiveType)type;
                return primitiveType.getPrimitiveTypeCode().toString();
            }
            case 75: {
                QualifiedType qualifiedType = (QualifiedType)type;
                return qualifiedType.getName().getIdentifier();
            }
            case 43: {
                SimpleType simpleType = (SimpleType)type;
                Name name = simpleType.getName();
                if (name.isQualifiedName()) {
                    QualifiedName qualifiedName = (QualifiedName)name;
                    return qualifiedName.getName().getIdentifier();
                }
                return ((SimpleName)name).getIdentifier();
            }
        }
        return Util.EMPTY_STRING;
    }

    private Type getType() {
        if (this.currentType != null) {
            return this.currentType;
        }
        if (this.variableDeclaration == null) {
            return null;
        }
        switch (this.variableDeclaration.getNodeType()) {
            case 44: {
                SingleVariableDeclaration singleVariableDeclaration = (SingleVariableDeclaration)this.variableDeclaration;
                return singleVariableDeclaration.getType();
            }
        }
        ASTNode parent = this.variableDeclaration.getParent();
        switch (parent.getNodeType()) {
            case 58: {
                VariableDeclarationExpression variableDeclarationExpression = (VariableDeclarationExpression)parent;
                return variableDeclarationExpression.getType();
            }
            case 60: {
                VariableDeclarationStatement statement = (VariableDeclarationStatement)parent;
                return statement.getType();
            }
            case 23: {
                FieldDeclaration fieldDeclaration = (FieldDeclaration)parent;
                return fieldDeclaration.getType();
            }
        }
        return null;
    }
}

