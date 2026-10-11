/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AnnotationBinding;
import org.eclipse.jdt.core.dom.BindingComparator;
import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.DefaultBindingResolver;
import org.eclipse.jdt.core.dom.IAnnotationBinding;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.IPackageBinding;
import org.eclipse.jdt.core.dom.ITypeBinding;
import org.eclipse.jdt.core.dom.IVariableBinding;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.util.Util;

class TypeBinding
implements ITypeBinding {
    private static final StringLiteral EXPRESSION = new StringLiteral(0, 0);
    protected static final IMethodBinding[] NO_METHOD_BINDINGS = new IMethodBinding[0];
    private static final String NO_NAME = "";
    protected static final ITypeBinding[] NO_TYPE_BINDINGS = new ITypeBinding[0];
    protected static final IVariableBinding[] NO_VARIABLE_BINDINGS = new IVariableBinding[0];
    private static final int VALID_MODIFIERS = 3103;
    org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding;
    private String key;
    private BindingResolver resolver;
    private IVariableBinding[] fields;
    private IAnnotationBinding[] annotations;
    private IMethodBinding[] methods;
    private ITypeBinding[] members;
    private ITypeBinding[] interfaces;
    private ITypeBinding[] typeArguments;
    private ITypeBinding[] bounds;
    private ITypeBinding[] typeParameters;

    public TypeBinding(BindingResolver resolver, org.eclipse.jdt.internal.compiler.lookup.TypeBinding binding) {
        this.binding = binding;
        this.resolver = resolver;
    }

    public ITypeBinding createArrayType(int dimension) {
        int realDimensions = dimension;
        if ((realDimensions += this.getDimensions()) < 1 || realDimensions > 255) {
            throw new IllegalArgumentException();
        }
        return this.resolver.resolveArrayType(this, dimension);
    }

    public IAnnotationBinding[] getAnnotations() {
        if (this.annotations != null) {
            return this.annotations;
        }
        ReferenceBinding refType = null;
        if (this.binding instanceof ParameterizedTypeBinding) {
            refType = ((ParameterizedTypeBinding)this.binding).genericType();
        } else if (this.binding.isAnnotationType() || this.binding.isClass() || this.binding.isEnum() || this.binding.isInterface()) {
            refType = (ReferenceBinding)this.binding;
        }
        if (refType != null) {
            int length;
            org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding[] internalAnnotations = refType.getAnnotations();
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
        }
        this.annotations = AnnotationBinding.NoAnnotations;
        return AnnotationBinding.NoAnnotations;
    }

    public String getBinaryName() {
        if (this.binding.isCapture()) {
            return null;
        }
        if (this.binding.isTypeVariable()) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
            Binding declaring = typeVariableBinding.declaringElement;
            StringBuffer binaryName = new StringBuffer();
            switch (declaring.kind()) {
                case 8: {
                    MethodBinding methodBinding = (MethodBinding)declaring;
                    char[] constantPoolName = methodBinding.declaringClass.constantPoolName();
                    if (constantPoolName == null) {
                        return null;
                    }
                    binaryName.append(CharOperation.replaceOnCopy(constantPoolName, '/', '.')).append('$').append(methodBinding.signature()).append('$').append(typeVariableBinding.sourceName);
                    break;
                }
                default: {
                    org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = (org.eclipse.jdt.internal.compiler.lookup.TypeBinding)declaring;
                    char[] constantPoolName = typeBinding.constantPoolName();
                    if (constantPoolName == null) {
                        return null;
                    }
                    binaryName.append(CharOperation.replaceOnCopy(constantPoolName, '/', '.')).append('$').append(typeVariableBinding.sourceName);
                }
            }
            return String.valueOf(binaryName);
        }
        char[] constantPoolName = this.binding.constantPoolName();
        if (constantPoolName == null) {
            return null;
        }
        char[] dotSeparated = CharOperation.replaceOnCopy(constantPoolName, '/', '.');
        return new String(dotSeparated);
    }

    public ITypeBinding getBound() {
        switch (this.binding.kind()) {
            case 516: 
            case 8196: {
                WildcardBinding wildcardBinding = (WildcardBinding)this.binding;
                if (wildcardBinding.bound == null) break;
                return this.resolver.getTypeBinding(wildcardBinding.bound);
            }
        }
        return null;
    }

    public ITypeBinding getGenericTypeOfWildcardType() {
        switch (this.binding.kind()) {
            case 516: {
                WildcardBinding wildcardBinding = (WildcardBinding)this.binding;
                if (wildcardBinding.genericType == null) break;
                return this.resolver.getTypeBinding(wildcardBinding.genericType);
            }
        }
        return null;
    }

    public int getRank() {
        switch (this.binding.kind()) {
            case 516: 
            case 8196: {
                WildcardBinding wildcardBinding = (WildcardBinding)this.binding;
                return wildcardBinding.rank;
            }
        }
        return -1;
    }

    public ITypeBinding getComponentType() {
        if (!this.isArray()) {
            return null;
        }
        ArrayBinding arrayBinding = (ArrayBinding)this.binding;
        return this.resolver.getTypeBinding(arrayBinding.elementsType());
    }

    public synchronized IVariableBinding[] getDeclaredFields() {
        if (this.fields != null) {
            return this.fields;
        }
        try {
            ReferenceBinding referenceBinding;
            FieldBinding[] fieldBindings;
            int length;
            if ((this.isClass() || this.isInterface() || this.isEnum()) && (length = (fieldBindings = (referenceBinding = (ReferenceBinding)this.binding).availableFields()).length) != 0) {
                int convertedFieldCount = 0;
                IVariableBinding[] newFields = new IVariableBinding[length];
                int i = 0;
                while (i < length) {
                    FieldBinding fieldBinding = fieldBindings[i];
                    IVariableBinding variableBinding = this.resolver.getVariableBinding(fieldBinding);
                    if (variableBinding != null) {
                        newFields[convertedFieldCount++] = variableBinding;
                    }
                    ++i;
                }
                if (convertedFieldCount != length) {
                    if (convertedFieldCount == 0) {
                        this.fields = NO_VARIABLE_BINDINGS;
                        return NO_VARIABLE_BINDINGS;
                    }
                    IVariableBinding[] iVariableBindingArray = newFields;
                    newFields = new IVariableBinding[convertedFieldCount];
                    System.arraycopy(iVariableBindingArray, 0, newFields, 0, convertedFieldCount);
                }
                this.fields = newFields;
                return newFields;
            }
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not retrieve declared fields");
        }
        this.fields = NO_VARIABLE_BINDINGS;
        return NO_VARIABLE_BINDINGS;
    }

    public synchronized IMethodBinding[] getDeclaredMethods() {
        if (this.methods != null) {
            return this.methods;
        }
        try {
            ReferenceBinding referenceBinding;
            MethodBinding[] internalMethods;
            int length;
            if ((this.isClass() || this.isInterface() || this.isEnum()) && (length = (internalMethods = (referenceBinding = (ReferenceBinding)this.binding).availableMethods()).length) != 0) {
                int convertedMethodCount = 0;
                IMethodBinding[] newMethods = new IMethodBinding[length];
                int i = 0;
                while (i < length) {
                    IMethodBinding methodBinding2;
                    MethodBinding methodBinding = internalMethods[i];
                    if (!(methodBinding.isDefaultAbstract() || methodBinding.isSynthetic() || methodBinding.isConstructor() && this.isInterface() || (methodBinding2 = this.resolver.getMethodBinding(methodBinding)) == null)) {
                        newMethods[convertedMethodCount++] = methodBinding2;
                    }
                    ++i;
                }
                if (convertedMethodCount != length) {
                    if (convertedMethodCount == 0) {
                        this.methods = NO_METHOD_BINDINGS;
                        return NO_METHOD_BINDINGS;
                    }
                    IMethodBinding[] iMethodBindingArray = newMethods;
                    newMethods = new IMethodBinding[convertedMethodCount];
                    System.arraycopy(iMethodBindingArray, 0, newMethods, 0, convertedMethodCount);
                }
                this.methods = newMethods;
                return newMethods;
            }
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not retrieve declared methods");
        }
        this.methods = NO_METHOD_BINDINGS;
        return NO_METHOD_BINDINGS;
    }

    public int getDeclaredModifiers() {
        return this.getModifiers();
    }

    public synchronized ITypeBinding[] getDeclaredTypes() {
        if (this.members != null) {
            return this.members;
        }
        try {
            ReferenceBinding referenceBinding;
            ReferenceBinding[] internalMembers;
            int length;
            if ((this.isClass() || this.isInterface() || this.isEnum()) && (length = (internalMembers = (referenceBinding = (ReferenceBinding)this.binding).memberTypes()).length) != 0) {
                ITypeBinding[] newMembers = new ITypeBinding[length];
                int i = 0;
                while (i < length) {
                    ITypeBinding typeBinding = this.resolver.getTypeBinding(internalMembers[i]);
                    if (typeBinding == null) {
                        this.members = NO_TYPE_BINDINGS;
                        return NO_TYPE_BINDINGS;
                    }
                    newMembers[i] = typeBinding;
                    ++i;
                }
                this.members = newMembers;
                return newMembers;
            }
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not retrieve declared methods");
        }
        this.members = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public synchronized IMethodBinding getDeclaringMethod() {
        if (this.binding instanceof LocalTypeBinding) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding)this.binding;
            MethodBinding methodBinding = localTypeBinding.enclosingMethod;
            if (methodBinding != null) {
                try {
                    return this.resolver.getMethodBinding(localTypeBinding.enclosingMethod);
                }
                catch (RuntimeException e) {
                    Util.log(e, "Could not retrieve declaring method");
                }
            }
        } else if (this.binding.isTypeVariable()) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
            Binding declaringElement = typeVariableBinding.declaringElement;
            if (declaringElement instanceof MethodBinding) {
                try {
                    return this.resolver.getMethodBinding((MethodBinding)declaringElement);
                }
                catch (RuntimeException e) {
                    Util.log(e, "Could not retrieve declaring method");
                }
            }
        }
        return null;
    }

    public synchronized ITypeBinding getDeclaringClass() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            if (referenceBinding.isNestedType()) {
                try {
                    return this.resolver.getTypeBinding(referenceBinding.enclosingType());
                }
                catch (RuntimeException e) {
                    Util.log(e, "Could not retrieve declaring class");
                }
            }
        } else if (this.binding.isTypeVariable()) {
            Binding declaringElement;
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
            Binding binding = declaringElement = typeVariableBinding.isCapture() ? ((CaptureBinding)typeVariableBinding).sourceType : typeVariableBinding.declaringElement;
            if (declaringElement instanceof ReferenceBinding) {
                try {
                    return this.resolver.getTypeBinding((ReferenceBinding)declaringElement);
                }
                catch (RuntimeException e) {
                    Util.log(e, "Could not retrieve declaring class");
                }
            }
        }
        return null;
    }

    public int getDimensions() {
        if (!this.isArray()) {
            return 0;
        }
        ArrayBinding arrayBinding = (ArrayBinding)this.binding;
        return arrayBinding.dimensions;
    }

    public ITypeBinding getElementType() {
        if (!this.isArray()) {
            return null;
        }
        ArrayBinding arrayBinding = (ArrayBinding)this.binding;
        return this.resolver.getTypeBinding(arrayBinding.leafComponentType);
    }

    public ITypeBinding getTypeDeclaration() {
        if (this.binding instanceof ParameterizedTypeBinding) {
            return this.resolver.getTypeBinding(((ParameterizedTypeBinding)this.binding).genericType());
        }
        return this;
    }

    public ITypeBinding getErasure() {
        return this.resolver.getTypeBinding(this.binding.erasure());
    }

    public synchronized ITypeBinding[] getInterfaces() {
        int length;
        if (this.interfaces != null) {
            return this.interfaces;
        }
        if (this.binding == null) {
            this.interfaces = NO_TYPE_BINDINGS;
            return NO_TYPE_BINDINGS;
        }
        switch (this.binding.kind()) {
            case 68: 
            case 132: {
                this.interfaces = NO_TYPE_BINDINGS;
                return NO_TYPE_BINDINGS;
            }
        }
        ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
        ReferenceBinding[] internalInterfaces = null;
        try {
            internalInterfaces = referenceBinding.superInterfaces();
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not retrieve interfaces");
        }
        int n = length = internalInterfaces == null ? 0 : internalInterfaces.length;
        if (length != 0) {
            ITypeBinding[] newInterfaces = new ITypeBinding[length];
            int interfacesCounter = 0;
            int i = 0;
            while (i < length) {
                ITypeBinding typeBinding = this.resolver.getTypeBinding(internalInterfaces[i]);
                if (typeBinding != null) {
                    newInterfaces[interfacesCounter++] = typeBinding;
                }
                ++i;
            }
            if (length != interfacesCounter) {
                ITypeBinding[] iTypeBindingArray = newInterfaces;
                newInterfaces = new ITypeBinding[interfacesCounter];
                System.arraycopy(iTypeBindingArray, 0, newInterfaces, 0, interfacesCounter);
            }
            this.interfaces = newInterfaces;
            return newInterfaces;
        }
        this.interfaces = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public IJavaElement getJavaElement() {
        JavaElement element = this.getUnresolvedJavaElement();
        if (element != null) {
            return element.resolved(this.binding);
        }
        if (this.isRecovered()) {
            IJavaElement javaElement;
            IPackageBinding packageBinding = this.getPackage();
            if (packageBinding != null && (javaElement = packageBinding.getJavaElement()) != null && javaElement.getElementType() == 4) {
                return ((PackageFragment)javaElement).getCompilationUnit(String.valueOf(new String(this.binding.sourceName())) + ".java").getType(this.getName());
            }
            return null;
        }
        return null;
    }

    private JavaElement getUnresolvedJavaElement() {
        return this.getUnresolvedJavaElement(this.binding);
    }

    private JavaElement getUnresolvedJavaElement(org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding) {
        if (JavaCore.getPlugin() == null) {
            return null;
        }
        if (this.resolver instanceof DefaultBindingResolver) {
            DefaultBindingResolver defaultBindingResolver = (DefaultBindingResolver)this.resolver;
            if (!defaultBindingResolver.fromJavaProject) {
                return null;
            }
            return Util.getUnresolvedJavaElement(typeBinding, defaultBindingResolver.workingCopyOwner, defaultBindingResolver.getBindingsToNodesMap());
        }
        return null;
    }

    public String getKey() {
        if (this.key == null) {
            this.key = new String(this.binding.computeUniqueKey());
        }
        return this.key;
    }

    public int getKind() {
        return 2;
    }

    public int getModifiers() {
        if (this.isClass()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            int accessFlags = referenceBinding.getAccessFlags() & 0xC1F;
            if (referenceBinding.isAnonymousType()) {
                return accessFlags & 0xFFFFFFEF;
            }
            return accessFlags;
        }
        if (this.isAnnotation()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            int accessFlags = referenceBinding.getAccessFlags() & 0xC1F;
            return accessFlags & 0xFFFFD9FF;
        }
        if (this.isInterface()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            int accessFlags = referenceBinding.getAccessFlags() & 0xC1F;
            return accessFlags & 0xFFFFF9FF;
        }
        if (this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            int accessFlags = referenceBinding.getAccessFlags() & 0xC1F;
            return accessFlags & 0xFFFFBFFF;
        }
        return 0;
    }

    public String getName() {
        switch (this.binding.kind()) {
            case 516: 
            case 8196: {
                WildcardBinding wildcardBinding = (WildcardBinding)this.binding;
                StringBuffer buffer = new StringBuffer();
                buffer.append(TypeConstants.WILDCARD_NAME);
                if (wildcardBinding.bound != null) {
                    switch (wildcardBinding.boundKind) {
                        case 2: {
                            buffer.append(TypeConstants.WILDCARD_SUPER);
                            break;
                        }
                        case 1: {
                            buffer.append(TypeConstants.WILDCARD_EXTENDS);
                        }
                    }
                    buffer.append(this.getBound().getName());
                }
                return String.valueOf(buffer);
            }
            case 4100: {
                if (this.isCapture()) {
                    return NO_NAME;
                }
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
                return new String(typeVariableBinding.sourceName);
            }
            case 260: {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding)this.binding;
                StringBuffer buffer = new StringBuffer();
                buffer.append(parameterizedTypeBinding.sourceName());
                ITypeBinding[] tArguments = this.getTypeArguments();
                int typeArgumentsLength = tArguments.length;
                if (typeArgumentsLength != 0) {
                    buffer.append('<');
                    int i = 0;
                    while (i < typeArgumentsLength) {
                        if (i > 0) {
                            buffer.append(',');
                        }
                        buffer.append(tArguments[i].getName());
                        ++i;
                    }
                    buffer.append('>');
                }
                return String.valueOf(buffer);
            }
            case 1028: {
                return this.getTypeDeclaration().getName();
            }
            case 68: {
                ITypeBinding elementType = this.getElementType();
                if (elementType.isLocal() || elementType.isAnonymous() || elementType.isCapture()) {
                    return NO_NAME;
                }
                int dimensions = this.getDimensions();
                char[] brackets = new char[dimensions * 2];
                int i = dimensions * 2 - 1;
                while (i >= 0) {
                    brackets[i] = 93;
                    brackets[i - 1] = 91;
                    i -= 2;
                }
                StringBuffer buffer = new StringBuffer(elementType.getName());
                buffer.append(brackets);
                return String.valueOf(buffer);
            }
        }
        if (this.isPrimitive() || this.isNullType()) {
            BaseTypeBinding baseTypeBinding = (BaseTypeBinding)this.binding;
            return new String(baseTypeBinding.simpleName);
        }
        if (this.isAnonymous()) {
            return NO_NAME;
        }
        return new String(this.binding.sourceName());
    }

    public IPackageBinding getPackage() {
        switch (this.binding.kind()) {
            case 68: 
            case 132: 
            case 516: 
            case 4100: 
            case 8196: {
                return null;
            }
        }
        ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
        return this.resolver.getPackageBinding(referenceBinding.getPackage());
    }

    public String getQualifiedName() {
        switch (this.binding.kind()) {
            case 516: 
            case 8196: {
                WildcardBinding wildcardBinding = (WildcardBinding)this.binding;
                StringBuffer buffer = new StringBuffer();
                buffer.append(TypeConstants.WILDCARD_NAME);
                ITypeBinding bound = this.getBound();
                if (bound != null) {
                    switch (wildcardBinding.boundKind) {
                        case 2: {
                            buffer.append(TypeConstants.WILDCARD_SUPER);
                            break;
                        }
                        case 1: {
                            buffer.append(TypeConstants.WILDCARD_EXTENDS);
                        }
                    }
                    buffer.append(bound.getQualifiedName());
                }
                return String.valueOf(buffer);
            }
            case 1028: {
                return this.getTypeDeclaration().getQualifiedName();
            }
            case 68: {
                ITypeBinding elementType = this.getElementType();
                if (elementType.isLocal() || elementType.isAnonymous() || elementType.isCapture()) {
                    return elementType.getQualifiedName();
                }
                int dimensions = this.getDimensions();
                char[] brackets = new char[dimensions * 2];
                int i = dimensions * 2 - 1;
                while (i >= 0) {
                    brackets[i] = 93;
                    brackets[i - 1] = 91;
                    i -= 2;
                }
                StringBuffer buffer = new StringBuffer(elementType.getQualifiedName());
                buffer.append(brackets);
                return String.valueOf(buffer);
            }
            case 4100: {
                if (this.isCapture()) {
                    return NO_NAME;
                }
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
                return new String(typeVariableBinding.sourceName);
            }
            case 260: {
                if (this.binding.isLocalType()) {
                    return NO_NAME;
                }
                StringBuffer buffer = new StringBuffer();
                if (this.isMember()) {
                    buffer.append(this.getDeclaringClass().getQualifiedName()).append('.');
                    ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding)this.binding;
                    buffer.append(parameterizedTypeBinding.sourceName());
                    ITypeBinding[] tArguments = this.getTypeArguments();
                    int typeArgumentsLength = tArguments.length;
                    if (typeArgumentsLength != 0) {
                        buffer.append('<');
                        int i = 0;
                        while (i < typeArgumentsLength) {
                            if (i > 0) {
                                buffer.append(',');
                            }
                            buffer.append(tArguments[i].getQualifiedName());
                            ++i;
                        }
                        buffer.append('>');
                    }
                    return String.valueOf(buffer);
                }
                buffer.append(this.getTypeDeclaration().getQualifiedName());
                ITypeBinding[] tArguments = this.getTypeArguments();
                int typeArgumentsLength = tArguments.length;
                if (typeArgumentsLength != 0) {
                    buffer.append('<');
                    int i = 0;
                    while (i < typeArgumentsLength) {
                        if (i > 0) {
                            buffer.append(',');
                        }
                        buffer.append(tArguments[i].getQualifiedName());
                        ++i;
                    }
                    buffer.append('>');
                }
                return String.valueOf(buffer);
            }
        }
        if (this.isAnonymous() || this.binding.isLocalType()) {
            return NO_NAME;
        }
        if (this.isPrimitive() || this.isNullType()) {
            BaseTypeBinding baseTypeBinding = (BaseTypeBinding)this.binding;
            return new String(baseTypeBinding.simpleName);
        }
        if (this.isMember()) {
            StringBuffer buffer = new StringBuffer();
            buffer.append(this.getDeclaringClass().getQualifiedName()).append('.');
            buffer.append(this.getName());
            return String.valueOf(buffer);
        }
        PackageBinding packageBinding = this.binding.getPackage();
        StringBuffer buffer = new StringBuffer();
        if (packageBinding != null && packageBinding.compoundName != CharOperation.NO_CHAR_CHAR) {
            buffer.append(CharOperation.concatWith(packageBinding.compoundName, '.')).append('.');
        }
        buffer.append(this.getName());
        return String.valueOf(buffer);
    }

    public synchronized ITypeBinding getSuperclass() {
        if (this.binding == null) {
            return null;
        }
        switch (this.binding.kind()) {
            case 68: 
            case 132: {
                return null;
            }
        }
        if (this.binding.isInterface()) {
            return null;
        }
        ReferenceBinding superclass = null;
        try {
            superclass = ((ReferenceBinding)this.binding).superclass();
        }
        catch (RuntimeException e) {
            Util.log(e, "Could not retrieve superclass");
            return this.resolver.resolveWellKnownType("java.lang.Object");
        }
        if (superclass == null) {
            return null;
        }
        return this.resolver.getTypeBinding(superclass);
    }

    public ITypeBinding[] getTypeArguments() {
        if (this.typeArguments != null) {
            return this.typeArguments;
        }
        if (this.binding.isParameterizedTypeWithActualArguments()) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding)this.binding;
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding[] arguments = parameterizedTypeBinding.arguments;
            int argumentsLength = arguments.length;
            ITypeBinding[] newTypeArguments = new ITypeBinding[argumentsLength];
            int i = 0;
            while (i < argumentsLength) {
                ITypeBinding typeBinding = this.resolver.getTypeBinding(arguments[i]);
                if (typeBinding == null) {
                    this.typeArguments = NO_TYPE_BINDINGS;
                    return NO_TYPE_BINDINGS;
                }
                newTypeArguments[i] = typeBinding;
                ++i;
            }
            this.typeArguments = newTypeArguments;
            return newTypeArguments;
        }
        this.typeArguments = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public ITypeBinding[] getTypeBounds() {
        if (this.bounds != null) {
            return this.bounds;
        }
        if (this.binding instanceof TypeVariableBinding) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
            ReferenceBinding varSuperclass = typeVariableBinding.superclass();
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding firstClassOrArrayBound = typeVariableBinding.firstBound;
            int boundsLength = 0;
            if (firstClassOrArrayBound != null) {
                if (firstClassOrArrayBound == varSuperclass) {
                    ++boundsLength;
                } else if (firstClassOrArrayBound.isArrayType()) {
                    ++boundsLength;
                } else {
                    firstClassOrArrayBound = null;
                }
            }
            ReferenceBinding[] superinterfaces = typeVariableBinding.superInterfaces();
            int superinterfacesLength = 0;
            if (superinterfaces != null) {
                superinterfacesLength = superinterfaces.length;
                boundsLength += superinterfacesLength;
            }
            if (boundsLength != 0) {
                ITypeBinding[] typeBounds = new ITypeBinding[boundsLength];
                int boundsIndex = 0;
                if (firstClassOrArrayBound != null) {
                    ITypeBinding typeBinding = this.resolver.getTypeBinding(firstClassOrArrayBound);
                    if (typeBinding == null) {
                        this.bounds = NO_TYPE_BINDINGS;
                        return NO_TYPE_BINDINGS;
                    }
                    typeBounds[boundsIndex++] = typeBinding;
                }
                if (superinterfaces != null) {
                    int i = 0;
                    while (i < superinterfacesLength) {
                        ITypeBinding typeBinding = this.resolver.getTypeBinding(superinterfaces[i]);
                        if (typeBinding == null) {
                            this.bounds = NO_TYPE_BINDINGS;
                            return NO_TYPE_BINDINGS;
                        }
                        typeBounds[boundsIndex] = typeBinding;
                        ++i;
                        ++boundsIndex;
                    }
                }
                this.bounds = typeBounds;
                return typeBounds;
            }
        }
        this.bounds = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public ITypeBinding[] getTypeParameters() {
        int typeVariableBindingsLength;
        if (this.typeParameters != null) {
            return this.typeParameters;
        }
        switch (this.binding.kind()) {
            case 260: 
            case 1028: {
                this.typeParameters = NO_TYPE_BINDINGS;
                return NO_TYPE_BINDINGS;
            }
        }
        TypeVariableBinding[] typeVariableBindings = this.binding.typeVariables();
        int n = typeVariableBindingsLength = typeVariableBindings == null ? 0 : typeVariableBindings.length;
        if (typeVariableBindingsLength != 0) {
            ITypeBinding[] newTypeParameters = new ITypeBinding[typeVariableBindingsLength];
            int i = 0;
            while (i < typeVariableBindingsLength) {
                ITypeBinding typeBinding = this.resolver.getTypeBinding(typeVariableBindings[i]);
                if (typeBinding == null) {
                    this.typeParameters = NO_TYPE_BINDINGS;
                    return NO_TYPE_BINDINGS;
                }
                newTypeParameters[i] = typeBinding;
                ++i;
            }
            this.typeParameters = newTypeParameters;
            return newTypeParameters;
        }
        this.typeParameters = NO_TYPE_BINDINGS;
        return NO_TYPE_BINDINGS;
    }

    public ITypeBinding getWildcard() {
        if (this.binding instanceof CaptureBinding) {
            CaptureBinding captureBinding = (CaptureBinding)this.binding;
            return this.resolver.getTypeBinding(captureBinding.wildcard);
        }
        return null;
    }

    public boolean isGenericType() {
        if (this.isRawType()) {
            return false;
        }
        TypeVariableBinding[] typeVariableBindings = this.binding.typeVariables();
        return typeVariableBindings != null && typeVariableBindings.length > 0;
    }

    public boolean isAnnotation() {
        return this.binding.isAnnotationType();
    }

    public boolean isAnonymous() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return referenceBinding.isAnonymousType();
        }
        return false;
    }

    public boolean isArray() {
        return this.binding.isArrayType();
    }

    public boolean isAssignmentCompatible(ITypeBinding type) {
        CompilationUnitScope scope;
        TypeBinding other;
        block7: {
            block6: {
                block5: {
                    try {
                        if (this != type) break block5;
                        return true;
                    }
                    catch (AbortCompilation abortCompilation) {
                        return false;
                    }
                }
                if (type instanceof TypeBinding) break block6;
                return false;
            }
            other = (TypeBinding)type;
            scope = this.resolver.scope();
            if (scope != null) break block7;
            return false;
        }
        return this.binding.isCompatibleWith(other.binding) || scope.isBoxingCompatibleWith(this.binding, other.binding);
    }

    public boolean isCapture() {
        return this.binding.isCapture();
    }

    public boolean isCastCompatible(ITypeBinding type) {
        CompilationUnitScope scope;
        block5: {
            block4: {
                try {
                    scope = this.resolver.scope();
                    if (scope != null) break block4;
                    return false;
                }
                catch (AbortCompilation abortCompilation) {
                    return false;
                }
            }
            if (type instanceof TypeBinding) break block5;
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding expressionType = ((TypeBinding)type).binding;
        expressionType = expressionType.capture(scope, 0);
        return EXPRESSION.checkCastTypesCompatibility(scope, this.binding, expressionType, null);
    }

    public boolean isClass() {
        switch (this.binding.kind()) {
            case 516: 
            case 4100: 
            case 8196: {
                return false;
            }
        }
        return this.binding.isClass();
    }

    public boolean isDeprecated() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return referenceBinding.isDeprecated();
        }
        return false;
    }

    public boolean isEnum() {
        return this.binding.isEnum();
    }

    public boolean isEqualTo(IBinding other) {
        if (other == this) {
            return true;
        }
        if (other == null) {
            return false;
        }
        if (!(other instanceof TypeBinding)) {
            return false;
        }
        org.eclipse.jdt.internal.compiler.lookup.TypeBinding otherBinding = ((TypeBinding)other).binding;
        return BindingComparator.isEqual(this.binding, otherBinding);
    }

    public boolean isFromSource() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            if (referenceBinding.isRawType()) {
                return !((RawTypeBinding)referenceBinding).genericType().isBinaryBinding();
            }
            if (referenceBinding.isParameterizedType()) {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding)referenceBinding;
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding erasure = parameterizedTypeBinding.erasure();
                if (erasure instanceof ReferenceBinding) {
                    return !((ReferenceBinding)erasure).isBinaryBinding();
                }
                return false;
            }
            return !referenceBinding.isBinaryBinding();
        }
        if (this.isTypeVariable()) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding)this.binding;
            Binding declaringElement = typeVariableBinding.declaringElement;
            if (declaringElement instanceof MethodBinding) {
                MethodBinding methodBinding = (MethodBinding)declaringElement;
                return !methodBinding.declaringClass.isBinaryBinding();
            }
            org.eclipse.jdt.internal.compiler.lookup.TypeBinding typeBinding = (org.eclipse.jdt.internal.compiler.lookup.TypeBinding)declaringElement;
            if (typeBinding instanceof ReferenceBinding) {
                return !((ReferenceBinding)typeBinding).isBinaryBinding();
            }
            if (typeBinding instanceof ArrayBinding) {
                ArrayBinding arrayBinding = (ArrayBinding)typeBinding;
                org.eclipse.jdt.internal.compiler.lookup.TypeBinding leafComponentType = arrayBinding.leafComponentType;
                if (leafComponentType instanceof ReferenceBinding) {
                    return !((ReferenceBinding)leafComponentType).isBinaryBinding();
                }
            }
        } else if (this.isCapture()) {
            CaptureBinding captureBinding = (CaptureBinding)this.binding;
            return !captureBinding.sourceType.isBinaryBinding();
        }
        return false;
    }

    public boolean isInterface() {
        switch (this.binding.kind()) {
            case 516: 
            case 4100: 
            case 8196: {
                return false;
            }
        }
        return this.binding.isInterface();
    }

    public boolean isLocal() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return referenceBinding.isLocalType() && !referenceBinding.isMemberType();
        }
        return false;
    }

    public boolean isMember() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return referenceBinding.isMemberType();
        }
        return false;
    }

    public boolean isNested() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return referenceBinding.isNestedType();
        }
        return false;
    }

    public boolean isNullType() {
        return this.binding == org.eclipse.jdt.internal.compiler.lookup.TypeBinding.NULL;
    }

    public boolean isParameterizedType() {
        return this.binding.isParameterizedTypeWithActualArguments();
    }

    public boolean isPrimitive() {
        return !this.isNullType() && this.binding.isBaseType();
    }

    public boolean isRawType() {
        return this.binding.isRawType();
    }

    public boolean isRecovered() {
        return (this.binding.tagBits & 0x80L) != 0L;
    }

    public boolean isSubTypeCompatible(ITypeBinding type) {
        TypeBinding other;
        block9: {
            block8: {
                block7: {
                    block6: {
                        try {
                            if (this != type) break block6;
                            return true;
                        }
                        catch (AbortCompilation abortCompilation) {
                            return false;
                        }
                    }
                    if (!this.binding.isBaseType()) break block7;
                    return false;
                }
                if (type instanceof TypeBinding) break block8;
                return false;
            }
            other = (TypeBinding)type;
            if (!other.binding.isBaseType()) break block9;
            return false;
        }
        return this.binding.isCompatibleWith(other.binding);
    }

    public boolean isSynthetic() {
        return false;
    }

    public boolean isTopLevel() {
        if (this.isClass() || this.isInterface() || this.isEnum()) {
            ReferenceBinding referenceBinding = (ReferenceBinding)this.binding;
            return !referenceBinding.isNestedType();
        }
        return false;
    }

    public boolean isTypeVariable() {
        return this.binding.isTypeVariable() && !this.binding.isCapture();
    }

    public boolean isUpperbound() {
        switch (this.binding.kind()) {
            case 516: {
                return ((WildcardBinding)this.binding).boundKind == 1;
            }
            case 8196: {
                return true;
            }
        }
        return false;
    }

    public boolean isWildcardType() {
        return this.binding.isWildcard();
    }

    public String toString() {
        return this.binding.toString();
    }
}

