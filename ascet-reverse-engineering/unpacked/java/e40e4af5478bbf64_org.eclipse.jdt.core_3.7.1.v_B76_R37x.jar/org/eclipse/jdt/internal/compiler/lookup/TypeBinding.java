/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public abstract class TypeBinding
extends Binding {
    public int id = Integer.MAX_VALUE;
    public long tagBits = 0L;
    public static final BaseTypeBinding INT = new BaseTypeBinding(10, TypeConstants.INT, new char[]{'I'});
    public static final BaseTypeBinding BYTE = new BaseTypeBinding(3, TypeConstants.BYTE, new char[]{'B'});
    public static final BaseTypeBinding SHORT = new BaseTypeBinding(4, TypeConstants.SHORT, new char[]{'S'});
    public static final BaseTypeBinding CHAR = new BaseTypeBinding(2, TypeConstants.CHAR, new char[]{'C'});
    public static final BaseTypeBinding LONG = new BaseTypeBinding(7, TypeConstants.LONG, new char[]{'J'});
    public static final BaseTypeBinding FLOAT = new BaseTypeBinding(9, TypeConstants.FLOAT, new char[]{'F'});
    public static final BaseTypeBinding DOUBLE = new BaseTypeBinding(8, TypeConstants.DOUBLE, new char[]{'D'});
    public static final BaseTypeBinding BOOLEAN = new BaseTypeBinding(5, TypeConstants.BOOLEAN, new char[]{'Z'});
    public static final BaseTypeBinding NULL = new BaseTypeBinding(12, TypeConstants.NULL, new char[]{'N'});
    public static final BaseTypeBinding VOID = new BaseTypeBinding(6, TypeConstants.VOID, new char[]{'V'});

    public static final TypeBinding wellKnownType(Scope scope, int id) {
        switch (id) {
            case 5: {
                return BOOLEAN;
            }
            case 3: {
                return BYTE;
            }
            case 2: {
                return CHAR;
            }
            case 4: {
                return SHORT;
            }
            case 8: {
                return DOUBLE;
            }
            case 9: {
                return FLOAT;
            }
            case 10: {
                return INT;
            }
            case 7: {
                return LONG;
            }
            case 1: {
                return scope.getJavaLangObject();
            }
            case 11: {
                return scope.getJavaLangString();
            }
        }
        return null;
    }

    public boolean canBeInstantiated() {
        return !this.isBaseType();
    }

    public TypeBinding capture(Scope scope, int position) {
        return this;
    }

    public TypeBinding closestMatch() {
        return this;
    }

    public List collectMissingTypes(List missingTypes) {
        return missingTypes;
    }

    public void collectSubstitutes(Scope scope, TypeBinding actualType, InferenceContext inferenceContext, int constraint) {
    }

    public abstract char[] constantPoolName();

    public String debugName() {
        return new String(this.readableName());
    }

    public int dimensions() {
        return 0;
    }

    public ReferenceBinding enclosingType() {
        return null;
    }

    public TypeBinding erasure() {
        return this;
    }

    public ReferenceBinding findSuperTypeOriginatingFrom(int wellKnownOriginalID, boolean originalIsClass) {
        if (!(this instanceof ReferenceBinding)) {
            return null;
        }
        ReferenceBinding reference = (ReferenceBinding)this;
        if (reference.id == wellKnownOriginalID || this.original().id == wellKnownOriginalID) {
            return reference;
        }
        ReferenceBinding currentType = reference;
        if (originalIsClass) {
            while ((currentType = currentType.superclass()) != null) {
                if (currentType.id == wellKnownOriginalID) {
                    return currentType;
                }
                if (currentType.original().id != wellKnownOriginalID) continue;
                return currentType;
            }
            return null;
        }
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            ReferenceBinding[] itsInterfaces;
            if ((itsInterfaces = currentType.superInterfaces()) == null || itsInterfaces == Binding.NO_SUPERINTERFACES) continue;
            if (interfacesToVisit == null) {
                interfacesToVisit = itsInterfaces;
                nextPosition = interfacesToVisit.length;
                continue;
            }
            int itsLength = itsInterfaces.length;
            if (nextPosition + itsLength >= interfacesToVisit.length) {
                ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
            }
            int a = 0;
            while (a < itsLength) {
                block19: {
                    ReferenceBinding next = itsInterfaces[a];
                    int b = 0;
                    while (b < nextPosition) {
                        if (next != interfacesToVisit[b]) {
                            ++b;
                            continue;
                        }
                        break block19;
                    }
                    interfacesToVisit[nextPosition++] = next;
                }
                ++a;
            }
        } while ((currentType = currentType.superclass()) != null);
        int i = 0;
        while (i < nextPosition) {
            currentType = interfacesToVisit[i];
            if (currentType.id == wellKnownOriginalID) {
                return currentType;
            }
            if (currentType.original().id == wellKnownOriginalID) {
                return currentType;
            }
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                int itsLength = itsInterfaces.length;
                if (nextPosition + itsLength >= interfacesToVisit.length) {
                    ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                    interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                    System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                }
                int a = 0;
                while (a < itsLength) {
                    block20: {
                        ReferenceBinding next = itsInterfaces[a];
                        int b = 0;
                        while (b < nextPosition) {
                            if (next != interfacesToVisit[b]) {
                                ++b;
                                continue;
                            }
                            break block20;
                        }
                        interfacesToVisit[nextPosition++] = next;
                    }
                    ++a;
                }
            }
            ++i;
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    public TypeBinding findSuperTypeOriginatingFrom(TypeBinding otherType) {
        if (this == otherType) {
            return this;
        }
        if (otherType == null) {
            return null;
        }
        switch (this.kind()) {
            case 68: {
                arrayType = (ArrayBinding)this;
                otherDim = otherType.dimensions();
                if (arrayType.dimensions != otherDim) {
                    switch (otherType.id) {
                        case 1: 
                        case 36: 
                        case 37: {
                            return otherType;
                        }
                    }
                    if (otherDim < arrayType.dimensions && otherType.leafComponentType().id == 1) {
                        return otherType;
                    }
                    return null;
                }
                if (!(arrayType.leafComponentType instanceof ReferenceBinding)) {
                    return null;
                }
                leafSuperType = arrayType.leafComponentType.findSuperTypeOriginatingFrom(otherType.leafComponentType());
                if (leafSuperType == null) {
                    return null;
                }
                return arrayType.environment().createArrayType(leafSuperType, arrayType.dimensions);
            }
            case 4100: {
                if (this.isCapture()) {
                    capture = (CaptureBinding)this;
                    captureBound = capture.firstBound;
                    if (captureBound instanceof ArrayBinding && (match = captureBound.findSuperTypeOriginatingFrom(otherType)) != null) {
                        return match;
                    }
                }
            }
            case 4: 
            case 260: 
            case 516: 
            case 1028: 
            case 2052: 
            case 8196: {
                otherType = otherType.original();
                if (this == otherType) {
                    return this;
                }
                if (this.original() == otherType) {
                    return this;
                }
                currentType = (ReferenceBinding)this;
                if (!otherType.isInterface()) {
                    while ((currentType = currentType.superclass()) != null) {
                        if (currentType == otherType) {
                            return currentType;
                        }
                        if (currentType.original() != otherType) continue;
                        return currentType;
                    }
                    return null;
                }
                interfacesToVisit = null;
                nextPosition = 0;
                do {
                    if ((itsInterfaces = currentType.superInterfaces()) == null || itsInterfaces == Binding.NO_SUPERINTERFACES) continue;
                    if (interfacesToVisit == null) {
                        interfacesToVisit = itsInterfaces;
                        nextPosition = interfacesToVisit.length;
                        continue;
                    }
                    itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        v0 = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(v0, 0, interfacesToVisit, 0, nextPosition);
                    }
                    a = 0;
                    while (a < itsLength) {
                        next = itsInterfaces[a];
                        b = 0;
                        while (b < nextPosition) {
                            if (next != interfacesToVisit[b]) {
                                ++b;
                                continue;
                            }
                            ** GOTO lbl65
                        }
                        interfacesToVisit[nextPosition++] = next;
lbl65:
                        // 2 sources

                        ++a;
                    }
                } while ((currentType = currentType.superclass()) != null);
                i = 0;
                while (i < nextPosition) {
                    currentType = interfacesToVisit[i];
                    if (currentType == otherType) {
                        return currentType;
                    }
                    if (currentType.original() == otherType) {
                        return currentType;
                    }
                    itsInterfaces = currentType.superInterfaces();
                    if (itsInterfaces == null || itsInterfaces == Binding.NO_SUPERINTERFACES) ** GOTO lbl94
                    itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        v1 = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(v1, 0, interfacesToVisit, 0, nextPosition);
                    }
                    a = 0;
                    while (a < itsLength) {
                        next = itsInterfaces[a];
                        b = 0;
                        while (b < nextPosition) {
                            if (next != interfacesToVisit[b]) {
                                ++b;
                                continue;
                            }
                            ** GOTO lbl92
                        }
                        interfacesToVisit[nextPosition++] = next;
lbl92:
                        // 2 sources

                        ++a;
                    }
lbl94:
                    // 2 sources

                    ++i;
                }
                break;
            }
        }
        return null;
    }

    public TypeBinding genericCast(TypeBinding targetType) {
        if (this == targetType) {
            return null;
        }
        TypeBinding targetErasure = targetType.erasure();
        if (this.erasure().findSuperTypeOriginatingFrom(targetErasure) != null) {
            return null;
        }
        return targetErasure;
    }

    public char[] genericTypeSignature() {
        return this.signature();
    }

    public TypeBinding getErasureCompatibleType(TypeBinding declaringClass) {
        switch (this.kind()) {
            case 4100: {
                TypeVariableBinding variable = (TypeVariableBinding)this;
                if (variable.erasure().findSuperTypeOriginatingFrom(declaringClass) != null) {
                    return this;
                }
                if (variable.superclass != null && variable.superclass.findSuperTypeOriginatingFrom(declaringClass) != null) {
                    return variable.superclass.getErasureCompatibleType(declaringClass);
                }
                int i = 0;
                int otherLength = variable.superInterfaces.length;
                while (i < otherLength) {
                    ReferenceBinding superInterface = variable.superInterfaces[i];
                    if (superInterface.findSuperTypeOriginatingFrom(declaringClass) != null) {
                        return superInterface.getErasureCompatibleType(declaringClass);
                    }
                    ++i;
                }
                return this;
            }
            case 8196: {
                WildcardBinding intersection = (WildcardBinding)this;
                if (intersection.erasure().findSuperTypeOriginatingFrom(declaringClass) != null) {
                    return this;
                }
                if (intersection.superclass != null && intersection.superclass.findSuperTypeOriginatingFrom(declaringClass) != null) {
                    return intersection.superclass.getErasureCompatibleType(declaringClass);
                }
                int i = 0;
                int otherLength = intersection.superInterfaces.length;
                while (i < otherLength) {
                    ReferenceBinding superInterface = intersection.superInterfaces[i];
                    if (superInterface.findSuperTypeOriginatingFrom(declaringClass) != null) {
                        return superInterface.getErasureCompatibleType(declaringClass);
                    }
                    ++i;
                }
                return this;
            }
        }
        return this;
    }

    public abstract PackageBinding getPackage();

    void initializeForStaticImports() {
    }

    public boolean isAnnotationType() {
        return false;
    }

    public final boolean isAnonymousType() {
        return (this.tagBits & 0x20L) != 0L;
    }

    public final boolean isArrayType() {
        return (this.tagBits & 1L) != 0L;
    }

    public final boolean isBaseType() {
        return (this.tagBits & 2L) != 0L;
    }

    public boolean isBoundParameterizedType() {
        return (this.tagBits & 0x800000L) != 0L;
    }

    public boolean isCapture() {
        return false;
    }

    public boolean isClass() {
        return false;
    }

    public abstract boolean isCompatibleWith(TypeBinding var1);

    public boolean isEnum() {
        return false;
    }

    public boolean isEquivalentTo(TypeBinding otherType) {
        if (this == otherType) {
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
        }
        return false;
    }

    public boolean isGenericType() {
        return false;
    }

    public final boolean isHierarchyInconsistent() {
        return (this.tagBits & 0x20000L) != 0L;
    }

    public boolean isInterface() {
        return false;
    }

    public boolean isIntersectionType() {
        return false;
    }

    public final boolean isLocalType() {
        return (this.tagBits & 0x10L) != 0L;
    }

    public final boolean isMemberType() {
        return (this.tagBits & 8L) != 0L;
    }

    public final boolean isNestedType() {
        return (this.tagBits & 4L) != 0L;
    }

    public final boolean isNumericType() {
        switch (this.id) {
            case 2: 
            case 3: 
            case 4: 
            case 7: 
            case 8: 
            case 9: 
            case 10: {
                return true;
            }
        }
        return false;
    }

    public final boolean isParameterizedType() {
        return this.kind() == 260;
    }

    public final boolean isParameterizedTypeWithActualArguments() {
        return this.kind() == 260 && ((ParameterizedTypeBinding)this).arguments != null;
    }

    public boolean isParameterizedWithOwnVariables() {
        if (this.kind() != 260) {
            return false;
        }
        ParameterizedTypeBinding paramType = (ParameterizedTypeBinding)this;
        if (paramType.arguments == null) {
            return false;
        }
        TypeVariableBinding[] variables = this.erasure().typeVariables();
        int i = 0;
        int length = variables.length;
        while (i < length) {
            if (variables[i] != paramType.arguments[i]) {
                return false;
            }
            ++i;
        }
        ReferenceBinding enclosing = paramType.enclosingType();
        return enclosing == null || !enclosing.erasure().isGenericType() || enclosing.isParameterizedWithOwnVariables();
    }

    private boolean isProvableDistinctSubType(TypeBinding otherType) {
        if (otherType.isInterface()) {
            if (this.isInterface()) {
                return false;
            }
            if (this.isArrayType() || this instanceof ReferenceBinding && ((ReferenceBinding)this).isFinal() || this.isTypeVariable() && ((TypeVariableBinding)this).superclass().isFinal()) {
                return !this.isCompatibleWith(otherType);
            }
            return false;
        }
        if (this.isInterface() ? otherType.isArrayType() || otherType instanceof ReferenceBinding && ((ReferenceBinding)otherType).isFinal() || otherType.isTypeVariable() && ((TypeVariableBinding)otherType).superclass().isFinal() : !this.isTypeVariable() && !otherType.isTypeVariable()) {
            return !this.isCompatibleWith(otherType);
        }
        return false;
    }

    public boolean isProvablyDistinct(TypeBinding otherType) {
        if (this == otherType) {
            return false;
        }
        if (otherType == null) {
            return true;
        }
        switch (this.kind()) {
            case 260: {
                ParameterizedTypeBinding paramType = (ParameterizedTypeBinding)this;
                switch (otherType.kind()) {
                    case 260: {
                        int otherLength;
                        ReferenceBinding enclosing;
                        ParameterizedTypeBinding otherParamType = (ParameterizedTypeBinding)otherType;
                        if (paramType.genericType() != otherParamType.genericType()) {
                            return true;
                        }
                        if (!paramType.isStatic() && (enclosing = this.enclosingType()) != null) {
                            ReferenceBinding otherEnclosing = otherParamType.enclosingType();
                            if (otherEnclosing == null) {
                                return true;
                            }
                            if ((otherEnclosing.tagBits & 0x40000000L) == 0L ? enclosing.isProvablyDistinct(otherEnclosing) : !enclosing.isEquivalentTo(otherParamType.enclosingType())) {
                                return true;
                            }
                        }
                        int length = paramType.arguments == null ? 0 : paramType.arguments.length;
                        TypeBinding[] otherArguments = otherParamType.arguments;
                        int n = otherLength = otherArguments == null ? 0 : otherArguments.length;
                        if (otherLength != length) {
                            return true;
                        }
                        int i = 0;
                        while (i < length) {
                            if (paramType.arguments[i].isProvablyDistinctTypeArgument(otherArguments[i], paramType, i)) {
                                return true;
                            }
                            ++i;
                        }
                        return false;
                    }
                    case 2052: {
                        int otherLength;
                        ReferenceBinding enclosing;
                        if (paramType.genericType() != otherType) {
                            return true;
                        }
                        if (!paramType.isStatic() && (enclosing = this.enclosingType()) != null) {
                            ReferenceBinding otherEnclosing = otherType.enclosingType();
                            if (otherEnclosing == null) {
                                return true;
                            }
                            if ((otherEnclosing.tagBits & 0x40000000L) == 0L ? enclosing != otherEnclosing : !enclosing.isEquivalentTo(otherType.enclosingType())) {
                                return true;
                            }
                        }
                        int length = paramType.arguments == null ? 0 : paramType.arguments.length;
                        TypeVariableBinding[] otherArguments = otherType.typeVariables();
                        int n = otherLength = otherArguments == null ? 0 : otherArguments.length;
                        if (otherLength != length) {
                            return true;
                        }
                        int i = 0;
                        while (i < length) {
                            if (paramType.arguments[i].isProvablyDistinctTypeArgument(otherArguments[i], paramType, i)) {
                                return true;
                            }
                            ++i;
                        }
                        return false;
                    }
                    case 1028: {
                        return this.erasure() != otherType.erasure();
                    }
                    case 4: {
                        return this.erasure() != otherType;
                    }
                }
                return true;
            }
            case 1028: {
                switch (otherType.kind()) {
                    case 4: 
                    case 260: 
                    case 1028: 
                    case 2052: {
                        return this.erasure() != otherType.erasure();
                    }
                }
                return true;
            }
            case 4: {
                switch (otherType.kind()) {
                    case 260: 
                    case 1028: {
                        return this != otherType.erasure();
                    }
                }
                break;
            }
        }
        return true;
    }

    private boolean isProvablyDistinctTypeArgument(TypeBinding otherArgument, ParameterizedTypeBinding paramType, int rank) {
        if (this == otherArgument) {
            return false;
        }
        TypeBinding upperBound1 = null;
        TypeBinding lowerBound1 = null;
        ReferenceBinding genericType = paramType.genericType();
        block0 : switch (this.kind()) {
            case 516: {
                WildcardBinding wildcard = (WildcardBinding)this;
                switch (wildcard.boundKind) {
                    case 1: {
                        upperBound1 = wildcard.bound;
                        break block0;
                    }
                    case 2: {
                        lowerBound1 = wildcard.bound;
                        break block0;
                    }
                    case 0: {
                        return false;
                    }
                }
                break;
            }
            case 8196: {
                break;
            }
            case 4100: {
                WildcardBinding wildcard;
                TypeVariableBinding variable = (TypeVariableBinding)this;
                if (variable.isCapture()) {
                    CaptureBinding capture = (CaptureBinding)variable;
                    switch (capture.wildcard.boundKind) {
                        case 1: {
                            upperBound1 = capture.wildcard.bound;
                            break block0;
                        }
                        case 2: {
                            lowerBound1 = capture.wildcard.bound;
                            break block0;
                        }
                        case 0: {
                            return false;
                        }
                    }
                    break;
                }
                if (variable.firstBound == null) {
                    return false;
                }
                TypeBinding eliminatedType = Scope.convertEliminatingTypeVariables(variable, genericType, rank, null);
                switch (eliminatedType.kind()) {
                    case 516: 
                    case 8196: {
                        wildcard = (WildcardBinding)eliminatedType;
                        switch (wildcard.boundKind) {
                            case 1: {
                                upperBound1 = wildcard.bound;
                                break block0;
                            }
                            case 2: {
                                lowerBound1 = wildcard.bound;
                                break block0;
                            }
                            case 0: {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        TypeBinding upperBound2 = null;
        TypeBinding lowerBound2 = null;
        block23 : switch (otherArgument.kind()) {
            case 516: {
                WildcardBinding otherWildcard = (WildcardBinding)otherArgument;
                switch (otherWildcard.boundKind) {
                    case 1: {
                        upperBound2 = otherWildcard.bound;
                        break block23;
                    }
                    case 2: {
                        lowerBound2 = otherWildcard.bound;
                        break block23;
                    }
                    case 0: {
                        return false;
                    }
                }
                break;
            }
            case 8196: {
                break;
            }
            case 4100: {
                WildcardBinding otherWildcard;
                TypeVariableBinding otherVariable = (TypeVariableBinding)otherArgument;
                if (otherVariable.isCapture()) {
                    CaptureBinding otherCapture = (CaptureBinding)otherVariable;
                    switch (otherCapture.wildcard.boundKind) {
                        case 1: {
                            upperBound2 = otherCapture.wildcard.bound;
                            break block23;
                        }
                        case 2: {
                            lowerBound2 = otherCapture.wildcard.bound;
                            break block23;
                        }
                        case 0: {
                            return false;
                        }
                    }
                    break;
                }
                if (otherVariable.firstBound == null) {
                    return false;
                }
                TypeBinding otherEliminatedType = Scope.convertEliminatingTypeVariables(otherVariable, genericType, rank, null);
                switch (otherEliminatedType.kind()) {
                    case 516: 
                    case 8196: {
                        otherWildcard = (WildcardBinding)otherEliminatedType;
                        switch (otherWildcard.boundKind) {
                            case 1: {
                                upperBound2 = otherWildcard.bound;
                                break block23;
                            }
                            case 2: {
                                lowerBound2 = otherWildcard.bound;
                                break block23;
                            }
                            case 0: {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        if (lowerBound1 != null) {
            if (lowerBound2 != null) {
                return false;
            }
            if (upperBound2 != null) {
                if (lowerBound1.isTypeVariable() || upperBound2.isTypeVariable()) {
                    return false;
                }
                return !lowerBound1.isCompatibleWith(upperBound2);
            }
            if (lowerBound1.isTypeVariable() || otherArgument.isTypeVariable()) {
                return false;
            }
            return !lowerBound1.isCompatibleWith(otherArgument);
        }
        if (upperBound1 != null) {
            if (lowerBound2 != null) {
                return !lowerBound2.isCompatibleWith(upperBound1);
            }
            if (upperBound2 != null) {
                return upperBound1.isProvableDistinctSubType(upperBound2) && upperBound2.isProvableDistinctSubType(upperBound1);
            }
            return otherArgument.isProvableDistinctSubType(upperBound1);
        }
        if (lowerBound2 != null) {
            if (lowerBound2.isTypeVariable() || this.isTypeVariable()) {
                return false;
            }
            return !lowerBound2.isCompatibleWith(this);
        }
        if (upperBound2 != null) {
            return this.isProvableDistinctSubType(upperBound2);
        }
        return true;
    }

    public final boolean isRawType() {
        return this.kind() == 1028;
    }

    public boolean isReifiable() {
        TypeBinding leafType = this.leafComponentType();
        if (!(leafType instanceof ReferenceBinding)) {
            return true;
        }
        ReferenceBinding current = (ReferenceBinding)leafType;
        do {
            switch (current.kind()) {
                case 516: 
                case 2052: 
                case 4100: 
                case 8196: {
                    return false;
                }
                case 260: {
                    if (!current.isBoundParameterizedType()) break;
                    return false;
                }
                case 1028: {
                    return true;
                }
            }
            if (current.isStatic()) {
                return true;
            }
            if (!current.isLocalType()) continue;
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)current.erasure();
            MethodBinding enclosingMethod = localTypeBinding.enclosingMethod;
            if (enclosingMethod == null || !enclosingMethod.isStatic()) continue;
            return true;
        } while ((current = current.enclosingType()) != null);
        return true;
    }

    public boolean isThrowable() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean isTypeArgumentContainedBy(TypeBinding otherType) {
        if (this == otherType) {
            return true;
        }
        switch (otherType.kind()) {
            case 4100: {
                if (!this.isParameterizedType()) return false;
                if (!otherType.isCapture()) {
                    return false;
                }
                CaptureBinding capture = (CaptureBinding)otherType;
                WildcardBinding wildcard = capture.wildcard;
                TypeBinding upperBound = null;
                TypeBinding[] otherBounds = null;
                switch (wildcard.boundKind) {
                    case 2: {
                        return false;
                    }
                    case 0: {
                        TypeVariableBinding variable = wildcard.genericType.typeVariables()[wildcard.rank];
                        upperBound = variable.upperBound();
                        otherBounds = variable.boundsCount() > 1 ? variable.otherUpperBounds() : null;
                        break;
                    }
                    case 1: {
                        upperBound = wildcard.bound;
                        otherBounds = wildcard.otherBounds;
                        break;
                    }
                }
                if (upperBound.id == 1 && otherBounds == null) {
                    return false;
                }
                otherType = capture.environment.createWildcard(null, 0, upperBound, otherBounds, 1);
                return this.isTypeArgumentContainedBy(otherType);
            }
            case 516: 
            case 8196: {
                TypeBinding lowerBound = this;
                TypeBinding upperBound = this;
                switch (this.kind()) {
                    case 516: 
                    case 8196: {
                        WildcardBinding wildcard = (WildcardBinding)this;
                        switch (wildcard.boundKind) {
                            case 1: {
                                if (wildcard.otherBounds != null) break;
                                upperBound = wildcard.bound;
                                lowerBound = null;
                                break;
                            }
                            case 2: {
                                upperBound = wildcard;
                                lowerBound = wildcard.bound;
                                break;
                            }
                            case 0: {
                                upperBound = wildcard;
                                lowerBound = null;
                            }
                        }
                        break;
                    }
                    case 4100: {
                        if (!this.isCapture()) break;
                        CaptureBinding capture = (CaptureBinding)this;
                        if (capture.lowerBound == null) break;
                        lowerBound = capture.lowerBound;
                        break;
                    }
                }
                WildcardBinding otherWildcard = (WildcardBinding)otherType;
                if (otherWildcard.otherBounds != null) {
                    return false;
                }
                TypeBinding otherBound = otherWildcard.bound;
                switch (otherWildcard.boundKind) {
                    case 1: {
                        if (otherBound == this) {
                            return true;
                        }
                        if (upperBound == null) {
                            return false;
                        }
                        TypeBinding match = upperBound.findSuperTypeOriginatingFrom(otherBound);
                        if (match == null) return upperBound.isCompatibleWith(otherBound);
                        if (!(match = match.leafComponentType()).isRawType()) return upperBound.isCompatibleWith(otherBound);
                        if (match != otherBound.leafComponentType()) return false;
                        return true;
                    }
                    case 2: {
                        if (otherBound == this) {
                            return true;
                        }
                        if (lowerBound == null) {
                            return false;
                        }
                        TypeBinding match = otherBound.findSuperTypeOriginatingFrom(lowerBound);
                        if (match == null) return otherBound.isCompatibleWith(lowerBound);
                        if (!(match = match.leafComponentType()).isRawType()) return otherBound.isCompatibleWith(lowerBound);
                        if (match != lowerBound.leafComponentType()) return false;
                        return true;
                    }
                }
                return true;
            }
            case 260: {
                int otherLength;
                ReferenceBinding enclosing;
                if (!this.isParameterizedType()) {
                    return false;
                }
                ParameterizedTypeBinding paramType = (ParameterizedTypeBinding)this;
                ParameterizedTypeBinding otherParamType = (ParameterizedTypeBinding)otherType;
                if (paramType.actualType() != otherParamType.actualType()) {
                    return false;
                }
                if (!paramType.isStatic() && (enclosing = this.enclosingType()) != null) {
                    ReferenceBinding otherEnclosing = otherParamType.enclosingType();
                    if (otherEnclosing == null) {
                        return false;
                    }
                    if ((otherEnclosing.tagBits & 0x40000000L) == 0L ? enclosing != otherEnclosing : !enclosing.isEquivalentTo(otherParamType.enclosingType())) {
                        return false;
                    }
                }
                int length = paramType.arguments == null ? 0 : paramType.arguments.length;
                TypeBinding[] otherArguments = otherParamType.arguments;
                int n = otherLength = otherArguments == null ? 0 : otherArguments.length;
                if (otherLength != length) {
                    return false;
                }
                int i = 0;
                while (i < length) {
                    TypeBinding argument = paramType.arguments[i];
                    TypeBinding otherArgument = otherArguments[i];
                    if (argument != otherArgument) {
                        int kind = argument.kind();
                        if (otherArgument.kind() != kind) {
                            return false;
                        }
                        block23 : switch (kind) {
                            case 260: {
                                if (!argument.isTypeArgumentContainedBy(otherArgument)) return false;
                                break;
                            }
                            case 516: 
                            case 8196: {
                                WildcardBinding wildcard = (WildcardBinding)argument;
                                WildcardBinding otherWildcard = (WildcardBinding)otherArgument;
                                switch (wildcard.boundKind) {
                                    case 1: {
                                        if (otherWildcard.boundKind != 0) return false;
                                        if (wildcard.bound != wildcard.typeVariable().upperBound()) return false;
                                        break block23;
                                    }
                                    case 2: {
                                        break;
                                    }
                                    case 0: {
                                        if (otherWildcard.boundKind != 1) return false;
                                        if (otherWildcard.bound != otherWildcard.typeVariable().upperBound()) return false;
                                        break block23;
                                    }
                                }
                            }
                            default: {
                                return false;
                            }
                        }
                    }
                    ++i;
                }
                return true;
            }
        }
        if (otherType.id != 1) return false;
        switch (this.kind()) {
            case 516: {
                WildcardBinding wildcard = (WildcardBinding)this;
                if (wildcard.boundKind != 2) return false;
                if (wildcard.bound.id != 1) return false;
                return true;
            }
        }
        return false;
    }

    public boolean isTypeVariable() {
        return false;
    }

    public boolean isUnboundWildcard() {
        return false;
    }

    public boolean isUncheckedException(boolean includeSupertype) {
        return false;
    }

    public boolean isWildcard() {
        return false;
    }

    public int kind() {
        return 4;
    }

    public TypeBinding leafComponentType() {
        return this;
    }

    public boolean needsUncheckedConversion(TypeBinding targetType) {
        if (this == targetType) {
            return false;
        }
        if (!((targetType = targetType.leafComponentType()) instanceof ReferenceBinding)) {
            return false;
        }
        TypeBinding currentType = this.leafComponentType();
        TypeBinding match = currentType.findSuperTypeOriginatingFrom(targetType);
        if (!(match instanceof ReferenceBinding)) {
            return false;
        }
        ReferenceBinding compatible = (ReferenceBinding)match;
        while (compatible.isRawType()) {
            if (targetType.isBoundParameterizedType()) {
                return true;
            }
            if (compatible.isStatic() || (compatible = compatible.enclosingType()) == null || (targetType = targetType.enclosingType()) == null) break;
        }
        return false;
    }

    public TypeBinding original() {
        switch (this.kind()) {
            case 68: 
            case 260: 
            case 1028: {
                return this.erasure();
            }
        }
        return this;
    }

    public char[] qualifiedPackageName() {
        PackageBinding packageBinding = this.getPackage();
        return packageBinding == null || packageBinding.compoundName == CharOperation.NO_CHAR_CHAR ? CharOperation.NO_CHAR : packageBinding.readableName();
    }

    public abstract char[] qualifiedSourceName();

    public char[] signature() {
        return this.constantPoolName();
    }

    public abstract char[] sourceName();

    public void swapUnresolved(UnresolvedReferenceBinding unresolvedType, ReferenceBinding resolvedType, LookupEnvironment environment) {
    }

    public TypeVariableBinding[] typeVariables() {
        return Binding.NO_TYPE_VARIABLES;
    }
}

