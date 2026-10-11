/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingComparator;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.MemberValuePairBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.util.Util;

class MethodBinding
implements IMethodBinding {
    private static final int VALID_MODIFIERS = 3391;
    private static final ITypeBinding[] NO_TYPE_BINDINGS = new ITypeBinding[0];
    private org.eclipse.jdt.internal.compiler.lookup.MethodBinding binding;
    private BindingResolver resolver;
    private ITypeBinding[] parameterTypes;
    private ITypeBinding[] exceptionTypes;
    private String name;
    private ITypeBinding declaringClass;
    private ITypeBinding returnType;
    private String key;
    private ITypeBinding[] typeParameters;
    private ITypeBinding[] typeArguments;
    private IAnnotationBinding[] annotations;
    private IAnnotationBinding[][] parameterAnnotations;

    MethodBinding(BindingResolver resolver, org.eclipse.jdt.internal.compiler.lookup.MethodBinding binding) {
        this.resolver = resolver;
        this.binding = binding;
    }

    public boolean isAnnotationMember() {
        return this.getDeclaringClass().isAnnotation();
    }

    public boolean isConstructor() {
        return this.binding.isConstructor();
    }

    public boolean isDefaultConstructor() {
        ReferenceBinding declaringClassBinding = this.binding.declaringClass;
        if (declaringClassBinding.isRawType()) {
            RawTypeBinding rawTypeBinding = (RawTypeBinding)declaringClassBinding;
            if (rawTypeBinding.genericType().isBinaryBinding()) {
                return false;
            }
            return (this.binding.modifiers & 0x4000000) != 0;
        }
        if (declaringClassBinding.isBinaryBinding()) {
            return false;
        }
        return (this.binding.modifiers & 0x4000000) != 0;
    }

    public String getName() {
        if (this.name == null) {
            this.name = this.binding.isConstructor() ? this.getDeclaringClass().getName() : new String(this.binding.selector);
        }
        return this.name;
    }

    public IAnnotationBinding[] getAnnotations() {
        int length;
        if (this.annotations != null) {
            return this.annotations;
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] internalAnnotations = this.binding.getAnnotations();
        int n = length = internalAnnotations == null ? 0 : internalAnnotations.length;
        if (length != 0) {
            IAnnotationBinding[] tempAnnotations = new IAnnotationBinding[length];
            int convertedAnnotationCount = 0;
            int i = 0;
            while (i < length) {
                org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding internalAnnotation = internalAnnotations[i];
                IAnnotationBinding annotationInstance = this.resolver.getAnnotationInstance(internalAnnotation);
                if (annotationInstance != null) {
                    tempAnnotations[convertedAnnotationCount++] = annotationInstance;
                }
                ++i;
            }
            if (convertedAnnotationCount != length) {
                if (convertedAnnotationCount == 0) {
                    this.annotations = AnnotationBinding.NoAnnotations;
                    return AnnotationBinding.NoAnnotations;
                }
                IAnnotationBinding[] iAnnotationBindingArray = tempAnnotations;
                tempAnnotations = new IAnnotationBinding[convertedAnnotationCount];
                System.arraycopy(iAnnotationBindingArray, 0, tempAnnotations, 0, convertedAnnotationCount);
            }
            this.annotations = tempAnnotations;
            return tempAnnotations;
        }
        this.annotations = AnnotationBinding.NoAnnotations;
        return AnnotationBinding.NoAnnotations;
    }

    public ITypeBinding getDeclaringClass() {
        if (this.declaringClass == null) {
            this.declaringClass = this.resolver.getTypeBinding(this.binding.declaringClass);
        }
        return this.declaringClass;
    }

    public IAnnotationBinding[] getParameterAnnotations(int index) {
        if (this.getParameterTypes() == NO_TYPE_BINDINGS) {
            return AnnotationBinding.NoAnnotations;
        }
        if (this.parameterAnnotations != null) {
            return this.parameterAnnotations[index];
        }
        org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[][] bindingAnnotations = this.binding.getParameterAnnotations();
        if (bindingAnnotations == null) {
            return AnnotationBinding.NoAnnotations;
        }
        int length = bindingAnnotations.length;
        IAnnotationBinding[][] domAnnotations = new IAnnotationBinding[length][];
        int i = 0;
        while (i < length) {
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] paramBindingAnnotations = bindingAnnotations[i];
            int pLength = paramBindingAnnotations.length;
            domAnnotations[i] = new AnnotationBinding[pLength];
            int j = 0;
            while (j < pLength) {
                IAnnotationBinding domAnnotation = this.resolver.getAnnotationInstance(paramBindingAnnotations[j]);
                if (domAnnotation == null) {
                    domAnnotations[i] = AnnotationBinding.NoAnnotations;
                    break;
                }
                domAnnotations[i][j] = domAnnotation;
                ++j;
            }
            ++i;
        }
        this.parameterAnnotations = domAnnotations;
        return this.parameterAnnotations[index];
    }

    public ITypeBinding[] getParameterTypes() {
        int length;
        if (this.parameterTypes != null) {
            return this.parameterTypes;
        }
        TypeBinding[] parameters = this.binding.parameters;
        int n = length = parameters == null ? 0 : parameters.length;
        if (length == 0) {
            this.parameterTypes = NO_TYPE_BINDINGS;
            return NO_TYPE_BINDINGS;
        }
        ITypeBinding[] paramTypes = new ITypeBinding[length];
        int i = 0;
        while (i < length) {
            ITypeBinding typeBinding;
            TypeBinding parameterBinding = parameters[i];
            if (parameterBinding != null) {
                typeBinding = this.resolver.getTypeBinding(parameterBinding);
                if (typeBinding == null) {
                    this.parameterTypes = NO_TYPE_BINDINGS;
                    return NO_TYPE_BINDINGS;
                }
            } else {
                StringBuffer message = new StringBuffer("Report method binding where a parameter is null:\n");
                message.append(this.toString());
                Util.log(new IllegalArgumentException(), message.toString());
                this.parameterTypes = NO_TYPE_BINDINGS;
                return NO_TYPE_BINDINGS;
            }
            paramTypes[i] = typeBinding;
            ++i;
        }
        this.parameterTypes = paramTypes;
        return paramTypes;
    }

    public ITypeBinding getReturnType() {
        if (this.returnType == null) {
            this.returnType = this.resolver.getTypeBinding(this.binding.returnType);
        }
        return this.returnType;
    }

    public Object getDefaultValue() {
        if (this.isAnnotationMember()) {
            return MemberValuePairBinding.buildDOMValue(this.binding.getDefaultValue(), this.resolver);
        }
        return null;
    }

    public ITypeBinding[] getExceptionTypes() {
        int length;
        if (this.exceptionTypes != null) {
            return this.exceptionTypes;
        }
        ReferenceBinding[] exceptions = this.binding.thrownExceptions;
        int n = length = exceptions == null ? 0 : exceptions.length;
        if (length == 0) {
            this.exceptionTypes = NO_TYPE_BINDINGS;
            return NO_TYPE_BINDINGS;
        }
        ITypeBinding[] exTypes = new ITypeBinding[length];
        int i = 0;
        while (i < length) {
            ITypeBinding typeBinding = this.resolver.getTypeBinding(exceptions[i]);
            if (typeBinding == null) {
                this.exceptionTypes = NO_TYPE_BINDINGS;
                return NO_TYPE_BINDINGS;
            }
            exTypes[i] = typeBinding;
            ++i;
        }
        this.exceptionTypes = exTypes;
        return exTypes;
    }

    public IJavaElement getJavaElement() {
        JavaElement element = this.getUnresolvedJavaElement();
        if (element == null) {
            return null;
        }
        return element.resolved(this.binding);
    }

    private JavaElement getUnresolvedJavaElement() {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        if (!(this.resolver instanceof DefaultBindingResolver)) {
            return null;
        }
        DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver)this.resolver;
        if (!defaultBindingResolver.fromJavaProject) {
            return null;
        }
        return Util.getUnresolvedJavaElement(this.binding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
    }

    public int getKind() {
        return 4;
    }

    public int getModifiers() {
        return this.binding.getAccessFlags() & 0xD3F;
    }

    public boolean isDeprecated() {
        return this.binding.isDeprecated();
    }

    public boolean isRecovered() {
        return false;
    }

    public boolean isSynthetic() {
        return this.binding.isSynthetic();
    }

    public boolean isVarargs() {
        return this.binding.isVarargs();
    }

    public String getKey() {
        if (this.key == null) {
            this.key = new String(this.binding.computeUniqueKey());
        }
        return this.key;
    }

    public boolean isEqualTo(IBinding other) {
        if (other == this) {
            return true;
        }
        if (other == null) {
            return false;
        }
        if (!(other instanceof MethodBinding)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.MethodBinding otherBinding = ((MethodBinding)other).binding;
        return BindingComparator.isEqual(this.binding, otherBinding);
    }

    public ITypeBinding[] getTypeParameters() {
        int typeVariableBindingsLength;
        if (this.typeParameters != null) {
            return this.typeParameters;
        }
        TypeVariableBinding[] typeVariableBindings = this.binding.typeVariables();
        int n = typeVariableBindingsLength = typeVariableBindings == null ? 0 : typeVariableBindings.length;
        if (typeVariableBindingsLength == 0) {
            this.typeParameters = NO_TYPE_BINDINGS;
            return NO_TYPE_BINDINGS;
        }
        ITypeBinding[] tParameters = new ITypeBinding[typeVariableBindingsLength];
        int i = 0;
        while (i < typeVariableBindingsLength) {
            ITypeBinding typeBinding = this.resolver.getTypeBinding(typeVariableBindings[i]);
            if (typeBinding == null) {
                this.typeParameters = NO_TYPE_BINDINGS;
                return NO_TYPE_BINDINGS;
            }
            tParameters[i] = typeBinding;
            ++i;
        }
        this.typeParameters = tParameters;
        return tParameters;
    }

    public boolean isGenericMethod() {
        if (this.typeParameters != null) {
            return this.typeParameters.length > 0;
        }
        TypeVariableBinding[] typeVariableBindings = this.binding.typeVariables();
        return typeVariableBindings != null && typeVariableBindings.length > 0;
    }

    public ITypeBinding[] getTypeArguments() {
        if (this.typeArguments != null) {
            return this.typeArguments;
        }
        if (this.binding instanceof ParameterizedGenericMethodBinding) {
            int typeArgumentsLength;
            ParameterizedGenericMethodBinding genericMethodBinding = (ParameterizedGenericMethodBinding)this.binding;
            TypeBinding[] typeArgumentsBindings = genericMethodBinding.typeArguments;
            int n = typeArgumentsLength = typeArgumentsBindings == null ? 0 : typeArgumentsBindings.length;
            if (typeArgumentsLength != 0) {
                ITypeBinding[] tArguments = new ITypeBinding[typeArgumentsLength];
                int i = 0;
                while (i < typeArgumentsLength) {
                    ITypeBinding typeBinding = this.resolver.getTypeBinding(typeArgumentsBindings[i]);
                    if (typeBinding == null) {
                        this.typeArguments = NO_TYPE_BINDINGS;
                        return NO_TYPE_BINDINGS;
                    }
                    tArguments[i] = typeBinding;
                    ++i;
                }
                this.typeArguments = tArguments;
                return tArguments;
            }
        }
        this.typeArguments = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public boolean isParameterizedMethod() {
        return this.binding instanceof ParameterizedGenericMethodBinding && !((ParameterizedGenericMethodBinding)this.binding).isRaw;
    }

    public boolean isRawMethod() {
        return this.binding instanceof ParameterizedGenericMethodBinding && ((ParameterizedGenericMethodBinding)this.binding).isRaw;
    }

    public boolean isSubsignature(IMethodBinding otherMethod) {
        try {
            LookupEnvironment lookupEnvironment = this.resolver.lookupEnvironment();
            return lookupEnvironment != null && lookupEnvironment.methodVerifier().isMethodSubsignature(this.binding, ((MethodBinding)otherMethod).binding);
        }
        catch (AbortCompilation abortCompilation) {
            return false;
        }
    }

    public IMethodBinding getMethodDeclaration() {
        return this.resolver.getMethodBinding(this.binding.original());
    }

    public boolean overrides(IMethodBinding otherMethod) {
        LookupEnvironment lookupEnvironment = this.resolver.lookupEnvironment();
        return lookupEnvironment != null && lookupEnvironment.methodVerifier().doesMethodOverride(this.binding, ((MethodBinding)otherMethod).binding);
    }

    public String toString() {
        return this.binding.toString();
    }
}

