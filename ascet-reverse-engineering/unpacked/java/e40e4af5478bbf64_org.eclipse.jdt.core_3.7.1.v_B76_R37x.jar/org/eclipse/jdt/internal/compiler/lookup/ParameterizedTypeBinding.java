/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class ParameterizedTypeBinding
extends ReferenceBinding
implements Substitution {
    private ReferenceBinding type;
    public TypeBinding[] arguments;
    public LookupEnvironment environment;
    public char[] genericTypeSignature;
    public ReferenceBinding superclass;
    public ReferenceBinding[] superInterfaces;
    public FieldBinding[] fields;
    public ReferenceBinding[] memberTypes;
    public MethodBinding[] methods;
    private ReferenceBinding enclosingType;

    public ParameterizedTypeBinding(ReferenceBinding type, TypeBinding[] arguments, ReferenceBinding enclosingType, LookupEnvironment environment) {
        this.environment = environment;
        this.enclosingType = enclosingType;
        this.initialize(type, arguments);
        if (type instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding)type).addWrapper(this, environment);
        }
        if (arguments != null) {
            int i = 0;
            int l = arguments.length;
            while (i < l) {
                if (arguments[i] instanceof UnresolvedReferenceBinding) {
                    ((UnresolvedReferenceBinding)arguments[i]).addWrapper(this, environment);
                }
                ++i;
            }
        }
        this.tagBits |= 0x1000000L;
    }

    protected ReferenceBinding actualType() {
        return this.type;
    }

    public void boundCheck(Scope scope, TypeReference[] argumentReferences) {
        if ((this.tagBits & 0x400000L) == 0L) {
            boolean hasErrors = false;
            TypeVariableBinding[] typeVariables = this.type.typeVariables();
            if (this.arguments != null && typeVariables != null) {
                int i = 0;
                int length = typeVariables.length;
                while (i < length) {
                    if (typeVariables[i].boundCheck(this, this.arguments[i]) != 0) {
                        hasErrors = true;
                        if ((this.arguments[i].tagBits & 0x80L) == 0L) {
                            scope.problemReporter().typeMismatchError(this.arguments[i], typeVariables[i], this.type, (ASTNode)argumentReferences[i]);
                        }
                    }
                    ++i;
                }
            }
            if (!hasErrors) {
                this.tagBits |= 0x400000L;
            }
        }
    }

    public boolean canBeInstantiated() {
        return (this.tagBits & 0x40000000L) == 0L && super.canBeInstantiated();
    }

    public TypeBinding capture(Scope scope, int position) {
        if ((this.tagBits & 0x40000000L) == 0L) {
            return this;
        }
        TypeBinding[] originalArguments = this.arguments;
        int length = originalArguments.length;
        TypeBinding[] capturedArguments = new TypeBinding[length];
        ReferenceBinding contextType = scope.enclosingSourceType();
        if (contextType != null) {
            contextType = contextType.outermostEnclosingType();
        }
        int i = 0;
        while (i < length) {
            TypeBinding argument = originalArguments[i];
            capturedArguments[i] = argument.kind() == 516 ? new CaptureBinding((WildcardBinding)argument, contextType, position, scope.compilationUnitScope().nextCaptureID()) : argument;
            ++i;
        }
        ParameterizedTypeBinding capturedParameterizedType = this.environment.createParameterizedType(this.type, capturedArguments, this.enclosingType());
        int i2 = 0;
        while (i2 < length) {
            TypeBinding argument = capturedArguments[i2];
            if (argument.isCapture()) {
                ((CaptureBinding)argument).initializeBounds(scope, capturedParameterizedType);
            }
            ++i2;
        }
        return capturedParameterizedType;
    }

    public List collectMissingTypes(List missingTypes) {
        if ((this.tagBits & 0x80L) != 0L) {
            if (this.enclosingType != null) {
                missingTypes = this.enclosingType.collectMissingTypes(missingTypes);
            }
            missingTypes = this.genericType().collectMissingTypes(missingTypes);
            if (this.arguments != null) {
                int i = 0;
                int max = this.arguments.length;
                while (i < max) {
                    missingTypes = this.arguments[i].collectMissingTypes(missingTypes);
                    ++i;
                }
            }
        }
        return missingTypes;
    }

    /*
     * Unable to fully structure code
     */
    public void collectSubstitutes(Scope scope, TypeBinding actualType, InferenceContext inferenceContext, int constraint) {
        if ((this.tagBits & 0x20000000L) == 0L) {
            actualEquivalent = actualType.findSuperTypeOriginatingFrom(this.type);
            if (actualEquivalent != null && actualEquivalent.isRawType()) {
                inferenceContext.isUnchecked = true;
            }
            return;
        }
        if (actualType == TypeBinding.NULL) {
            return;
        }
        if (!(actualType instanceof ReferenceBinding)) {
            return;
        }
        switch (constraint) {
            case 0: 
            case 1: {
                formalEquivalent = this;
                actualEquivalent = actualType.findSuperTypeOriginatingFrom(this.type);
                if (actualEquivalent != null) break;
                return;
            }
            default: {
                formalEquivalent = this.findSuperTypeOriginatingFrom(actualType);
                if (formalEquivalent == null) {
                    return;
                }
                actualEquivalent = actualType;
            }
        }
        if ((formalEnclosingType = formalEquivalent.enclosingType()) != null) {
            formalEnclosingType.collectSubstitutes(scope, actualEquivalent.enclosingType(), inferenceContext, constraint);
        }
        if (this.arguments == null) {
            return;
        }
        switch (formalEquivalent.kind()) {
            case 2052: {
                formalArguments = formalEquivalent.typeVariables();
                break;
            }
            case 260: {
                formalArguments = ((ParameterizedTypeBinding)formalEquivalent).arguments;
                break;
            }
            case 1028: {
                if (inferenceContext.depth > 0) {
                    inferenceContext.status = 1;
                }
                return;
            }
            default: {
                return;
            }
        }
        switch (actualEquivalent.kind()) {
            case 2052: {
                actualArguments = actualEquivalent.typeVariables();
                break;
            }
            case 260: {
                actualArguments = ((ParameterizedTypeBinding)actualEquivalent).arguments;
                break;
            }
            case 1028: {
                if (inferenceContext.depth > 0) {
                    inferenceContext.status = 1;
                } else {
                    inferenceContext.isUnchecked = true;
                }
                return;
            }
            default: {
                return;
            }
        }
        ++inferenceContext.depth;
        i = 0;
        length = formalArguments.length;
        while (i < length) {
            block32: {
                block31: {
                    formalArgument = formalArguments[i];
                    actualArgument = actualArguments[i];
                    if (!formalArgument.isWildcard()) break block31;
                    formalArgument.collectSubstitutes(scope, actualArgument, inferenceContext, constraint);
                    break block32;
                }
                if (!actualArgument.isWildcard()) ** GOTO lbl-1000
                actualWildcardArgument = (WildcardBinding)actualArgument;
                if (actualWildcardArgument.otherBounds == null) {
                    if (constraint == 2) {
                        switch (actualWildcardArgument.boundKind) {
                            case 1: {
                                formalArgument.collectSubstitutes(scope, actualWildcardArgument.bound, inferenceContext, 2);
                                break;
                            }
                            case 2: {
                                formalArgument.collectSubstitutes(scope, actualWildcardArgument.bound, inferenceContext, 1);
                                break;
                            }
                            default: {
                                break;
                            }
                        }
                    }
                } else lbl-1000:
                // 2 sources

                {
                    formalArgument.collectSubstitutes(scope, actualArgument, inferenceContext, 0);
                }
            }
            ++i;
        }
        --inferenceContext.depth;
    }

    public void computeId() {
        this.id = Integer.MAX_VALUE;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        char[] typeSig;
        ReferenceBinding enclosing;
        StringBuffer sig = new StringBuffer(10);
        if (this.isMemberType() && ((enclosing = this.enclosingType()).isParameterizedType() || enclosing.isRawType())) {
            typeSig = enclosing.computeUniqueKey(false);
            sig.append(typeSig, 0, typeSig.length - 1);
            sig.append('.').append(this.sourceName());
        } else if (this.type.isLocalType()) {
            ReferenceBinding temp;
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)this.type;
            enclosing = localTypeBinding.enclosingType();
            while ((temp = enclosing.enclosingType()) != null) {
                enclosing = temp;
            }
            char[] typeSig2 = enclosing.computeUniqueKey(false);
            sig.append(typeSig2, 0, typeSig2.length - 1);
            sig.append('$');
            sig.append(localTypeBinding.sourceStart);
        } else {
            typeSig = this.type.computeUniqueKey(false);
            sig.append(typeSig, 0, typeSig.length - 1);
        }
        ReferenceBinding captureSourceType = null;
        if (this.arguments != null) {
            sig.append('<');
            int i = 0;
            int length = this.arguments.length;
            while (i < length) {
                TypeBinding typeBinding = this.arguments[i];
                sig.append(typeBinding.computeUniqueKey(false));
                if (typeBinding instanceof CaptureBinding) {
                    captureSourceType = ((CaptureBinding)typeBinding).sourceType;
                }
                ++i;
            }
            sig.append('>');
        }
        sig.append(';');
        if (captureSourceType != null && captureSourceType != this.type) {
            sig.insert(0, "&");
            sig.insert(0, captureSourceType.computeUniqueKey(false));
        }
        int sigLength = sig.length();
        char[] uniqueKey = new char[sigLength];
        sig.getChars(0, sigLength, uniqueKey, 0);
        return uniqueKey;
    }

    public char[] constantPoolName() {
        return this.type.constantPoolName();
    }

    public ParameterizedMethodBinding createParameterizedMethod(MethodBinding originalMethod) {
        return new ParameterizedMethodBinding(this, originalMethod);
    }

    public String debugName() {
        StringBuffer nameBuffer = new StringBuffer(10);
        if (this.type instanceof UnresolvedReferenceBinding) {
            nameBuffer.append(this.type);
        } else {
            nameBuffer.append(this.type.sourceName());
        }
        if (this.arguments != null) {
            nameBuffer.append('<');
            int i = 0;
            int length = this.arguments.length;
            while (i < length) {
                if (i > 0) {
                    nameBuffer.append(',');
                }
                nameBuffer.append(this.arguments[i].debugName());
                ++i;
            }
            nameBuffer.append('>');
        }
        return nameBuffer.toString();
    }

    public ReferenceBinding enclosingType() {
        return this.enclosingType;
    }

    public LookupEnvironment environment() {
        return this.environment;
    }

    public TypeBinding erasure() {
        return this.type.erasure();
    }

    public int fieldCount() {
        return this.type.fieldCount();
    }

    public FieldBinding[] fields() {
        if ((this.tagBits & 0x2000L) != 0L) {
            return this.fields;
        }
        try {
            FieldBinding[] originalFields = this.type.fields();
            int length = originalFields.length;
            FieldBinding[] parameterizedFields = new FieldBinding[length];
            int i = 0;
            while (i < length) {
                parameterizedFields[i] = new ParameterizedFieldBinding(this, originalFields[i]);
                ++i;
            }
            this.fields = parameterizedFields;
        }
        finally {
            if (this.fields == null) {
                this.fields = Binding.NO_FIELDS;
            }
            this.tagBits |= 0x2000L;
        }
        return this.fields;
    }

    public ReferenceBinding genericType() {
        if (this.type instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding)this.type).resolve(this.environment, false);
        }
        return this.type;
    }

    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            if ((this.modifiers & 0x40000000) == 0) {
                this.genericTypeSignature = this.type.signature();
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
                    char[] typeSig = this.type.signature();
                    sig.append(typeSig, 0, typeSig.length - 1);
                }
                if (this.arguments != null) {
                    sig.append('<');
                    int i = 0;
                    int length = this.arguments.length;
                    while (i < length) {
                        sig.append(this.arguments[i].genericTypeSignature());
                        ++i;
                    }
                    sig.append('>');
                }
                sig.append(';');
                int sigLength = sig.length();
                this.genericTypeSignature = new char[sigLength];
                sig.getChars(0, sigLength, this.genericTypeSignature, 0);
            }
        }
        return this.genericTypeSignature;
    }

    public long getAnnotationTagBits() {
        return this.type.getAnnotationTagBits();
    }

    public int getEnclosingInstancesSlotSize() {
        return this.genericType().getEnclosingInstancesSlotSize();
    }

    public MethodBinding getExactConstructor(TypeBinding[] argumentTypes) {
        MethodBinding match;
        block10: {
            int argCount;
            block9: {
                argCount = argumentTypes.length;
                match = null;
                if ((this.tagBits & 0x8000L) == 0L) break block9;
                long range = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
                if (range < 0L) break block10;
                int imethod = (int)range;
                int end = (int)(range >> 32);
                while (imethod <= end) {
                    block8: {
                        MethodBinding method = this.methods[imethod];
                        if (method.parameters.length == argCount) {
                            TypeBinding[] toMatch = method.parameters;
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block8;
                            }
                            if (match != null) {
                                return null;
                            }
                            match = method;
                        }
                    }
                    ++imethod;
                }
                break block10;
            }
            MethodBinding[] matchingMethods = this.getMethods(TypeConstants.INIT);
            int m = matchingMethods.length;
            block2: while (--m >= 0) {
                MethodBinding method = matchingMethods[m];
                TypeBinding[] toMatch = method.parameters;
                if (toMatch.length != argCount) continue;
                int p = 0;
                while (p < argCount) {
                    if (toMatch[p] != argumentTypes[p]) continue block2;
                    ++p;
                }
                if (match != null) {
                    return null;
                }
                match = method;
            }
        }
        return match;
    }

    public MethodBinding getExactMethod(char[] selector, TypeBinding[] argumentTypes, CompilationUnitScope refScope) {
        int argCount = argumentTypes.length;
        boolean foundNothing = true;
        MethodBinding match = null;
        if ((this.tagBits & 0x8000L) != 0L) {
            long range = ReferenceBinding.binarySearch(selector, this.methods);
            if (range >= 0L) {
                int imethod = (int)range;
                int end = (int)(range >> 32);
                while (imethod <= end) {
                    block20: {
                        MethodBinding method = this.methods[imethod];
                        foundNothing = false;
                        if (method.parameters.length == argCount) {
                            TypeBinding[] toMatch = method.parameters;
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block20;
                            }
                            if (match != null) {
                                return null;
                            }
                            match = method;
                        }
                    }
                    ++imethod;
                }
            }
        } else {
            MethodBinding[] matchingMethods = this.getMethods(selector);
            foundNothing = matchingMethods == Binding.NO_METHODS;
            int m = matchingMethods.length;
            block2: while (--m >= 0) {
                MethodBinding method = matchingMethods[m];
                TypeBinding[] toMatch = method.parameters;
                if (toMatch.length != argCount) continue;
                int p = 0;
                while (p < argCount) {
                    if (toMatch[p] != argumentTypes[p]) continue block2;
                    ++p;
                }
                if (match != null) {
                    return null;
                }
                match = method;
            }
        }
        if (match != null) {
            if (match.hasSubstitutedParameters()) {
                return null;
            }
            return match;
        }
        if (foundNothing && (this.arguments == null || this.arguments.length <= 1)) {
            if (this.isInterface()) {
                if (this.superInterfaces().length == 1) {
                    if (refScope != null) {
                        refScope.recordTypeReference(this.superInterfaces[0]);
                    }
                    return this.superInterfaces[0].getExactMethod(selector, argumentTypes, refScope);
                }
            } else if (this.superclass() != null) {
                if (refScope != null) {
                    refScope.recordTypeReference(this.superclass);
                }
                return this.superclass.getExactMethod(selector, argumentTypes, refScope);
            }
        }
        return null;
    }

    public FieldBinding getField(char[] fieldName, boolean needResolve) {
        this.fields();
        return ReferenceBinding.binarySearch(fieldName, this.fields);
    }

    public ReferenceBinding getMemberType(char[] typeName) {
        this.memberTypes();
        int typeLength = typeName.length;
        int i = this.memberTypes.length;
        while (--i >= 0) {
            ReferenceBinding memberType = this.memberTypes[i];
            if (memberType.sourceName.length != typeLength || !CharOperation.equals(memberType.sourceName, typeName)) continue;
            return memberType;
        }
        return null;
    }

    public MethodBinding[] getMethods(char[] selector) {
        long range;
        if (this.methods != null && (range = ReferenceBinding.binarySearch(selector, this.methods)) >= 0L) {
            int start = (int)range;
            int length = (int)(range >> 32) - start + 1;
            MethodBinding[] result = new MethodBinding[length];
            System.arraycopy(this.methods, start, result, 0, length);
            return result;
        }
        if ((this.tagBits & 0x8000L) != 0L) {
            return Binding.NO_METHODS;
        }
        MethodBinding[] parameterizedMethods = null;
        try {
            MethodBinding[] originalMethods = this.type.getMethods(selector);
            int length = originalMethods.length;
            if (length == 0) {
                MethodBinding[] methodBindingArray = Binding.NO_METHODS;
                return methodBindingArray;
            }
            parameterizedMethods = new MethodBinding[length];
            int i = 0;
            while (i < length) {
                parameterizedMethods[i] = this.createParameterizedMethod(originalMethods[i]);
                ++i;
            }
            if (this.methods == null) {
                MethodBinding[] temp = new MethodBinding[length];
                System.arraycopy(parameterizedMethods, 0, temp, 0, length);
                this.methods = temp;
            } else {
                int total = length + this.methods.length;
                MethodBinding[] temp = new MethodBinding[total];
                System.arraycopy(parameterizedMethods, 0, temp, 0, length);
                System.arraycopy(this.methods, 0, temp, length, this.methods.length);
                if (total > 1) {
                    ReferenceBinding.sortMethods(temp, 0, total);
                }
                this.methods = temp;
            }
            MethodBinding[] methodBindingArray = parameterizedMethods;
            return methodBindingArray;
        }
        finally {
            if (parameterizedMethods == null) {
                parameterizedMethods = Binding.NO_METHODS;
                this.methods = Binding.NO_METHODS;
            }
        }
    }

    public int getOuterLocalVariablesSlotSize() {
        return this.genericType().getOuterLocalVariablesSlotSize();
    }

    public boolean hasMemberTypes() {
        return this.type.hasMemberTypes();
    }

    public boolean implementsMethod(MethodBinding method) {
        return this.type.implementsMethod(method);
    }

    void initialize(ReferenceBinding someType, TypeBinding[] someArguments) {
        this.type = someType;
        this.sourceName = someType.sourceName;
        this.compoundName = someType.compoundName;
        this.fPackage = someType.fPackage;
        this.fileName = someType.fileName;
        this.modifiers = someType.modifiers & 0xBFFFFFFF;
        if (someArguments != null) {
            this.modifiers |= 0x40000000;
        } else if (this.enclosingType != null) {
            this.modifiers |= this.enclosingType.modifiers & 0x40000000;
            this.tagBits |= this.enclosingType.tagBits & 0x20000080L;
        }
        if (someArguments != null) {
            this.arguments = someArguments;
            int i = 0;
            int length = someArguments.length;
            while (i < length) {
                TypeBinding someArgument = someArguments[i];
                switch (someArgument.kind()) {
                    case 516: {
                        this.tagBits |= 0x40000000L;
                        if (((WildcardBinding)someArgument).boundKind == 0) break;
                        this.tagBits |= 0x800000L;
                        break;
                    }
                    case 8196: {
                        this.tagBits |= 0x40000000L;
                        break;
                    }
                    default: {
                        this.tagBits |= 0x800000L;
                    }
                }
                this.tagBits |= someArgument.tagBits & 0x20000880L;
                ++i;
            }
        }
        this.tagBits |= someType.tagBits & 0x89CL;
        this.tagBits &= 0xFFFFFFFFFFFF5FFFL;
    }

    protected void initializeArguments() {
    }

    void initializeForStaticImports() {
        this.type.initializeForStaticImports();
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
            case 260: {
                ReferenceBinding enclosing;
                ParameterizedTypeBinding otherParamType = (ParameterizedTypeBinding)otherType;
                if (this.type != otherParamType.type) {
                    return false;
                }
                if (!this.isStatic() && (enclosing = this.enclosingType()) != null) {
                    ReferenceBinding otherEnclosing = otherParamType.enclosingType();
                    if (otherEnclosing == null) {
                        return false;
                    }
                    if ((otherEnclosing.tagBits & 0x40000000L) == 0L ? enclosing != otherEnclosing : !enclosing.isEquivalentTo(otherParamType.enclosingType())) {
                        return false;
                    }
                }
                if (this.arguments == null) {
                    return otherParamType.arguments == null;
                }
                int length = this.arguments.length;
                TypeBinding[] otherArguments = otherParamType.arguments;
                if (otherArguments == null || otherArguments.length != length) {
                    return false;
                }
                int i = 0;
                while (i < length) {
                    if (!this.arguments[i].isTypeArgumentContainedBy(otherArguments[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            case 1028: {
                return this.erasure() == otherType.erasure();
            }
        }
        return this.erasure() == otherType;
    }

    public boolean isHierarchyConnected() {
        return this.superclass != null && this.superInterfaces != null;
    }

    public boolean isRawSubstitution() {
        return this.isRawType();
    }

    public int kind() {
        return 260;
    }

    public ReferenceBinding[] memberTypes() {
        if (this.memberTypes == null) {
            try {
                ReferenceBinding[] originalMemberTypes = this.type.memberTypes();
                int length = originalMemberTypes.length;
                ReferenceBinding[] parameterizedMemberTypes = new ReferenceBinding[length];
                int i = 0;
                while (i < length) {
                    parameterizedMemberTypes[i] = this.environment.createParameterizedType(originalMemberTypes[i], null, this);
                    ++i;
                }
                this.memberTypes = parameterizedMemberTypes;
            }
            finally {
                if (this.memberTypes == null) {
                    this.memberTypes = Binding.NO_MEMBER_TYPES;
                }
            }
        }
        return this.memberTypes;
    }

    public MethodBinding[] methods() {
        if ((this.tagBits & 0x8000L) != 0L) {
            return this.methods;
        }
        try {
            MethodBinding[] originalMethods = this.type.methods();
            int length = originalMethods.length;
            MethodBinding[] parameterizedMethods = new MethodBinding[length];
            int i = 0;
            while (i < length) {
                parameterizedMethods[i] = this.createParameterizedMethod(originalMethods[i]);
                ++i;
            }
            this.methods = parameterizedMethods;
        }
        finally {
            if (this.methods == null) {
                this.methods = Binding.NO_METHODS;
            }
            this.tagBits |= 0x8000L;
        }
        return this.methods;
    }

    public int problemId() {
        return this.type.problemId();
    }

    public char[] qualifiedPackageName() {
        return this.type.qualifiedPackageName();
    }

    public char[] qualifiedSourceName() {
        return this.type.qualifiedSourceName();
    }

    public char[] readableName() {
        StringBuffer nameBuffer = new StringBuffer(10);
        if (this.isMemberType()) {
            nameBuffer.append(CharOperation.concat(this.enclosingType().readableName(), this.sourceName, '.'));
        } else {
            nameBuffer.append(CharOperation.concatWith(this.type.compoundName, '.'));
        }
        if (this.arguments != null) {
            nameBuffer.append('<');
            int i = 0;
            int length = this.arguments.length;
            while (i < length) {
                if (i > 0) {
                    nameBuffer.append(',');
                }
                nameBuffer.append(this.arguments[i].readableName());
                ++i;
            }
            nameBuffer.append('>');
        }
        int nameLength = nameBuffer.length();
        char[] readableName = new char[nameLength];
        nameBuffer.getChars(0, nameLength, readableName, 0);
        return readableName;
    }

    ReferenceBinding resolve() {
        if ((this.tagBits & 0x1000000L) == 0L) {
            return this;
        }
        this.tagBits &= 0xFFFFFFFFFEFFFFFFL;
        ReferenceBinding resolvedType = (ReferenceBinding)BinaryTypeBinding.resolveType(this.type, this.environment, false);
        this.tagBits |= resolvedType.tagBits & 0x800L;
        if (this.arguments != null) {
            int argLength = this.arguments.length;
            int i = 0;
            while (i < argLength) {
                TypeBinding resolveType;
                this.arguments[i] = resolveType = BinaryTypeBinding.resolveType(this.arguments[i], this.environment, true);
                this.tagBits |= resolvedType.tagBits & 0x800L;
                ++i;
            }
        }
        return this;
    }

    public char[] shortReadableName() {
        StringBuffer nameBuffer = new StringBuffer(10);
        if (this.isMemberType()) {
            nameBuffer.append(CharOperation.concat(this.enclosingType().shortReadableName(), this.sourceName, '.'));
        } else {
            nameBuffer.append(this.type.sourceName);
        }
        if (this.arguments != null) {
            nameBuffer.append('<');
            int i = 0;
            int length = this.arguments.length;
            while (i < length) {
                if (i > 0) {
                    nameBuffer.append(',');
                }
                nameBuffer.append(this.arguments[i].shortReadableName());
                ++i;
            }
            nameBuffer.append('>');
        }
        int nameLength = nameBuffer.length();
        char[] shortReadableName = new char[nameLength];
        nameBuffer.getChars(0, nameLength, shortReadableName, 0);
        return shortReadableName;
    }

    public char[] signature() {
        if (this.signature == null) {
            this.signature = this.type.signature();
        }
        return this.signature;
    }

    public char[] sourceName() {
        return this.type.sourceName();
    }

    public TypeBinding substitute(TypeVariableBinding originalVariable) {
        ParameterizedTypeBinding currentType = this;
        while (true) {
            ReferenceBinding enclosing;
            TypeVariableBinding[] typeVariables;
            int length;
            if (originalVariable.rank < (length = (typeVariables = currentType.type.typeVariables()).length) && typeVariables[originalVariable.rank] == originalVariable) {
                if (currentType.arguments == null) {
                    currentType.initializeArguments();
                }
                if (currentType.arguments != null) {
                    if (currentType.arguments.length == 0) {
                        return originalVariable;
                    }
                    return currentType.arguments[originalVariable.rank];
                }
            }
            if (currentType.isStatic() || !((enclosing = currentType.enclosingType()) instanceof ParameterizedTypeBinding)) break;
            currentType = (ParameterizedTypeBinding)enclosing;
        }
        return originalVariable;
    }

    public ReferenceBinding superclass() {
        if (this.superclass == null) {
            ReferenceBinding genericSuperclass = this.type.superclass();
            if (genericSuperclass == null) {
                return null;
            }
            this.superclass = (ReferenceBinding)Scope.substitute((Substitution)this, genericSuperclass);
        }
        return this.superclass;
    }

    public ReferenceBinding[] superInterfaces() {
        if (this.superInterfaces == null) {
            if (this.type.isHierarchyBeingConnected()) {
                return Binding.NO_SUPERINTERFACES;
            }
            this.superInterfaces = Scope.substitute((Substitution)this, this.type.superInterfaces());
        }
        return this.superInterfaces;
    }

    public void swapUnresolved(UnresolvedReferenceBinding unresolvedType, ReferenceBinding resolvedType, LookupEnvironment env) {
        boolean update = false;
        if (this.type == unresolvedType) {
            this.type = resolvedType;
            update = true;
            ReferenceBinding enclosing = resolvedType.enclosingType();
            if (enclosing != null) {
                this.enclosingType = (ReferenceBinding)env.convertUnresolvedBinaryToRawType(enclosing);
            }
        }
        if (this.arguments != null) {
            int i = 0;
            int l = this.arguments.length;
            while (i < l) {
                if (this.arguments[i] == unresolvedType) {
                    this.arguments[i] = env.convertUnresolvedBinaryToRawType(resolvedType);
                    update = true;
                }
                ++i;
            }
        }
        if (update) {
            this.initialize(this.type, this.arguments);
        }
    }

    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        return this.genericType().syntheticEnclosingInstanceTypes();
    }

    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        return this.genericType().syntheticOuterLocalVariables();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(30);
        if (this.type instanceof UnresolvedReferenceBinding) {
            buffer.append(this.debugName());
        } else {
            int length;
            int i;
            if (this.isDeprecated()) {
                buffer.append("deprecated ");
            }
            if (this.isPublic()) {
                buffer.append("public ");
            }
            if (this.isProtected()) {
                buffer.append("protected ");
            }
            if (this.isPrivate()) {
                buffer.append("private ");
            }
            if (this.isAbstract() && this.isClass()) {
                buffer.append("abstract ");
            }
            if (this.isStatic() && this.isNestedType()) {
                buffer.append("static ");
            }
            if (this.isFinal()) {
                buffer.append("final ");
            }
            if (this.isEnum()) {
                buffer.append("enum ");
            } else if (this.isAnnotationType()) {
                buffer.append("@interface ");
            } else if (this.isClass()) {
                buffer.append("class ");
            } else {
                buffer.append("interface ");
            }
            buffer.append(this.debugName());
            buffer.append("\n\textends ");
            buffer.append(this.superclass != null ? this.superclass.debugName() : "NULL TYPE");
            if (this.superInterfaces != null) {
                if (this.superInterfaces != Binding.NO_SUPERINTERFACES) {
                    buffer.append("\n\timplements : ");
                    i = 0;
                    length = this.superInterfaces.length;
                    while (i < length) {
                        if (i > 0) {
                            buffer.append(", ");
                        }
                        buffer.append(this.superInterfaces[i] != null ? this.superInterfaces[i].debugName() : "NULL TYPE");
                        ++i;
                    }
                }
            } else {
                buffer.append("NULL SUPERINTERFACES");
            }
            if (this.enclosingType() != null) {
                buffer.append("\n\tenclosing type : ");
                buffer.append(this.enclosingType().debugName());
            }
            if (this.fields != null) {
                if (this.fields != Binding.NO_FIELDS) {
                    buffer.append("\n/*   fields   */");
                    i = 0;
                    length = this.fields.length;
                    while (i < length) {
                        buffer.append('\n').append(this.fields[i] != null ? this.fields[i].toString() : "NULL FIELD");
                        ++i;
                    }
                }
            } else {
                buffer.append("NULL FIELDS");
            }
            if (this.methods != null) {
                if (this.methods != Binding.NO_METHODS) {
                    buffer.append("\n/*   methods   */");
                    i = 0;
                    length = this.methods.length;
                    while (i < length) {
                        buffer.append('\n').append(this.methods[i] != null ? this.methods[i].toString() : "NULL METHOD");
                        ++i;
                    }
                }
            } else {
                buffer.append("NULL METHODS");
            }
            buffer.append("\n\n");
        }
        return buffer.toString();
    }

    public TypeVariableBinding[] typeVariables() {
        if (this.arguments == null) {
            return this.type.typeVariables();
        }
        return Binding.NO_TYPE_VARIABLES;
    }

    public FieldBinding[] unResolvedFields() {
        return this.fields;
    }
}

