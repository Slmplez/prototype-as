/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ParameterizedGenericMethodBinding
extends ParameterizedMethodBinding
implements Substitution {
    public TypeBinding[] typeArguments;
    private LookupEnvironment environment;
    public boolean inferredReturnType;
    public boolean wasInferred;
    public boolean isRaw;
    private MethodBinding tiebreakMethod;

    public static MethodBinding computeCompatibleMethod(MethodBinding originalMethod, TypeBinding[] arguments, Scope scope, InvocationSite invocationSite) {
        ParameterizedGenericMethodBinding methodSubstitute;
        TypeVariableBinding[] typeVariables = originalMethod.typeVariables;
        TypeBinding[] substitutes = invocationSite.genericTypeArguments();
        InferenceContext inferenceContext = null;
        TypeBinding[] uncheckedArguments = null;
        if (substitutes != null) {
            if (substitutes.length != typeVariables.length) {
                return new ProblemMethodBinding(originalMethod, originalMethod.selector, substitutes, 11);
            }
            methodSubstitute = scope.environment().createParameterizedGenericMethod(originalMethod, substitutes);
        } else {
            TypeBinding[] parameters = originalMethod.parameters;
            inferenceContext = new InferenceContext(originalMethod);
            methodSubstitute = ParameterizedGenericMethodBinding.inferFromArgumentTypes(scope, originalMethod, arguments, parameters, inferenceContext);
            if (methodSubstitute == null) {
                return null;
            }
            if (inferenceContext.hasUnresolvedTypeArgument()) {
                if (inferenceContext.isUnchecked) {
                    int length = inferenceContext.substitutes.length;
                    uncheckedArguments = new TypeBinding[length];
                    System.arraycopy(inferenceContext.substitutes, 0, uncheckedArguments, 0, length);
                }
                if (methodSubstitute.returnType != TypeBinding.VOID) {
                    TypeBinding expectedType = invocationSite.expectedType();
                    if (expectedType != null) {
                        inferenceContext.hasExplicitExpectedType = true;
                    } else {
                        expectedType = scope.getJavaLangObject();
                    }
                    inferenceContext.expectedType = expectedType;
                }
                if ((methodSubstitute = methodSubstitute.inferFromExpectedType(scope, inferenceContext)) == null) {
                    return null;
                }
            }
        }
        Substitution substitution = null;
        substitution = inferenceContext != null ? new LingeringTypeVariableEliminator(typeVariables, inferenceContext.substitutes, scope) : methodSubstitute;
        int i = 0;
        int length = typeVariables.length;
        while (i < length) {
            TypeVariableBinding typeVariable = typeVariables[i];
            TypeBinding substitute = methodSubstitute.typeArguments[i];
            TypeBinding substituteForChecks = Scope.substitute((Substitution)new LingeringTypeVariableEliminator(typeVariables, null, scope), substitute);
            if (uncheckedArguments == null || uncheckedArguments[i] != null) {
                switch (typeVariable.boundCheck(substitution, substituteForChecks)) {
                    case 2: {
                        int argLength = arguments.length;
                        TypeBinding[] augmentedArguments = new TypeBinding[argLength + 2];
                        System.arraycopy(arguments, 0, augmentedArguments, 0, argLength);
                        augmentedArguments[argLength] = substitute;
                        augmentedArguments[argLength + 1] = typeVariable;
                        return new ProblemMethodBinding(methodSubstitute, originalMethod.selector, augmentedArguments, 10);
                    }
                    case 1: {
                        methodSubstitute.tagBits |= 0x100L;
                    }
                }
            }
            ++i;
        }
        return methodSubstitute;
    }

    /*
     * Unable to fully structure code
     */
    private static ParameterizedGenericMethodBinding inferFromArgumentTypes(Scope scope, MethodBinding originalMethod, TypeBinding[] arguments, TypeBinding[] parameters, InferenceContext inferenceContext) {
        block17: {
            block16: {
                block19: {
                    block18: {
                        if (!originalMethod.isVarargs()) break block16;
                        paramLength = parameters.length;
                        minArgLength = paramLength - 1;
                        argLength = arguments.length;
                        i = 0;
                        while (i < minArgLength) {
                            parameters[i].collectSubstitutes(scope, arguments[i], inferenceContext, 1);
                            if (inferenceContext.status == 1) {
                                return null;
                            }
                            ++i;
                        }
                        if (minArgLength >= argLength) break block17;
                        varargType = parameters[minArgLength];
                        lastArgument = arguments[minArgLength];
                        if (paramLength != argLength) break block18;
                        if (lastArgument == TypeBinding.NULL) break block19;
                        switch (lastArgument.dimensions()) {
                            case 0: {
                                ** break;
                            }
                            case 1: {
                                if (lastArgument.leafComponentType().isBaseType()) ** break;
                                break block19;
                            }
                            default: {
                                break block19;
                            }
                        }
                    }
                    varargType = ((ArrayBinding)varargType).elementsType();
                }
                i = minArgLength;
                while (i < argLength) {
                    varargType.collectSubstitutes(scope, arguments[i], inferenceContext, 1);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                    ++i;
                }
                break block17;
            }
            paramLength = parameters.length;
            i = 0;
            while (i < paramLength) {
                parameters[i].collectSubstitutes(scope, arguments[i], inferenceContext, 1);
                if (inferenceContext.status == 1) {
                    return null;
                }
                ++i;
            }
        }
        if (!ParameterizedGenericMethodBinding.resolveSubstituteConstraints(scope, originalVariables = originalMethod.typeVariables, inferenceContext, false)) {
            return null;
        }
        actualSubstitutes = inferredSustitutes = inferenceContext.substitutes;
        i = 0;
        varLength = originalVariables.length;
        while (i < varLength) {
            if (inferredSustitutes[i] == null) {
                if (actualSubstitutes == inferredSustitutes) {
                    actualSubstitutes = new TypeBinding[varLength];
                    System.arraycopy(inferredSustitutes, 0, actualSubstitutes, 0, i);
                }
                actualSubstitutes[i] = originalVariables[i];
            } else if (actualSubstitutes != inferredSustitutes) {
                actualSubstitutes[i] = inferredSustitutes[i];
            }
            ++i;
        }
        paramMethod = scope.environment().createParameterizedGenericMethod(originalMethod, actualSubstitutes);
        return paramMethod;
    }

    private static boolean resolveSubstituteConstraints(Scope scope, TypeVariableBinding[] typeVariables, InferenceContext inferenceContext, boolean considerEXTENDSConstraints) {
        TypeBinding[] bounds;
        TypeBinding substitute;
        TypeVariableBinding current;
        TypeBinding[] substitutes = inferenceContext.substitutes;
        int varLength = typeVariables.length;
        int i = 0;
        while (i < varLength) {
            TypeBinding[] equalSubstitutes;
            current = typeVariables[i];
            substitute = substitutes[i];
            if (substitute == null && (equalSubstitutes = inferenceContext.getSubstitutes(current, 0)) != null) {
                int j = 0;
                int equalLength = equalSubstitutes.length;
                block1: while (j < equalLength) {
                    TypeBinding equalSubstitute = equalSubstitutes[j];
                    if (equalSubstitute != null) {
                        if (equalSubstitute == current) {
                            int k = j + 1;
                            while (k < equalLength) {
                                equalSubstitute = equalSubstitutes[k];
                                if (equalSubstitute != current && equalSubstitute != null) {
                                    substitutes[i] = equalSubstitute;
                                    break block1;
                                }
                                ++k;
                            }
                            substitutes[i] = current;
                            break;
                        }
                        substitutes[i] = equalSubstitute;
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        if (inferenceContext.hasUnresolvedTypeArgument()) {
            i = 0;
            while (i < varLength) {
                current = typeVariables[i];
                substitute = substitutes[i];
                if (substitute == null && (bounds = inferenceContext.getSubstitutes(current, 2)) != null) {
                    TypeBinding mostSpecificSubstitute = scope.lowerUpperBound(bounds);
                    if (mostSpecificSubstitute == null) {
                        return false;
                    }
                    if (mostSpecificSubstitute != TypeBinding.VOID) {
                        substitutes[i] = mostSpecificSubstitute;
                    }
                }
                ++i;
            }
        }
        if (considerEXTENDSConstraints && inferenceContext.hasUnresolvedTypeArgument()) {
            i = 0;
            while (i < varLength) {
                current = typeVariables[i];
                substitute = substitutes[i];
                if (substitute == null && (bounds = inferenceContext.getSubstitutes(current, 1)) != null) {
                    TypeBinding[] glb = Scope.greaterLowerBound(bounds);
                    TypeBinding mostSpecificSubstitute = null;
                    if (glb != null) {
                        if (glb.length == 1) {
                            mostSpecificSubstitute = glb[0];
                        } else {
                            TypeBinding[] otherBounds = new TypeBinding[glb.length - 1];
                            System.arraycopy(glb, 1, otherBounds, 0, glb.length - 1);
                            mostSpecificSubstitute = scope.environment().createWildcard(null, 0, glb[0], otherBounds, 1);
                        }
                    }
                    if (mostSpecificSubstitute != null) {
                        substitutes[i] = mostSpecificSubstitute;
                    }
                }
                ++i;
            }
        }
        return true;
    }

    public ParameterizedGenericMethodBinding(MethodBinding originalMethod, RawTypeBinding rawType, LookupEnvironment environment) {
        TypeVariableBinding[] originalVariables = originalMethod.typeVariables;
        int length = originalVariables.length;
        TypeBinding[] rawArguments = new TypeBinding[length];
        int i = 0;
        while (i < length) {
            rawArguments[i] = environment.convertToRawType(originalVariables[i].erasure(), false);
            ++i;
        }
        this.isRaw = true;
        this.tagBits = originalMethod.tagBits;
        this.environment = environment;
        this.modifiers = originalMethod.modifiers;
        this.selector = originalMethod.selector;
        this.declaringClass = rawType == null ? originalMethod.declaringClass : rawType;
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeArguments = rawArguments;
        this.originalMethod = originalMethod;
        boolean ignoreRawTypeSubstitution = rawType == null || originalMethod.isStatic();
        this.parameters = Scope.substitute((Substitution)this, ignoreRawTypeSubstitution ? originalMethod.parameters : Scope.substitute((Substitution)rawType, originalMethod.parameters));
        this.thrownExceptions = Scope.substitute((Substitution)this, ignoreRawTypeSubstitution ? originalMethod.thrownExceptions : Scope.substitute((Substitution)rawType, originalMethod.thrownExceptions));
        if (this.thrownExceptions == null) {
            this.thrownExceptions = Binding.NO_EXCEPTIONS;
        }
        this.returnType = Scope.substitute((Substitution)this, ignoreRawTypeSubstitution ? originalMethod.returnType : Scope.substitute((Substitution)rawType, originalMethod.returnType));
        this.wasInferred = false;
    }

    public ParameterizedGenericMethodBinding(MethodBinding originalMethod, TypeBinding[] typeArguments, LookupEnvironment environment) {
        block8: {
            this.environment = environment;
            this.modifiers = originalMethod.modifiers;
            this.selector = originalMethod.selector;
            this.declaringClass = originalMethod.declaringClass;
            this.typeVariables = Binding.NO_TYPE_VARIABLES;
            this.typeArguments = typeArguments;
            this.isRaw = false;
            this.tagBits = originalMethod.tagBits;
            this.originalMethod = originalMethod;
            this.parameters = Scope.substitute((Substitution)this, originalMethod.parameters);
            this.returnType = Scope.substitute((Substitution)this, originalMethod.returnType);
            this.thrownExceptions = Scope.substitute((Substitution)this, originalMethod.thrownExceptions);
            if (this.thrownExceptions == null) {
                this.thrownExceptions = Binding.NO_EXCEPTIONS;
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
                            break block8;
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
        this.wasInferred = true;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.originalMethod.computeUniqueKey(false));
        buffer.append('%');
        buffer.append('<');
        if (!this.isRaw) {
            int length = this.typeArguments.length;
            int i = 0;
            while (i < length) {
                TypeBinding typeArgument = this.typeArguments[i];
                buffer.append(typeArgument.computeUniqueKey(false));
                ++i;
            }
        }
        buffer.append('>');
        int resultLength = buffer.length();
        char[] result = new char[resultLength];
        buffer.getChars(0, resultLength, result, 0);
        return result;
    }

    public LookupEnvironment environment() {
        return this.environment;
    }

    public boolean hasSubstitutedParameters() {
        if (this.wasInferred) {
            return this.originalMethod.hasSubstitutedParameters();
        }
        return super.hasSubstitutedParameters();
    }

    public boolean hasSubstitutedReturnType() {
        if (this.inferredReturnType) {
            return this.originalMethod.hasSubstitutedReturnType();
        }
        return super.hasSubstitutedReturnType();
    }

    private ParameterizedGenericMethodBinding inferFromExpectedType(Scope scope, InferenceContext inferenceContext) {
        block21: {
            TypeVariableBinding[] originalVariables = this.originalMethod.typeVariables;
            int varLength = originalVariables.length;
            if (inferenceContext.expectedType != null) {
                this.returnType.collectSubstitutes(scope, inferenceContext.expectedType, inferenceContext, 2);
                if (inferenceContext.status == 1) {
                    return null;
                }
            }
            int i = 0;
            while (i < varLength) {
                boolean argAlreadyInferred;
                TypeBinding argument = this.typeArguments[i];
                TypeVariableBinding originalVariable = originalVariables[i];
                boolean bl = argAlreadyInferred = argument != originalVariable;
                if (originalVariable.firstBound == originalVariable.superclass) {
                    TypeBinding substitutedBound = Scope.substitute((Substitution)this, originalVariable.superclass);
                    argument.collectSubstitutes(scope, substitutedBound, inferenceContext, 2);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                    if (argAlreadyInferred) {
                        substitutedBound.collectSubstitutes(scope, argument, inferenceContext, 1);
                        if (inferenceContext.status == 1) {
                            return null;
                        }
                    }
                }
                int j = 0;
                int max = originalVariable.superInterfaces.length;
                while (j < max) {
                    TypeBinding substitutedBound = Scope.substitute((Substitution)this, originalVariable.superInterfaces[j]);
                    argument.collectSubstitutes(scope, substitutedBound, inferenceContext, 2);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                    if (argAlreadyInferred) {
                        substitutedBound.collectSubstitutes(scope, argument, inferenceContext, 1);
                        if (inferenceContext.status == 1) {
                            return null;
                        }
                    }
                    ++j;
                }
                ++i;
            }
            if (!ParameterizedGenericMethodBinding.resolveSubstituteConstraints(scope, originalVariables, inferenceContext, true)) {
                return null;
            }
            i = 0;
            while (i < varLength) {
                TypeBinding substitute = inferenceContext.substitutes[i];
                this.typeArguments[i] = substitute != null ? substitute : (inferenceContext.substitutes[i] = originalVariables[i].upperBound());
                ++i;
            }
            this.typeArguments = Scope.substitute((Substitution)this, this.typeArguments);
            TypeBinding oldReturnType = this.returnType;
            this.returnType = Scope.substitute((Substitution)this, this.returnType);
            this.inferredReturnType = inferenceContext.hasExplicitExpectedType && this.returnType != oldReturnType;
            this.parameters = Scope.substitute((Substitution)this, this.parameters);
            this.thrownExceptions = Scope.substitute((Substitution)this, this.thrownExceptions);
            if (this.thrownExceptions == null) {
                this.thrownExceptions = Binding.NO_EXCEPTIONS;
            }
            if ((this.tagBits & 0x80L) == 0L) {
                if ((this.returnType.tagBits & 0x80L) != 0L) {
                    this.tagBits |= 0x80L;
                } else {
                    int i2 = 0;
                    int max = this.parameters.length;
                    while (i2 < max) {
                        if ((this.parameters[i2].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break block21;
                        }
                        ++i2;
                    }
                    i2 = 0;
                    max = this.thrownExceptions.length;
                    while (i2 < max) {
                        if ((this.thrownExceptions[i2].tagBits & 0x80L) != 0L) {
                            this.tagBits |= 0x80L;
                            break;
                        }
                        ++i2;
                    }
                }
            }
        }
        return this;
    }

    public boolean isRawSubstitution() {
        return this.isRaw;
    }

    public TypeBinding substitute(TypeVariableBinding originalVariable) {
        TypeVariableBinding[] variables = this.originalMethod.typeVariables;
        int length = variables.length;
        if (originalVariable.rank < length && variables[originalVariable.rank] == originalVariable) {
            return this.typeArguments[originalVariable.rank];
        }
        return originalVariable;
    }

    public MethodBinding tiebreakMethod() {
        if (this.tiebreakMethod == null) {
            this.tiebreakMethod = this.originalMethod.asRawMethod(this.environment);
        }
        return this.tiebreakMethod;
    }

    private static class LingeringTypeVariableEliminator
    implements Substitution {
        private final TypeVariableBinding[] variables;
        private final TypeBinding[] substitutes;
        private final Scope scope;

        public LingeringTypeVariableEliminator(TypeVariableBinding[] variables, TypeBinding[] substitutes, Scope scope) {
            this.variables = variables;
            this.substitutes = substitutes;
            this.scope = scope;
        }

        public TypeBinding substitute(TypeVariableBinding typeVariable) {
            if (typeVariable.rank >= this.variables.length || this.variables[typeVariable.rank] != typeVariable) {
                return typeVariable;
            }
            if (this.substitutes != null) {
                return Scope.substitute((Substitution)new LingeringTypeVariableEliminator(this.variables, null, this.scope), this.substitutes[typeVariable.rank]);
            }
            ReferenceBinding genericType = (ReferenceBinding)(typeVariable.declaringElement instanceof ReferenceBinding ? typeVariable.declaringElement : null);
            return this.scope.environment().createWildcard(genericType, typeVariable.rank, null, null, 0);
        }

        public LookupEnvironment environment() {
            return this.scope.environment();
        }

        public boolean isRawSubstitution() {
            return false;
        }
    }
}

