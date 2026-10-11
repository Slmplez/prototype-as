/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.compiler.lookup.ArrayBinding
 *  org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.FieldBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
import javax.lang.model.type.ArrayType;
import javax.lang.model.type.DeclaredType;
import javax.lang.model.type.ExecutableType;
import javax.lang.model.type.NoType;
import javax.lang.model.type.NullType;
import javax.lang.model.type.PrimitiveType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import javax.lang.model.type.WildcardType;
import javax.lang.model.util.Types;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.DeclaredTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ExecutableTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.NoTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.PrimitiveTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeMirrorImpl;
import org.eclipse.jdt.internal.compiler.apt.model.WildcardTypeImpl;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class TypesImpl
implements Types {
    private final BaseProcessingEnvImpl _env;

    public TypesImpl(BaseProcessingEnvImpl env) {
        this._env = env;
    }

    @Override
    public Element asElement(TypeMirror t) {
        switch (t.getKind()) {
            case DECLARED: 
            case TYPEVAR: {
                return this._env.getFactory().newElement(((TypeMirrorImpl)t).binding());
            }
        }
        return null;
    }

    @Override
    public TypeMirror asMemberOf(DeclaredType containing, Element element) {
        ElementImpl elementImpl = (ElementImpl)element;
        DeclaredTypeImpl declaredTypeImpl = (DeclaredTypeImpl)containing;
        ReferenceBinding referenceBinding = (ReferenceBinding)declaredTypeImpl._binding;
        switch (element.getKind()) {
            case METHOD: 
            case CONSTRUCTOR: {
                MethodBinding methodBinding = (MethodBinding)elementImpl._binding;
                if (methodBinding.declaringClass != referenceBinding) {
                    throw new IllegalArgumentException("element is not valid for the containing declared type");
                }
                MethodBinding[] methodBindingArray = referenceBinding.methods();
                int n = methodBindingArray.length;
                int n2 = 0;
                while (n2 < n) {
                    MethodBinding method = methodBindingArray[n2];
                    if (CharOperation.equals((char[])method.selector, (char[])methodBinding.selector) && method.areParameterErasuresEqual(methodBinding)) {
                        return this._env.getFactory().newTypeMirror((Binding)method);
                    }
                    ++n2;
                }
                break;
            }
            case ENUM_CONSTANT: 
            case FIELD: {
                FieldBinding fieldBinding = (FieldBinding)elementImpl._binding;
                if (fieldBinding.declaringClass != referenceBinding) {
                    throw new IllegalArgumentException("element is not valid for the containing declared type");
                }
                FieldBinding[] fieldBindingArray = referenceBinding.fields();
                int n = fieldBindingArray.length;
                int n3 = 0;
                while (n3 < n) {
                    FieldBinding field = fieldBindingArray[n3];
                    if (CharOperation.equals((char[])field.name, (char[])fieldBinding.name)) {
                        return this._env.getFactory().newTypeMirror((Binding)field);
                    }
                    ++n3;
                }
                break;
            }
            case ENUM: 
            case CLASS: 
            case ANNOTATION_TYPE: 
            case INTERFACE: {
                ReferenceBinding referenceBinding2 = (ReferenceBinding)elementImpl._binding;
                if (referenceBinding2.enclosingType() != referenceBinding) {
                    throw new IllegalArgumentException("element is not valid for the containing declared type");
                }
                ReferenceBinding[] referenceBindingArray = referenceBinding.memberTypes();
                int n = referenceBindingArray.length;
                int n4 = 0;
                while (n4 < n) {
                    ReferenceBinding referenceBinding3 = referenceBindingArray[n4];
                    if (CharOperation.equals((char[][])referenceBinding3.compoundName, (char[][])referenceBinding3.compoundName)) {
                        return this._env.getFactory().newTypeMirror((Binding)referenceBinding3);
                    }
                    ++n4;
                }
                break;
            }
        }
        throw new IllegalArgumentException("element is not valid for the containing declared type: element kind " + (Object)((Object)element.getKind()));
    }

    @Override
    public TypeElement boxedClass(PrimitiveType p) {
        PrimitiveTypeImpl primitiveTypeImpl = (PrimitiveTypeImpl)p;
        BaseTypeBinding baseTypeBinding = (BaseTypeBinding)primitiveTypeImpl._binding;
        TypeBinding boxed = this._env.getLookupEnvironment().computeBoxingType((TypeBinding)baseTypeBinding);
        return (TypeElement)this._env.getFactory().newElement((Binding)boxed);
    }

    @Override
    public TypeMirror capture(TypeMirror t) {
        throw new UnsupportedOperationException("NYI: TypesImpl.capture(...)");
    }

    @Override
    public boolean contains(TypeMirror t1, TypeMirror t2) {
        switch (t1.getKind()) {
            case PACKAGE: 
            case EXECUTABLE: {
                throw new IllegalArgumentException("Executable and package are illegal argument for Types.contains(..)");
            }
        }
        switch (t2.getKind()) {
            case PACKAGE: 
            case EXECUTABLE: {
                throw new IllegalArgumentException("Executable and package are illegal argument for Types.contains(..)");
            }
        }
        throw new UnsupportedOperationException("NYI: TypesImpl.contains(" + t1 + ", " + t2 + ")");
    }

    @Override
    public List<? extends TypeMirror> directSupertypes(TypeMirror t) {
        switch (t.getKind()) {
            case PACKAGE: 
            case EXECUTABLE: {
                throw new IllegalArgumentException("Invalid type mirror for directSypertypes");
            }
        }
        TypeMirrorImpl typeMirrorImpl = (TypeMirrorImpl)t;
        Binding binding = typeMirrorImpl._binding;
        if (binding instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding)binding;
            ArrayList<TypeMirror> list = new ArrayList<TypeMirror>();
            ReferenceBinding superclass = referenceBinding.superclass();
            if (superclass != null) {
                list.add(this._env.getFactory().newTypeMirror((Binding)superclass));
            }
            ReferenceBinding[] referenceBindingArray = referenceBinding.superInterfaces();
            int n = referenceBindingArray.length;
            int n2 = 0;
            while (n2 < n) {
                ReferenceBinding interfaceBinding = referenceBindingArray[n2];
                list.add(this._env.getFactory().newTypeMirror((Binding)interfaceBinding));
                ++n2;
            }
            return Collections.unmodifiableList(list);
        }
        return Collections.emptyList();
    }

    @Override
    public TypeMirror erasure(TypeMirror t) {
        TypeMirrorImpl typeMirrorImpl = (TypeMirrorImpl)t;
        Binding binding = typeMirrorImpl._binding;
        if (binding instanceof ReferenceBinding) {
            return this._env.getFactory().newTypeMirror((Binding)((ReferenceBinding)binding).erasure());
        }
        if (binding instanceof ArrayBinding) {
            TypeBinding typeBinding = (TypeBinding)binding;
            return this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createArrayType(typeBinding.leafComponentType().erasure(), typeBinding.dimensions()));
        }
        return t;
    }

    @Override
    public ArrayType getArrayType(TypeMirror componentType) {
        TypeMirrorImpl typeMirrorImpl = (TypeMirrorImpl)componentType;
        TypeBinding typeBinding = (TypeBinding)typeMirrorImpl._binding;
        return (ArrayType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createArrayType(typeBinding.leafComponentType(), typeBinding.dimensions() + 1));
    }

    @Override
    public DeclaredType getDeclaredType(TypeElement typeElem, TypeMirror ... typeArgs) {
        int typeArgsLength = typeArgs.length;
        TypeElementImpl typeElementImpl = (TypeElementImpl)typeElem;
        ReferenceBinding referenceBinding = (ReferenceBinding)typeElementImpl._binding;
        TypeVariableBinding[] typeVariables = referenceBinding.typeVariables();
        int typeVariablesLength = typeVariables.length;
        if (typeArgsLength == 0) {
            if (referenceBinding.isGenericType()) {
                return (DeclaredType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createRawType(referenceBinding, null));
            }
            return (DeclaredType)typeElem.asType();
        }
        if (typeArgsLength != typeVariablesLength) {
            throw new IllegalArgumentException("Number of typeArguments doesn't match the number of formal parameters of typeElem");
        }
        TypeBinding[] typeArguments = new TypeBinding[typeArgsLength];
        int i = 0;
        while (i < typeArgsLength) {
            TypeMirrorImpl typeMirrorImpl = (TypeMirrorImpl)typeArgs[i];
            Binding binding = typeMirrorImpl._binding;
            if (!(binding instanceof TypeBinding)) {
                throw new IllegalArgumentException("Invalid type argument: " + typeMirrorImpl);
            }
            typeArguments[i] = (TypeBinding)binding;
            ++i;
        }
        return (DeclaredType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createParameterizedType(referenceBinding, typeArguments, null));
    }

    @Override
    public DeclaredType getDeclaredType(DeclaredType containing, TypeElement typeElem, TypeMirror ... typeArgs) {
        int typeArgsLength = typeArgs.length;
        TypeElementImpl typeElementImpl = (TypeElementImpl)typeElem;
        ReferenceBinding referenceBinding = (ReferenceBinding)typeElementImpl._binding;
        TypeVariableBinding[] typeVariables = referenceBinding.typeVariables();
        int typeVariablesLength = typeVariables.length;
        DeclaredTypeImpl declaredTypeImpl = (DeclaredTypeImpl)containing;
        ReferenceBinding enclosingType = (ReferenceBinding)declaredTypeImpl._binding;
        if (typeArgsLength == 0) {
            if (referenceBinding.isGenericType()) {
                return (DeclaredType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createRawType(referenceBinding, enclosingType));
            }
            throw new UnsupportedOperationException("NYI: TypesImpl.getDeclaredType(...) for member types");
        }
        if (typeArgsLength != typeVariablesLength) {
            throw new IllegalArgumentException("Number of typeArguments doesn't match the number of formal parameters of typeElem");
        }
        TypeBinding[] typeArguments = new TypeBinding[typeArgsLength];
        int i = 0;
        while (i < typeArgsLength) {
            TypeMirrorImpl typeMirrorImpl = (TypeMirrorImpl)typeArgs[i];
            Binding binding = typeMirrorImpl._binding;
            if (!(binding instanceof TypeBinding)) {
                throw new IllegalArgumentException("Invalid type for a type arguments : " + typeMirrorImpl);
            }
            typeArguments[i] = (TypeBinding)binding;
            ++i;
        }
        return (DeclaredType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createParameterizedType(referenceBinding, typeArguments, enclosingType));
    }

    @Override
    public NoType getNoType(TypeKind kind) {
        return this._env.getFactory().getNoType(kind);
    }

    @Override
    public NullType getNullType() {
        return this._env.getFactory().getNullType();
    }

    @Override
    public PrimitiveType getPrimitiveType(TypeKind kind) {
        return this._env.getFactory().getPrimitiveType(kind);
    }

    @Override
    public WildcardType getWildcardType(TypeMirror extendsBound, TypeMirror superBound) {
        if (extendsBound != null && superBound != null) {
            throw new IllegalArgumentException("Extends and super bounds cannot be set at the same time");
        }
        if (extendsBound != null) {
            TypeMirrorImpl extendsBoundMirrorType = (TypeMirrorImpl)extendsBound;
            TypeBinding typeBinding = (TypeBinding)extendsBoundMirrorType._binding;
            return (WildcardType)this._env.getFactory().newTypeMirror((Binding)this._env.getLookupEnvironment().createWildcard(null, 0, typeBinding, null, 1));
        }
        if (superBound != null) {
            TypeMirrorImpl superBoundMirrorType = (TypeMirrorImpl)superBound;
            TypeBinding typeBinding = (TypeBinding)superBoundMirrorType._binding;
            return new WildcardTypeImpl(this._env, this._env.getLookupEnvironment().createWildcard(null, 0, typeBinding, null, 2));
        }
        return new WildcardTypeImpl(this._env, this._env.getLookupEnvironment().createWildcard(null, 0, null, null, 0));
    }

    @Override
    public boolean isAssignable(TypeMirror t1, TypeMirror t2) {
        if (!(t1 instanceof TypeMirrorImpl) || !(t2 instanceof TypeMirrorImpl)) {
            return false;
        }
        Binding b1 = ((TypeMirrorImpl)t1).binding();
        Binding b2 = ((TypeMirrorImpl)t2).binding();
        if (!(b1 instanceof TypeBinding) || !(b2 instanceof TypeBinding)) {
            throw new IllegalArgumentException();
        }
        if (((TypeBinding)b1).isCompatibleWith((TypeBinding)b2)) {
            return true;
        }
        TypeBinding convertedType = this._env.getLookupEnvironment().computeBoxingType((TypeBinding)b1);
        return convertedType != null && convertedType.isCompatibleWith((TypeBinding)b2);
    }

    @Override
    public boolean isSameType(TypeMirror t1, TypeMirror t2) {
        Binding b2;
        if (t1.getKind() == TypeKind.WILDCARD || t2.getKind() == TypeKind.WILDCARD) {
            return false;
        }
        if (t1 == t2) {
            return true;
        }
        if (!(t1 instanceof TypeMirrorImpl) || !(t2 instanceof TypeMirrorImpl)) {
            return false;
        }
        Binding b1 = ((TypeMirrorImpl)t1).binding();
        return b1 == (b2 = ((TypeMirrorImpl)t2).binding());
    }

    @Override
    public boolean isSubsignature(ExecutableType m1, ExecutableType m2) {
        MethodBinding methodBinding1 = (MethodBinding)((ExecutableTypeImpl)m1)._binding;
        MethodBinding methodBinding2 = (MethodBinding)((ExecutableTypeImpl)m2)._binding;
        if (!CharOperation.equals((char[])methodBinding1.selector, (char[])methodBinding2.selector)) {
            return false;
        }
        return methodBinding1.areParameterErasuresEqual(methodBinding2) && methodBinding1.areTypeVariableErasuresEqual(methodBinding2);
    }

    @Override
    public boolean isSubtype(TypeMirror t1, TypeMirror t2) {
        Binding b2;
        if (t1 instanceof NoTypeImpl) {
            if (t2 instanceof NoTypeImpl) {
                return ((NoTypeImpl)t1).getKind() == ((NoTypeImpl)t2).getKind();
            }
            return false;
        }
        if (t2 instanceof NoTypeImpl) {
            return false;
        }
        if (!(t1 instanceof TypeMirrorImpl) || !(t2 instanceof TypeMirrorImpl)) {
            return false;
        }
        if (t1 == t2) {
            return true;
        }
        Binding b1 = ((TypeMirrorImpl)t1).binding();
        if (b1 == (b2 = ((TypeMirrorImpl)t2).binding())) {
            return true;
        }
        if (!(b1 instanceof TypeBinding) || !(b2 instanceof TypeBinding)) {
            return false;
        }
        if (b1.kind() == 132 || b2.kind() == 132) {
            if (b1.kind() != b2.kind()) {
                return false;
            }
            return ((TypeBinding)b1).isCompatibleWith((TypeBinding)b2);
        }
        return ((TypeBinding)b1).isCompatibleWith((TypeBinding)b2);
    }

    @Override
    public PrimitiveType unboxedType(TypeMirror t) {
        if (!(((TypeMirrorImpl)t)._binding instanceof ReferenceBinding)) {
            throw new IllegalArgumentException("Given type mirror cannot be unboxed");
        }
        ReferenceBinding boxed = (ReferenceBinding)((TypeMirrorImpl)t)._binding;
        TypeBinding unboxed = this._env.getLookupEnvironment().computeBoxingType((TypeBinding)boxed);
        if (unboxed.kind() != 132) {
            throw new IllegalArgumentException();
        }
        return (PrimitiveType)this._env.getFactory().newTypeMirror((Binding)((BaseTypeBinding)unboxed));
    }
}

