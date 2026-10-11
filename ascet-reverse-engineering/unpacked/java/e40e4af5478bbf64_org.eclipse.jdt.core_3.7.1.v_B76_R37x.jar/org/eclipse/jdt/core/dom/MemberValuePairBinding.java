/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMemberValuePairBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

class MemberValuePairBinding
implements IMemberValuePairBinding {
    static final MemberValuePairBinding[] NoPair = new MemberValuePairBinding[0];
    private static final Object NoValue = new Object();
    private static final Object[] EmptyArray = new Object[0];
    private ElementValuePair internalPair;
    protected Object value = null;
    protected BindingResolver bindingResolver;

    static void appendValue(Object value, StringBuffer buffer) {
        if (value instanceof Object[]) {
            Object[] values = (Object[])value;
            buffer.append('{');
            int i = 0;
            int l = values.length;
            while (i < l) {
                if (i != 0) {
                    buffer.append(", ");
                }
                MemberValuePairBinding.appendValue(values[i], buffer);
                ++i;
            }
            buffer.append('}');
        } else if (value instanceof ITypeBinding) {
            buffer.append(((ITypeBinding)value).getName());
            buffer.append(".class");
        } else {
            buffer.append(value);
        }
    }

    static Object buildDOMValue(Object internalObject, BindingResolver resolver) {
        if (internalObject == null) {
            return null;
        }
        if (internalObject instanceof Constant) {
            Constant constant = (Constant)internalObject;
            switch (constant.typeID()) {
                case 5: {
                    return constant.booleanValue();
                }
                case 3: {
                    return new Byte(constant.byteValue());
                }
                case 2: {
                    return new Character(constant.charValue());
                }
                case 8: {
                    return new Double(constant.doubleValue());
                }
                case 9: {
                    return new Float(constant.floatValue());
                }
                case 10: {
                    return new Integer(constant.intValue());
                }
                case 7: {
                    return new Long(constant.longValue());
                }
                case 4: {
                    return new Short(constant.shortValue());
                }
            }
            return constant.stringValue();
        }
        if (internalObject instanceof TypeBinding) {
            return resolver.getTypeBinding((TypeBinding)internalObject);
        }
        if (internalObject instanceof org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding) {
            return resolver.getAnnotationInstance((org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding)internalObject);
        }
        if (internalObject instanceof FieldBinding) {
            return resolver.getVariableBinding((FieldBinding)internalObject);
        }
        if (internalObject instanceof Object[]) {
            Object[] elements = (Object[])internalObject;
            int length = elements.length;
            Object[] values = length == 0 ? EmptyArray : new Object[length];
            int i = 0;
            while (i < length) {
                values[i] = MemberValuePairBinding.buildDOMValue(elements[i], resolver);
                ++i;
            }
            return values;
        }
        return null;
    }

    MemberValuePairBinding(ElementValuePair pair, BindingResolver resolver) {
        this.internalPair = pair;
        this.bindingResolver = resolver;
    }

    public IAnnotationBinding[] getAnnotations() {
        return AnnotationBinding.NoAnnotations;
    }

    public IJavaElement getJavaElement() {
        return null;
    }

    public String getKey() {
        return null;
    }

    public int getKind() {
        return 6;
    }

    public IMethodBinding getMethodBinding() {
        return this.bindingResolver.getMethodBinding(this.internalPair.getMethodBinding());
    }

    public int getModifiers() {
        return 0;
    }

    public String getName() {
        if (this.internalPair == null) {
            return null;
        }
        char[] membername = this.internalPair.getName();
        return membername == null ? null : new String(membername);
    }

    public Object getValue() {
        if (this.value == null) {
            this.init();
        }
        return this.value == NoValue ? null : this.value;
    }

    private void init() {
        IMethodBinding methodBinding;
        this.value = MemberValuePairBinding.buildDOMValue(this.internalPair.getValue(), this.bindingResolver);
        if (this.value == null) {
            this.value = NoValue;
        }
        if ((methodBinding = this.getMethodBinding()).getReturnType().isArray() && !this.value.getClass().isArray()) {
            this.value = new Object[]{this.value};
        }
    }

    char[] internalName() {
        return this.internalPair == null ? null : this.internalPair.getName();
    }

    public boolean isDefault() {
        Object value2 = this.getValue();
        Object defaultValue = this.getMethodBinding().getDefaultValue();
        if (value2 instanceof IBinding) {
            if (defaultValue instanceof IBinding) {
                return ((IBinding)value2).isEqualTo((IBinding)defaultValue);
            }
            return false;
        }
        if (defaultValue == null) {
            return false;
        }
        return defaultValue.equals(value2);
    }

    public boolean isDeprecated() {
        MethodBinding methodBinding = this.internalPair.getMethodBinding();
        return methodBinding == null ? false : methodBinding.isDeprecated();
    }

    public boolean isEqualTo(IBinding binding) {
        if (this == binding) {
            return true;
        }
        if (binding.getKind() != 6) {
            return false;
        }
        IMemberValuePairBinding otherMemberValuePairBinding = (IMemberValuePairBinding)binding;
        if (!this.getMethodBinding().isEqualTo(otherMemberValuePairBinding.getMethodBinding())) {
            return false;
        }
        Object otherValue = otherMemberValuePairBinding.getValue();
        Object currentValue = this.getValue();
        if (currentValue == null) {
            return otherValue == null;
        }
        if (currentValue instanceof IBinding) {
            if (otherValue instanceof IBinding) {
                return ((IBinding)currentValue).isEqualTo((IBinding)otherValue);
            }
            return false;
        }
        if (currentValue.getClass().isArray()) {
            if (!otherValue.getClass().isArray()) {
                return false;
            }
            Object[] currentValues = (Object[])currentValue;
            int length = currentValues.length;
            Object[] otherValues = (Object[])otherValue;
            if (length != otherValues.length) {
                return false;
            }
            int i = 0;
            while (i < length) {
                Object current = currentValues[i];
                Object other = otherValues[i];
                if (current instanceof IBinding) {
                    if (!(other instanceof IBinding)) {
                        return false;
                    }
                    if (!((IBinding)current).isEqualTo((IBinding)other)) {
                        return false;
                    }
                } else if (!current.equals(other)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return currentValue.equals(otherValue);
    }

    public boolean isRecovered() {
        return false;
    }

    public boolean isSynthetic() {
        return false;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.getName());
        buffer.append(" = ");
        MemberValuePairBinding.appendValue(this.getValue(), buffer);
        return buffer.toString();
    }
}

