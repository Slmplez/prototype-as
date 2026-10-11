/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ArrayBinding
 *  org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.PackageBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeConstants
 *  org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding
 *  org.eclipse.jdt.internal.compiler.lookup.VariableBinding
 *  org.eclipse.jdt.internal.compiler.lookup.WildcardBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeParameterElement;
import javax.lang.model.type.ErrorType;
import javax.lang.model.type.NoType;
import javax.lang.model.type.NullType;
import javax.lang.model.type.TypeKind;
import javax.lang.model.type.TypeMirror;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.AnnotationMirrorImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ArrayTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.DeclaredTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ErrorTypeElement;
import org.eclipse.jdt.internal.compiler.apt.model.ErrorTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ExecutableElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ExecutableTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.NoTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.PackageElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.PrimitiveTypeImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeParameterElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeVariableImpl;
import org.eclipse.jdt.internal.compiler.apt.model.VariableElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.WildcardTypeImpl;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class Factory {
    public static final Byte DUMMY_BYTE = 0;
    public static final Character DUMMY_CHAR = Character.valueOf('0');
    public static final Double DUMMY_DOUBLE = 0.0;
    public static final Float DUMMY_FLOAT = Float.valueOf(0.0f);
    public static final Integer DUMMY_INTEGER = 0;
    public static final Long DUMMY_LONG = 0L;
    public static final Short DUMMY_SHORT = 0;
    private final BaseProcessingEnvImpl _env;

    public Factory(BaseProcessingEnvImpl env) {
        this._env = env;
    }

    public List<? extends AnnotationMirror> getAnnotationMirrors(AnnotationBinding[] annotations) {
        if (annotations == null || annotations.length == 0) {
            return Collections.emptyList();
        }
        ArrayList<AnnotationMirror> list = new ArrayList<AnnotationMirror>(annotations.length);
        AnnotationBinding[] annotationBindingArray = annotations;
        int n = annotations.length;
        int n2 = 0;
        while (n2 < n) {
            AnnotationBinding annotation = annotationBindingArray[n2];
            if (annotation != null) {
                list.add(this.newAnnotationMirror(annotation));
            }
            ++n2;
        }
        return Collections.unmodifiableList(list);
    }

    private static void appendModifier(Set<Modifier> result, int modifiers, int modifierConstant, Modifier modifier) {
        if ((modifiers & modifierConstant) != 0) {
            result.add(modifier);
        }
    }

    private static void decodeModifiers(Set<Modifier> result, int modifiers, int[] checkBits) {
        if (checkBits == null) {
            return;
        }
        int i = 0;
        int max = checkBits.length;
        while (i < max) {
            switch (checkBits[i]) {
                case 1: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.PUBLIC);
                    break;
                }
                case 4: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.PROTECTED);
                    break;
                }
                case 2: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.PRIVATE);
                    break;
                }
                case 1024: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.ABSTRACT);
                    break;
                }
                case 8: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.STATIC);
                    break;
                }
                case 16: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.FINAL);
                    break;
                }
                case 32: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.SYNCHRONIZED);
                    break;
                }
                case 256: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.NATIVE);
                    break;
                }
                case 2048: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.STRICTFP);
                    break;
                }
                case 128: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.TRANSIENT);
                    break;
                }
                case 64: {
                    Factory.appendModifier(result, modifiers, checkBits[i], Modifier.VOLATILE);
                }
            }
            ++i;
        }
    }

    public static Object getMatchingDummyValue(Class<?> expectedType) {
        if (expectedType.isPrimitive()) {
            if (expectedType == Boolean.TYPE) {
                return Boolean.FALSE;
            }
            if (expectedType == Byte.TYPE) {
                return DUMMY_BYTE;
            }
            if (expectedType == Character.TYPE) {
                return DUMMY_CHAR;
            }
            if (expectedType == Double.TYPE) {
                return DUMMY_DOUBLE;
            }
            if (expectedType == Float.TYPE) {
                return DUMMY_FLOAT;
            }
            if (expectedType == Integer.TYPE) {
                return DUMMY_INTEGER;
            }
            if (expectedType == Long.TYPE) {
                return DUMMY_LONG;
            }
            if (expectedType == Short.TYPE) {
                return DUMMY_SHORT;
            }
            return DUMMY_INTEGER;
        }
        return null;
    }

    public static Set<Modifier> getModifiers(int modifiers, ElementKind kind) {
        return Factory.getModifiers(modifiers, kind, false);
    }

    public static Set<Modifier> getModifiers(int modifiers, ElementKind kind, boolean isFromBinary) {
        EnumSet<Modifier> result = EnumSet.noneOf(Modifier.class);
        switch (kind) {
            case METHOD: 
            case CONSTRUCTOR: {
                Factory.decodeModifiers(result, modifiers, new int[]{1, 4, 2, 1024, 8, 16, 32, 256, 2048});
                break;
            }
            case ENUM_CONSTANT: 
            case FIELD: {
                Factory.decodeModifiers(result, modifiers, new int[]{1, 4, 2, 8, 16, 128, 64});
                break;
            }
            case ENUM: {
                if (isFromBinary) {
                    Factory.decodeModifiers(result, modifiers, new int[]{1, 4, 16, 2, 1024, 8, 2048});
                    break;
                }
                Factory.decodeModifiers(result, modifiers, new int[]{1, 4, 16, 2, 8, 2048});
                break;
            }
            case CLASS: 
            case ANNOTATION_TYPE: 
            case INTERFACE: {
                Factory.decodeModifiers(result, modifiers, new int[]{1, 4, 1024, 16, 2, 8, 2048});
            }
        }
        return Collections.unmodifiableSet(result);
    }

    public AnnotationMirror newAnnotationMirror(AnnotationBinding binding) {
        return new AnnotationMirrorImpl(this._env, binding);
    }

    public Element newElement(Binding binding, ElementKind kindHint) {
        switch (binding.kind()) {
            case 1: 
            case 2: 
            case 3: {
                return new VariableElementImpl(this._env, (VariableBinding)binding);
            }
            case 4: 
            case 2052: {
                ReferenceBinding referenceBinding = (ReferenceBinding)binding;
                if ((referenceBinding.tagBits & 0x80L) != 0L) {
                    return new ErrorTypeElement(this._env, referenceBinding);
                }
                if (referenceBinding.sourceName == TypeConstants.PACKAGE_INFO_NAME) {
                    return new PackageElementImpl(this._env, referenceBinding.fPackage);
                }
                return new TypeElementImpl(this._env, referenceBinding, kindHint);
            }
            case 8: {
                return new ExecutableElementImpl(this._env, (MethodBinding)binding);
            }
            case 260: 
            case 1028: {
                return new TypeElementImpl(this._env, ((ParameterizedTypeBinding)binding).genericType(), kindHint);
            }
            case 16: {
                return new PackageElementImpl(this._env, (PackageBinding)binding);
            }
            case 4100: {
                return new TypeParameterElementImpl(this._env, (TypeVariableBinding)binding);
            }
            case 32: 
            case 68: 
            case 132: 
            case 516: 
            case 8196: {
                throw new UnsupportedOperationException("NYI: binding type " + binding.kind());
            }
        }
        return null;
    }

    public Element newElement(Binding binding) {
        return this.newElement(binding, null);
    }

    public PackageElement newPackageElement(PackageBinding binding) {
        return new PackageElementImpl(this._env, binding);
    }

    public NullType getNullType() {
        return NoTypeImpl.NULL_TYPE;
    }

    public NoType getNoType(TypeKind kind) {
        switch (kind) {
            case NONE: {
                return NoTypeImpl.NO_TYPE_NONE;
            }
            case VOID: {
                return NoTypeImpl.NO_TYPE_VOID;
            }
            case PACKAGE: {
                return NoTypeImpl.NO_TYPE_PACKAGE;
            }
        }
        throw new IllegalArgumentException();
    }

    public PrimitiveTypeImpl getPrimitiveType(TypeKind kind) {
        switch (kind) {
            case BOOLEAN: {
                return PrimitiveTypeImpl.BOOLEAN;
            }
            case BYTE: {
                return PrimitiveTypeImpl.BYTE;
            }
            case CHAR: {
                return PrimitiveTypeImpl.CHAR;
            }
            case DOUBLE: {
                return PrimitiveTypeImpl.DOUBLE;
            }
            case FLOAT: {
                return PrimitiveTypeImpl.FLOAT;
            }
            case INT: {
                return PrimitiveTypeImpl.INT;
            }
            case LONG: {
                return PrimitiveTypeImpl.LONG;
            }
            case SHORT: {
                return PrimitiveTypeImpl.SHORT;
            }
        }
        throw new IllegalStateException();
    }

    public TypeMirror newTypeMirror(Binding binding) {
        switch (binding.kind()) {
            case 1: 
            case 2: 
            case 3: {
                return this.newTypeMirror((Binding)((VariableBinding)binding).type);
            }
            case 16: {
                return this.getNoType(TypeKind.PACKAGE);
            }
            case 32: {
                throw new UnsupportedOperationException("NYI: import type " + binding.kind());
            }
            case 8: {
                return new ExecutableTypeImpl(this._env, (MethodBinding)binding);
            }
            case 4: 
            case 260: 
            case 1028: 
            case 2052: {
                ReferenceBinding referenceBinding = (ReferenceBinding)binding;
                if ((referenceBinding.tagBits & 0x80L) != 0L) {
                    return this.getErrorType(referenceBinding);
                }
                return new DeclaredTypeImpl(this._env, (ReferenceBinding)binding);
            }
            case 68: {
                return new ArrayTypeImpl(this._env, (ArrayBinding)binding);
            }
            case 132: {
                BaseTypeBinding btb = (BaseTypeBinding)binding;
                switch (btb.id) {
                    case 6: {
                        return this.getNoType(TypeKind.VOID);
                    }
                    case 12: {
                        return this.getNullType();
                    }
                }
                return this.getPrimitiveType(PrimitiveTypeImpl.getKind((BaseTypeBinding)binding));
            }
            case 516: 
            case 8196: {
                return new WildcardTypeImpl(this._env, (WildcardBinding)binding);
            }
            case 4100: {
                return new TypeVariableImpl(this._env, (TypeVariableBinding)binding);
            }
        }
        return null;
    }

    public TypeParameterElement newTypeParameterElement(TypeVariableBinding variable, Element declaringElement) {
        return new TypeParameterElementImpl(this._env, variable, declaringElement);
    }

    public ErrorType getErrorType(ReferenceBinding binding) {
        return new ErrorTypeImpl(this._env, binding);
    }

    public static Object performNecessaryPrimitiveTypeConversion(Class<?> expectedType, Object value, boolean avoidReflectException) {
        assert (expectedType.isPrimitive()) : "expectedType is not a primitive type: " + expectedType.getName();
        if (value == null) {
            return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : null;
        }
        String typeName = expectedType.getName();
        char expectedTypeChar = typeName.charAt(0);
        int nameLen = typeName.length();
        if (value instanceof Byte) {
            byte b = (Byte)value;
            switch (expectedTypeChar) {
                case 'b': {
                    if (nameLen == 4) {
                        return value;
                    }
                    return avoidReflectException ? Boolean.FALSE : value;
                }
                case 'c': {
                    return new Character((char)b);
                }
                case 'd': {
                    return new Double(b);
                }
                case 'f': {
                    return new Float(b);
                }
                case 'i': {
                    return new Integer(b);
                }
                case 'l': {
                    return new Long(b);
                }
                case 's': {
                    return new Short(b);
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Short) {
            short s = (Short)value;
            switch (expectedTypeChar) {
                case 'b': {
                    if (nameLen == 4) {
                        return new Byte((byte)s);
                    }
                    return avoidReflectException ? Boolean.FALSE : value;
                }
                case 'c': {
                    return new Character((char)s);
                }
                case 'd': {
                    return new Double(s);
                }
                case 'f': {
                    return new Float(s);
                }
                case 'i': {
                    return new Integer(s);
                }
                case 'l': {
                    return new Long(s);
                }
                case 's': {
                    return value;
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Character) {
            char c = ((Character)value).charValue();
            switch (expectedTypeChar) {
                case 'b': {
                    if (nameLen == 4) {
                        return new Byte((byte)c);
                    }
                    return avoidReflectException ? Boolean.FALSE : value;
                }
                case 'c': {
                    return value;
                }
                case 'd': {
                    return new Double(c);
                }
                case 'f': {
                    return new Float(c);
                }
                case 'i': {
                    return new Integer(c);
                }
                case 'l': {
                    return new Long(c);
                }
                case 's': {
                    return new Short((short)c);
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Integer) {
            int i = (Integer)value;
            switch (expectedTypeChar) {
                case 'b': {
                    if (nameLen == 4) {
                        return new Byte((byte)i);
                    }
                    return avoidReflectException ? Boolean.FALSE : value;
                }
                case 'c': {
                    return new Character((char)i);
                }
                case 'd': {
                    return new Double(i);
                }
                case 'f': {
                    return new Float(i);
                }
                case 'i': {
                    return value;
                }
                case 'l': {
                    return new Long(i);
                }
                case 's': {
                    return new Short((short)i);
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Long) {
            long l = (Long)value;
            switch (expectedTypeChar) {
                case 'b': 
                case 'c': 
                case 'i': 
                case 's': {
                    return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : value;
                }
                case 'd': {
                    return new Double(l);
                }
                case 'f': {
                    return new Float(l);
                }
                case 'l': {
                    return value;
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Float) {
            float f = ((Float)value).floatValue();
            switch (expectedTypeChar) {
                case 'b': 
                case 'c': 
                case 'i': 
                case 'l': 
                case 's': {
                    return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : value;
                }
                case 'd': {
                    return new Double(f);
                }
                case 'f': {
                    return value;
                }
            }
            throw new IllegalStateException("unknown type " + expectedTypeChar);
        }
        if (value instanceof Double) {
            if (expectedTypeChar == 'd') {
                return value;
            }
            return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : value;
        }
        if (value instanceof Boolean) {
            if (expectedTypeChar == 'b' && nameLen == 7) {
                return value;
            }
            return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : value;
        }
        return avoidReflectException ? Factory.getMatchingDummyValue(expectedType) : value;
    }

    public static void setArrayMatchingDummyValue(Object array, int i, Class<?> expectedLeafType) {
        if (Boolean.TYPE.equals(expectedLeafType)) {
            Array.setBoolean(array, i, false);
        } else if (Byte.TYPE.equals(expectedLeafType)) {
            Array.setByte(array, i, DUMMY_BYTE);
        } else if (Character.TYPE.equals(expectedLeafType)) {
            Array.setChar(array, i, DUMMY_CHAR.charValue());
        } else if (Double.TYPE.equals(expectedLeafType)) {
            Array.setDouble(array, i, DUMMY_DOUBLE);
        } else if (Float.TYPE.equals(expectedLeafType)) {
            Array.setFloat(array, i, DUMMY_FLOAT.floatValue());
        } else if (Integer.TYPE.equals(expectedLeafType)) {
            Array.setInt(array, i, DUMMY_INTEGER);
        } else if (Long.TYPE.equals(expectedLeafType)) {
            Array.setLong(array, i, DUMMY_LONG);
        } else if (Short.TYPE.equals(expectedLeafType)) {
            Array.setShort(array, i, DUMMY_SHORT);
        } else {
            Array.set(array, i, null);
        }
    }
}

