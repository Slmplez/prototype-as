/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedAnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class BinaryTypeBinding
extends ReferenceBinding {
    protected ReferenceBinding superclass;
    protected ReferenceBinding enclosingType;
    protected ReferenceBinding[] superInterfaces;
    protected FieldBinding[] fields;
    protected MethodBinding[] methods;
    protected ReferenceBinding[] memberTypes;
    protected TypeVariableBinding[] typeVariables;
    protected LookupEnvironment environment;
    protected SimpleLookupTable storedAnnotations = null;

    static Object convertMemberValue(Object binaryValue, LookupEnvironment env, char[][][] missingTypeNames) {
        if (binaryValue == null) {
            return null;
        }
        if (binaryValue instanceof Constant) {
            return binaryValue;
        }
        if (binaryValue instanceof ClassSignature) {
            return env.getTypeFromSignature(((ClassSignature)binaryValue).getTypeName(), 0, -1, false, null, missingTypeNames);
        }
        if (binaryValue instanceof IBinaryAnnotation) {
            return BinaryTypeBinding.createAnnotation((IBinaryAnnotation)binaryValue, env, missingTypeNames);
        }
        if (binaryValue instanceof EnumConstantSignature) {
            EnumConstantSignature ref = (EnumConstantSignature)binaryValue;
            ReferenceBinding enumType = (ReferenceBinding)env.getTypeFromSignature(ref.getTypeName(), 0, -1, false, null, missingTypeNames);
            enumType = (ReferenceBinding)BinaryTypeBinding.resolveType(enumType, env, false);
            return enumType.getField(ref.getEnumConstantName(), false);
        }
        if (binaryValue instanceof Object[]) {
            Object[] objects = (Object[])binaryValue;
            int length = objects.length;
            if (length == 0) {
                return objects;
            }
            Object[] values = new Object[length];
            int i = 0;
            while (i < length) {
                values[i] = BinaryTypeBinding.convertMemberValue(objects[i], env, missingTypeNames);
                ++i;
            }
            return values;
        }
        throw new IllegalStateException();
    }

    static AnnotationBinding createAnnotation(IBinaryAnnotation annotationInfo, LookupEnvironment env, char[][][] missingTypeNames) {
        IBinaryElementValuePair[] binaryPairs = annotationInfo.getElementValuePairs();
        int length = binaryPairs == null ? 0 : binaryPairs.length;
        ElementValuePair[] pairs = length == 0 ? Binding.NO_ELEMENT_VALUE_PAIRS : new ElementValuePair[length];
        int i = 0;
        while (i < length) {
            pairs[i] = new ElementValuePair(binaryPairs[i].getName(), BinaryTypeBinding.convertMemberValue(binaryPairs[i].getValue(), env, missingTypeNames), null);
            ++i;
        }
        char[] typeName = annotationInfo.getTypeName();
        ReferenceBinding annotationType = env.getTypeFromConstantPoolName(typeName, 1, typeName.length - 1, false, missingTypeNames);
        return new UnresolvedAnnotationBinding(annotationType, pairs, env);
    }

    public static AnnotationBinding[] createAnnotations(IBinaryAnnotation[] annotationInfos, LookupEnvironment env, char[][][] missingTypeNames) {
        int length = annotationInfos == null ? 0 : annotationInfos.length;
        AnnotationBinding[] result = length == 0 ? Binding.NO_ANNOTATIONS : new AnnotationBinding[length];
        int i = 0;
        while (i < length) {
            result[i] = BinaryTypeBinding.createAnnotation(annotationInfos[i], env, missingTypeNames);
            ++i;
        }
        return result;
    }

    public static TypeBinding resolveType(TypeBinding type, LookupEnvironment environment, boolean convertGenericToRawType) {
        switch (type.kind()) {
            case 260: {
                ((ParameterizedTypeBinding)type).resolve();
                break;
            }
            case 516: 
            case 8196: {
                return ((WildcardBinding)type).resolve();
            }
            case 68: {
                BinaryTypeBinding.resolveType(((ArrayBinding)type).leafComponentType, environment, convertGenericToRawType);
                break;
            }
            case 4100: {
                ((TypeVariableBinding)type).resolve();
                break;
            }
            case 2052: {
                if (!convertGenericToRawType) break;
                return environment.convertUnresolvedBinaryToRawType(type);
            }
            default: {
                if (type instanceof UnresolvedReferenceBinding) {
                    return ((UnresolvedReferenceBinding)type).resolve(environment, convertGenericToRawType);
                }
                if (!convertGenericToRawType) break;
                return environment.convertUnresolvedBinaryToRawType(type);
            }
        }
        return type;
    }

    protected BinaryTypeBinding() {
    }

    public BinaryTypeBinding(PackageBinding packageBinding, IBinaryType binaryType, LookupEnvironment environment) {
        this.compoundName = CharOperation.splitOn('/', binaryType.getName());
        this.computeId();
        this.tagBits |= 0x40L;
        this.environment = environment;
        this.fPackage = packageBinding;
        this.fileName = binaryType.getFileName();
        char[] typeSignature = binaryType.getGenericSignature();
        this.typeVariables = typeSignature != null && typeSignature.length > 0 && typeSignature[0] == '<' ? null : Binding.NO_TYPE_VARIABLES;
        this.sourceName = binaryType.getSourceName();
        this.modifiers = binaryType.getModifiers();
        if ((binaryType.getTagBits() & 0x20000L) != 0L) {
            this.tagBits |= 0x20000L;
        }
        if (binaryType.isAnonymous()) {
            this.tagBits |= 0x834L;
        } else if (binaryType.isLocal()) {
            this.tagBits |= 0x814L;
        } else if (binaryType.isMember()) {
            this.tagBits |= 0x80CL;
        }
        char[] enclosingTypeName = binaryType.getEnclosingTypeName();
        if (enclosingTypeName != null) {
            this.enclosingType = environment.getTypeFromConstantPoolName(enclosingTypeName, 0, -1, true, null);
            this.tagBits |= 0x80CL;
            this.tagBits |= 0x8000000L;
            if (this.enclosingType().isStrictfp()) {
                this.modifiers |= 0x800;
            }
            if (this.enclosingType().isDeprecated()) {
                this.modifiers |= 0x200000;
            }
        }
    }

    public FieldBinding[] availableFields() {
        if ((this.tagBits & 0x2000L) != 0L) {
            return this.fields;
        }
        if ((this.tagBits & 0x1000L) == 0L) {
            int length = this.fields.length;
            if (length > 1) {
                ReferenceBinding.sortFields(this.fields, 0, length);
            }
            this.tagBits |= 0x1000L;
        }
        FieldBinding[] availableFields = new FieldBinding[this.fields.length];
        int count = 0;
        int i = 0;
        while (i < this.fields.length) {
            try {
                availableFields[count] = this.resolveTypeFor(this.fields[i]);
                ++count;
            }
            catch (AbortCompilation abortCompilation) {}
            ++i;
        }
        if (count < availableFields.length) {
            FieldBinding[] fieldBindingArray = availableFields;
            availableFields = new FieldBinding[count];
            System.arraycopy(fieldBindingArray, 0, availableFields, 0, count);
        }
        return availableFields;
    }

    private TypeVariableBinding[] addMethodTypeVariables(TypeVariableBinding[] methodTypeVars) {
        if (this.typeVariables == null || this.typeVariables == Binding.NO_TYPE_VARIABLES) {
            return methodTypeVars;
        }
        if (methodTypeVars == null || methodTypeVars == Binding.NO_TYPE_VARIABLES) {
            return this.typeVariables;
        }
        int total = this.typeVariables.length + methodTypeVars.length;
        TypeVariableBinding[] combinedTypeVars = new TypeVariableBinding[total];
        System.arraycopy(this.typeVariables, 0, combinedTypeVars, 0, this.typeVariables.length);
        int size = this.typeVariables.length;
        int i = 0;
        int len = methodTypeVars.length;
        while (i < len) {
            block6: {
                int j = this.typeVariables.length - 1;
                while (j >= 0) {
                    if (!CharOperation.equals(methodTypeVars[i].sourceName, this.typeVariables[j].sourceName)) {
                        --j;
                        continue;
                    }
                    break block6;
                }
                combinedTypeVars[size++] = methodTypeVars[i];
            }
            ++i;
        }
        if (size != total) {
            TypeVariableBinding[] typeVariableBindingArray = combinedTypeVars;
            combinedTypeVars = new TypeVariableBinding[size];
            System.arraycopy(typeVariableBindingArray, 0, combinedTypeVars, 0, size);
        }
        return combinedTypeVars;
    }

    public MethodBinding[] availableMethods() {
        if ((this.tagBits & 0x8000L) != 0L) {
            return this.methods;
        }
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        MethodBinding[] availableMethods = new MethodBinding[this.methods.length];
        int count = 0;
        int i = 0;
        while (i < this.methods.length) {
            try {
                availableMethods[count] = this.resolveTypesFor(this.methods[i]);
                ++count;
            }
            catch (AbortCompilation abortCompilation) {}
            ++i;
        }
        if (count < availableMethods.length) {
            MethodBinding[] methodBindingArray = availableMethods;
            availableMethods = new MethodBinding[count];
            System.arraycopy(methodBindingArray, 0, availableMethods, 0, count);
        }
        return availableMethods;
    }

    void cachePartsFrom(IBinaryType binaryType, boolean needFieldsAndMethods) {
        try {
            MethodBinding enclosingMethod;
            int size;
            this.typeVariables = Binding.NO_TYPE_VARIABLES;
            this.superInterfaces = Binding.NO_SUPERINTERFACES;
            this.memberTypes = Binding.NO_MEMBER_TYPES;
            IBinaryNestedType[] memberTypeStructures = binaryType.getMemberTypes();
            if (memberTypeStructures != null && (size = memberTypeStructures.length) > 0) {
                this.memberTypes = new ReferenceBinding[size];
                int i = 0;
                while (i < size) {
                    this.memberTypes[i] = this.environment.getTypeFromConstantPoolName(memberTypeStructures[i].getName(), 0, -1, false, null);
                    ++i;
                }
                this.tagBits |= 0x10000000L;
            }
            long sourceLevel = this.environment.globalOptions.originalSourceLevel;
            char[] typeSignature = binaryType.getGenericSignature();
            this.tagBits |= binaryType.getTagBits();
            char[][][] missingTypeNames = binaryType.getMissingTypeNames();
            SignatureWrapper wrapper = null;
            if (typeSignature != null) {
                wrapper = new SignatureWrapper(typeSignature);
                if (wrapper.signature[wrapper.start] == '<') {
                    ++wrapper.start;
                    this.typeVariables = this.createTypeVariables(wrapper, true, missingTypeNames);
                    ++wrapper.start;
                    this.tagBits |= 0x1000000L;
                    this.modifiers |= 0x40000000;
                }
            }
            TypeVariableBinding[] typeVars = Binding.NO_TYPE_VARIABLES;
            char[] methodDescriptor = binaryType.getEnclosingMethod();
            if (methodDescriptor != null && (enclosingMethod = this.findMethod(methodDescriptor, missingTypeNames)) != null) {
                typeVars = enclosingMethod.typeVariables;
                this.typeVariables = this.addMethodTypeVariables(typeVars);
            }
            if (typeSignature == null) {
                int size2;
                char[] superclassName = binaryType.getSuperclassName();
                if (superclassName != null) {
                    this.superclass = this.environment.getTypeFromConstantPoolName(superclassName, 0, -1, false, missingTypeNames);
                    this.tagBits |= 0x2000000L;
                }
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
                char[][] interfaceNames = binaryType.getInterfaceNames();
                if (interfaceNames != null && (size2 = interfaceNames.length) > 0) {
                    this.superInterfaces = new ReferenceBinding[size2];
                    int i = 0;
                    while (i < size2) {
                        this.superInterfaces[i] = this.environment.getTypeFromConstantPoolName(interfaceNames[i], 0, -1, false, missingTypeNames);
                        ++i;
                    }
                    this.tagBits |= 0x4000000L;
                }
            } else {
                this.superclass = (ReferenceBinding)this.environment.getTypeFromTypeSignature(wrapper, typeVars, this, missingTypeNames);
                this.tagBits |= 0x2000000L;
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
                if (!wrapper.atEnd()) {
                    ArrayList<TypeBinding> types = new ArrayList<TypeBinding>(2);
                    do {
                        types.add(this.environment.getTypeFromTypeSignature(wrapper, typeVars, this, missingTypeNames));
                    } while (!wrapper.atEnd());
                    this.superInterfaces = new ReferenceBinding[types.size()];
                    types.toArray(this.superInterfaces);
                    this.tagBits |= 0x4000000L;
                }
            }
            if (needFieldsAndMethods) {
                this.createFields(binaryType.getFields(), sourceLevel, missingTypeNames);
                this.createMethods(binaryType.getMethods(), sourceLevel, missingTypeNames);
                boolean isViewedAsDeprecated = this.isViewedAsDeprecated();
                if (isViewedAsDeprecated) {
                    int i = 0;
                    int max = this.fields.length;
                    while (i < max) {
                        FieldBinding field = this.fields[i];
                        if (!field.isDeprecated()) {
                            field.modifiers |= 0x200000;
                        }
                        ++i;
                    }
                    i = 0;
                    max = this.methods.length;
                    while (i < max) {
                        MethodBinding method = this.methods[i];
                        if (!method.isDeprecated()) {
                            method.modifiers |= 0x200000;
                        }
                        ++i;
                    }
                }
            }
            if (this.environment.globalOptions.storeAnnotations) {
                this.setAnnotations(BinaryTypeBinding.createAnnotations(binaryType.getAnnotations(), this.environment, missingTypeNames));
            }
        }
        finally {
            if (this.fields == null) {
                this.fields = Binding.NO_FIELDS;
            }
            if (this.methods == null) {
                this.methods = Binding.NO_METHODS;
            }
        }
    }

    private void createFields(IBinaryField[] iFields, long sourceLevel, char[][][] missingTypeNames) {
        int size;
        this.fields = Binding.NO_FIELDS;
        if (iFields != null && (size = iFields.length) > 0) {
            IBinaryField binaryField;
            this.fields = new FieldBinding[size];
            boolean use15specifics = sourceLevel >= 0x310000L;
            boolean hasRestrictedAccess = this.hasRestrictedAccess();
            int firstAnnotatedFieldIndex = -1;
            int i = 0;
            while (i < size) {
                binaryField = iFields[i];
                char[] fieldSignature = use15specifics ? binaryField.getGenericSignature() : null;
                TypeBinding type = fieldSignature == null ? this.environment.getTypeFromSignature(binaryField.getTypeName(), 0, -1, false, this, missingTypeNames) : this.environment.getTypeFromTypeSignature(new SignatureWrapper(fieldSignature), Binding.NO_TYPE_VARIABLES, this, missingTypeNames);
                FieldBinding field = new FieldBinding(binaryField.getName(), type, binaryField.getModifiers() | 0x2000000, this, binaryField.getConstant());
                if (firstAnnotatedFieldIndex < 0 && this.environment.globalOptions.storeAnnotations && binaryField.getAnnotations() != null) {
                    firstAnnotatedFieldIndex = i;
                }
                field.id = i;
                if (use15specifics) {
                    field.tagBits |= binaryField.getTagBits();
                }
                if (hasRestrictedAccess) {
                    field.modifiers |= 0x40000;
                }
                if (fieldSignature != null) {
                    field.modifiers |= 0x40000000;
                }
                this.fields[i] = field;
                ++i;
            }
            if (firstAnnotatedFieldIndex >= 0) {
                i = firstAnnotatedFieldIndex;
                while (i < size) {
                    binaryField = iFields[i];
                    this.fields[i].setAnnotations(BinaryTypeBinding.createAnnotations(binaryField.getAnnotations(), this.environment, missingTypeNames));
                    ++i;
                }
            }
        }
    }

    private MethodBinding createMethod(IBinaryMethod method, long sourceLevel, char[][][] missingTypeNames) {
        MethodBinding result;
        int methodModifiers = method.getModifiers() | 0x2000000;
        if (sourceLevel < 0x310000L) {
            methodModifiers &= 0xFFFFFF7F;
        }
        ReferenceBinding[] exceptions = Binding.NO_EXCEPTIONS;
        TypeBinding[] parameters = Binding.NO_PARAMETERS;
        TypeVariableBinding[] typeVars = Binding.NO_TYPE_VARIABLES;
        AnnotationBinding[][] paramAnnotations = null;
        TypeBinding returnType = null;
        boolean use15specifics = sourceLevel >= 0x310000L;
        char[] methodSignature = method.getGenericSignature();
        if (methodSignature == null) {
            char[][] exceptionTypes;
            int i;
            int size;
            char nextChar;
            char[] methodDescriptor = method.getMethodDescriptor();
            int numOfParams = 0;
            int index = 0;
            while ((nextChar = methodDescriptor[++index]) != ')') {
                if (nextChar == '[') continue;
                ++numOfParams;
                if (nextChar != 'L') continue;
                while ((nextChar = methodDescriptor[++index]) != ';') {
                }
            }
            int startIndex = 0;
            if (method.isConstructor()) {
                if (this.isMemberType() && !this.isStatic()) {
                    ++startIndex;
                }
                if (this.isEnum()) {
                    startIndex += 2;
                }
            }
            if ((size = numOfParams - startIndex) > 0) {
                parameters = new TypeBinding[size];
                if (this.environment.globalOptions.storeAnnotations) {
                    paramAnnotations = new AnnotationBinding[size][];
                }
                index = 1;
                int end = 0;
                i = 0;
                while (i < numOfParams) {
                    while ((nextChar = methodDescriptor[++end]) == '[') {
                    }
                    if (nextChar == 'L') {
                        while ((nextChar = methodDescriptor[++end]) != ';') {
                        }
                    }
                    if (i >= startIndex) {
                        parameters[i - startIndex] = this.environment.getTypeFromSignature(methodDescriptor, index, end, false, this, missingTypeNames);
                        if (paramAnnotations != null) {
                            paramAnnotations[i - startIndex] = BinaryTypeBinding.createAnnotations(method.getParameterAnnotations(i - startIndex), this.environment, missingTypeNames);
                        }
                    }
                    index = end + 1;
                    ++i;
                }
            }
            if ((exceptionTypes = method.getExceptionTypeNames()) != null && (size = exceptionTypes.length) > 0) {
                exceptions = new ReferenceBinding[size];
                i = 0;
                while (i < size) {
                    exceptions[i] = this.environment.getTypeFromConstantPoolName(exceptionTypes[i], 0, -1, false, missingTypeNames);
                    ++i;
                }
            }
            if (!method.isConstructor()) {
                returnType = this.environment.getTypeFromSignature(methodDescriptor, index + 1, -1, false, this, missingTypeNames);
            }
        } else {
            int i;
            ArrayList<TypeBinding> types;
            methodModifiers |= 0x40000000;
            SignatureWrapper wrapper = new SignatureWrapper(methodSignature, use15specifics);
            if (wrapper.signature[wrapper.start] == '<') {
                ++wrapper.start;
                typeVars = this.createTypeVariables(wrapper, false, missingTypeNames);
                ++wrapper.start;
            }
            if (wrapper.signature[wrapper.start] == '(') {
                ++wrapper.start;
                if (wrapper.signature[wrapper.start] == ')') {
                    ++wrapper.start;
                } else {
                    types = new ArrayList<TypeBinding>(2);
                    while (wrapper.signature[wrapper.start] != ')') {
                        types.add(this.environment.getTypeFromTypeSignature(wrapper, typeVars, this, missingTypeNames));
                    }
                    ++wrapper.start;
                    int numParam = types.size();
                    parameters = new TypeBinding[numParam];
                    types.toArray(parameters);
                    if (this.environment.globalOptions.storeAnnotations) {
                        paramAnnotations = new AnnotationBinding[numParam][];
                        i = 0;
                        while (i < numParam) {
                            paramAnnotations[i] = BinaryTypeBinding.createAnnotations(method.getParameterAnnotations(i), this.environment, missingTypeNames);
                            ++i;
                        }
                    }
                }
            }
            returnType = this.environment.getTypeFromTypeSignature(wrapper, typeVars, this, missingTypeNames);
            if (!wrapper.atEnd() && wrapper.signature[wrapper.start] == '^') {
                types = new ArrayList(2);
                do {
                    ++wrapper.start;
                    types.add(this.environment.getTypeFromTypeSignature(wrapper, typeVars, this, missingTypeNames));
                } while (!wrapper.atEnd() && wrapper.signature[wrapper.start] == '^');
                exceptions = new ReferenceBinding[types.size()];
                types.toArray(exceptions);
            } else {
                int size;
                char[][] exceptionTypes = method.getExceptionTypeNames();
                if (exceptionTypes != null && (size = exceptionTypes.length) > 0) {
                    exceptions = new ReferenceBinding[size];
                    i = 0;
                    while (i < size) {
                        exceptions[i] = this.environment.getTypeFromConstantPoolName(exceptionTypes[i], 0, -1, false, missingTypeNames);
                        ++i;
                    }
                }
            }
        }
        MethodBinding methodBinding = result = method.isConstructor() ? new MethodBinding(methodModifiers, parameters, exceptions, this) : new MethodBinding(methodModifiers, method.getSelector(), returnType, parameters, exceptions, this);
        if (this.environment.globalOptions.storeAnnotations) {
            result.setAnnotations(BinaryTypeBinding.createAnnotations(method.getAnnotations(), this.environment, missingTypeNames), paramAnnotations, this.isAnnotationType() ? BinaryTypeBinding.convertMemberValue(method.getDefaultValue(), this.environment, missingTypeNames) : null, this.environment);
        }
        if (use15specifics) {
            result.tagBits |= method.getTagBits();
        }
        result.typeVariables = typeVars;
        int i = 0;
        int length = typeVars.length;
        while (i < length) {
            typeVars[i].declaringElement = result;
            ++i;
        }
        return result;
    }

    private void createMethods(IBinaryMethod[] iMethods, long sourceLevel, char[][][] missingTypeNames) {
        Object method;
        int i;
        int total = 0;
        int initialTotal = 0;
        int iClinit = -1;
        int[] toSkip = null;
        if (iMethods != null) {
            total = initialTotal = iMethods.length;
            boolean keepBridgeMethods = sourceLevel < 0x310000L;
            i = total;
            while (--i >= 0) {
                char[] methodName;
                method = iMethods[i];
                if ((method.getModifiers() & 0x1000) != 0) {
                    if (keepBridgeMethods && (method.getModifiers() & 0x40) != 0) continue;
                    if (toSkip == null) {
                        toSkip = new int[iMethods.length];
                    }
                    toSkip[i] = -1;
                    --total;
                    continue;
                }
                if (iClinit != -1 || (methodName = method.getSelector()).length != 8 || methodName[0] != '<') continue;
                iClinit = i;
                --total;
            }
        }
        if (total == 0) {
            this.methods = Binding.NO_METHODS;
            return;
        }
        boolean hasRestrictedAccess = this.hasRestrictedAccess();
        this.methods = new MethodBinding[total];
        if (total == initialTotal) {
            i = 0;
            while (i < initialTotal) {
                method = this.createMethod(iMethods[i], sourceLevel, missingTypeNames);
                if (hasRestrictedAccess) {
                    ((MethodBinding)method).modifiers |= 0x40000;
                }
                this.methods[i] = method;
                ++i;
            }
        } else {
            i = 0;
            int index = 0;
            while (i < initialTotal) {
                if (iClinit != i && (toSkip == null || toSkip[i] != -1)) {
                    MethodBinding method2 = this.createMethod(iMethods[i], sourceLevel, missingTypeNames);
                    if (hasRestrictedAccess) {
                        method2.modifiers |= 0x40000;
                    }
                    this.methods[index++] = method2;
                }
                ++i;
            }
        }
    }

    private TypeVariableBinding[] createTypeVariables(SignatureWrapper wrapper, boolean assignVariables, char[][][] missingTypeNames) {
        char[] typeSignature = wrapper.signature;
        int depth = 0;
        int length = typeSignature.length;
        int rank = 0;
        ArrayList<TypeVariableBinding> variables = new ArrayList<TypeVariableBinding>(1);
        depth = 0;
        boolean pendingVariable = true;
        int i = 1;
        block5: while (i < length) {
            switch (typeSignature[i]) {
                case '<': {
                    ++depth;
                    break;
                }
                case '>': {
                    if (--depth >= 0) break;
                    break block5;
                }
                case ';': {
                    if (depth != 0 || i + 1 >= length || typeSignature[i + 1] == ':') break;
                    pendingVariable = true;
                    break;
                }
                default: {
                    if (!pendingVariable) break;
                    pendingVariable = false;
                    int colon = CharOperation.indexOf(':', typeSignature, i);
                    char[] variableName = CharOperation.subarray(typeSignature, i, colon);
                    variables.add(new TypeVariableBinding(variableName, this, rank++, this.environment));
                }
            }
            ++i;
        }
        TypeVariableBinding[] result = new TypeVariableBinding[rank];
        variables.toArray(result);
        if (assignVariables) {
            this.typeVariables = result;
        }
        int i2 = 0;
        while (i2 < rank) {
            this.initializeTypeVariable(result[i2], result, wrapper, missingTypeNames);
            ++i2;
        }
        return result;
    }

    public ReferenceBinding enclosingType() {
        if ((this.tagBits & 0x8000000L) == 0L) {
            return this.enclosingType;
        }
        this.enclosingType = (ReferenceBinding)BinaryTypeBinding.resolveType(this.enclosingType, this.environment, false);
        this.tagBits &= 0xFFFFFFFFF7FFFFFFL;
        return this.enclosingType;
    }

    public FieldBinding[] fields() {
        if ((this.tagBits & 0x2000L) != 0L) {
            return this.fields;
        }
        if ((this.tagBits & 0x1000L) == 0L) {
            int length = this.fields.length;
            if (length > 1) {
                ReferenceBinding.sortFields(this.fields, 0, length);
            }
            this.tagBits |= 0x1000L;
        }
        int i = this.fields.length;
        while (--i >= 0) {
            this.resolveTypeFor(this.fields[i]);
        }
        this.tagBits |= 0x2000L;
        return this.fields;
    }

    private MethodBinding findMethod(char[] methodDescriptor, char[][][] missingTypeNames) {
        char nextChar;
        int index = -1;
        while (methodDescriptor[++index] != '(') {
        }
        char[] selector = new char[index];
        System.arraycopy(methodDescriptor, 0, selector, 0, index);
        TypeBinding[] parameters = Binding.NO_PARAMETERS;
        int numOfParams = 0;
        int paramStart = index;
        while ((nextChar = methodDescriptor[++index]) != ')') {
            if (nextChar == '[') continue;
            ++numOfParams;
            if (nextChar != 'L') continue;
            while ((nextChar = methodDescriptor[++index]) != ';') {
            }
        }
        if (numOfParams > 0) {
            parameters = new TypeBinding[numOfParams];
            index = paramStart + 1;
            int end = paramStart;
            int i = 0;
            while (i < numOfParams) {
                TypeBinding param;
                while ((nextChar = methodDescriptor[++end]) == '[') {
                }
                if (nextChar == 'L') {
                    while ((nextChar = methodDescriptor[++end]) != ';') {
                    }
                }
                if ((param = this.environment.getTypeFromSignature(methodDescriptor, index, end, false, this, missingTypeNames)) instanceof UnresolvedReferenceBinding) {
                    param = BinaryTypeBinding.resolveType(param, this.environment, true);
                }
                parameters[i] = param;
                index = end + 1;
                ++i;
            }
        }
        int parameterLength = parameters.length;
        MethodBinding[] methods2 = this.enclosingType.getMethods(selector, parameterLength);
        int i = 0;
        int max = methods2.length;
        while (i < max) {
            block13: {
                MethodBinding currentMethod = methods2[i];
                TypeBinding[] parameters2 = currentMethod.parameters;
                int currentMethodParameterLength = parameters2.length;
                if (parameterLength == currentMethodParameterLength) {
                    int j = 0;
                    while (j < currentMethodParameterLength) {
                        if (parameters[j] == parameters2[j] || parameters[j].erasure() == parameters2[j].erasure()) {
                            ++j;
                            continue;
                        }
                        break block13;
                    }
                    return currentMethod;
                }
            }
            ++i;
        }
        return null;
    }

    public char[] genericTypeSignature() {
        return this.computeGenericTypeSignature(this.typeVariables);
    }

    public MethodBinding getExactConstructor(TypeBinding[] argumentTypes) {
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        int argCount = argumentTypes.length;
        long range = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
        if (range >= 0L) {
            int imethod = (int)range;
            int end = (int)(range >> 32);
            while (imethod <= end) {
                block7: {
                    MethodBinding method = this.methods[imethod];
                    if (method.parameters.length == argCount) {
                        this.resolveTypesFor(method);
                        TypeBinding[] toMatch = method.parameters;
                        int iarg = 0;
                        while (iarg < argCount) {
                            if (toMatch[iarg] == argumentTypes[iarg]) {
                                ++iarg;
                                continue;
                            }
                            break block7;
                        }
                        return method;
                    }
                }
                ++imethod;
            }
        }
        return null;
    }

    public MethodBinding getExactMethod(char[] selector, TypeBinding[] argumentTypes, CompilationUnitScope refScope) {
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        int argCount = argumentTypes.length;
        boolean foundNothing = true;
        long range = ReferenceBinding.binarySearch(selector, this.methods);
        if (range >= 0L) {
            int imethod = (int)range;
            int end = (int)(range >> 32);
            while (imethod <= end) {
                block14: {
                    MethodBinding method = this.methods[imethod];
                    foundNothing = false;
                    if (method.parameters.length == argCount) {
                        this.resolveTypesFor(method);
                        TypeBinding[] toMatch = method.parameters;
                        int iarg = 0;
                        while (iarg < argCount) {
                            if (toMatch[iarg] == argumentTypes[iarg]) {
                                ++iarg;
                                continue;
                            }
                            break block14;
                        }
                        return method;
                    }
                }
                ++imethod;
            }
        }
        if (foundNothing) {
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
        if ((this.tagBits & 0x1000L) == 0L) {
            int length = this.fields.length;
            if (length > 1) {
                ReferenceBinding.sortFields(this.fields, 0, length);
            }
            this.tagBits |= 0x1000L;
        }
        FieldBinding field = ReferenceBinding.binarySearch(fieldName, this.fields);
        return needResolve && field != null ? this.resolveTypeFor(field) : field;
    }

    public ReferenceBinding getMemberType(char[] typeName) {
        int i = this.memberTypes.length;
        while (--i >= 0) {
            ReferenceBinding memberType = this.memberTypes[i];
            if (memberType instanceof UnresolvedReferenceBinding) {
                char[] name = memberType.sourceName;
                int prefixLength = this.compoundName[this.compoundName.length - 1].length + 1;
                if (name.length != prefixLength + typeName.length || !CharOperation.fragmentEquals(typeName, name, prefixLength, true)) continue;
                this.memberTypes[i] = (ReferenceBinding)BinaryTypeBinding.resolveType(memberType, this.environment, false);
                return this.memberTypes[i];
            }
            if (!CharOperation.equals(typeName, memberType.sourceName)) continue;
            return memberType;
        }
        return null;
    }

    public MethodBinding[] getMethods(char[] selector) {
        long range;
        if ((this.tagBits & 0x8000L) != 0L) {
            long range2 = ReferenceBinding.binarySearch(selector, this.methods);
            if (range2 >= 0L) {
                int start = (int)range2;
                int end = (int)(range2 >> 32);
                int length = end - start + 1;
                if ((this.tagBits & 0x8000L) != 0L) {
                    MethodBinding[] result = new MethodBinding[length];
                    System.arraycopy(this.methods, start, result, 0, length);
                    return result;
                }
            }
            return Binding.NO_METHODS;
        }
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        if ((range = ReferenceBinding.binarySearch(selector, this.methods)) >= 0L) {
            int start = (int)range;
            int end = (int)(range >> 32);
            int length = end - start + 1;
            MethodBinding[] result = new MethodBinding[length];
            int i = start;
            int index = 0;
            while (i <= end) {
                result[index] = this.resolveTypesFor(this.methods[i]);
                ++i;
                ++index;
            }
            return result;
        }
        return Binding.NO_METHODS;
    }

    public MethodBinding[] getMethods(char[] selector, int suggestedParameterLength) {
        long range;
        if ((this.tagBits & 0x8000L) != 0L) {
            return this.getMethods(selector);
        }
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        if ((range = ReferenceBinding.binarySearch(selector, this.methods)) >= 0L) {
            int i;
            int start = (int)range;
            int end = (int)(range >> 32);
            int length = end - start + 1;
            int count = 0;
            int i2 = start;
            while (i2 <= end) {
                int len = this.methods[i2].parameters.length;
                if (len <= suggestedParameterLength || this.methods[i2].isVarargs() && len == suggestedParameterLength + 1) {
                    ++count;
                }
                ++i2;
            }
            if (count == 0) {
                MethodBinding[] result = new MethodBinding[length];
                i = start;
                int index = 0;
                while (i <= end) {
                    result[index++] = this.resolveTypesFor(this.methods[i]);
                    ++i;
                }
                return result;
            }
            MethodBinding[] result = new MethodBinding[count];
            i = start;
            int index = 0;
            while (i <= end) {
                int len = this.methods[i].parameters.length;
                if (len <= suggestedParameterLength || this.methods[i].isVarargs() && len == suggestedParameterLength + 1) {
                    result[index++] = this.resolveTypesFor(this.methods[i]);
                }
                ++i;
            }
            return result;
        }
        return Binding.NO_METHODS;
    }

    public boolean hasMemberTypes() {
        return this.memberTypes.length > 0;
    }

    public TypeVariableBinding getTypeVariable(char[] variableName) {
        TypeVariableBinding variable = super.getTypeVariable(variableName);
        variable.resolve();
        return variable;
    }

    private void initializeTypeVariable(TypeVariableBinding variable, TypeVariableBinding[] existingVariables, SignatureWrapper wrapper, char[][][] missingTypeNames) {
        ReferenceBinding type;
        int colon = CharOperation.indexOf(':', wrapper.signature, wrapper.start);
        wrapper.start = colon + 1;
        ReferenceBinding firstBound = null;
        if (wrapper.signature[wrapper.start] == ':') {
            type = this.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
        } else {
            TypeBinding typeFromTypeSignature = this.environment.getTypeFromTypeSignature(wrapper, existingVariables, this, missingTypeNames);
            type = typeFromTypeSignature instanceof ReferenceBinding ? (ReferenceBinding)typeFromTypeSignature : this.environment.getResolvedType(TypeConstants.JAVA_LANG_OBJECT, null);
            firstBound = type;
        }
        variable.modifiers |= 0x2000000;
        variable.superclass = type;
        ReferenceBinding[] bounds = null;
        if (wrapper.signature[wrapper.start] == ':') {
            ArrayList<TypeBinding> types = new ArrayList<TypeBinding>(2);
            do {
                ++wrapper.start;
                types.add(this.environment.getTypeFromTypeSignature(wrapper, existingVariables, this, missingTypeNames));
            } while (wrapper.signature[wrapper.start] == ':');
            bounds = new ReferenceBinding[types.size()];
            types.toArray(bounds);
        }
        ReferenceBinding[] referenceBindingArray = variable.superInterfaces = bounds == null ? Binding.NO_SUPERINTERFACES : bounds;
        if (firstBound == null) {
            firstBound = variable.superInterfaces.length == 0 ? null : variable.superInterfaces[0];
        }
        variable.firstBound = firstBound;
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
            case 260: 
            case 1028: {
                return otherType.erasure() == this;
            }
        }
        return false;
    }

    public boolean isGenericType() {
        return this.typeVariables != Binding.NO_TYPE_VARIABLES;
    }

    public boolean isHierarchyConnected() {
        return (this.tagBits & 0x6000000L) == 0L;
    }

    public int kind() {
        if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            return 2052;
        }
        return 4;
    }

    public ReferenceBinding[] memberTypes() {
        if ((this.tagBits & 0x10000000L) == 0L) {
            return this.memberTypes;
        }
        int i = this.memberTypes.length;
        while (--i >= 0) {
            this.memberTypes[i] = (ReferenceBinding)BinaryTypeBinding.resolveType(this.memberTypes[i], this.environment, false);
        }
        this.tagBits &= 0xFFFFFFFFEFFFFFFFL;
        return this.memberTypes;
    }

    public MethodBinding[] methods() {
        if ((this.tagBits & 0x8000L) != 0L) {
            return this.methods;
        }
        if ((this.tagBits & 0x4000L) == 0L) {
            int length = this.methods.length;
            if (length > 1) {
                ReferenceBinding.sortMethods(this.methods, 0, length);
            }
            this.tagBits |= 0x4000L;
        }
        int i = this.methods.length;
        while (--i >= 0) {
            this.resolveTypesFor(this.methods[i]);
        }
        this.tagBits |= 0x8000L;
        return this.methods;
    }

    private FieldBinding resolveTypeFor(FieldBinding field) {
        TypeBinding resolvedType;
        if ((field.modifiers & 0x2000000) == 0) {
            return field;
        }
        field.type = resolvedType = BinaryTypeBinding.resolveType(field.type, this.environment, true);
        if ((resolvedType.tagBits & 0x80L) != 0L) {
            field.tagBits |= 0x80L;
        }
        field.modifiers &= 0xFDFFFFFF;
        return field;
    }

    MethodBinding resolveTypesFor(MethodBinding method) {
        TypeBinding resolvedType;
        if ((method.modifiers & 0x2000000) == 0) {
            return method;
        }
        if (!method.isConstructor()) {
            TypeBinding resolvedType2;
            method.returnType = resolvedType2 = BinaryTypeBinding.resolveType(method.returnType, this.environment, true);
            if ((resolvedType2.tagBits & 0x80L) != 0L) {
                method.tagBits |= 0x80L;
            }
        }
        int i = method.parameters.length;
        while (--i >= 0) {
            method.parameters[i] = resolvedType = BinaryTypeBinding.resolveType(method.parameters[i], this.environment, true);
            if ((resolvedType.tagBits & 0x80L) == 0L) continue;
            method.tagBits |= 0x80L;
        }
        i = method.thrownExceptions.length;
        while (--i >= 0) {
            resolvedType = (ReferenceBinding)BinaryTypeBinding.resolveType(method.thrownExceptions[i], this.environment, true);
            method.thrownExceptions[i] = resolvedType;
            if ((((ReferenceBinding)resolvedType).tagBits & 0x80L) == 0L) continue;
            method.tagBits |= 0x80L;
        }
        i = method.typeVariables.length;
        while (--i >= 0) {
            method.typeVariables[i].resolve();
        }
        method.modifiers &= 0xFDFFFFFF;
        return method;
    }

    AnnotationBinding[] retrieveAnnotations(Binding binding) {
        return AnnotationBinding.addStandardAnnotations(super.retrieveAnnotations(binding), binding.getAnnotationTagBits(), this.environment);
    }

    SimpleLookupTable storedAnnotations(boolean forceInitialize) {
        if (forceInitialize && this.storedAnnotations == null) {
            if (!this.environment.globalOptions.storeAnnotations) {
                return null;
            }
            this.storedAnnotations = new SimpleLookupTable(3);
        }
        return this.storedAnnotations;
    }

    public ReferenceBinding superclass() {
        if ((this.tagBits & 0x2000000L) == 0L) {
            return this.superclass;
        }
        this.superclass = (ReferenceBinding)BinaryTypeBinding.resolveType(this.superclass, this.environment, true);
        this.tagBits &= 0xFFFFFFFFFDFFFFFFL;
        if (this.superclass.problemId() == 1) {
            this.tagBits |= 0x20000L;
        }
        return this.superclass;
    }

    public ReferenceBinding[] superInterfaces() {
        if ((this.tagBits & 0x4000000L) == 0L) {
            return this.superInterfaces;
        }
        int i = this.superInterfaces.length;
        while (--i >= 0) {
            this.superInterfaces[i] = (ReferenceBinding)BinaryTypeBinding.resolveType(this.superInterfaces[i], this.environment, true);
            if (this.superInterfaces[i].problemId() != 1) continue;
            this.tagBits |= 0x20000L;
        }
        this.tagBits &= 0xFFFFFFFFFBFFFFFFL;
        return this.superInterfaces;
    }

    public TypeVariableBinding[] typeVariables() {
        if ((this.tagBits & 0x1000000L) == 0L) {
            return this.typeVariables;
        }
        int i = this.typeVariables.length;
        while (--i >= 0) {
            this.typeVariables[i].resolve();
        }
        this.tagBits &= 0xFFFFFFFFFEFFFFFFL;
        return this.typeVariables;
    }

    public String toString() {
        int length;
        int i;
        StringBuffer buffer = new StringBuffer();
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
        buffer.append(this.compoundName != null ? CharOperation.toString(this.compoundName) : "UNNAMED TYPE");
        if (this.typeVariables == null) {
            buffer.append("<NULL TYPE VARIABLES>");
        } else if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            buffer.append("<");
            i = 0;
            length = this.typeVariables.length;
            while (i < length) {
                if (i > 0) {
                    buffer.append(", ");
                }
                if (this.typeVariables[i] == null) {
                    buffer.append("NULL TYPE VARIABLE");
                } else {
                    char[] varChars = this.typeVariables[i].toString().toCharArray();
                    buffer.append(varChars, 1, varChars.length - 2);
                }
                ++i;
            }
            buffer.append(">");
        }
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
        if (this.enclosingType != null) {
            buffer.append("\n\tenclosing type : ");
            buffer.append(this.enclosingType.debugName());
        }
        if (this.fields != null) {
            if (this.fields != Binding.NO_FIELDS) {
                buffer.append("\n/*   fields   */");
                i = 0;
                length = this.fields.length;
                while (i < length) {
                    buffer.append(this.fields[i] != null ? "\n" + this.fields[i].toString() : "\nNULL FIELD");
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
                    buffer.append(this.methods[i] != null ? "\n" + this.methods[i].toString() : "\nNULL METHOD");
                    ++i;
                }
            }
        } else {
            buffer.append("NULL METHODS");
        }
        if (this.memberTypes != null) {
            if (this.memberTypes != Binding.NO_MEMBER_TYPES) {
                buffer.append("\n/*   members   */");
                i = 0;
                length = this.memberTypes.length;
                while (i < length) {
                    buffer.append(this.memberTypes[i] != null ? "\n" + this.memberTypes[i].toString() : "\nNULL TYPE");
                    ++i;
                }
            }
        } else {
            buffer.append("NULL MEMBER TYPES");
        }
        buffer.append("\n\n\n");
        return buffer.toString();
    }

    MethodBinding[] unResolvedMethods() {
        return this.methods;
    }

    public FieldBinding[] unResolvedFields() {
        return this.fields;
    }
}

