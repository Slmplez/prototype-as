/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ParameterizedMethodBinding
extends MethodBinding {
    protected MethodBinding originalMethod;

    public ParameterizedMethodBinding(final ParameterizedTypeBinding parameterizedDeclaringClass, MethodBinding originalMethod) {
        block19: {
            super(originalMethod.modifiers, originalMethod.selector, originalMethod.returnType, originalMethod.parameters, originalMethod.thrownExceptions, parameterizedDeclaringClass);
            this.originalMethod = originalMethod;
            this.tagBits = originalMethod.tagBits & 0xFFFFFFFFFFFFFF7FL;
            final TypeVariableBinding[] originalVariables = originalMethod.typeVariables;
            Substitution substitution = null;
            final int length = originalVariables.length;
            final boolean isStatic = originalMethod.isStatic();
            if (length == 0) {
                this.typeVariables = Binding.NO_TYPE_VARIABLES;
                if (!isStatic) {
                    substitution = parameterizedDeclaringClass;
                }
            } else {
                TypeVariableBinding originalVariable;
                final TypeVariableBinding[] substitutedVariables = new TypeVariableBinding[length];
                int i = 0;
                while (i < length) {
                    originalVariable = originalVariables[i];
                    substitutedVariables[i] = new TypeVariableBinding(originalVariable.sourceName, this, originalVariable.rank, parameterizedDeclaringClass.environment);
                    ++i;
                }
                this.typeVariables = substitutedVariables;
                substitution = new Substitution(){

                    public LookupEnvironment environment() {
                        return parameterizedDeclaringClass.environment;
                    }

                    public boolean isRawSubstitution() {
                        return !isStatic && parameterizedDeclaringClass.isRawSubstitution();
                    }

                    public TypeBinding substitute(TypeVariableBinding typeVariable) {
                        if (typeVariable.rank < length && originalVariables[typeVariable.rank] == typeVariable) {
                            return substitutedVariables[typeVariable.rank];
                        }
                        if (!isStatic) {
                            return parameterizedDeclaringClass.substitute(typeVariable);
                        }
                        return typeVariable;
                    }
                };
                i = 0;
                while (i < length) {
                    originalVariable = originalVariables[i];
                    TypeVariableBinding substitutedVariable = substitutedVariables[i];
                    TypeBinding substitutedSuperclass = Scope.substitute(substitution, originalVariable.superclass);
                    ReferenceBinding[] substitutedInterfaces = Scope.substitute(substitution, originalVariable.superInterfaces);
                    if (originalVariable.firstBound != null) {
                        substitutedVariable.firstBound = originalVariable.firstBound == originalVariable.superclass ? substitutedSuperclass : substitutedInterfaces[0];
                    }
                    switch (substitutedSuperclass.kind()) {
                        case 68: {
                            substitutedVariable.superclass = parameterizedDeclaringClass.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
                            substitutedVariable.superInterfaces = substitutedInterfaces;
                            break;
                        }
                        default: {
                            if (substitutedSuperclass.isInterface()) {
                                substitutedVariable.superclass = parameterizedDeclaringClass.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
                                int interfaceCount = substitutedInterfaces.length;
                                ReferenceBinding[] referenceBindingArray = substitutedInterfaces;
                                substitutedInterfaces = new ReferenceBinding[interfaceCount + 1];
                                System.arraycopy(referenceBindingArray, 0, substitutedInterfaces, 1, interfaceCount);
                                substitutedInterfaces[0] = (ReferenceBinding)substitutedSuperclass;
                                substitutedVariable.superInterfaces = substitutedInterfaces;
                                break;
                            }
                            substitutedVariable.superclass = (ReferenceBinding)substitutedSuperclass;
                            substitutedVariable.superInterfaces = substitutedInterfaces;
                        }
                    }
                    ++i;
                }
            }
            if (substitution != null) {
                this.returnType = Scope.substitute(substitution, this.returnType);
                this.parameters = Scope.substitute(substitution, this.parameters);
                this.thrownExceptions = Scope.substitute(substitution, this.thrownExceptions);
                if (this.thrownExceptions == null) {
                    this.thrownExceptions = Binding.NO_EXCEPTIONS;
                }
            }
            if ((this.tagBits & 0x80L) == 0L) {
                if ((this.returnType.tagBits & 0x80L) != 0L) {
                    this.tagBits |= 0x80L;
                } else {
                    int i = 0;
                    int max = this.parameters.length;
                    while (i < max) {
                        if ((this.parameters[i].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break block19;
                        }
                        ++i;
                    }
                    i = 0;
                    max = this.thrownExceptions.length;
                    while (i < max) {
                        if ((this.thrownExceptions[i].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break;
                        }
                        ++i;
                    }
                }
            }
        }
    }

    public ParameterizedMethodBinding(ReferenceBinding declaringClass, MethodBinding originalMethod, char[][] alternateParamaterNames, final LookupEnvironment environment) {
        block18: {
            super(originalMethod.modifiers, originalMethod.selector, originalMethod.returnType, originalMethod.parameters, originalMethod.thrownExceptions, declaringClass);
            this.originalMethod = originalMethod;
            this.tagBits = originalMethod.tagBits & 0xFFFFFFFFFFFFFF7FL;
            final TypeVariableBinding[] originalVariables = originalMethod.typeVariables;
            Substitution substitution = null;
            final int length = originalVariables.length;
            if (length == 0) {
                this.typeVariables = Binding.NO_TYPE_VARIABLES;
            } else {
                TypeVariableBinding originalVariable;
                final TypeVariableBinding[] substitutedVariables = new TypeVariableBinding[length];
                int i = 0;
                while (i < length) {
                    originalVariable = originalVariables[i];
                    substitutedVariables[i] = new TypeVariableBinding(alternateParamaterNames == null ? originalVariable.sourceName : alternateParamaterNames[i], this, originalVariable.rank, environment);
                    ++i;
                }
                this.typeVariables = substitutedVariables;
                substitution = new Substitution(){

                    public LookupEnvironment environment() {
                        return environment;
                    }

                    public boolean isRawSubstitution() {
                        return false;
                    }

                    public TypeBinding substitute(TypeVariableBinding typeVariable) {
                        if (typeVariable.rank < length && originalVariables[typeVariable.rank] == typeVariable) {
                            return substitutedVariables[typeVariable.rank];
                        }
                        return typeVariable;
                    }
                };
                i = 0;
                while (i < length) {
                    originalVariable = originalVariables[i];
                    TypeVariableBinding substitutedVariable = substitutedVariables[i];
                    TypeBinding substitutedSuperclass = Scope.substitute(substitution, originalVariable.superclass);
                    ReferenceBinding[] substitutedInterfaces = Scope.substitute(substitution, originalVariable.superInterfaces);
                    if (originalVariable.firstBound != null) {
                        substitutedVariable.firstBound = originalVariable.firstBound == originalVariable.superclass ? substitutedSuperclass : substitutedInterfaces[0];
                    }
                    switch (substitutedSuperclass.kind()) {
                        case 68: {
                            substitutedVariable.superclass = environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
                            substitutedVariable.superInterfaces = substitutedInterfaces;
                            break;
                        }
                        default: {
                            if (substitutedSuperclass.isInterface()) {
                                substitutedVariable.superclass = environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
                                int interfaceCount = substitutedInterfaces.length;
                                ReferenceBinding[] referenceBindingArray = substitutedInterfaces;
                                substitutedInterfaces = new ReferenceBinding[interfaceCount + 1];
                                System.arraycopy(referenceBindingArray, 0, substitutedInterfaces, 1, interfaceCount);
                                substitutedInterfaces[0] = (ReferenceBinding)substitutedSuperclass;
                                substitutedVariable.superInterfaces = substitutedInterfaces;
                                break;
                            }
                            substitutedVariable.superclass = (ReferenceBinding)substitutedSuperclass;
                            substitutedVariable.superInterfaces = substitutedInterfaces;
                        }
                    }
                    ++i;
                }
            }
            if (substitution != null) {
                this.returnType = Scope.substitute(substitution, this.returnType);
                this.parameters = Scope.substitute(substitution, this.parameters);
                this.thrownExceptions = Scope.substitute(substitution, this.thrownExceptions);
                if (this.thrownExceptions == null) {
                    this.thrownExceptions = Binding.NO_EXCEPTIONS;
                }
            }
            if ((this.tagBits & 0x80L) == 0L) {
                if ((this.returnType.tagBits & 0x80L) != 0L) {
                    this.tagBits |= 0x80L;
                } else {
                    int i = 0;
                    int max = this.parameters.length;
                    while (i < max) {
                        if ((this.parameters[i].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break block18;
                        }
                        ++i;
                    }
                    i = 0;
                    max = this.thrownExceptions.length;
                    while (i < max) {
                        if ((this.thrownExceptions[i].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break;
                        }
                        ++i;
                    }
                }
            }
        }
    }

    public ParameterizedMethodBinding() {
    }

    public static ParameterizedMethodBinding instantiateGetClass(TypeBinding receiverType, MethodBinding originalMethod, Scope scope) {
        ParameterizedMethodBinding method = new ParameterizedMethodBinding();
        method.modifiers = originalMethod.modifiers;
        method.selector = originalMethod.selector;
        method.declaringClass = originalMethod.declaringClass;
        method.typeVariables = Binding.NO_TYPE_VARIABLES;
        method.originalMethod = originalMethod;
        method.parameters = originalMethod.parameters;
        method.thrownExceptions = originalMethod.thrownExceptions;
        method.tagBits = originalMethod.tagBits;
        ReferenceBinding genericClassType = scope.getJavaLangClass();
        LookupEnvironment environment = scope.environment();
        TypeBinding rawType = environment.convertToRawType(receiverType.erasure(), false);
        method.returnType = environment.createParameterizedType(genericClassType, new TypeBinding[]{environment.createWildcard(genericClassType, 0, rawType, null, 1)}, null);
        if ((method.returnType.tagBits & 0x80L) != 0L) {
            method.tagBits |= 0x80L;
        }
        return method;
    }

    public boolean hasSubstitutedParameters() {
        return this.parameters != this.originalMethod.parameters;
    }

    public boolean hasSubstitutedReturnType() {
        return this.returnType != this.originalMethod.returnType;
    }

    public MethodBinding original() {
        return this.originalMethod.original();
    }
}

