/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

class MethodVerifier15
extends MethodVerifier {
    MethodVerifier15(LookupEnvironment environment) {
        super(environment);
    }

    boolean areMethodsCompatible(MethodBinding one, MethodBinding two) {
        two = (one = one.original()).findOriginalInheritedMethod(two);
        if (two == null) {
            return false;
        }
        return this.isParameterSubsignature(one, two);
    }

    boolean areParametersEqual(MethodBinding one, MethodBinding two) {
        TypeBinding[] oneArgs = one.parameters;
        TypeBinding[] twoArgs = two.parameters;
        if (oneArgs == twoArgs) {
            return true;
        }
        int length = oneArgs.length;
        if (length != twoArgs.length) {
            return false;
        }
        int i = 0;
        while (i < length) {
            if (!this.areTypesEqual(oneArgs[i], twoArgs[i])) {
                if (oneArgs[i].leafComponentType().isRawType() && oneArgs[i].dimensions() == twoArgs[i].dimensions() && oneArgs[i].leafComponentType().isEquivalentTo(twoArgs[i].leafComponentType())) {
                    if (one.typeVariables != Binding.NO_TYPE_VARIABLES) {
                        return false;
                    }
                    int j = 0;
                    while (j < i) {
                        if (oneArgs[j].leafComponentType().isParameterizedTypeWithActualArguments()) {
                            return false;
                        }
                        ++j;
                    }
                    break;
                }
                return false;
            }
            ++i;
        }
        ++i;
        while (i < length) {
            if (!this.areTypesEqual(oneArgs[i], twoArgs[i])) {
                if (!oneArgs[i].leafComponentType().isRawType() || oneArgs[i].dimensions() != twoArgs[i].dimensions() || !oneArgs[i].leafComponentType().isEquivalentTo(twoArgs[i].leafComponentType())) {
                    return false;
                }
            } else if (oneArgs[i].leafComponentType().isParameterizedTypeWithActualArguments()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    boolean areReturnTypesCompatible(MethodBinding one, MethodBinding two) {
        if (one.returnType == two.returnType) {
            return true;
        }
        if (this.type.scope.compilerOptions().sourceLevel >= 0x310000L) {
            return this.areReturnTypesCompatible0(one, two);
        }
        return this.areTypesEqual(one.returnType.erasure(), two.returnType.erasure());
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean areTypesEqual(TypeBinding one, TypeBinding two) {
        if (one == two) {
            return true;
        }
        switch (one.kind()) {
            case 4: {
                switch (two.kind()) {
                    case 260: 
                    case 1028: {
                        if (one != two.erasure()) break;
                        return true;
                    }
                }
                break;
            }
            case 260: 
            case 1028: {
                switch (two.kind()) {
                    case 4: {
                        if (one.erasure() != two) break;
                        return true;
                    }
                }
                break;
            }
        }
        if (one.isParameterizedType() && two.isParameterizedType()) {
            return one.isEquivalentTo(two) && two.isEquivalentTo(one);
        }
        return false;
    }

    protected boolean canOverridingMethodDifferInErasure(MethodBinding overridingMethod, MethodBinding inheritedMethod) {
        if (overridingMethod.areParameterErasuresEqual(inheritedMethod)) {
            return false;
        }
        return !overridingMethod.declaringClass.isRawType();
    }

    boolean canSkipInheritedMethods() {
        if (this.type.superclass() != null && (this.type.superclass().isAbstract() || this.type.superclass().isParameterizedType())) {
            return false;
        }
        return this.type.superInterfaces() == Binding.NO_SUPERINTERFACES;
    }

    boolean canSkipInheritedMethods(MethodBinding one, MethodBinding two) {
        return two == null || one.declaringClass == two.declaringClass && !one.declaringClass.isParameterizedType();
    }

    void checkConcreteInheritedMethod(MethodBinding concreteMethod, MethodBinding[] abstractMethods) {
        super.checkConcreteInheritedMethod(concreteMethod, abstractMethods);
        int i = 0;
        int l = abstractMethods.length;
        while (i < l) {
            MethodBinding abstractMethod = abstractMethods[i];
            if (concreteMethod.isVarargs() != abstractMethod.isVarargs()) {
                this.problemReporter().varargsConflict(concreteMethod, abstractMethod, this.type);
            }
            MethodBinding originalInherited = abstractMethod.original();
            if (originalInherited.returnType != concreteMethod.returnType && !this.isAcceptableReturnTypeOverride(concreteMethod, abstractMethod)) {
                this.problemReporter().unsafeReturnTypeOverride(concreteMethod, originalInherited, this.type);
            }
            if (originalInherited.declaringClass.isInterface() && (concreteMethod.declaringClass == this.type.superclass && this.type.superclass.isParameterizedType() && !this.areMethodsCompatible(concreteMethod, originalInherited) || this.type.superclass.erasure().findSuperTypeOriginatingFrom(originalInherited.declaringClass) == null)) {
                this.type.addSyntheticBridgeMethod(originalInherited, concreteMethod.original());
            }
            ++i;
        }
    }

    void checkForBridgeMethod(MethodBinding currentMethod, MethodBinding inheritedMethod, MethodBinding[] allInheritedMethods) {
        SyntheticMethodBinding bridge;
        if (currentMethod.isVarargs() != inheritedMethod.isVarargs()) {
            this.problemReporter(currentMethod).varargsConflict(currentMethod, inheritedMethod, this.type);
        }
        MethodBinding originalInherited = inheritedMethod.original();
        if (originalInherited.returnType != currentMethod.returnType && !this.isAcceptableReturnTypeOverride(currentMethod, inheritedMethod)) {
            this.problemReporter(currentMethod).unsafeReturnTypeOverride(currentMethod, originalInherited, this.type);
        }
        if ((bridge = this.type.addSyntheticBridgeMethod(originalInherited, currentMethod.original())) != null) {
            int i = 0;
            int l = allInheritedMethods == null ? 0 : allInheritedMethods.length;
            while (i < l) {
                if (allInheritedMethods[i] != null && this.detectInheritedNameClash(originalInherited, allInheritedMethods[i].original())) {
                    return;
                }
                ++i;
            }
            MethodBinding[] current = (MethodBinding[])this.currentMethods.get(bridge.selector);
            int i2 = current.length - 1;
            while (i2 >= 0) {
                MethodBinding thisMethod = current[i2];
                if (thisMethod.areParameterErasuresEqual(bridge) && thisMethod.returnType.erasure() == bridge.returnType.erasure()) {
                    this.problemReporter(thisMethod).methodNameClash(thisMethod, inheritedMethod.declaringClass.isRawType() ? inheritedMethod : inheritedMethod.original(), 1);
                    return;
                }
                --i2;
            }
        }
    }

    void checkForNameClash(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        if (inheritedMethod.isStatic()) {
            return;
        }
        if (!this.detectNameClash(currentMethod, inheritedMethod, false)) {
            TypeBinding[] currentParams = currentMethod.parameters;
            int length = currentParams.length;
            TypeBinding[] inheritedParams = inheritedMethod.parameters;
            if (length != inheritedParams.length) {
                return;
            }
            int i = 0;
            while (i < length) {
                if (!(currentParams[i] == inheritedParams[i] || currentParams[i].isBaseType() == inheritedParams[i].isBaseType() && inheritedParams[i].isCompatibleWith(currentParams[i]))) {
                    return;
                }
                ++i;
            }
            ReferenceBinding[] interfacesToVisit = null;
            int nextPosition = 0;
            ReferenceBinding superType = inheritedMethod.declaringClass;
            ReferenceBinding[] itsInterfaces = superType.superInterfaces();
            if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                nextPosition = itsInterfaces.length;
                interfacesToVisit = itsInterfaces;
            }
            superType = superType.superclass();
            while (superType != null && superType.isValidBinding()) {
                MethodBinding[] methods = superType.getMethods(currentMethod.selector);
                int m = 0;
                int n = methods.length;
                while (m < n) {
                    MethodBinding substitute = this.computeSubstituteMethod(methods[m], currentMethod);
                    if (substitute != null && !this.isSubstituteParameterSubsignature(currentMethod, substitute) && this.detectNameClash(currentMethod, substitute, true)) {
                        return;
                    }
                    ++m;
                }
                itsInterfaces = superType.superInterfaces();
                if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    if (interfacesToVisit == null) {
                        interfacesToVisit = itsInterfaces;
                        nextPosition = interfacesToVisit.length;
                    } else {
                        int itsLength = itsInterfaces.length;
                        if (nextPosition + itsLength >= interfacesToVisit.length) {
                            ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                            interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                            System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                        }
                        int a = 0;
                        while (a < itsLength) {
                            block25: {
                                ReferenceBinding next = itsInterfaces[a];
                                int b = 0;
                                while (b < nextPosition) {
                                    if (next != interfacesToVisit[b]) {
                                        ++b;
                                        continue;
                                    }
                                    break block25;
                                }
                                interfacesToVisit[nextPosition++] = next;
                            }
                            ++a;
                        }
                    }
                }
                superType = superType.superclass();
            }
            int i2 = 0;
            while (i2 < nextPosition) {
                superType = interfacesToVisit[i2];
                if (superType.isValidBinding()) {
                    MethodBinding[] methods = superType.getMethods(currentMethod.selector);
                    int m = 0;
                    int n = methods.length;
                    while (m < n) {
                        MethodBinding substitute = this.computeSubstituteMethod(methods[m], currentMethod);
                        if (substitute != null && !this.isSubstituteParameterSubsignature(currentMethod, substitute) && this.detectNameClash(currentMethod, substitute, true)) {
                            return;
                        }
                        ++m;
                    }
                    itsInterfaces = superType.superInterfaces();
                    if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                        int itsLength = itsInterfaces.length;
                        if (nextPosition + itsLength >= interfacesToVisit.length) {
                            ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                            interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                            System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                        }
                        int a = 0;
                        while (a < itsLength) {
                            block26: {
                                ReferenceBinding next = itsInterfaces[a];
                                int b = 0;
                                while (b < nextPosition) {
                                    if (next != interfacesToVisit[b]) {
                                        ++b;
                                        continue;
                                    }
                                    break block26;
                                }
                                interfacesToVisit[nextPosition++] = next;
                            }
                            ++a;
                        }
                    }
                }
                ++i2;
            }
        }
    }

    void checkInheritedMethods(MethodBinding inheritedMethod, MethodBinding otherInheritedMethod) {
        if (inheritedMethod.declaringClass.isInterface() || inheritedMethod.isStatic()) {
            return;
        }
        this.detectInheritedNameClash(inheritedMethod.original(), otherInheritedMethod.original());
    }

    void checkInheritedMethods(MethodBinding[] methods, int length) {
        boolean continueInvestigation = true;
        MethodBinding concreteMethod = null;
        int i = 0;
        while (i < length) {
            if (!methods[i].isAbstract()) {
                if (concreteMethod != null) {
                    this.problemReporter().duplicateInheritedMethods(this.type, concreteMethod, methods[i]);
                    continueInvestigation = false;
                }
                concreteMethod = methods[i];
            }
            ++i;
        }
        if (continueInvestigation) {
            super.checkInheritedMethods(methods, length);
        }
    }

    boolean checkInheritedReturnTypes(MethodBinding method, MethodBinding otherMethod) {
        if (this.areReturnTypesCompatible(method, otherMethod)) {
            return true;
        }
        if (this.isUnsafeReturnTypeOverride(method, otherMethod)) {
            if (!method.declaringClass.implementsInterface(otherMethod.declaringClass, false)) {
                this.problemReporter(method).unsafeReturnTypeOverride(method, otherMethod, this.type);
            }
            return true;
        }
        return false;
    }

    void reportRawReferences() {
        CompilerOptions compilerOptions = this.type.scope.compilerOptions();
        if (compilerOptions.sourceLevel < 0x310000L || compilerOptions.reportUnavoidableGenericTypeProblems) {
            return;
        }
        Object[] methodArray = this.currentMethods.valueTable;
        int s = methodArray.length;
        while (--s >= 0) {
            if (methodArray[s] == null) continue;
            MethodBinding[] current = (MethodBinding[])methodArray[s];
            int i = 0;
            int length = current.length;
            while (i < length) {
                MethodBinding currentMethod = current[i];
                if ((currentMethod.modifiers & 0x30000000) == 0) {
                    AbstractMethodDeclaration methodDecl = currentMethod.sourceMethod();
                    if (methodDecl == null) {
                        return;
                    }
                    TypeBinding[] parameterTypes = currentMethod.parameters;
                    Argument[] arguments = methodDecl.arguments;
                    int j = 0;
                    int size = currentMethod.parameters.length;
                    while (j < size) {
                        TypeBinding parameterType = parameterTypes[j];
                        Argument arg = arguments[j];
                        if (parameterType.leafComponentType().isRawType() && compilerOptions.getSeverity(0x20010000) != 256 && (arg.type.bits & 0x40000000) == 0) {
                            methodDecl.scope.problemReporter().rawTypeReference(arg.type, parameterType);
                        }
                        ++j;
                    }
                    if (!methodDecl.isConstructor() && methodDecl instanceof MethodDeclaration) {
                        TypeReference returnType = ((MethodDeclaration)methodDecl).returnType;
                        TypeBinding methodType = currentMethod.returnType;
                        if (returnType != null && methodType.leafComponentType().isRawType() && compilerOptions.getSeverity(0x20010000) != 256 && (returnType.bits & 0x40000000) == 0) {
                            methodDecl.scope.problemReporter().rawTypeReference(returnType, methodType);
                        }
                    }
                }
                ++i;
            }
        }
    }

    public void reportRawReferences(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        CompilerOptions compilerOptions = this.type.scope.compilerOptions();
        if (compilerOptions.sourceLevel < 0x310000L || compilerOptions.reportUnavoidableGenericTypeProblems) {
            return;
        }
        AbstractMethodDeclaration methodDecl = currentMethod.sourceMethod();
        if (methodDecl == null) {
            return;
        }
        TypeBinding[] parameterTypes = currentMethod.parameters;
        TypeBinding[] inheritedParameterTypes = inheritedMethod.parameters;
        Argument[] arguments = methodDecl.arguments;
        int j = 0;
        int size = currentMethod.parameters.length;
        while (j < size) {
            TypeBinding parameterType = parameterTypes[j];
            TypeBinding inheritedParameterType = inheritedParameterTypes[j];
            Argument arg = arguments[j];
            if (parameterType.leafComponentType().isRawType()) {
                if (inheritedParameterType.leafComponentType().isRawType()) {
                    arg.binding.tagBits |= 0x200L;
                } else if (compilerOptions.getSeverity(0x20010000) != 256 && (arg.type.bits & 0x40000000) == 0) {
                    methodDecl.scope.problemReporter().rawTypeReference(arg.type, parameterType);
                }
            }
            ++j;
        }
        TypeReference returnType = null;
        if (!methodDecl.isConstructor() && methodDecl instanceof MethodDeclaration && (returnType = ((MethodDeclaration)methodDecl).returnType) != null) {
            TypeBinding inheritedMethodType = inheritedMethod.returnType;
            TypeBinding methodType = currentMethod.returnType;
            if (methodType.leafComponentType().isRawType() && !inheritedMethodType.leafComponentType().isRawType() && (returnType.bits & 0x40000000) == 0 && compilerOptions.getSeverity(0x20010000) != 256) {
                methodDecl.scope.problemReporter().rawTypeReference(returnType, methodType);
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    void checkMethods() {
        mustImplementAbstractMethods = this.mustImplementAbstractMethods();
        skipInheritedMethods = mustImplementAbstractMethods != false && this.canSkipInheritedMethods() != false;
        isOrEnclosedByPrivateType = this.type.isOrEnclosedByPrivateType();
        methodSelectors = this.inheritedMethods.keyTable;
        s = methodSelectors.length;
        while (--s >= 0) {
            if (methodSelectors[s] == null) continue;
            current = (MethodBinding[])this.currentMethods.get(methodSelectors[s]);
            inherited = (MethodBinding[])this.inheritedMethods.valueTable[s];
            if (current == null && !isOrEnclosedByPrivateType) {
                length = inherited.length;
                i = 0;
                while (i < length) {
                    inherited[i].original().modifiers |= 0x8000000;
                    ++i;
                }
            }
            if (current == null && this.type.isPublic()) {
                length = inherited.length;
                i = 0;
                while (i < length) {
                    inheritedMethod = inherited[i];
                    if (inheritedMethod.isPublic() && !inheritedMethod.declaringClass.isPublic()) {
                        this.type.addSyntheticBridgeMethod(inheritedMethod.original());
                    }
                    ++i;
                }
            }
            if (current == null && skipInheritedMethods) continue;
            if (inherited.length == 1 && current == null) {
                if (!mustImplementAbstractMethods || !inherited[0].isAbstract()) continue;
                this.checkAbstractMethod(inherited[0]);
                continue;
            }
            index = -1;
            inheritedLength = inherited.length;
            matchingInherited = new MethodBinding[inheritedLength];
            foundMatch = new MethodBinding[inheritedLength];
            if (current != null) {
                i = 0;
                length1 = current.length;
                while (i < length1) {
                    currentMethod = current[i];
                    nonMatchingInherited = null;
                    j = 0;
                    while (j < inheritedLength) {
                        inheritedMethod = this.computeSubstituteMethod(inherited[j], currentMethod);
                        if (inheritedMethod != null) {
                            if (foundMatch[j] == null && this.isSubstituteParameterSubsignature(currentMethod, inheritedMethod)) {
                                matchingInherited[++index] = inheritedMethod;
                                foundMatch[j] = currentMethod;
                            } else {
                                this.checkForNameClash(currentMethod, inheritedMethod);
                                if (inheritedLength > 1) {
                                    if (nonMatchingInherited == null) {
                                        nonMatchingInherited = new MethodBinding[inheritedLength];
                                    }
                                    nonMatchingInherited[j] = inheritedMethod;
                                }
                            }
                        }
                        ++j;
                    }
                    if (index >= 0) {
                        this.checkAgainstInheritedMethods(currentMethod, matchingInherited, index + 1, nonMatchingInherited);
                        while (index >= 0) {
                            matchingInherited[index--] = null;
                        }
                    }
                    ++i;
                }
            }
            skip = new boolean[inheritedLength];
            i = 0;
            while (i < inheritedLength) {
                block35: {
                    matchMethod = foundMatch[i];
                    if (matchMethod == null && current != null && this.type.isPublic() && (inheritedMethod = inherited[i]).isPublic() && !inheritedMethod.declaringClass.isPublic()) {
                        this.type.addSyntheticBridgeMethod(inheritedMethod.original());
                    }
                    if (!isOrEnclosedByPrivateType && matchMethod == null && current != null) {
                        inherited[i].original().modifiers |= 0x8000000;
                    }
                    if (skip[i]) break block35;
                    inheritedMethod = inherited[i];
                    if (matchMethod == null) {
                        matchingInherited[++index] = inheritedMethod;
                    }
                    j = i + 1;
                    while (j < inheritedLength) {
                        block36: {
                            block37: {
                                otherInheritedMethod = inherited[j];
                                if (matchMethod == foundMatch[j] && matchMethod != null || this.canSkipInheritedMethods(inheritedMethod, otherInheritedMethod)) break block36;
                                if (inheritedMethod.declaringClass == otherInheritedMethod.declaringClass) ** GOTO lbl-1000
                                if (!otherInheritedMethod.declaringClass.isInterface()) break block37;
                                if (!this.isInterfaceMethodImplemented(otherInheritedMethod, inheritedMethod, otherInheritedMethod.declaringClass)) ** GOTO lbl-1000
                                skip[j] = true;
                                break block36;
                            }
                            if (this.areMethodsCompatible(inheritedMethod, otherInheritedMethod)) {
                                skip[j] = true;
                            } else if ((otherInheritedMethod = this.computeSubstituteMethod(otherInheritedMethod, inheritedMethod)) != null) {
                                if (this.isSubstituteParameterSubsignature(inheritedMethod, otherInheritedMethod)) {
                                    if (index == -1) {
                                        matchingInherited[++index] = inheritedMethod;
                                    }
                                    if (foundMatch[j] == null) {
                                        matchingInherited[++index] = otherInheritedMethod;
                                    }
                                    skip[j] = true;
                                } else if (matchMethod == null && foundMatch[j] == null) {
                                    this.checkInheritedMethods(inheritedMethod, otherInheritedMethod);
                                }
                            }
                        }
                        ++j;
                    }
                    if (index != -1) {
                        if (index > 0) {
                            this.checkInheritedMethods(matchingInherited, index + 1);
                        } else if (mustImplementAbstractMethods && matchingInherited[0].isAbstract() && matchMethod == null) {
                            this.checkAbstractMethod(matchingInherited[0]);
                        }
                        while (index >= 0) {
                            matchingInherited[index--] = null;
                        }
                    }
                }
                ++i;
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    void checkTypeVariableMethods(TypeParameter typeParameter) {
        methodSelectors = this.inheritedMethods.keyTable;
        s = methodSelectors.length;
        block0: while (--s >= 0) {
            if (methodSelectors[s] == null || (inherited = (MethodBinding[])this.inheritedMethods.valueTable[s]).length == 1) continue;
            index = -1;
            matchingInherited = new MethodBinding[inherited.length];
            i = 0;
            length = inherited.length;
            ** GOTO lbl49
            {
                matchingInherited[index--] = null;
                do {
                    if (index >= 0) continue block1;
                    inheritedMethod = inherited[i];
                    if (inheritedMethod != null) {
                        matchingInherited[++index] = inheritedMethod;
                        j = i + 1;
                        while (j < length) {
                            otherInheritedMethod = inherited[j];
                            if (!this.canSkipInheritedMethods(inheritedMethod, otherInheritedMethod) && (otherInheritedMethod = this.computeSubstituteMethod(otherInheritedMethod, inheritedMethod)) != null && this.isSubstituteParameterSubsignature(inheritedMethod, otherInheritedMethod)) {
                                matchingInherited[++index] = otherInheritedMethod;
                                inherited[j] = null;
                            }
                            ++j;
                        }
                    }
                    if (index > 0) {
                        first = matchingInherited[0];
                        count = index + 1;
                        while (--count > 0) {
                            match = matchingInherited[count];
                            interfaceMethod = null;
                            implementation = null;
                            if (first.declaringClass.isInterface()) {
                                interfaceMethod = first;
                            } else if (first.declaringClass.isClass()) {
                                implementation = first;
                            }
                            if (match.declaringClass.isInterface()) {
                                interfaceMethod = match;
                            } else if (match.declaringClass.isClass()) {
                                implementation = match;
                            }
                            if (interfaceMethod != null && implementation != null && !this.isAsVisible(implementation, interfaceMethod)) {
                                this.problemReporter().inheritedMethodReducesVisibility(typeParameter, implementation, new MethodBinding[]{interfaceMethod});
                            }
                            if (!this.areReturnTypesCompatible(first, match) && (!first.declaringClass.isInterface() || !match.declaringClass.isInterface() || !this.areReturnTypesCompatible(match, first))) break;
                        }
                        if (count > 0) {
                            this.problemReporter().inheritedMethodsHaveIncompatibleReturnTypes(typeParameter, matchingInherited, index + 1);
                            continue block0;
                        }
                    }
                    ++i;
lbl49:
                    // 2 sources

                } while (i < length);
            }
        }
    }

    MethodBinding computeSubstituteMethod(MethodBinding inheritedMethod, MethodBinding currentMethod) {
        TypeVariableBinding[] inheritedTypeVariables;
        int inheritedLength;
        if (inheritedMethod == null) {
            return null;
        }
        if (currentMethod.parameters.length != inheritedMethod.parameters.length) {
            return null;
        }
        if (currentMethod.declaringClass instanceof BinaryTypeBinding) {
            ((BinaryTypeBinding)currentMethod.declaringClass).resolveTypesFor(currentMethod);
        }
        if (inheritedMethod.declaringClass instanceof BinaryTypeBinding) {
            ((BinaryTypeBinding)inheritedMethod.declaringClass).resolveTypesFor(inheritedMethod);
        }
        if ((inheritedLength = (inheritedTypeVariables = inheritedMethod.typeVariables).length) == 0) {
            return inheritedMethod;
        }
        TypeVariableBinding[] typeVariables = currentMethod.typeVariables;
        int length = typeVariables.length;
        if (length == 0) {
            return inheritedMethod.asRawMethod(this.environment);
        }
        if (length != inheritedLength) {
            return inheritedMethod;
        }
        TypeBinding[] arguments = new TypeBinding[length];
        System.arraycopy(typeVariables, 0, arguments, 0, length);
        ParameterizedGenericMethodBinding substitute = this.environment.createParameterizedGenericMethod(inheritedMethod, arguments);
        int i = 0;
        while (i < inheritedLength) {
            block19: {
                TypeBinding argument;
                TypeVariableBinding inheritedTypeVariable;
                block16: {
                    TypeVariableBinding typeVariable;
                    block18: {
                        block17: {
                            inheritedTypeVariable = inheritedTypeVariables[i];
                            argument = arguments[i];
                            if (!(argument instanceof TypeVariableBinding)) break block16;
                            typeVariable = (TypeVariableBinding)argument;
                            if (typeVariable.firstBound != inheritedTypeVariable.firstBound) break block17;
                            if (typeVariable.firstBound != null) break block18;
                            break block19;
                        }
                        if (typeVariable.firstBound != null && inheritedTypeVariable.firstBound != null && typeVariable.firstBound.isClass() != inheritedTypeVariable.firstBound.isClass()) {
                            return inheritedMethod;
                        }
                    }
                    if (Scope.substitute((Substitution)substitute, inheritedTypeVariable.superclass) != typeVariable.superclass) {
                        return inheritedMethod;
                    }
                    int interfaceLength = inheritedTypeVariable.superInterfaces.length;
                    ReferenceBinding[] interfaces = typeVariable.superInterfaces;
                    if (interfaceLength != interfaces.length) {
                        return inheritedMethod;
                    }
                    int j = 0;
                    while (j < interfaceLength) {
                        block15: {
                            TypeBinding superType = Scope.substitute((Substitution)substitute, inheritedTypeVariable.superInterfaces[j]);
                            int k = 0;
                            while (k < interfaceLength) {
                                if (superType != interfaces[k]) {
                                    ++k;
                                    continue;
                                }
                                break block15;
                            }
                            return inheritedMethod;
                        }
                        ++j;
                    }
                    break block19;
                }
                if (inheritedTypeVariable.boundCheck(substitute, argument) != 0) {
                    return inheritedMethod;
                }
            }
            ++i;
        }
        return substitute;
    }

    boolean detectInheritedNameClash(MethodBinding inherited, MethodBinding otherInherited) {
        if (!inherited.areParameterErasuresEqual(otherInherited)) {
            return false;
        }
        if (inherited.returnType.erasure() != otherInherited.returnType.erasure()) {
            return false;
        }
        if (inherited.declaringClass.erasure() != otherInherited.declaringClass.erasure()) {
            if (inherited.declaringClass.findSuperTypeOriginatingFrom(otherInherited.declaringClass) != null) {
                return false;
            }
            if (otherInherited.declaringClass.findSuperTypeOriginatingFrom(inherited.declaringClass) != null) {
                return false;
            }
        }
        this.problemReporter().inheritedMethodsHaveNameClash(this.type, inherited, otherInherited);
        return true;
    }

    boolean detectNameClash(MethodBinding current, MethodBinding inherited, boolean treatAsSynthetic) {
        MethodBinding[] currentNamesakes;
        MethodBinding methodToCheck = inherited;
        MethodBinding original = methodToCheck.original();
        if (!current.areParameterErasuresEqual(original)) {
            return false;
        }
        int severity = 1;
        if (this.environment.globalOptions.complianceLevel == 0x320000L && current.returnType.erasure() != original.returnType.erasure()) {
            severity = 0;
        }
        if (!treatAsSynthetic && (currentNamesakes = (MethodBinding[])this.currentMethods.get(inherited.selector)).length > 1) {
            int i = 0;
            int length = currentNamesakes.length;
            while (i < length) {
                MethodBinding currentMethod = currentNamesakes[i];
                if (currentMethod != current && this.doesMethodOverride(currentMethod, inherited)) {
                    methodToCheck = currentMethod;
                    break;
                }
                ++i;
            }
        }
        if (!current.areParameterErasuresEqual(original = methodToCheck.original())) {
            return false;
        }
        original = inherited.original();
        this.problemReporter(current).methodNameClash(current, inherited.declaringClass.isRawType() ? inherited : original, severity);
        return severity != 0;
    }

    public boolean doesMethodOverride(MethodBinding method, MethodBinding inheritedMethod) {
        return this.couldMethodOverride(method, inheritedMethod) && this.areMethodsCompatible(method, inheritedMethod);
    }

    boolean doTypeVariablesClash(MethodBinding one, MethodBinding substituteTwo) {
        return one.typeVariables != Binding.NO_TYPE_VARIABLES && !(substituteTwo instanceof ParameterizedGenericMethodBinding);
    }

    SimpleSet findSuperinterfaceCollisions(ReferenceBinding superclass, ReferenceBinding[] superInterfaces) {
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        ReferenceBinding[] itsInterfaces = superInterfaces;
        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
            nextPosition = itsInterfaces.length;
            interfacesToVisit = itsInterfaces;
        }
        boolean isInconsistent = this.type.isHierarchyInconsistent();
        ReferenceBinding superType = superclass;
        while (superType != null && superType.isValidBinding()) {
            isInconsistent |= superType.isHierarchyInconsistent();
            itsInterfaces = superType.superInterfaces();
            if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = itsInterfaces;
                    nextPosition = interfacesToVisit.length;
                } else {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block22: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block22;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            superType = superType.superclass();
        }
        int i = 0;
        while (i < nextPosition) {
            superType = interfacesToVisit[i];
            if (superType.isValidBinding()) {
                isInconsistent |= superType.isHierarchyInconsistent();
                itsInterfaces = superType.superInterfaces();
                if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                    int itsLength = itsInterfaces.length;
                    if (nextPosition + itsLength >= interfacesToVisit.length) {
                        ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                        interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                        System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                    }
                    int a = 0;
                    while (a < itsLength) {
                        block23: {
                            ReferenceBinding next = itsInterfaces[a];
                            int b = 0;
                            while (b < nextPosition) {
                                if (next != interfacesToVisit[b]) {
                                    ++b;
                                    continue;
                                }
                                break block23;
                            }
                            interfacesToVisit[nextPosition++] = next;
                        }
                        ++a;
                    }
                }
            }
            ++i;
        }
        if (!isInconsistent) {
            return null;
        }
        SimpleSet copy = null;
        int i2 = 0;
        while (i2 < nextPosition) {
            ReferenceBinding current = interfacesToVisit[i2];
            if (current.isValidBinding()) {
                TypeBinding erasure = current.erasure();
                int j = i2 + 1;
                while (j < nextPosition) {
                    ReferenceBinding next = interfacesToVisit[j];
                    if (next.isValidBinding() && next.erasure() == erasure) {
                        if (copy == null) {
                            copy = new SimpleSet(nextPosition);
                        }
                        copy.add(interfacesToVisit[i2]);
                        copy.add(interfacesToVisit[j]);
                    }
                    ++j;
                }
            }
            ++i2;
        }
        return copy;
    }

    boolean hasGenericParameter(MethodBinding method) {
        if (method.genericSignature() == null) {
            return false;
        }
        TypeBinding[] params = method.parameters;
        int i = 0;
        int l = params.length;
        while (i < l) {
            int modifiers;
            TypeBinding param = params[i].leafComponentType();
            if (param instanceof ReferenceBinding && ((modifiers = ((ReferenceBinding)param).modifiers) & 0x40000000) != 0) {
                return true;
            }
            ++i;
        }
        return false;
    }

    boolean isAcceptableReturnTypeOverride(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        if (inheritedMethod.declaringClass.isRawType()) {
            return true;
        }
        MethodBinding originalInherited = inheritedMethod.original();
        TypeBinding originalInheritedReturnType = originalInherited.returnType.leafComponentType();
        if (originalInheritedReturnType.isParameterizedTypeWithActualArguments()) {
            return !currentMethod.returnType.leafComponentType().isRawType();
        }
        TypeBinding currentReturnType = currentMethod.returnType.leafComponentType();
        switch (currentReturnType.kind()) {
            case 4100: {
                if (currentReturnType != inheritedMethod.returnType.leafComponentType()) break;
                return true;
            }
        }
        return !originalInheritedReturnType.isTypeVariable() || ((TypeVariableBinding)originalInheritedReturnType).declaringElement != originalInherited;
    }

    boolean isInterfaceMethodImplemented(MethodBinding inheritedMethod, MethodBinding existingMethod, ReferenceBinding superType) {
        if (inheritedMethod.original() != inheritedMethod && existingMethod.declaringClass.isInterface()) {
            return false;
        }
        return (inheritedMethod = this.computeSubstituteMethod(inheritedMethod, existingMethod)) != null && inheritedMethod.returnType == existingMethod.returnType && this.doesMethodOverride(existingMethod, inheritedMethod);
    }

    public boolean isMethodSubsignature(MethodBinding method, MethodBinding inheritedMethod) {
        MethodBinding inheritedOriginal;
        if (!CharOperation.equals(method.selector, inheritedMethod.selector)) {
            return false;
        }
        if (method.declaringClass.isParameterizedType()) {
            method = method.original();
        }
        return this.isParameterSubsignature(method, (inheritedOriginal = method.findOriginalInheritedMethod(inheritedMethod)) == null ? inheritedMethod : inheritedOriginal);
    }

    boolean isParameterSubsignature(MethodBinding method, MethodBinding inheritedMethod) {
        MethodBinding substitute = this.computeSubstituteMethod(inheritedMethod, method);
        return substitute != null && this.isSubstituteParameterSubsignature(method, substitute);
    }

    boolean isSubstituteParameterSubsignature(MethodBinding method, MethodBinding substituteMethod) {
        if (!this.areParametersEqual(method, substituteMethod)) {
            if (substituteMethod.hasSubstitutedParameters() && method.areParameterErasuresEqual(substituteMethod)) {
                return method.typeVariables == Binding.NO_TYPE_VARIABLES && !this.hasGenericParameter(method);
            }
            if (method.declaringClass.isRawType() && substituteMethod.declaringClass.isRawType() && method.hasSubstitutedParameters() && substituteMethod.hasSubstitutedParameters()) {
                return this.areMethodsCompatible(method, substituteMethod);
            }
            return false;
        }
        if (substituteMethod instanceof ParameterizedGenericMethodBinding) {
            if (method.typeVariables != Binding.NO_TYPE_VARIABLES) {
                return !((ParameterizedGenericMethodBinding)substituteMethod).isRaw;
            }
            return !this.hasGenericParameter(method);
        }
        return method.typeVariables == Binding.NO_TYPE_VARIABLES;
    }

    boolean isUnsafeReturnTypeOverride(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        if (currentMethod.returnType == inheritedMethod.returnType.erasure()) {
            TypeBinding[] currentParams = currentMethod.parameters;
            TypeBinding[] inheritedParams = inheritedMethod.parameters;
            int i = 0;
            int l = currentParams.length;
            while (i < l) {
                if (!this.areTypesEqual(currentParams[i], inheritedParams[i])) {
                    return true;
                }
                ++i;
            }
        }
        return currentMethod.typeVariables == Binding.NO_TYPE_VARIABLES && inheritedMethod.original().typeVariables != Binding.NO_TYPE_VARIABLES && currentMethod.returnType.erasure().findSuperTypeOriginatingFrom(inheritedMethod.returnType.erasure()) != null;
    }

    boolean reportIncompatibleReturnTypeError(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        if (this.isUnsafeReturnTypeOverride(currentMethod, inheritedMethod)) {
            this.problemReporter(currentMethod).unsafeReturnTypeOverride(currentMethod, inheritedMethod, this.type);
            return false;
        }
        return super.reportIncompatibleReturnTypeError(currentMethod, inheritedMethod);
    }

    void verify() {
        if (this.type.isAnnotationType()) {
            this.type.detectAnnotationCycle();
        }
        super.verify();
        this.reportRawReferences();
        int i = this.type.typeVariables.length;
        while (--i >= 0) {
            TypeVariableBinding var = this.type.typeVariables[i];
            if (var.superInterfaces == Binding.NO_SUPERINTERFACES || var.superInterfaces.length == 1 && var.superclass.id == 1) continue;
            this.currentMethods = new HashtableOfObject(0);
            ReferenceBinding superclass = var.superclass();
            if (superclass.kind() == 4100) {
                superclass = (ReferenceBinding)superclass.erasure();
            }
            ReferenceBinding[] itsInterfaces = var.superInterfaces();
            ReferenceBinding[] superInterfaces = new ReferenceBinding[itsInterfaces.length];
            int j = itsInterfaces.length;
            while (--j >= 0) {
                ReferenceBinding referenceBinding = superInterfaces[j] = itsInterfaces[j].kind() == 4100 ? (ReferenceBinding)itsInterfaces[j].erasure() : itsInterfaces[j];
            }
            this.computeInheritedMethods(superclass, superInterfaces);
            this.checkTypeVariableMethods(this.type.scope.referenceContext.typeParameters[i]);
        }
    }
}

