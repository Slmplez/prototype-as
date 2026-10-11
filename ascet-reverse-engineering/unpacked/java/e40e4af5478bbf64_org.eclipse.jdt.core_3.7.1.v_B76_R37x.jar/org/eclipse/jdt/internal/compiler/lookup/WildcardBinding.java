/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;

public class WildcardBinding
extends ReferenceBinding {
    public ReferenceBinding genericType;
    public int rank;
    public TypeBinding bound;
    public TypeBinding[] otherBounds;
    char[] genericSignature;
    public int boundKind;
    ReferenceBinding superclass;
    ReferenceBinding[] superInterfaces;
    TypeVariableBinding typeVariable;
    LookupEnvironment environment;

    public WildcardBinding(ReferenceBinding genericType, int rank, TypeBinding bound, TypeBinding[] otherBounds, int boundKind, LookupEnvironment environment) {
        this.rank = rank;
        this.boundKind = boundKind;
        this.modifiers = 0x40000001;
        this.environment = environment;
        this.initialize(genericType, bound, otherBounds);
        if (genericType instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding)genericType).addWrapper(this, environment);
        }
        if (bound instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding)bound).addWrapper(this, environment);
        }
        this.tagBits |= 0x1000000L;
    }

    public int kind() {
        return this.otherBounds == null ? 516 : 8196;
    }

    public boolean boundCheck(TypeBinding argumentType) {
        switch (this.boundKind) {
            case 0: {
                return true;
            }
            case 1: {
                if (!argumentType.isCompatibleWith(this.bound)) {
                    return false;
                }
                int i = 0;
                int length = this.otherBounds == null ? 0 : this.otherBounds.length;
                while (i < length) {
                    if (!argumentType.isCompatibleWith(this.otherBounds[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
        }
        return argumentType.isCompatibleWith(this.bound);
    }

    public boolean canBeInstantiated() {
        return false;
    }

    public List collectMissingTypes(List missingTypes) {
        if ((this.tagBits & 0x80L) != 0L) {
            missingTypes = this.bound.collectMissingTypes(missingTypes);
        }
        return missingTypes;
    }

    public void collectSubstitutes(Scope scope, TypeBinding actualType, InferenceContext inferenceContext, int constraint) {
        block82: {
            if ((this.tagBits & 0x20000000L) == 0L) {
                return;
            }
            if (actualType == TypeBinding.NULL) {
                return;
            }
            if (actualType.isCapture()) {
                CaptureBinding capture = (CaptureBinding)actualType;
                actualType = capture.wildcard;
            }
            block0 : switch (constraint) {
                case 1: {
                    WildcardBinding actualWildcard;
                    block5 : switch (this.boundKind) {
                        case 0: {
                            break;
                        }
                        case 1: {
                            block10 : switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break block10;
                                        }
                                        case 1: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 1);
                                            break block10;
                                        }
                                    }
                                    break;
                                }
                                case 8196: {
                                    WildcardBinding actualIntersection = (WildcardBinding)actualType;
                                    this.bound.collectSubstitutes(scope, actualIntersection.bound, inferenceContext, 1);
                                    int i = 0;
                                    int length = actualIntersection.otherBounds.length;
                                    while (i < length) {
                                        this.bound.collectSubstitutes(scope, actualIntersection.otherBounds[i], inferenceContext, 1);
                                        ++i;
                                    }
                                    break block0;
                                }
                                default: {
                                    this.bound.collectSubstitutes(scope, actualType, inferenceContext, 1);
                                    break;
                                }
                            }
                            break block0;
                        }
                        case 2: {
                            switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break block5;
                                        }
                                        case 1: {
                                            break block5;
                                        }
                                        case 2: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 2);
                                            int i = 0;
                                            int length = actualWildcard.otherBounds == null ? 0 : actualWildcard.otherBounds.length;
                                            while (i < length) {
                                                this.bound.collectSubstitutes(scope, actualWildcard.otherBounds[i], inferenceContext, 2);
                                                ++i;
                                            }
                                            break block0;
                                        }
                                    }
                                    break block5;
                                }
                                case 8196: {
                                    break block5;
                                }
                            }
                            this.bound.collectSubstitutes(scope, actualType, inferenceContext, 2);
                        }
                    }
                    break;
                }
                case 0: {
                    WildcardBinding actualWildcard;
                    block27 : switch (this.boundKind) {
                        case 0: {
                            break;
                        }
                        case 1: {
                            switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break;
                                        }
                                        case 1: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 0);
                                            int i = 0;
                                            int length = actualWildcard.otherBounds == null ? 0 : actualWildcard.otherBounds.length;
                                            while (i < length) {
                                                this.bound.collectSubstitutes(scope, actualWildcard.otherBounds[i], inferenceContext, 0);
                                                ++i;
                                            }
                                            break block0;
                                        }
                                    }
                                    break block0;
                                }
                                case 8196: {
                                    WildcardBinding actuaIntersection = (WildcardBinding)actualType;
                                    this.bound.collectSubstitutes(scope, actuaIntersection.bound, inferenceContext, 0);
                                    int i = 0;
                                    int length = actuaIntersection.otherBounds == null ? 0 : actuaIntersection.otherBounds.length;
                                    while (i < length) {
                                        this.bound.collectSubstitutes(scope, actuaIntersection.otherBounds[i], inferenceContext, 0);
                                        ++i;
                                    }
                                    break block0;
                                }
                            }
                            break block0;
                        }
                        case 2: {
                            switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break block27;
                                        }
                                        case 1: {
                                            break block27;
                                        }
                                        case 2: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 0);
                                            int i = 0;
                                            int length = actualWildcard.otherBounds == null ? 0 : actualWildcard.otherBounds.length;
                                            while (i < length) {
                                                this.bound.collectSubstitutes(scope, actualWildcard.otherBounds[i], inferenceContext, 0);
                                                ++i;
                                            }
                                            break block0;
                                        }
                                    }
                                    break block27;
                                }
                                case 8196: {
                                    break block27;
                                }
                            }
                        }
                    }
                    break;
                }
                case 2: {
                    WildcardBinding actualWildcard;
                    switch (this.boundKind) {
                        case 0: {
                            break block0;
                        }
                        case 1: {
                            switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break;
                                        }
                                        case 1: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 2);
                                            int i = 0;
                                            int length = actualWildcard.otherBounds == null ? 0 : actualWildcard.otherBounds.length;
                                            while (i < length) {
                                                this.bound.collectSubstitutes(scope, actualWildcard.otherBounds[i], inferenceContext, 2);
                                                ++i;
                                            }
                                            break block82;
                                        }
                                    }
                                    break block82;
                                }
                                case 8196: {
                                    WildcardBinding actualIntersection = (WildcardBinding)actualType;
                                    this.bound.collectSubstitutes(scope, actualIntersection.bound, inferenceContext, 2);
                                    int i = 0;
                                    int length = actualIntersection.otherBounds == null ? 0 : actualIntersection.otherBounds.length;
                                    while (i < length) {
                                        this.bound.collectSubstitutes(scope, actualIntersection.otherBounds[i], inferenceContext, 2);
                                        ++i;
                                    }
                                    break block82;
                                }
                            }
                            break block82;
                        }
                        case 2: {
                            switch (actualType.kind()) {
                                case 516: {
                                    actualWildcard = (WildcardBinding)actualType;
                                    switch (actualWildcard.boundKind) {
                                        case 0: {
                                            break block0;
                                        }
                                        case 1: {
                                            break block0;
                                        }
                                        case 2: {
                                            this.bound.collectSubstitutes(scope, actualWildcard.bound, inferenceContext, 2);
                                            int i = 0;
                                            int length = actualWildcard.otherBounds == null ? 0 : actualWildcard.otherBounds.length;
                                            while (i < length) {
                                                this.bound.collectSubstitutes(scope, actualWildcard.otherBounds[i], inferenceContext, 2);
                                                ++i;
                                            }
                                            break block0;
                                        }
                                    }
                                    break block0;
                                }
                                case 8196: {
                                    break block0;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        char[] wildCardKey;
        char[] genericTypeKey = this.genericType.computeUniqueKey(false);
        char[] rankComponent = (String.valueOf('{') + String.valueOf(this.rank) + '}').toCharArray();
        switch (this.boundKind) {
            case 0: {
                wildCardKey = TypeConstants.WILDCARD_STAR;
                break;
            }
            case 1: {
                wildCardKey = CharOperation.concat(TypeConstants.WILDCARD_PLUS, this.bound.computeUniqueKey(false));
                break;
            }
            default: {
                wildCardKey = CharOperation.concat(TypeConstants.WILDCARD_MINUS, this.bound.computeUniqueKey(false));
            }
        }
        return CharOperation.concat(genericTypeKey, rankComponent, wildCardKey);
    }

    public char[] constantPoolName() {
        return this.erasure().constantPoolName();
    }

    public String debugName() {
        return this.toString();
    }

    public TypeBinding erasure() {
        if (this.otherBounds == null) {
            if (this.boundKind == 1) {
                return this.bound.erasure();
            }
            TypeVariableBinding var = this.typeVariable();
            if (var != null) {
                return var.erasure();
            }
            return this.genericType;
        }
        return this.bound.id == 1 ? this.otherBounds[0].erasure() : this.bound.erasure();
    }

    public char[] genericTypeSignature() {
        if (this.genericSignature == null) {
            switch (this.boundKind) {
                case 0: {
                    this.genericSignature = TypeConstants.WILDCARD_STAR;
                    break;
                }
                case 1: {
                    this.genericSignature = CharOperation.concat(TypeConstants.WILDCARD_PLUS, this.bound.genericTypeSignature());
                    break;
                }
                default: {
                    this.genericSignature = CharOperation.concat(TypeConstants.WILDCARD_MINUS, this.bound.genericTypeSignature());
                }
            }
        }
        return this.genericSignature;
    }

    public int hashCode() {
        return this.genericType.hashCode();
    }

    void initialize(ReferenceBinding someGenericType, TypeBinding someBound, TypeBinding[] someOtherBounds) {
        this.genericType = someGenericType;
        this.bound = someBound;
        this.otherBounds = someOtherBounds;
        if (someGenericType != null) {
            this.fPackage = someGenericType.getPackage();
        }
        if (someBound != null) {
            this.tagBits |= someBound.tagBits & 0x20000880L;
        }
        if (someOtherBounds != null) {
            int i = 0;
            int max = someOtherBounds.length;
            while (i < max) {
                TypeBinding someOtherBound = someOtherBounds[i];
                this.tagBits |= someOtherBound.tagBits & 0x800L;
                ++i;
            }
        }
    }

    public boolean isSuperclassOf(ReferenceBinding otherType) {
        if (this.boundKind == 2) {
            if (this.bound instanceof ReferenceBinding) {
                return ((ReferenceBinding)this.bound).isSuperclassOf(otherType);
            }
            return otherType.id == 1;
        }
        return false;
    }

    public boolean isIntersectionType() {
        return this.otherBounds != null;
    }

    public boolean isHierarchyConnected() {
        return this.superclass != null && this.superInterfaces != null;
    }

    public boolean isUnboundWildcard() {
        return this.boundKind == 0;
    }

    public boolean isWildcard() {
        return true;
    }

    public char[] readableName() {
        switch (this.boundKind) {
            case 0: {
                return TypeConstants.WILDCARD_NAME;
            }
            case 1: {
                if (this.otherBounds == null) {
                    return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.readableName());
                }
                StringBuffer buffer = new StringBuffer(10);
                buffer.append(this.bound.readableName());
                int i = 0;
                int length = this.otherBounds.length;
                while (i < length) {
                    buffer.append('&').append(this.otherBounds[i].readableName());
                    ++i;
                }
                int length2 = buffer.length();
                char[] result = new char[length2];
                buffer.getChars(0, length2, result, 0);
                return result;
            }
        }
        return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.readableName());
    }

    ReferenceBinding resolve() {
        if ((this.tagBits & 0x1000000L) == 0L) {
            return this;
        }
        this.tagBits &= 0xFFFFFFFFFEFFFFFFL;
        BinaryTypeBinding.resolveType(this.genericType, this.environment, false);
        switch (this.boundKind) {
            case 1: {
                TypeBinding resolveType;
                this.bound = resolveType = BinaryTypeBinding.resolveType(this.bound, this.environment, true);
                this.tagBits |= resolveType.tagBits & 0x800L;
                int i = 0;
                int length = this.otherBounds == null ? 0 : this.otherBounds.length;
                while (i < length) {
                    this.otherBounds[i] = resolveType = BinaryTypeBinding.resolveType(this.otherBounds[i], this.environment, true);
                    this.tagBits |= resolveType.tagBits & 0x800L;
                    ++i;
                }
                break;
            }
            case 2: {
                TypeBinding resolveType;
                this.bound = resolveType = BinaryTypeBinding.resolveType(this.bound, this.environment, true);
                this.tagBits |= resolveType.tagBits & 0x800L;
            }
        }
        return this;
    }

    public char[] shortReadableName() {
        switch (this.boundKind) {
            case 0: {
                return TypeConstants.WILDCARD_NAME;
            }
            case 1: {
                if (this.otherBounds == null) {
                    return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.shortReadableName());
                }
                StringBuffer buffer = new StringBuffer(10);
                buffer.append(this.bound.shortReadableName());
                int i = 0;
                int length = this.otherBounds.length;
                while (i < length) {
                    buffer.append('&').append(this.otherBounds[i].shortReadableName());
                    ++i;
                }
                int length2 = buffer.length();
                char[] result = new char[length2];
                buffer.getChars(0, length2, result, 0);
                return result;
            }
        }
        return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.shortReadableName());
    }

    public char[] signature() {
        if (this.signature == null) {
            switch (this.boundKind) {
                case 1: {
                    return this.bound.signature();
                }
            }
            return this.typeVariable().signature();
        }
        return this.signature;
    }

    public char[] sourceName() {
        switch (this.boundKind) {
            case 0: {
                return TypeConstants.WILDCARD_NAME;
            }
            case 1: {
                return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.sourceName());
            }
        }
        return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.sourceName());
    }

    public ReferenceBinding superclass() {
        if (this.superclass == null) {
            TypeBinding superType = null;
            if (this.boundKind == 1 && !this.bound.isInterface()) {
                superType = this.bound;
            } else {
                TypeVariableBinding variable = this.typeVariable();
                if (variable != null) {
                    superType = variable.firstBound;
                }
            }
            this.superclass = superType instanceof ReferenceBinding && !superType.isInterface() ? (ReferenceBinding)superType : this.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
        }
        return this.superclass;
    }

    public ReferenceBinding[] superInterfaces() {
        if (this.superInterfaces == null) {
            this.superInterfaces = this.typeVariable() != null ? this.typeVariable.superInterfaces() : Binding.NO_SUPERINTERFACES;
            if (this.boundKind == 1) {
                int length;
                if (this.bound.isInterface()) {
                    length = this.superInterfaces.length;
                    this.superInterfaces = new ReferenceBinding[length + 1];
                    System.arraycopy(this.superInterfaces, 0, this.superInterfaces, 1, length);
                    this.superInterfaces[0] = (ReferenceBinding)this.bound;
                }
                if (this.otherBounds != null) {
                    length = this.superInterfaces.length;
                    int otherLength = this.otherBounds.length;
                    this.superInterfaces = new ReferenceBinding[length + otherLength];
                    System.arraycopy(this.superInterfaces, 0, this.superInterfaces, 0, length);
                    int i = 0;
                    while (i < otherLength) {
                        this.superInterfaces[length + i] = (ReferenceBinding)this.otherBounds[i];
                        ++i;
                    }
                }
            }
        }
        return this.superInterfaces;
    }

    public void swapUnresolved(UnresolvedReferenceBinding unresolvedType, ReferenceBinding resolvedType, LookupEnvironment env) {
        boolean affected = false;
        if (this.genericType == unresolvedType) {
            this.genericType = resolvedType;
            affected = true;
        }
        if (this.bound == unresolvedType) {
            this.bound = env.convertUnresolvedBinaryToRawType(resolvedType);
            affected = true;
        }
        if (this.otherBounds != null) {
            int i = 0;
            int length = this.otherBounds.length;
            while (i < length) {
                if (this.otherBounds[i] == unresolvedType) {
                    this.otherBounds[i] = env.convertUnresolvedBinaryToRawType(resolvedType);
                    affected = true;
                }
                ++i;
            }
        }
        if (affected) {
            this.initialize(this.genericType, this.bound, this.otherBounds);
        }
    }

    public String toString() {
        switch (this.boundKind) {
            case 0: {
                return new String(TypeConstants.WILDCARD_NAME);
            }
            case 1: {
                if (this.otherBounds == null) {
                    return new String(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.debugName().toCharArray()));
                }
                StringBuffer buffer = new StringBuffer(this.bound.debugName());
                int i = 0;
                int length = this.otherBounds.length;
                while (i < length) {
                    buffer.append('&').append(this.otherBounds[i].debugName());
                    ++i;
                }
                return buffer.toString();
            }
        }
        return new String(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.debugName().toCharArray()));
    }

    public TypeVariableBinding typeVariable() {
        TypeVariableBinding[] typeVariables;
        if (this.typeVariable == null && this.rank < (typeVariables = this.genericType.typeVariables()).length) {
            this.typeVariable = typeVariables[this.rank];
        }
        return this.typeVariable;
    }
}

