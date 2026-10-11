/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class TypeVariableBinding
extends ReferenceBinding {
    public Binding declaringElement;
    public int rank;
    public TypeBinding firstBound;
    public ReferenceBinding superclass;
    public ReferenceBinding[] superInterfaces;
    public char[] genericTypeSignature;
    LookupEnvironment environment;

    public TypeVariableBinding(char[] sourceName, Binding declaringElement, int rank, LookupEnvironment environment) {
        this.sourceName = sourceName;
        this.declaringElement = declaringElement;
        this.rank = rank;
        this.modifiers = 0x40000001;
        this.tagBits |= 0x20000000L;
        this.environment = environment;
    }

    public int boundCheck(Substitution substitution, TypeBinding argumentType) {
        boolean hasSubstitution;
        if (argumentType == TypeBinding.NULL || argumentType == this) {
            return 0;
        }
        boolean bl = hasSubstitution = substitution != null;
        if (!(argumentType instanceof ReferenceBinding) && !argumentType.isArrayType()) {
            return 2;
        }
        if (this.superclass == null) {
            return 0;
        }
        if (argumentType.kind() == 516) {
            WildcardBinding wildcard = (WildcardBinding)argumentType;
            switch (wildcard.boundKind) {
                case 1: {
                    TypeBinding wildcardBound = wildcard.bound;
                    if (wildcardBound == this) {
                        return 0;
                    }
                    boolean isArrayBound = wildcardBound.isArrayType();
                    if (!wildcardBound.isInterface()) {
                        TypeBinding match;
                        ReferenceBinding substitutedSuperType;
                        TypeBinding typeBinding = substitutedSuperType = hasSubstitution ? Scope.substitute(substitution, this.superclass) : this.superclass;
                        if (substitutedSuperType.id != 1 && (isArrayBound ? !wildcardBound.isCompatibleWith(substitutedSuperType) : ((match = wildcardBound.findSuperTypeOriginatingFrom(substitutedSuperType)) != null ? substitutedSuperType.isProvablyDistinct(match) : ((match = substitutedSuperType.findSuperTypeOriginatingFrom(wildcardBound)) != null ? match.isProvablyDistinct(wildcardBound) : !wildcardBound.isTypeVariable() && !substitutedSuperType.isTypeVariable())))) {
                            return 2;
                        }
                    }
                    boolean mustImplement = isArrayBound || ((ReferenceBinding)wildcardBound).isFinal();
                    int i = 0;
                    int length = this.superInterfaces.length;
                    while (i < length) {
                        TypeBinding match;
                        ReferenceBinding substitutedSuperType;
                        TypeBinding typeBinding = substitutedSuperType = hasSubstitution ? Scope.substitute(substitution, this.superInterfaces[i]) : this.superInterfaces[i];
                        if (isArrayBound ? !wildcardBound.isCompatibleWith(substitutedSuperType) : ((match = wildcardBound.findSuperTypeOriginatingFrom(substitutedSuperType)) != null ? substitutedSuperType.isProvablyDistinct(match) : mustImplement)) {
                            return 2;
                        }
                        ++i;
                    }
                    break;
                }
                case 2: {
                    if (wildcard.bound.isTypeVariable() && ((TypeVariableBinding)wildcard.bound).superclass.id == 1) break;
                    return this.boundCheck(substitution, wildcard.bound);
                }
            }
            return 0;
        }
        boolean unchecked = false;
        if (this.superclass.id != 1) {
            ReferenceBinding substitutedSuperType;
            TypeBinding typeBinding = substitutedSuperType = hasSubstitution ? Scope.substitute(substitution, this.superclass) : this.superclass;
            if (substitutedSuperType != argumentType) {
                if (!argumentType.isCompatibleWith(substitutedSuperType)) {
                    return 2;
                }
                TypeBinding match = argumentType.findSuperTypeOriginatingFrom(substitutedSuperType);
                if (match != null && match.isRawType() && substitutedSuperType.isBoundParameterizedType()) {
                    unchecked = true;
                }
            }
        }
        int i = 0;
        int length = this.superInterfaces.length;
        while (i < length) {
            ReferenceBinding substitutedSuperType;
            TypeBinding typeBinding = substitutedSuperType = hasSubstitution ? Scope.substitute(substitution, this.superInterfaces[i]) : this.superInterfaces[i];
            if (substitutedSuperType != argumentType) {
                if (!argumentType.isCompatibleWith(substitutedSuperType)) {
                    return 2;
                }
                TypeBinding match = argumentType.findSuperTypeOriginatingFrom(substitutedSuperType);
                if (match != null && match.isRawType() && substitutedSuperType.isBoundParameterizedType()) {
                    unchecked = true;
                }
            }
            ++i;
        }
        return unchecked ? 1 : 0;
    }

    public int boundsCount() {
        if (this.firstBound == null) {
            return 0;
        }
        if (this.firstBound == this.superclass) {
            return this.superInterfaces.length + 1;
        }
        return this.superInterfaces.length;
    }

    public boolean canBeInstantiated() {
        return false;
    }

    public void collectSubstitutes(Scope scope, TypeBinding actualType, InferenceContext inferenceContext, int constraint) {
        int variableConstraint;
        if (this.declaringElement != inferenceContext.genericMethod) {
            return;
        }
        switch (actualType.kind()) {
            case 132: {
                if (actualType == TypeBinding.NULL) {
                    return;
                }
                TypeBinding boxedType = scope.environment().computeBoxingType(actualType);
                if (boxedType == actualType) {
                    return;
                }
                actualType = boxedType;
                break;
            }
            case 516: {
                return;
            }
        }
        switch (constraint) {
            case 0: {
                variableConstraint = 0;
                break;
            }
            case 1: {
                variableConstraint = 2;
                break;
            }
            default: {
                variableConstraint = 1;
            }
        }
        inferenceContext.recordSubstitute(this, actualType, variableConstraint);
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        StringBuffer buffer = new StringBuffer();
        Binding declaring = this.declaringElement;
        if (!isLeaf && declaring.kind() == 8) {
            MethodBinding methodBinding = (MethodBinding)declaring;
            ReferenceBinding declaringClass = methodBinding.declaringClass;
            buffer.append(declaringClass.computeUniqueKey(false));
            buffer.append(':');
            MethodBinding[] methods = declaringClass.methods();
            if (methods != null) {
                int i = 0;
                int length = methods.length;
                while (i < length) {
                    MethodBinding binding = methods[i];
                    if (binding == methodBinding) {
                        buffer.append(i);
                        break;
                    }
                    ++i;
                }
            }
        } else {
            buffer.append(declaring.computeUniqueKey(false));
            buffer.append(':');
        }
        buffer.append(this.genericTypeSignature());
        int length = buffer.length();
        char[] uniqueKey = new char[length];
        buffer.getChars(0, length, uniqueKey, 0);
        return uniqueKey;
    }

    public char[] constantPoolName() {
        if (this.firstBound != null) {
            return this.firstBound.constantPoolName();
        }
        return this.superclass.constantPoolName();
    }

    public String debugName() {
        return new String(this.sourceName);
    }

    public TypeBinding erasure() {
        if (this.firstBound != null) {
            return this.firstBound.erasure();
        }
        return this.superclass;
    }

    public char[] genericSignature() {
        int interfaceLength;
        StringBuffer sig = new StringBuffer(10);
        sig.append(this.sourceName).append(':');
        int n = interfaceLength = this.superInterfaces == null ? 0 : this.superInterfaces.length;
        if ((interfaceLength == 0 || this.firstBound == this.superclass) && this.superclass != null) {
            sig.append(this.superclass.genericTypeSignature());
        }
        int i = 0;
        while (i < interfaceLength) {
            sig.append(':').append(this.superInterfaces[i].genericTypeSignature());
            ++i;
        }
        int sigLength = sig.length();
        char[] genericSignature = new char[sigLength];
        sig.getChars(0, sigLength, genericSignature, 0);
        return genericSignature;
    }

    public char[] genericTypeSignature() {
        if (this.genericTypeSignature != null) {
            return this.genericTypeSignature;
        }
        this.genericTypeSignature = CharOperation.concat('T', this.sourceName, ';');
        return this.genericTypeSignature;
    }

    boolean hasOnlyRawBounds() {
        if (this.superclass != null && this.firstBound == this.superclass && !this.superclass.isRawType()) {
            return false;
        }
        if (this.superInterfaces != null) {
            int i = 0;
            int l = this.superInterfaces.length;
            while (i < l) {
                if (!this.superInterfaces[i].isRawType()) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    public boolean isErasureBoundTo(TypeBinding type) {
        if (this.superclass.erasure() == type) {
            return true;
        }
        int i = 0;
        int length = this.superInterfaces.length;
        while (i < length) {
            if (this.superInterfaces[i].erasure() == type) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean isHierarchyConnected() {
        return (this.modifiers & 0x2000000) == 0;
    }

    public boolean isInterchangeableWith(TypeVariableBinding otherVariable, Substitution substitute) {
        if (this == otherVariable) {
            return true;
        }
        int length = this.superInterfaces.length;
        if (length != otherVariable.superInterfaces.length) {
            return false;
        }
        if (this.superclass != Scope.substitute(substitute, otherVariable.superclass)) {
            return false;
        }
        int i = 0;
        while (i < length) {
            block6: {
                TypeBinding superType = Scope.substitute(substitute, otherVariable.superInterfaces[i]);
                int j = 0;
                while (j < length) {
                    if (superType != this.superInterfaces[j]) {
                        ++j;
                        continue;
                    }
                    break block6;
                }
                return false;
            }
            ++i;
        }
        return true;
    }

    public boolean isTypeVariable() {
        return true;
    }

    public int kind() {
        return 4100;
    }

    public TypeBinding[] otherUpperBounds() {
        if (this.firstBound == null) {
            return Binding.NO_TYPES;
        }
        if (this.firstBound == this.superclass) {
            return this.superInterfaces;
        }
        int otherLength = this.superInterfaces.length - 1;
        if (otherLength > 0) {
            TypeBinding[] otherBounds = new TypeBinding[otherLength];
            System.arraycopy(this.superInterfaces, 1, otherBounds, 0, otherLength);
            return otherBounds;
        }
        return Binding.NO_TYPES;
    }

    public char[] readableName() {
        return this.sourceName;
    }

    ReferenceBinding resolve() {
        ReferenceBinding[] interfaces;
        int length;
        if ((this.modifiers & 0x2000000) == 0) {
            return this;
        }
        ReferenceBinding oldSuperclass = this.superclass;
        ReferenceBinding oldFirstInterface = null;
        if (this.superclass != null) {
            ReferenceBinding resolveType = (ReferenceBinding)BinaryTypeBinding.resolveType(this.superclass, this.environment, true);
            this.tagBits |= resolveType.tagBits & 0x800L;
            this.superclass = resolveType;
        }
        if ((length = (interfaces = this.superInterfaces).length) != 0) {
            oldFirstInterface = interfaces[0];
            int i = length;
            while (--i >= 0) {
                ReferenceBinding resolveType = (ReferenceBinding)BinaryTypeBinding.resolveType(interfaces[i], this.environment, true);
                this.tagBits |= resolveType.tagBits & 0x800L;
                interfaces[i] = resolveType;
            }
        }
        if (this.firstBound != null) {
            if (this.firstBound == oldSuperclass) {
                this.firstBound = this.superclass;
            } else if (this.firstBound == oldFirstInterface) {
                this.firstBound = interfaces[0];
            }
        }
        this.modifiers &= 0xFDFFFFFF;
        return this;
    }

    public char[] shortReadableName() {
        return this.readableName();
    }

    public ReferenceBinding superclass() {
        return this.superclass;
    }

    public ReferenceBinding[] superInterfaces() {
        return this.superInterfaces;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(10);
        buffer.append('<').append(this.sourceName);
        if (this.superclass != null && this.firstBound == this.superclass) {
            buffer.append(" extends ").append(this.superclass.debugName());
        }
        if (this.superInterfaces != null && this.superInterfaces != Binding.NO_SUPERINTERFACES) {
            if (this.firstBound != this.superclass) {
                buffer.append(" extends ");
            }
            int i = 0;
            int length = this.superInterfaces.length;
            while (i < length) {
                if (i > 0 || this.firstBound == this.superclass) {
                    buffer.append(" & ");
                }
                buffer.append(this.superInterfaces[i].debugName());
                ++i;
            }
        }
        buffer.append('>');
        return buffer.toString();
    }

    public TypeBinding upperBound() {
        if (this.firstBound != null) {
            return this.firstBound;
        }
        return this.superclass;
    }
}

