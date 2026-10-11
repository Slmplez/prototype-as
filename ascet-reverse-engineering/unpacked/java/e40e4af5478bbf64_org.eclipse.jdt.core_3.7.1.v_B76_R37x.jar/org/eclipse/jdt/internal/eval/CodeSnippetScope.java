/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public class CodeSnippetScope
extends BlockScope {
    protected CodeSnippetScope(int kind, Scope parent) {
        super(kind, parent);
    }

    public CodeSnippetScope(BlockScope parent) {
        super(parent);
    }

    public CodeSnippetScope(BlockScope parent, int variableCount) {
        super(parent, variableCount);
    }

    public final boolean canBeSeenByForCodeSnippet(FieldBinding fieldBinding, TypeBinding receiverType, InvocationSite invocationSite, Scope scope) {
        if (fieldBinding.isPublic()) {
            return true;
        }
        ReferenceBinding invocationType = (ReferenceBinding)receiverType;
        if (invocationType == fieldBinding.declaringClass) {
            return true;
        }
        if (fieldBinding.isProtected()) {
            if (invocationType == fieldBinding.declaringClass) {
                return true;
            }
            if (invocationType.fPackage == fieldBinding.declaringClass.fPackage) {
                return true;
            }
            if (fieldBinding.declaringClass.isSuperclassOf(invocationType)) {
                if (invocationSite.isSuperAccess()) {
                    return true;
                }
                if (receiverType instanceof ArrayBinding) {
                    return false;
                }
                if (invocationType.isSuperclassOf((ReferenceBinding)receiverType)) {
                    return true;
                }
                if (fieldBinding.isStatic()) {
                    return true;
                }
            }
            return false;
        }
        if (fieldBinding.isPrivate()) {
            if (receiverType != fieldBinding.declaringClass) {
                return false;
            }
            if (invocationType != fieldBinding.declaringClass) {
                ReferenceBinding outerInvocationType = invocationType;
                ReferenceBinding temp = outerInvocationType.enclosingType();
                while (temp != null) {
                    outerInvocationType = temp;
                    temp = temp.enclosingType();
                }
                ReferenceBinding outerDeclaringClass = fieldBinding.declaringClass;
                temp = outerDeclaringClass.enclosingType();
                while (temp != null) {
                    outerDeclaringClass = temp;
                    temp = temp.enclosingType();
                }
                if (outerInvocationType != outerDeclaringClass) {
                    return false;
                }
            }
            return true;
        }
        if (invocationType.fPackage != fieldBinding.declaringClass.fPackage) {
            return false;
        }
        if (receiverType instanceof ArrayBinding) {
            return false;
        }
        ReferenceBinding type = (ReferenceBinding)receiverType;
        PackageBinding declaringPackage = fieldBinding.declaringClass.fPackage;
        TypeBinding originalDeclaringClass = fieldBinding.declaringClass.original();
        do {
            if (type.isCapture() ? originalDeclaringClass == type.erasure().original() : originalDeclaringClass == type.original()) {
                return true;
            }
            if (declaringPackage == type.fPackage) continue;
            return false;
        } while ((type = type.superclass()) != null);
        return false;
    }

    public final boolean canBeSeenByForCodeSnippet(MethodBinding methodBinding, TypeBinding receiverType, InvocationSite invocationSite, Scope scope) {
        if (methodBinding.isPublic()) {
            return true;
        }
        ReferenceBinding invocationType = (ReferenceBinding)receiverType;
        if (invocationType == methodBinding.declaringClass) {
            return true;
        }
        if (methodBinding.isProtected()) {
            if (invocationType == methodBinding.declaringClass) {
                return true;
            }
            if (invocationType.fPackage == methodBinding.declaringClass.fPackage) {
                return true;
            }
            if (methodBinding.declaringClass.isSuperclassOf(invocationType)) {
                if (invocationSite.isSuperAccess()) {
                    return true;
                }
                if (receiverType instanceof ArrayBinding) {
                    return false;
                }
                if (invocationType.isSuperclassOf((ReferenceBinding)receiverType)) {
                    return true;
                }
                if (methodBinding.isStatic()) {
                    return true;
                }
            }
            return false;
        }
        if (methodBinding.isPrivate()) {
            if (receiverType != methodBinding.declaringClass) {
                return false;
            }
            if (invocationType != methodBinding.declaringClass) {
                ReferenceBinding outerInvocationType = invocationType;
                ReferenceBinding temp = outerInvocationType.enclosingType();
                while (temp != null) {
                    outerInvocationType = temp;
                    temp = temp.enclosingType();
                }
                ReferenceBinding outerDeclaringClass = methodBinding.declaringClass;
                temp = outerDeclaringClass.enclosingType();
                while (temp != null) {
                    outerDeclaringClass = temp;
                    temp = temp.enclosingType();
                }
                if (outerInvocationType != outerDeclaringClass) {
                    return false;
                }
            }
            return true;
        }
        if (invocationType.fPackage != methodBinding.declaringClass.fPackage) {
            return false;
        }
        if (receiverType instanceof ArrayBinding) {
            return false;
        }
        ReferenceBinding type = (ReferenceBinding)receiverType;
        PackageBinding declaringPackage = methodBinding.declaringClass.fPackage;
        TypeBinding originalDeclaringClass = methodBinding.declaringClass.original();
        do {
            if (type.isCapture() ? originalDeclaringClass == type.erasure().original() : originalDeclaringClass == type.original()) {
                return true;
            }
            if (declaringPackage == type.fPackage) continue;
            return false;
        } while ((type = type.superclass()) != null);
        return false;
    }

    public final boolean canBeSeenByForCodeSnippet(ReferenceBinding referenceBinding, ReferenceBinding receiverType) {
        if (referenceBinding.isPublic()) {
            return true;
        }
        if (receiverType == referenceBinding) {
            return true;
        }
        if (referenceBinding.isProtected()) {
            return receiverType.fPackage == referenceBinding.fPackage || referenceBinding.isSuperclassOf(receiverType) || referenceBinding.enclosingType().isSuperclassOf(receiverType);
        }
        if (referenceBinding.isPrivate()) {
            ReferenceBinding outerInvocationType = receiverType;
            ReferenceBinding temp = outerInvocationType.enclosingType();
            while (temp != null) {
                outerInvocationType = temp;
                temp = temp.enclosingType();
            }
            ReferenceBinding outerDeclaringClass = referenceBinding;
            temp = outerDeclaringClass.enclosingType();
            while (temp != null) {
                outerDeclaringClass = temp;
                temp = temp.enclosingType();
            }
            return outerInvocationType == outerDeclaringClass;
        }
        return receiverType.fPackage == referenceBinding.fPackage;
    }

    public MethodBinding findExactMethod(ReferenceBinding receiverType, char[] selector, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        MethodBinding exactMethod = receiverType.getExactMethod(selector, argumentTypes, null);
        if (exactMethod != null && (receiverType.isInterface() || this.canBeSeenByForCodeSnippet(exactMethod, (TypeBinding)receiverType, invocationSite, (Scope)this))) {
            return exactMethod;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public FieldBinding findFieldForCodeSnippet(TypeBinding receiverType, char[] fieldName, InvocationSite invocationSite) {
        if (receiverType.isBaseType()) {
            return null;
        }
        if (receiverType.isArrayType()) {
            TypeBinding leafType = receiverType.leafComponentType();
            if (leafType instanceof ReferenceBinding && !((ReferenceBinding)leafType).canBeSeenBy(this)) {
                return new ProblemFieldBinding((ReferenceBinding)leafType, fieldName, 8);
            }
            if (CharOperation.equals(fieldName, TypeConstants.LENGTH)) {
                return ArrayBinding.ArrayLength;
            }
            return null;
        }
        ReferenceBinding currentType = (ReferenceBinding)receiverType;
        if (!currentType.canBeSeenBy(this)) {
            return new ProblemFieldBinding(currentType, fieldName, 8);
        }
        FieldBinding field = currentType.getField(fieldName, true);
        if (field != null) {
            if (this.canBeSeenByForCodeSnippet(field, (TypeBinding)currentType, invocationSite, (Scope)this)) {
                return field;
            }
            return new ProblemFieldBinding(field, field.declaringClass, fieldName, 2);
        }
        ReferenceBinding[][] interfacesToVisit = null;
        int lastPosition = -1;
        FieldBinding visibleField = null;
        boolean keepLooking = true;
        boolean notVisible = false;
        while (keepLooking) {
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                if (interfacesToVisit == null) {
                    interfacesToVisit = new ReferenceBinding[5][];
                }
                if (++lastPosition == interfacesToVisit.length) {
                    ReferenceBinding[][] referenceBindingArray = interfacesToVisit;
                    interfacesToVisit = new ReferenceBinding[lastPosition * 2][];
                    System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, lastPosition);
                }
                interfacesToVisit[lastPosition] = itsInterfaces;
            }
            if ((currentType = currentType.superclass()) == null) break;
            field = currentType.getField(fieldName, true);
            if (field == null) continue;
            keepLooking = false;
            if (this.canBeSeenByForCodeSnippet(field, receiverType, invocationSite, (Scope)this)) {
                if (visibleField != null) {
                    return new ProblemFieldBinding(visibleField, visibleField.declaringClass, fieldName, 3);
                }
                visibleField = field;
                continue;
            }
            notVisible = true;
        }
        if (interfacesToVisit != null) {
            ProblemFieldBinding ambiguous = null;
            SimpleSet interfacesSeen = new SimpleSet(lastPosition * 2);
            int i = 0;
            block1: while (i <= lastPosition) {
                ReferenceBinding[] interfaces = interfacesToVisit[i];
                int j = 0;
                int length = interfaces.length;
                while (j < length) {
                    block25: {
                        ReferenceBinding anInterface = interfaces[j];
                        if (interfacesSeen.addIfNotIncluded(anInterface) == anInterface) {
                            field = anInterface.getField(fieldName, true);
                            if (field != null) {
                                if (visibleField == null) {
                                    visibleField = field;
                                    break block25;
                                } else {
                                    ambiguous = new ProblemFieldBinding(visibleField, visibleField.declaringClass, fieldName, 3);
                                    break block1;
                                }
                            }
                            ReferenceBinding[] itsInterfaces = anInterface.superInterfaces();
                            if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                                if (++lastPosition == interfacesToVisit.length) {
                                    ReferenceBinding[][] referenceBindingArray = interfacesToVisit;
                                    interfacesToVisit = new ReferenceBinding[lastPosition * 2][];
                                    System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, lastPosition);
                                }
                                interfacesToVisit[lastPosition] = itsInterfaces;
                            }
                        }
                    }
                    ++j;
                }
                ++i;
            }
            if (ambiguous != null) {
                return ambiguous;
            }
        }
        if (visibleField != null) {
            return visibleField;
        }
        if (notVisible) {
            return new ProblemFieldBinding(currentType, fieldName, 2);
        }
        return null;
    }

    public MethodBinding findMethod(ReferenceBinding receiverType, char[] selector, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        MethodBinding methodBinding = super.findMethod(receiverType, selector, argumentTypes, invocationSite);
        if (methodBinding != null && methodBinding.isValidBinding() && !this.canBeSeenByForCodeSnippet(methodBinding, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
            return new ProblemMethodBinding(methodBinding, selector, argumentTypes, 2);
        }
        return methodBinding;
    }

    public MethodBinding findMethodForArray(ArrayBinding receiverType, char[] selector, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        ReferenceBinding object = this.getJavaLangObject();
        MethodBinding methodBinding = object.getExactMethod(selector, argumentTypes, null);
        if (methodBinding != null) {
            if (argumentTypes == Binding.NO_PARAMETERS && CharOperation.equals(selector, TypeConstants.CLONE)) {
                return new MethodBinding(methodBinding.modifiers & 0xFFFFFFFB | 1, TypeConstants.CLONE, methodBinding.returnType, argumentTypes, null, object);
            }
            if (this.canBeSeenByForCodeSnippet(methodBinding, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
                return methodBinding;
            }
        }
        if ((methodBinding = this.findMethod(object, selector, argumentTypes, invocationSite)) == null) {
            return new ProblemMethodBinding(selector, argumentTypes, 1);
        }
        if (methodBinding.isValidBinding()) {
            MethodBinding compatibleMethod = this.computeCompatibleMethod(methodBinding, argumentTypes, invocationSite);
            if (compatibleMethod == null) {
                return new ProblemMethodBinding(methodBinding, selector, argumentTypes, 1);
            }
            methodBinding = compatibleMethod;
            if (!this.canBeSeenByForCodeSnippet(methodBinding, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
                return new ProblemMethodBinding(methodBinding, selector, methodBinding.parameters, 2);
            }
        }
        return methodBinding;
    }

    /*
     * Unable to fully structure code
     */
    public Binding getBinding(char[][] compoundName, int mask, InvocationSite invocationSite, ReferenceBinding receiverType) {
        binding = this.getBinding(compoundName[0], mask | 4 | 16, invocationSite, true);
        invocationSite.setFieldIndex(1);
        if (!binding.isValidBinding() || binding instanceof VariableBinding) {
            return binding;
        }
        length = compoundName.length;
        currentIndex = 1;
        if (!(binding instanceof PackageBinding)) ** GOTO lbl38
        packageBinding = (PackageBinding)binding;
        while (currentIndex < length) {
            block12: {
                binding = packageBinding.getTypeOrPackage(compoundName[currentIndex++]);
                invocationSite.setFieldIndex(currentIndex);
                if (binding == null) {
                    if (currentIndex == length) {
                        return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, currentIndex), null, 1);
                    }
                    return new ProblemBinding(CharOperation.subarray(compoundName, 0, currentIndex), 1);
                }
                if (!(binding instanceof ReferenceBinding)) break block12;
                if (!binding.isValidBinding()) {
                    return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, currentIndex), (ReferenceBinding)((ReferenceBinding)binding).closestMatch(), binding.problemId());
                }
                if (!this.canBeSeenByForCodeSnippet((ReferenceBinding)binding, receiverType)) {
                    return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, currentIndex), (ReferenceBinding)binding, 2);
                }
                ** GOTO lbl38
            }
            packageBinding = (PackageBinding)binding;
        }
        return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, currentIndex), null, 1);
lbl-1000:
        // 1 sources

        {
            typeBinding = (ReferenceBinding)binding;
            nextName = compoundName[currentIndex++];
            invocationSite.setFieldIndex(currentIndex);
            binding = this.findFieldForCodeSnippet(typeBinding, nextName, invocationSite);
            if (binding != null) {
                if (binding.isValidBinding()) break;
                return new ProblemFieldBinding((FieldBinding)binding, ((FieldBinding)binding).declaringClass, CharOperation.concatWith(CharOperation.subarray(compoundName, 0, currentIndex), '.'), binding.problemId());
            }
            binding = this.findMemberType(nextName, typeBinding);
            if (binding == null) {
                return new ProblemBinding(CharOperation.subarray(compoundName, 0, currentIndex), typeBinding, 1);
            }
            if (binding.isValidBinding()) continue;
            return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, currentIndex), (ReferenceBinding)((ReferenceBinding)binding).closestMatch(), binding.problemId());
lbl38:
            // 3 sources

            ** while (currentIndex < length)
        }
lbl39:
        // 2 sources

        if ((mask & 1) != 0 && binding instanceof FieldBinding) {
            field = (FieldBinding)binding;
            if (!field.isStatic()) {
                return new ProblemFieldBinding(field, field.declaringClass, CharOperation.concatWith(CharOperation.subarray(compoundName, 0, currentIndex), '.'), 7);
            }
            return binding;
        }
        if ((mask & 4) != 0 && binding instanceof ReferenceBinding) {
            return binding;
        }
        return new ProblemBinding(CharOperation.subarray(compoundName, 0, currentIndex), 1);
    }

    public MethodBinding getConstructor(ReferenceBinding receiverType, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        MethodBinding methodBinding = receiverType.getExactConstructor(argumentTypes);
        if (methodBinding != null && this.canBeSeenByForCodeSnippet(methodBinding, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
            return methodBinding;
        }
        MethodBinding[] methods = receiverType.getMethods(TypeConstants.INIT);
        if (methods == Binding.NO_METHODS) {
            return new ProblemMethodBinding(TypeConstants.INIT, argumentTypes, 1);
        }
        MethodBinding[] compatible = new MethodBinding[methods.length];
        int compatibleIndex = 0;
        int i = 0;
        int length = methods.length;
        while (i < length) {
            MethodBinding compatibleMethod = this.computeCompatibleMethod(methods[i], argumentTypes, invocationSite);
            if (compatibleMethod != null) {
                compatible[compatibleIndex++] = compatibleMethod;
            }
            ++i;
        }
        if (compatibleIndex == 0) {
            return new ProblemMethodBinding(TypeConstants.INIT, argumentTypes, 1);
        }
        MethodBinding[] visible = new MethodBinding[compatibleIndex];
        int visibleIndex = 0;
        int i2 = 0;
        while (i2 < compatibleIndex) {
            MethodBinding method = compatible[i2];
            if (this.canBeSeenByForCodeSnippet(method, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
                visible[visibleIndex++] = method;
            }
            ++i2;
        }
        if (visibleIndex == 1) {
            return visible[0];
        }
        if (visibleIndex == 0) {
            return new ProblemMethodBinding(compatible[0], TypeConstants.INIT, compatible[0].parameters, 2);
        }
        return this.mostSpecificClassMethodBinding(visible, visibleIndex, invocationSite);
    }

    public FieldBinding getFieldForCodeSnippet(TypeBinding receiverType, char[] fieldName, InvocationSite invocationSite) {
        FieldBinding field = this.findFieldForCodeSnippet(receiverType, fieldName, invocationSite);
        if (field == null) {
            return new ProblemFieldBinding(receiverType instanceof ReferenceBinding ? (ReferenceBinding)receiverType : null, fieldName, 1);
        }
        return field;
    }

    public MethodBinding getImplicitMethod(ReferenceBinding receiverType, char[] selector, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        MethodBinding methodBinding = this.findExactMethod(receiverType, selector, argumentTypes, invocationSite);
        if (methodBinding == null) {
            methodBinding = this.findMethod(receiverType, selector, argumentTypes, invocationSite);
        }
        if (methodBinding != null) {
            if (methodBinding.isValidBinding() && !this.canBeSeenByForCodeSnippet(methodBinding, (TypeBinding)receiverType, invocationSite, (Scope)this)) {
                return new ProblemMethodBinding(methodBinding, selector, argumentTypes, 2);
            }
            return methodBinding;
        }
        return new ProblemMethodBinding(selector, argumentTypes, 1);
    }
}

