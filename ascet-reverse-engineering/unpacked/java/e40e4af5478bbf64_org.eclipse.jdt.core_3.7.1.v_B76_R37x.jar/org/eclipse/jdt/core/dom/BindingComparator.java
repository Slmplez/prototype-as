/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import java.util.HashSet;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

class BindingComparator {
    BindingComparator() {
    }

    static boolean isEqual(TypeVariableBinding[] bindings, TypeVariableBinding[] otherBindings) {
        if (bindings == null) {
            return otherBindings == null;
        }
        if (otherBindings == null) {
            return false;
        }
        int length = bindings.length;
        int otherLength = otherBindings.length;
        if (length != otherLength) {
            return false;
        }
        int i = 0;
        while (i < length) {
            TypeVariableBinding typeVariableBinding = bindings[i];
            TypeVariableBinding typeVariableBinding2 = otherBindings[i];
            if (!BindingComparator.isEqual(typeVariableBinding, typeVariableBinding2)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    static boolean isEqual(Binding declaringElement, Binding declaringElement2, HashSet visitedTypes) {
        if (declaringElement instanceof TypeBinding) {
            if (!(declaringElement2 instanceof TypeBinding)) {
                return false;
            }
            return BindingComparator.isEqual((TypeBinding)declaringElement, (TypeBinding)declaringElement2, visitedTypes);
        }
        if (declaringElement instanceof MethodBinding) {
            if (!(declaringElement2 instanceof MethodBinding)) {
                return false;
            }
            return BindingComparator.isEqual((MethodBinding)declaringElement, (MethodBinding)declaringElement2, visitedTypes);
        }
        if (declaringElement instanceof VariableBinding) {
            if (!(declaringElement2 instanceof VariableBinding)) {
                return false;
            }
            return BindingComparator.isEqual((VariableBinding)declaringElement, (VariableBinding)declaringElement2);
        }
        if (declaringElement instanceof PackageBinding) {
            if (!(declaringElement2 instanceof PackageBinding)) {
                return false;
            }
            PackageBinding packageBinding = (PackageBinding)declaringElement;
            PackageBinding packageBinding2 = (PackageBinding)declaringElement2;
            return CharOperation.equals(packageBinding.compoundName, packageBinding2.compoundName);
        }
        if (declaringElement instanceof ImportBinding) {
            if (!(declaringElement2 instanceof ImportBinding)) {
                return false;
            }
            ImportBinding importBinding = (ImportBinding)declaringElement;
            ImportBinding importBinding2 = (ImportBinding)declaringElement2;
            return importBinding.isStatic() == importBinding2.isStatic() && importBinding.onDemand == importBinding2.onDemand && CharOperation.equals(importBinding.compoundName, importBinding2.compoundName);
        }
        return false;
    }

    static boolean isEqual(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return BindingComparator.isEqual(methodBinding, methodBinding2, new HashSet());
    }

    static boolean isEqual(MethodBinding methodBinding, MethodBinding methodBinding2, HashSet visitedTypes) {
        if (methodBinding == null) {
            return methodBinding2 == null;
        }
        if (methodBinding2 == null) {
            return false;
        }
        return CharOperation.equals(methodBinding.selector, methodBinding2.selector) && BindingComparator.isEqual(methodBinding.returnType, methodBinding2.returnType, visitedTypes) && BindingComparator.isEqual(methodBinding.thrownExceptions, methodBinding2.thrownExceptions, visitedTypes) && BindingComparator.isEqual(methodBinding.declaringClass, methodBinding2.declaringClass, visitedTypes) && BindingComparator.isEqual(methodBinding.typeVariables, methodBinding2.typeVariables, visitedTypes) && BindingComparator.isEqual(methodBinding.parameters, methodBinding2.parameters, visitedTypes);
    }

    static boolean isEqual(VariableBinding variableBinding, VariableBinding variableBinding2) {
        return (variableBinding.modifiers & 0xFFFF) == (variableBinding2.modifiers & 0xFFFF) && CharOperation.equals(variableBinding.name, variableBinding2.name) && BindingComparator.isEqual(variableBinding.type, variableBinding2.type) && variableBinding.id == variableBinding2.id;
    }

    static boolean isEqual(FieldBinding fieldBinding, FieldBinding fieldBinding2) {
        HashSet visitedTypes = new HashSet();
        return (fieldBinding.modifiers & 0xFFFF) == (fieldBinding2.modifiers & 0xFFFF) && CharOperation.equals(fieldBinding.name, fieldBinding2.name) && BindingComparator.isEqual(fieldBinding.type, fieldBinding2.type, visitedTypes) && BindingComparator.isEqual(fieldBinding.declaringClass, fieldBinding2.declaringClass, visitedTypes);
    }

    static boolean isEqual(TypeBinding[] bindings, TypeBinding[] otherBindings) {
        return BindingComparator.isEqual(bindings, otherBindings, new HashSet());
    }

    static boolean isEqual(TypeBinding[] bindings, TypeBinding[] otherBindings, HashSet visitedTypes) {
        if (bindings == null) {
            return otherBindings == null;
        }
        if (otherBindings == null) {
            return false;
        }
        int length = bindings.length;
        int otherLength = otherBindings.length;
        if (length != otherLength) {
            return false;
        }
        int i = 0;
        while (i < length) {
            if (!BindingComparator.isEqual(bindings[i], otherBindings[i], visitedTypes)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    static boolean isEqual(TypeBinding typeBinding, TypeBinding typeBinding2, HashSet visitedTypes) {
        if (typeBinding == typeBinding2) {
            return true;
        }
        if (typeBinding == null || typeBinding2 == null) {
            return false;
        }
        switch (typeBinding.kind()) {
            case 132: {
                if (!typeBinding2.isBaseType()) {
                    return false;
                }
                return typeBinding.id == typeBinding2.id;
            }
            case 68: {
                if (!typeBinding2.isArrayType()) {
                    return false;
                }
                return typeBinding.dimensions() == typeBinding2.dimensions() && BindingComparator.isEqual(typeBinding.leafComponentType(), typeBinding2.leafComponentType(), visitedTypes);
            }
            case 260: {
                if (!typeBinding2.isParameterizedType()) {
                    return false;
                }
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding)typeBinding;
                ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding)typeBinding2;
                return CharOperation.equals(parameterizedTypeBinding.compoundName, parameterizedTypeBinding2.compoundName) && (parameterizedTypeBinding.modifiers & 0xFFFF) == (parameterizedTypeBinding2.modifiers & 0xFFFF) && BindingComparator.isEqual(parameterizedTypeBinding.arguments, parameterizedTypeBinding2.arguments, visitedTypes) && BindingComparator.isEqual(parameterizedTypeBinding.enclosingType(), parameterizedTypeBinding2.enclosingType(), visitedTypes);
            }
            case 516: {
                if (typeBinding2.kind() != 516) {
                    return false;
                }
                WildcardBinding wildcardBinding = (WildcardBinding)typeBinding;
                WildcardBinding wildcardBinding2 = (WildcardBinding)typeBinding2;
                return BindingComparator.isEqual(wildcardBinding.bound, wildcardBinding2.bound, visitedTypes) && wildcardBinding.boundKind == wildcardBinding2.boundKind;
            }
            case 8196: {
                if (typeBinding2.kind() != 8196) {
                    return false;
                }
                WildcardBinding intersectionBinding = (WildcardBinding)typeBinding;
                WildcardBinding intersectionBinding2 = (WildcardBinding)typeBinding2;
                return BindingComparator.isEqual(intersectionBinding.bound, intersectionBinding2.bound, visitedTypes) && BindingComparator.isEqual(intersectionBinding.otherBounds, intersectionBinding2.otherBounds, visitedTypes);
            }
            case 4100: {
                if (!typeBinding2.isTypeVariable()) {
                    return false;
                }
                if (typeBinding.isCapture()) {
                    if (!typeBinding2.isCapture()) {
                        return false;
                    }
                    CaptureBinding captureBinding = (CaptureBinding)typeBinding;
                    CaptureBinding captureBinding2 = (CaptureBinding)typeBinding2;
                    if (captureBinding.position == captureBinding2.position) {
                        if (visitedTypes.contains(typeBinding)) {
                            return true;
                        }
                        visitedTypes.add(typeBinding);
                        return BindingComparator.isEqual(captureBinding.wildcard, captureBinding2.wildcard, visitedTypes) && BindingComparator.isEqual(captureBinding.sourceType, captureBinding2.sourceType, visitedTypes);
                    }
                    return false;
                }
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding)typeBinding;
                TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding)typeBinding2;
                if (CharOperation.equals(typeVariableBinding.sourceName, typeVariableBinding2.sourceName)) {
                    if (visitedTypes.contains(typeBinding)) {
                        return true;
                    }
                    visitedTypes.add(typeBinding);
                    return BindingComparator.isEqual(typeVariableBinding.declaringElement, typeVariableBinding2.declaringElement, visitedTypes) && BindingComparator.isEqual(typeVariableBinding.superclass(), typeVariableBinding2.superclass(), visitedTypes) && BindingComparator.isEqual(typeVariableBinding.superInterfaces(), typeVariableBinding2.superInterfaces(), visitedTypes);
                }
                return false;
            }
            case 2052: {
                if (!typeBinding2.isGenericType()) {
                    return false;
                }
                ReferenceBinding referenceBinding = (ReferenceBinding)typeBinding;
                ReferenceBinding referenceBinding2 = (ReferenceBinding)typeBinding2;
                return CharOperation.equals(referenceBinding.compoundName, referenceBinding2.compoundName) && (referenceBinding.modifiers & 0xFFFF) == (referenceBinding2.modifiers & 0xFFFF) && BindingComparator.isEqual(referenceBinding.typeVariables(), referenceBinding2.typeVariables(), visitedTypes) && BindingComparator.isEqual(referenceBinding.enclosingType(), referenceBinding2.enclosingType(), visitedTypes);
            }
        }
        if (!(typeBinding2 instanceof ReferenceBinding)) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding)typeBinding;
        ReferenceBinding referenceBinding2 = (ReferenceBinding)typeBinding2;
        char[] constantPoolName = referenceBinding.constantPoolName();
        char[] constantPoolName2 = referenceBinding2.constantPoolName();
        if (constantPoolName == null) {
            if (constantPoolName2 != null) {
                return false;
            }
            if (!CharOperation.equals(referenceBinding.computeUniqueKey(), referenceBinding2.computeUniqueKey())) {
                return false;
            }
        } else {
            if (constantPoolName2 == null) {
                return false;
            }
            if (!CharOperation.equals(constantPoolName, constantPoolName2)) {
                return false;
            }
        }
        return CharOperation.equals(referenceBinding.compoundName, referenceBinding2.compoundName) && !referenceBinding2.isGenericType() && referenceBinding.isRawType() == referenceBinding2.isRawType() && (referenceBinding.modifiers & 0xFFFFFFDF & 0xFFFF) == (referenceBinding2.modifiers & 0xFFFFFFDF & 0xFFFF) && BindingComparator.isEqual(referenceBinding.enclosingType(), referenceBinding2.enclosingType(), visitedTypes);
    }

    static boolean isEqual(TypeBinding typeBinding, TypeBinding typeBinding2) {
        return BindingComparator.isEqual(typeBinding, typeBinding2, new HashSet());
    }
}

