/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class RawTypeBinding
extends ParameterizedTypeBinding {
    public RawTypeBinding(ReferenceBinding type, ReferenceBinding enclosingType, LookupEnvironment environment) {
        super(type, null, enclosingType, environment);
        ParameterizedTypeBinding parameterizedTypeBinding;
        this.tagBits &= 0xFFFFFFFFFFFFFF7FL;
        if ((type.tagBits & 0x80L) != 0L) {
            if (type instanceof MissingTypeBinding) {
                this.tagBits |= 0x80L;
            } else if (type instanceof ParameterizedTypeBinding && (parameterizedTypeBinding = (ParameterizedTypeBinding)type).genericType() instanceof MissingTypeBinding) {
                this.tagBits |= 0x80L;
            }
        }
        if (enclosingType != null && (enclosingType.tagBits & 0x80L) != 0L) {
            if (enclosingType instanceof MissingTypeBinding) {
                this.tagBits |= 0x80L;
            } else if (enclosingType instanceof ParameterizedTypeBinding && (parameterizedTypeBinding = (ParameterizedTypeBinding)enclosingType).genericType() instanceof MissingTypeBinding) {
                this.tagBits |= 0x80L;
            }
        }
        if (enclosingType == null || (enclosingType.modifiers & 0x40000000) == 0) {
            this.modifiers &= 0xBFFFFFFF;
        }
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        StringBuffer sig = new StringBuffer(10);
        if (this.isMemberType() && this.enclosingType().isParameterizedType()) {
            char[] typeSig = this.enclosingType().computeUniqueKey(false);
            sig.append(typeSig, 0, typeSig.length - 1);
            sig.append('.').append(this.sourceName()).append('<').append('>').append(';');
        } else {
            sig.append(this.genericType().computeUniqueKey(false));
            sig.insert(sig.length() - 1, "<>");
        }
        int sigLength = sig.length();
        char[] uniqueKey = new char[sigLength];
        sig.getChars(0, sigLength, uniqueKey, 0);
        return uniqueKey;
    }

    public ParameterizedMethodBinding createParameterizedMethod(MethodBinding originalMethod) {
        if (originalMethod.typeVariables == Binding.NO_TYPE_VARIABLES || originalMethod.isStatic()) {
            return super.createParameterizedMethod(originalMethod);
        }
        return this.environment.createParameterizedGenericMethod(originalMethod, this);
    }

    public int kind() {
        return 1028;
    }

    public String debugName() {
        StringBuffer nameBuffer = new StringBuffer(10);
        nameBuffer.append(this.actualType().sourceName()).append("#RAW");
        return nameBuffer.toString();
    }

    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            if ((this.modifiers & 0x40000000) == 0) {
                this.genericTypeSignature = this.genericType().signature();
            } else {
                StringBuffer sig = new StringBuffer(10);
                if (this.isMemberType()) {
                    ReferenceBinding enclosing = this.enclosingType();
                    char[] typeSig = enclosing.genericTypeSignature();
                    sig.append(typeSig, 0, typeSig.length - 1);
                    if ((enclosing.modifiers & 0x40000000) != 0) {
                        sig.append('.');
                    } else {
                        sig.append('$');
                    }
                    sig.append(this.sourceName());
                } else {
                    char[] typeSig = this.genericType().signature();
                    sig.append(typeSig, 0, typeSig.length - 1);
                }
                sig.append(';');
                int sigLength = sig.length();
                this.genericTypeSignature = new char[sigLength];
                sig.getChars(0, sigLength, this.genericTypeSignature, 0);
            }
        }
        return this.genericTypeSignature;
    }

    public boolean isEquivalentTo(TypeBinding otherType) {
        if (this == otherType || this.erasure() == otherType) {
            return true;
        }
        if (otherType == null) {
            return false;
        }
        switch (otherType.kind()) {
            case 516: 
            case 8196: {
                return ((WildcardBinding)otherType).boundCheck(this);
            }
            case 260: 
            case 1028: 
            case 2052: {
                return this.erasure() == otherType.erasure();
            }
        }
        return false;
    }

    public boolean isProvablyDistinct(TypeBinding otherType) {
        if (this == otherType || this.erasure() == otherType) {
            return false;
        }
        if (otherType == null) {
            return true;
        }
        switch (otherType.kind()) {
            case 260: 
            case 1028: 
            case 2052: {
                return this.erasure() != otherType.erasure();
            }
        }
        return true;
    }

    protected void initializeArguments() {
        TypeVariableBinding[] typeVariables = this.genericType().typeVariables();
        int length = typeVariables.length;
        TypeBinding[] typeArguments = new TypeBinding[length];
        int i = 0;
        while (i < length) {
            typeArguments[i] = this.environment.convertToRawType(typeVariables[i].erasure(), false);
            ++i;
        }
        this.arguments = typeArguments;
    }

    public char[] readableName() {
        char[] readableName = this.isMemberType() ? CharOperation.concat(this.enclosingType().readableName(), this.sourceName, '.') : CharOperation.concatWith(this.actualType().compoundName, '.');
        return readableName;
    }

    public char[] shortReadableName() {
        char[] shortReadableName = this.isMemberType() ? CharOperation.concat(this.enclosingType().shortReadableName(), this.sourceName, '.') : this.actualType().sourceName;
        return shortReadableName;
    }
}

