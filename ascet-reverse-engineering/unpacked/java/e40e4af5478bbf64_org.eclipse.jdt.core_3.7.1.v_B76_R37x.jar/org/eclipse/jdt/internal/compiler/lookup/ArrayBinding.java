/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public final class ArrayBinding
extends TypeBinding {
    public static final FieldBinding ArrayLength = new FieldBinding(TypeConstants.LENGTH, TypeBinding.INT, 17, null, Constant.NotAConstant);
    public TypeBinding leafComponentType;
    public int dimensions;
    LookupEnvironment environment;
    char[] constantPoolName;
    char[] genericTypeSignature;

    public ArrayBinding(TypeBinding type, int dimensions, LookupEnvironment environment) {
        this.tagBits |= 1L;
        this.leafComponentType = type;
        this.dimensions = dimensions;
        this.environment = environment;
        if (type instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding)type).addWrapper(this, environment);
        } else {
            this.tagBits |= type.tagBits & 0x60000880L;
        }
    }

    public TypeBinding closestMatch() {
        if (this.isValidBinding()) {
            return this;
        }
        TypeBinding leafClosestMatch = this.leafComponentType.closestMatch();
        if (leafClosestMatch == null) {
            return null;
        }
        return this.environment.createArrayType(this.leafComponentType.closestMatch(), this.dimensions);
    }

    public List collectMissingTypes(List missingTypes) {
        if ((this.tagBits & 0x80L) != 0L) {
            missingTypes = this.leafComponentType.collectMissingTypes(missingTypes);
        }
        return missingTypes;
    }

    public void collectSubstitutes(Scope scope, TypeBinding actualType, InferenceContext inferenceContext, int constraint) {
        if ((this.tagBits & 0x20000000L) == 0L) {
            return;
        }
        if (actualType == TypeBinding.NULL) {
            return;
        }
        switch (actualType.kind()) {
            case 68: {
                int actualDim = actualType.dimensions();
                if (actualDim == this.dimensions) {
                    this.leafComponentType.collectSubstitutes(scope, actualType.leafComponentType(), inferenceContext, constraint);
                    break;
                }
                if (actualDim <= this.dimensions) break;
                ArrayBinding actualReducedType = this.environment.createArrayType(actualType.leafComponentType(), actualDim - this.dimensions);
                this.leafComponentType.collectSubstitutes(scope, actualReducedType, inferenceContext, constraint);
                break;
            }
        }
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        char[] brackets = new char[this.dimensions];
        int i = this.dimensions - 1;
        while (i >= 0) {
            brackets[i] = 91;
            --i;
        }
        return CharOperation.concat(brackets, this.leafComponentType.computeUniqueKey(isLeaf));
    }

    public char[] constantPoolName() {
        if (this.constantPoolName != null) {
            return this.constantPoolName;
        }
        char[] brackets = new char[this.dimensions];
        int i = this.dimensions - 1;
        while (i >= 0) {
            brackets[i] = 91;
            --i;
        }
        this.constantPoolName = CharOperation.concat(brackets, this.leafComponentType.signature());
        return this.constantPoolName;
    }

    public String debugName() {
        StringBuffer brackets = new StringBuffer(this.dimensions * 2);
        int i = this.dimensions;
        while (--i >= 0) {
            brackets.append("[]");
        }
        return String.valueOf(this.leafComponentType.debugName()) + brackets.toString();
    }

    public int dimensions() {
        return this.dimensions;
    }

    public TypeBinding elementsType() {
        if (this.dimensions == 1) {
            return this.leafComponentType;
        }
        return this.environment.createArrayType(this.leafComponentType, this.dimensions - 1);
    }

    public TypeBinding erasure() {
        TypeBinding erasedType = this.leafComponentType.erasure();
        if (this.leafComponentType != erasedType) {
            return this.environment.createArrayType(erasedType, this.dimensions);
        }
        return this;
    }

    public LookupEnvironment environment() {
        return this.environment;
    }

    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            char[] brackets = new char[this.dimensions];
            int i = this.dimensions - 1;
            while (i >= 0) {
                brackets[i] = 91;
                --i;
            }
            this.genericTypeSignature = CharOperation.concat(brackets, this.leafComponentType.genericTypeSignature());
        }
        return this.genericTypeSignature;
    }

    public PackageBinding getPackage() {
        return this.leafComponentType.getPackage();
    }

    public int hashCode() {
        return this.leafComponentType == null ? super.hashCode() : this.leafComponentType.hashCode();
    }

    public boolean isCompatibleWith(TypeBinding otherType) {
        if (this == otherType) {
            return true;
        }
        switch (otherType.kind()) {
            case 68: {
                ArrayBinding otherArray = (ArrayBinding)otherType;
                if (otherArray.leafComponentType.isBaseType()) {
                    return false;
                }
                if (this.dimensions == otherArray.dimensions) {
                    return this.leafComponentType.isCompatibleWith(otherArray.leafComponentType);
                }
                if (this.dimensions >= otherArray.dimensions) break;
                return false;
            }
            case 132: {
                return false;
            }
            case 516: 
            case 8196: {
                return ((WildcardBinding)otherType).boundCheck(this);
            }
            case 4100: {
                if (otherType.isCapture()) {
                    CaptureBinding otherCapture = (CaptureBinding)otherType;
                    TypeBinding otherLowerBound = otherCapture.lowerBound;
                    if (otherLowerBound != null) {
                        if (!otherLowerBound.isArrayType()) {
                            return false;
                        }
                        return this.isCompatibleWith(otherLowerBound);
                    }
                }
                return false;
            }
        }
        switch (otherType.leafComponentType().id) {
            case 1: 
            case 36: 
            case 37: {
                return true;
            }
        }
        return false;
    }

    public int kind() {
        return 68;
    }

    public TypeBinding leafComponentType() {
        return this.leafComponentType;
    }

    public int problemId() {
        return this.leafComponentType.problemId();
    }

    public char[] qualifiedSourceName() {
        char[] brackets = new char[this.dimensions * 2];
        int i = this.dimensions * 2 - 1;
        while (i >= 0) {
            brackets[i] = 93;
            brackets[i - 1] = 91;
            i -= 2;
        }
        return CharOperation.concat(this.leafComponentType.qualifiedSourceName(), brackets);
    }

    public char[] readableName() {
        char[] brackets = new char[this.dimensions * 2];
        int i = this.dimensions * 2 - 1;
        while (i >= 0) {
            brackets[i] = 93;
            brackets[i - 1] = 91;
            i -= 2;
        }
        return CharOperation.concat(this.leafComponentType.readableName(), brackets);
    }

    public char[] shortReadableName() {
        char[] brackets = new char[this.dimensions * 2];
        int i = this.dimensions * 2 - 1;
        while (i >= 0) {
            brackets[i] = 93;
            brackets[i - 1] = 91;
            i -= 2;
        }
        return CharOperation.concat(this.leafComponentType.shortReadableName(), brackets);
    }

    public char[] sourceName() {
        char[] brackets = new char[this.dimensions * 2];
        int i = this.dimensions * 2 - 1;
        while (i >= 0) {
            brackets[i] = 93;
            brackets[i - 1] = 91;
            i -= 2;
        }
        return CharOperation.concat(this.leafComponentType.sourceName(), brackets);
    }

    public void swapUnresolved(UnresolvedReferenceBinding unresolvedType, ReferenceBinding resolvedType, LookupEnvironment env) {
        if (this.leafComponentType == unresolvedType) {
            this.leafComponentType = env.convertUnresolvedBinaryToRawType(resolvedType);
            this.tagBits |= this.leafComponentType.tagBits & 0x60000080L;
        }
    }

    public String toString() {
        return this.leafComponentType != null ? this.debugName() : "NULL TYPE ARRAY";
    }
}

