/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ClassFilePool;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ITypeRequestor;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier15;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemPackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfPackage;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class LookupEnvironment
implements ProblemReasons,
TypeConstants {
    private Map accessRestrictions;
    ImportBinding[] defaultImports;
    public PackageBinding defaultPackage;
    HashtableOfPackage knownPackages;
    private int lastCompletedUnitIndex = -1;
    private int lastUnitIndex = -1;
    public INameEnvironment nameEnvironment;
    public CompilerOptions globalOptions;
    public ProblemReporter problemReporter;
    public ClassFilePool classFilePool;
    private int stepCompleted;
    public ITypeRequestor typeRequestor;
    private ArrayBinding[][] uniqueArrayBindings;
    private SimpleLookupTable uniqueParameterizedTypeBindings;
    private SimpleLookupTable uniqueRawTypeBindings;
    private SimpleLookupTable uniqueWildcardBindings;
    private SimpleLookupTable uniqueParameterizedGenericMethodBindings;
    private SimpleLookupTable uniquePolymorphicMethodBindings;
    private SimpleLookupTable uniqueGetClassMethodBinding;
    public CompilationUnitDeclaration unitBeingCompleted = null;
    public Object missingClassFileLocation = null;
    private CompilationUnitDeclaration[] units = new CompilationUnitDeclaration[4];
    private MethodVerifier verifier;
    public MethodBinding arrayClone;
    private ArrayList missingTypes;
    Set typesBeingConnected;
    public boolean isProcessingAnnotations = false;
    static final int BUILD_FIELDS_AND_METHODS = 4;
    static final int BUILD_TYPE_HIERARCHY = 1;
    static final int CHECK_AND_SET_IMPORTS = 2;
    static final int CONNECT_TYPE_HIERARCHY = 3;
    static final ProblemPackageBinding TheNotFoundPackage = new ProblemPackageBinding(CharOperation.NO_CHAR, 1);
    static final ProblemReferenceBinding TheNotFoundType = new ProblemReferenceBinding(CharOperation.NO_CHAR_CHAR, null, 1);

    public LookupEnvironment(ITypeRequestor typeRequestor, CompilerOptions globalOptions, ProblemReporter problemReporter, INameEnvironment nameEnvironment) {
        this.typeRequestor = typeRequestor;
        this.globalOptions = globalOptions;
        this.problemReporter = problemReporter;
        this.defaultPackage = new PackageBinding(this);
        this.defaultImports = null;
        this.nameEnvironment = nameEnvironment;
        this.knownPackages = new HashtableOfPackage();
        this.uniqueArrayBindings = new ArrayBinding[5][];
        this.uniqueArrayBindings[0] = new ArrayBinding[50];
        this.uniqueParameterizedTypeBindings = new SimpleLookupTable(3);
        this.uniqueRawTypeBindings = new SimpleLookupTable(3);
        this.uniqueWildcardBindings = new SimpleLookupTable(3);
        this.uniqueParameterizedGenericMethodBindings = new SimpleLookupTable(3);
        this.uniquePolymorphicMethodBindings = new SimpleLookupTable(3);
        this.missingTypes = null;
        this.accessRestrictions = new HashMap(3);
        this.classFilePool = ClassFilePool.newInstance();
        this.typesBeingConnected = new HashSet();
    }

    public ReferenceBinding askForType(char[][] compoundName) {
        NameEnvironmentAnswer answer = this.nameEnvironment.findType(compoundName);
        if (answer == null) {
            return null;
        }
        if (answer.isBinaryType()) {
            this.typeRequestor.accept(answer.getBinaryType(), this.computePackageFrom(compoundName, false), answer.getAccessRestriction());
        } else if (answer.isCompilationUnit()) {
            this.typeRequestor.accept(answer.getCompilationUnit(), answer.getAccessRestriction());
        } else if (answer.isSourceType()) {
            this.typeRequestor.accept(answer.getSourceTypes(), this.computePackageFrom(compoundName, false), answer.getAccessRestriction());
        }
        return this.getCachedType(compoundName);
    }

    ReferenceBinding askForType(PackageBinding packageBinding, char[] name) {
        NameEnvironmentAnswer answer;
        if (packageBinding == null) {
            packageBinding = this.defaultPackage;
        }
        if ((answer = this.nameEnvironment.findType(name, packageBinding.compoundName)) == null) {
            return null;
        }
        if (answer.isBinaryType()) {
            this.typeRequestor.accept(answer.getBinaryType(), packageBinding, answer.getAccessRestriction());
        } else if (answer.isCompilationUnit()) {
            try {
                this.typeRequestor.accept(answer.getCompilationUnit(), answer.getAccessRestriction());
            }
            catch (AbortCompilation abort) {
                if (CharOperation.equals(name, TypeConstants.PACKAGE_INFO_NAME)) {
                    return null;
                }
                throw abort;
            }
        } else if (answer.isSourceType()) {
            this.typeRequestor.accept(answer.getSourceTypes(), packageBinding, answer.getAccessRestriction());
        }
        return packageBinding.getType0(name);
    }

    public void buildTypeBindings(CompilationUnitDeclaration unit, AccessRestriction accessRestriction) {
        CompilationUnitScope scope = new CompilationUnitScope(unit, this);
        scope.buildTypeBindings(accessRestriction);
        int unitsLength = this.units.length;
        if (++this.lastUnitIndex >= unitsLength) {
            this.units = new CompilationUnitDeclaration[2 * unitsLength];
            System.arraycopy(this.units, 0, this.units, 0, unitsLength);
        }
        this.units[this.lastUnitIndex] = unit;
    }

    public BinaryTypeBinding cacheBinaryType(IBinaryType binaryType, AccessRestriction accessRestriction) {
        return this.cacheBinaryType(binaryType, true, accessRestriction);
    }

    public BinaryTypeBinding cacheBinaryType(IBinaryType binaryType, boolean needFieldsAndMethods, AccessRestriction accessRestriction) {
        char[][] compoundName = CharOperation.splitOn('/', binaryType.getName());
        ReferenceBinding existingType = this.getCachedType(compoundName);
        if (existingType == null || existingType instanceof UnresolvedReferenceBinding) {
            return this.createBinaryTypeFrom(binaryType, this.computePackageFrom(compoundName, false), needFieldsAndMethods, accessRestriction);
        }
        return null;
    }

    public void completeTypeBindings() {
        this.stepCompleted = 1;
        int i = this.lastCompletedUnitIndex + 1;
        while (i <= this.lastUnitIndex) {
            this.unitBeingCompleted = this.units[i];
            this.unitBeingCompleted.scope.checkAndSetImports();
            ++i;
        }
        this.stepCompleted = 2;
        i = this.lastCompletedUnitIndex + 1;
        while (i <= this.lastUnitIndex) {
            this.unitBeingCompleted = this.units[i];
            this.unitBeingCompleted.scope.connectTypeHierarchy();
            ++i;
        }
        this.stepCompleted = 3;
        i = this.lastCompletedUnitIndex + 1;
        while (i <= this.lastUnitIndex) {
            this.unitBeingCompleted = this.units[i];
            CompilationUnitScope unitScope = this.unitBeingCompleted.scope;
            unitScope.checkParameterizedTypes();
            unitScope.buildFieldsAndMethods();
            this.units[i] = null;
            ++i;
        }
        this.stepCompleted = 4;
        this.lastCompletedUnitIndex = this.lastUnitIndex;
        this.unitBeingCompleted = null;
    }

    public void completeTypeBindings(CompilationUnitDeclaration parsedUnit) {
        if (this.stepCompleted == 4) {
            this.completeTypeBindings();
        } else {
            if (parsedUnit.scope == null) {
                return;
            }
            if (this.stepCompleted >= 2) {
                this.unitBeingCompleted = parsedUnit;
                this.unitBeingCompleted.scope.checkAndSetImports();
            }
            if (this.stepCompleted >= 3) {
                this.unitBeingCompleted = parsedUnit;
                this.unitBeingCompleted.scope.connectTypeHierarchy();
            }
            this.unitBeingCompleted = null;
        }
    }

    public void completeTypeBindings(CompilationUnitDeclaration parsedUnit, boolean buildFieldsAndMethods) {
        if (parsedUnit.scope == null) {
            return;
        }
        this.unitBeingCompleted = parsedUnit;
        this.unitBeingCompleted.scope.checkAndSetImports();
        parsedUnit.scope.connectTypeHierarchy();
        parsedUnit.scope.checkParameterizedTypes();
        if (buildFieldsAndMethods) {
            parsedUnit.scope.buildFieldsAndMethods();
        }
        this.unitBeingCompleted = null;
    }

    public void completeTypeBindings(CompilationUnitDeclaration[] parsedUnits, boolean[] buildFieldsAndMethods, int unitCount) {
        CompilationUnitDeclaration parsedUnit;
        int i = 0;
        while (i < unitCount) {
            parsedUnit = parsedUnits[i];
            if (parsedUnit.scope != null) {
                this.unitBeingCompleted = parsedUnit;
                this.unitBeingCompleted.scope.checkAndSetImports();
            }
            ++i;
        }
        i = 0;
        while (i < unitCount) {
            parsedUnit = parsedUnits[i];
            if (parsedUnit.scope != null) {
                this.unitBeingCompleted = parsedUnit;
                this.unitBeingCompleted.scope.connectTypeHierarchy();
            }
            ++i;
        }
        i = 0;
        while (i < unitCount) {
            parsedUnit = parsedUnits[i];
            if (parsedUnit.scope != null) {
                this.unitBeingCompleted = parsedUnit;
                this.unitBeingCompleted.scope.checkParameterizedTypes();
                if (buildFieldsAndMethods[i]) {
                    parsedUnit.scope.buildFieldsAndMethods();
                }
            }
            ++i;
        }
        this.unitBeingCompleted = null;
    }

    public MethodBinding computeArrayClone(MethodBinding objectClone) {
        if (this.arrayClone == null) {
            this.arrayClone = new MethodBinding(objectClone.modifiers & 0xFFFFFFFB | 1, TypeConstants.CLONE, objectClone.returnType, Binding.NO_PARAMETERS, Binding.NO_EXCEPTIONS, (ReferenceBinding)objectClone.returnType);
        }
        return this.arrayClone;
    }

    public TypeBinding computeBoxingType(TypeBinding type) {
        switch (type.id) {
            case 33: {
                return TypeBinding.BOOLEAN;
            }
            case 26: {
                return TypeBinding.BYTE;
            }
            case 28: {
                return TypeBinding.CHAR;
            }
            case 27: {
                return TypeBinding.SHORT;
            }
            case 32: {
                return TypeBinding.DOUBLE;
            }
            case 31: {
                return TypeBinding.FLOAT;
            }
            case 29: {
                return TypeBinding.INT;
            }
            case 30: {
                return TypeBinding.LONG;
            }
            case 10: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_INTEGER);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_INTEGER, null, 1);
            }
            case 3: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_BYTE);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_BYTE, null, 1);
            }
            case 4: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_SHORT);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_SHORT, null, 1);
            }
            case 2: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_CHARACTER);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_CHARACTER, null, 1);
            }
            case 7: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_LONG);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_LONG, null, 1);
            }
            case 9: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_FLOAT);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_FLOAT, null, 1);
            }
            case 8: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_DOUBLE);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_DOUBLE, null, 1);
            }
            case 5: {
                ReferenceBinding boxedType = this.getType(JAVA_LANG_BOOLEAN);
                if (boxedType != null) {
                    return boxedType;
                }
                return new ProblemReferenceBinding(JAVA_LANG_BOOLEAN, null, 1);
            }
        }
        switch (type.kind()) {
            case 516: 
            case 4100: 
            case 8196: {
                switch (type.erasure().id) {
                    case 33: {
                        return TypeBinding.BOOLEAN;
                    }
                    case 26: {
                        return TypeBinding.BYTE;
                    }
                    case 28: {
                        return TypeBinding.CHAR;
                    }
                    case 27: {
                        return TypeBinding.SHORT;
                    }
                    case 32: {
                        return TypeBinding.DOUBLE;
                    }
                    case 31: {
                        return TypeBinding.FLOAT;
                    }
                    case 29: {
                        return TypeBinding.INT;
                    }
                    case 30: {
                        return TypeBinding.LONG;
                    }
                }
            }
        }
        return type;
    }

    private PackageBinding computePackageFrom(char[][] constantPoolName, boolean isMissing) {
        if (constantPoolName.length == 1) {
            return this.defaultPackage;
        }
        PackageBinding packageBinding = this.getPackage0(constantPoolName[0]);
        if (packageBinding == null || packageBinding == TheNotFoundPackage) {
            packageBinding = new PackageBinding(constantPoolName[0], this);
            if (isMissing) {
                packageBinding.tagBits |= 0x80L;
            }
            this.knownPackages.put(constantPoolName[0], packageBinding);
        }
        int i = 1;
        int length = constantPoolName.length - 1;
        while (i < length) {
            PackageBinding parent = packageBinding;
            if ((packageBinding = parent.getPackage0(constantPoolName[i])) == null || packageBinding == TheNotFoundPackage) {
                packageBinding = new PackageBinding(CharOperation.subarray(constantPoolName, 0, i + 1), parent, this);
                if (isMissing) {
                    packageBinding.tagBits |= 0x80L;
                }
                parent.addPackage(packageBinding);
            }
            ++i;
        }
        return packageBinding;
    }

    public ReferenceBinding convertToParameterizedType(ReferenceBinding originalType) {
        if (originalType != null) {
            ReferenceBinding originalEnclosingType;
            boolean isGeneric = originalType.isGenericType();
            ReferenceBinding convertedEnclosingType = originalEnclosingType = originalType.enclosingType();
            boolean needToConvert = isGeneric;
            if (originalEnclosingType != null) {
                convertedEnclosingType = originalType.isStatic() ? (ReferenceBinding)this.convertToRawType(originalEnclosingType, false) : this.convertToParameterizedType(originalEnclosingType);
                needToConvert |= originalEnclosingType != convertedEnclosingType;
            }
            if (needToConvert) {
                return this.createParameterizedType(originalType, isGeneric ? originalType.typeVariables() : null, convertedEnclosingType);
            }
        }
        return originalType;
    }

    public TypeBinding convertToRawType(TypeBinding type, boolean forceRawEnclosingType) {
        TypeBinding convertedType;
        boolean needToConvert;
        TypeBinding originalType;
        int dimension;
        switch (type.kind()) {
            case 132: 
            case 516: 
            case 1028: 
            case 4100: 
            case 8196: {
                return type;
            }
            case 68: {
                dimension = type.dimensions();
                originalType = type.leafComponentType();
                break;
            }
            default: {
                if (type.id == 1) {
                    return type;
                }
                dimension = 0;
                originalType = type;
            }
        }
        switch (originalType.kind()) {
            case 132: {
                return type;
            }
            case 2052: {
                needToConvert = true;
                break;
            }
            case 260: {
                ParameterizedTypeBinding paramType = (ParameterizedTypeBinding)originalType;
                needToConvert = paramType.genericType().isGenericType();
                break;
            }
            default: {
                needToConvert = false;
            }
        }
        ReferenceBinding originalEnclosing = originalType.enclosingType();
        if (originalEnclosing == null) {
            convertedType = needToConvert ? this.createRawType((ReferenceBinding)originalType.erasure(), null) : originalType;
        } else {
            ReferenceBinding convertedEnclosing;
            if (originalEnclosing.kind() == 1028) {
                needToConvert |= !((ReferenceBinding)originalType).isStatic();
                convertedEnclosing = originalEnclosing;
            } else if (forceRawEnclosingType && !needToConvert) {
                convertedEnclosing = (ReferenceBinding)this.convertToRawType(originalEnclosing, forceRawEnclosingType);
                needToConvert = originalEnclosing != convertedEnclosing;
            } else {
                convertedEnclosing = needToConvert || ((ReferenceBinding)originalType).isStatic() ? (ReferenceBinding)this.convertToRawType(originalEnclosing, false) : this.convertToParameterizedType(originalEnclosing);
            }
            convertedType = needToConvert ? this.createRawType((ReferenceBinding)originalType.erasure(), convertedEnclosing) : (originalEnclosing != convertedEnclosing ? this.createParameterizedType((ReferenceBinding)originalType.erasure(), null, convertedEnclosing) : originalType);
        }
        if (originalType != convertedType) {
            return dimension > 0 ? this.createArrayType(convertedType, dimension) : convertedType;
        }
        return type;
    }

    public ReferenceBinding[] convertToRawTypes(ReferenceBinding[] originalTypes, boolean forceErasure, boolean forceRawEnclosingType) {
        if (originalTypes == null) {
            return null;
        }
        ReferenceBinding[] convertedTypes = originalTypes;
        int i = 0;
        int length = originalTypes.length;
        while (i < length) {
            ReferenceBinding originalType = originalTypes[i];
            ReferenceBinding convertedType = (ReferenceBinding)this.convertToRawType(forceErasure ? originalType.erasure() : originalType, forceRawEnclosingType);
            if (convertedType != originalType) {
                if (convertedTypes == originalTypes) {
                    convertedTypes = new ReferenceBinding[length];
                    System.arraycopy(originalTypes, 0, convertedTypes, 0, i);
                }
                convertedTypes[i] = convertedType;
            } else if (convertedTypes != originalTypes) {
                convertedTypes[i] = originalType;
            }
            ++i;
        }
        return convertedTypes;
    }

    public TypeBinding convertUnresolvedBinaryToRawType(TypeBinding type) {
        TypeBinding convertedType;
        boolean needToConvert;
        TypeBinding originalType;
        int dimension;
        switch (type.kind()) {
            case 132: 
            case 516: 
            case 1028: 
            case 4100: 
            case 8196: {
                return type;
            }
            case 68: {
                dimension = type.dimensions();
                originalType = type.leafComponentType();
                break;
            }
            default: {
                if (type.id == 1) {
                    return type;
                }
                dimension = 0;
                originalType = type;
            }
        }
        switch (originalType.kind()) {
            case 132: {
                return type;
            }
            case 2052: {
                needToConvert = true;
                break;
            }
            case 260: {
                ParameterizedTypeBinding paramType = (ParameterizedTypeBinding)originalType;
                needToConvert = paramType.genericType().isGenericType();
                break;
            }
            default: {
                needToConvert = false;
            }
        }
        ReferenceBinding originalEnclosing = originalType.enclosingType();
        if (originalEnclosing == null) {
            convertedType = needToConvert ? this.createRawType((ReferenceBinding)originalType.erasure(), null) : originalType;
        } else {
            ReferenceBinding convertedEnclosing = (ReferenceBinding)this.convertUnresolvedBinaryToRawType(originalEnclosing);
            if (convertedEnclosing != originalEnclosing) {
                needToConvert |= !((ReferenceBinding)originalType).isStatic();
            }
            convertedType = needToConvert ? this.createRawType((ReferenceBinding)originalType.erasure(), convertedEnclosing) : (originalEnclosing != convertedEnclosing ? this.createParameterizedType((ReferenceBinding)originalType.erasure(), null, convertedEnclosing) : originalType);
        }
        if (originalType != convertedType) {
            return dimension > 0 ? this.createArrayType(convertedType, dimension) : convertedType;
        }
        return type;
    }

    public AnnotationBinding createAnnotation(ReferenceBinding annotationType, ElementValuePair[] pairs) {
        if (pairs.length != 0) {
            AnnotationBinding.setMethodBindings(annotationType, pairs);
        }
        return new AnnotationBinding(annotationType, pairs);
    }

    public ArrayBinding createArrayType(TypeBinding leafComponentType, int dimensionCount) {
        ArrayBinding[] arrayBindings;
        if (leafComponentType instanceof LocalTypeBinding) {
            return ((LocalTypeBinding)leafComponentType).createArrayType(dimensionCount, this);
        }
        int dimIndex = dimensionCount - 1;
        int length = this.uniqueArrayBindings.length;
        if (dimIndex < length) {
            arrayBindings = this.uniqueArrayBindings[dimIndex];
            if (arrayBindings == null) {
                arrayBindings = new ArrayBinding[10];
                this.uniqueArrayBindings[dimIndex] = arrayBindings;
            }
        } else {
            this.uniqueArrayBindings = new ArrayBinding[dimensionCount][];
            System.arraycopy(this.uniqueArrayBindings, 0, this.uniqueArrayBindings, 0, length);
            arrayBindings = new ArrayBinding[10];
            this.uniqueArrayBindings[dimIndex] = arrayBindings;
        }
        int index = -1;
        length = arrayBindings.length;
        while (++index < length) {
            ArrayBinding currentBinding = arrayBindings[index];
            if (currentBinding == null) {
                arrayBindings[index] = new ArrayBinding(leafComponentType, dimensionCount, this);
                return arrayBindings[index];
            }
            if (currentBinding.leafComponentType != leafComponentType) continue;
            return currentBinding;
        }
        ArrayBinding[] arrayBindingArray = arrayBindings;
        arrayBindings = new ArrayBinding[length * 2];
        System.arraycopy(arrayBindingArray, 0, arrayBindings, 0, length);
        this.uniqueArrayBindings[dimIndex] = arrayBindings;
        arrayBindings[length] = new ArrayBinding(leafComponentType, dimensionCount, this);
        return arrayBindings[length];
    }

    public BinaryTypeBinding createBinaryTypeFrom(IBinaryType binaryType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        return this.createBinaryTypeFrom(binaryType, packageBinding, true, accessRestriction);
    }

    public BinaryTypeBinding createBinaryTypeFrom(IBinaryType binaryType, PackageBinding packageBinding, boolean needFieldsAndMethods, AccessRestriction accessRestriction) {
        BinaryTypeBinding binaryBinding = new BinaryTypeBinding(packageBinding, binaryType, this);
        ReferenceBinding cachedType = packageBinding.getType0(binaryBinding.compoundName[binaryBinding.compoundName.length - 1]);
        if (cachedType != null) {
            if (cachedType instanceof UnresolvedReferenceBinding) {
                ((UnresolvedReferenceBinding)cachedType).setResolvedType(binaryBinding, this);
            } else {
                if (cachedType.isBinaryBinding()) {
                    return (BinaryTypeBinding)cachedType;
                }
                return null;
            }
        }
        packageBinding.addType(binaryBinding);
        this.setAccessRestriction(binaryBinding, accessRestriction);
        binaryBinding.cachePartsFrom(binaryType, needFieldsAndMethods);
        return binaryBinding;
    }

    public MissingTypeBinding createMissingType(PackageBinding packageBinding, char[][] compoundName) {
        if (packageBinding == null && (packageBinding = this.computePackageFrom(compoundName, true)) == TheNotFoundPackage) {
            packageBinding = this.defaultPackage;
        }
        MissingTypeBinding missingType = new MissingTypeBinding(packageBinding, compoundName, this);
        if (missingType.id != 1) {
            ReferenceBinding objectType = this.getType(TypeConstants.JAVA_LANG_OBJECT);
            if (objectType == null) {
                objectType = this.createMissingType(null, TypeConstants.JAVA_LANG_OBJECT);
            }
            missingType.setMissingSuperclass(objectType);
        }
        packageBinding.addType(missingType);
        if (this.missingTypes == null) {
            this.missingTypes = new ArrayList(3);
        }
        this.missingTypes.add(missingType);
        return missingType;
    }

    public PackageBinding createPackage(char[][] compoundName) {
        PackageBinding packageBinding = this.getPackage0(compoundName[0]);
        if (packageBinding == null || packageBinding == TheNotFoundPackage) {
            packageBinding = new PackageBinding(compoundName[0], this);
            this.knownPackages.put(compoundName[0], packageBinding);
        }
        int i = 1;
        int length = compoundName.length;
        while (i < length) {
            ReferenceBinding type = packageBinding.getType0(compoundName[i]);
            if (type != null && type != TheNotFoundType && !(type instanceof UnresolvedReferenceBinding)) {
                return null;
            }
            PackageBinding parent = packageBinding;
            if ((packageBinding = parent.getPackage0(compoundName[i])) == null || packageBinding == TheNotFoundPackage) {
                if (this.nameEnvironment.findType(compoundName[i], parent.compoundName) != null) {
                    return null;
                }
                packageBinding = new PackageBinding(CharOperation.subarray(compoundName, 0, i + 1), parent, this);
                parent.addPackage(packageBinding);
            }
            ++i;
        }
        return packageBinding;
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding genericMethod, RawTypeBinding rawType) {
        ParameterizedGenericMethodBinding parameterizedGenericMethod;
        ParameterizedGenericMethodBinding[] cachedInfo = (ParameterizedGenericMethodBinding[])this.uniqueParameterizedGenericMethodBindings.get(genericMethod);
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                ParameterizedGenericMethodBinding cachedMethod = cachedInfo[index];
                if (cachedMethod == null) break;
                if (cachedMethod.isRaw && cachedMethod.declaringClass == (rawType == null ? genericMethod.declaringClass : rawType)) {
                    return cachedMethod;
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new ParameterizedGenericMethodBinding[5];
            this.uniqueParameterizedGenericMethodBindings.put(genericMethod, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArray = cachedInfo;
            cachedInfo = new ParameterizedGenericMethodBinding[length * 2];
            System.arraycopy(parameterizedGenericMethodBindingArray, 0, cachedInfo, 0, length);
            this.uniqueParameterizedGenericMethodBindings.put(genericMethod, cachedInfo);
        }
        cachedInfo[index] = parameterizedGenericMethod = new ParameterizedGenericMethodBinding(genericMethod, rawType, this);
        return parameterizedGenericMethod;
    }

    public ParameterizedGenericMethodBinding createParameterizedGenericMethod(MethodBinding genericMethod, TypeBinding[] typeArguments) {
        ParameterizedGenericMethodBinding parameterizedGenericMethod;
        ParameterizedGenericMethodBinding[] cachedInfo = (ParameterizedGenericMethodBinding[])this.uniqueParameterizedGenericMethodBindings.get(genericMethod);
        int argLength = typeArguments == null ? 0 : typeArguments.length;
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                block8: {
                    ParameterizedGenericMethodBinding cachedMethod = cachedInfo[index];
                    if (cachedMethod == null) break;
                    if (!cachedMethod.isRaw) {
                        int cachedArgLength;
                        TypeBinding[] cachedArguments = cachedMethod.typeArguments;
                        int n = cachedArgLength = cachedArguments == null ? 0 : cachedArguments.length;
                        if (argLength == cachedArgLength) {
                            int j = 0;
                            while (j < cachedArgLength) {
                                if (typeArguments[j] == cachedArguments[j]) {
                                    ++j;
                                    continue;
                                }
                                break block8;
                            }
                            return cachedMethod;
                        }
                    }
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new ParameterizedGenericMethodBinding[5];
            this.uniqueParameterizedGenericMethodBindings.put(genericMethod, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            ParameterizedGenericMethodBinding[] parameterizedGenericMethodBindingArray = cachedInfo;
            cachedInfo = new ParameterizedGenericMethodBinding[length * 2];
            System.arraycopy(parameterizedGenericMethodBindingArray, 0, cachedInfo, 0, length);
            this.uniqueParameterizedGenericMethodBindings.put(genericMethod, cachedInfo);
        }
        cachedInfo[index] = parameterizedGenericMethod = new ParameterizedGenericMethodBinding(genericMethod, typeArguments, this);
        return parameterizedGenericMethod;
    }

    public PolymorphicMethodBinding createPolymorphicMethod(MethodBinding originalPolymorphicMethod, TypeBinding[] parameters) {
        PolymorphicMethodBinding polymorphicMethod;
        String key = new String(originalPolymorphicMethod.selector);
        PolymorphicMethodBinding[] cachedInfo = (PolymorphicMethodBinding[])this.uniquePolymorphicMethodBindings.get(key);
        int parametersLength = parameters == null ? 0 : parameters.length;
        TypeBinding[] parametersTypeBinding = new TypeBinding[parametersLength];
        int i = 0;
        while (i < parametersLength) {
            TypeBinding parameterTypeBinding = parameters[i];
            parametersTypeBinding[i] = parameterTypeBinding.id == 12 ? this.getType(JAVA_LANG_VOID) : parameterTypeBinding.erasure();
            ++i;
        }
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                PolymorphicMethodBinding cachedMethod = cachedInfo[index];
                if (cachedMethod == null) break;
                if (cachedMethod.matches(parametersTypeBinding, originalPolymorphicMethod.returnType)) {
                    return cachedMethod;
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new PolymorphicMethodBinding[5];
            this.uniquePolymorphicMethodBindings.put(key, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            PolymorphicMethodBinding[] polymorphicMethodBindingArray = cachedInfo;
            cachedInfo = new PolymorphicMethodBinding[length * 2];
            System.arraycopy(polymorphicMethodBindingArray, 0, cachedInfo, 0, length);
            this.uniquePolymorphicMethodBindings.put(key, cachedInfo);
        }
        cachedInfo[index] = polymorphicMethod = new PolymorphicMethodBinding(originalPolymorphicMethod, parametersTypeBinding);
        return polymorphicMethod;
    }

    public MethodBinding updatePolymorphicMethodReturnType(PolymorphicMethodBinding binding, TypeBinding typeBinding) {
        PolymorphicMethodBinding polymorphicMethod;
        String key = new String(binding.selector);
        PolymorphicMethodBinding[] cachedInfo = (PolymorphicMethodBinding[])this.uniquePolymorphicMethodBindings.get(key);
        boolean needToGrow = false;
        int index = 0;
        TypeBinding[] parameters = binding.parameters;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                PolymorphicMethodBinding cachedMethod = cachedInfo[index];
                if (cachedMethod == null) break;
                if (cachedMethod.matches(parameters, typeBinding)) {
                    return cachedMethod;
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new PolymorphicMethodBinding[5];
            this.uniquePolymorphicMethodBindings.put(key, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            PolymorphicMethodBinding[] polymorphicMethodBindingArray = cachedInfo;
            cachedInfo = new PolymorphicMethodBinding[length * 2];
            System.arraycopy(polymorphicMethodBindingArray, 0, cachedInfo, 0, length);
            this.uniquePolymorphicMethodBindings.put(key, cachedInfo);
        }
        cachedInfo[index] = polymorphicMethod = new PolymorphicMethodBinding(binding.original(), typeBinding, parameters);
        return polymorphicMethod;
    }

    public ParameterizedMethodBinding createGetClassMethod(TypeBinding receiverType, MethodBinding originalMethod, Scope scope) {
        ParameterizedMethodBinding retVal = null;
        if (this.uniqueGetClassMethodBinding == null) {
            this.uniqueGetClassMethodBinding = new SimpleLookupTable(3);
        } else {
            retVal = (ParameterizedMethodBinding)this.uniqueGetClassMethodBinding.get(receiverType);
        }
        if (retVal == null) {
            retVal = ParameterizedMethodBinding.instantiateGetClass(receiverType, originalMethod, scope);
            this.uniqueGetClassMethodBinding.put(receiverType, retVal);
        }
        return retVal;
    }

    public ParameterizedTypeBinding createParameterizedType(ReferenceBinding genericType, TypeBinding[] typeArguments, ReferenceBinding enclosingType) {
        ParameterizedTypeBinding parameterizedType;
        ParameterizedTypeBinding[] cachedInfo = (ParameterizedTypeBinding[])this.uniqueParameterizedTypeBindings.get(genericType);
        int argLength = typeArguments == null ? 0 : typeArguments.length;
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                block8: {
                    ParameterizedTypeBinding cachedType = cachedInfo[index];
                    if (cachedType == null) break;
                    if (cachedType.actualType() == genericType && cachedType.enclosingType() == enclosingType) {
                        int cachedArgLength;
                        TypeBinding[] cachedArguments = cachedType.arguments;
                        int n = cachedArgLength = cachedArguments == null ? 0 : cachedArguments.length;
                        if (argLength == cachedArgLength) {
                            int j = 0;
                            while (j < cachedArgLength) {
                                if (typeArguments[j] == cachedArguments[j]) {
                                    ++j;
                                    continue;
                                }
                                break block8;
                            }
                            return cachedType;
                        }
                    }
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new ParameterizedTypeBinding[5];
            this.uniqueParameterizedTypeBindings.put(genericType, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            ParameterizedTypeBinding[] parameterizedTypeBindingArray = cachedInfo;
            cachedInfo = new ParameterizedTypeBinding[length * 2];
            System.arraycopy(parameterizedTypeBindingArray, 0, cachedInfo, 0, length);
            this.uniqueParameterizedTypeBindings.put(genericType, cachedInfo);
        }
        cachedInfo[index] = parameterizedType = new ParameterizedTypeBinding(genericType, typeArguments, enclosingType, this);
        return parameterizedType;
    }

    public RawTypeBinding createRawType(ReferenceBinding genericType, ReferenceBinding enclosingType) {
        RawTypeBinding rawType;
        RawTypeBinding[] cachedInfo = (RawTypeBinding[])this.uniqueRawTypeBindings.get(genericType);
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                RawTypeBinding cachedType = cachedInfo[index];
                if (cachedType == null) break;
                if (cachedType.actualType() == genericType && cachedType.enclosingType() == enclosingType) {
                    return cachedType;
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new RawTypeBinding[1];
            this.uniqueRawTypeBindings.put(genericType, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            RawTypeBinding[] rawTypeBindingArray = cachedInfo;
            cachedInfo = new RawTypeBinding[length * 2];
            System.arraycopy(rawTypeBindingArray, 0, cachedInfo, 0, length);
            this.uniqueRawTypeBindings.put(genericType, cachedInfo);
        }
        cachedInfo[index] = rawType = new RawTypeBinding(genericType, enclosingType, this);
        return rawType;
    }

    public WildcardBinding createWildcard(ReferenceBinding genericType, int rank, TypeBinding bound, TypeBinding[] otherBounds, int boundKind) {
        WildcardBinding wildcard;
        if (genericType == null) {
            genericType = ReferenceBinding.LUB_GENERIC;
        }
        WildcardBinding[] cachedInfo = (WildcardBinding[])this.uniqueWildcardBindings.get(genericType);
        boolean needToGrow = false;
        int index = 0;
        if (cachedInfo != null) {
            int max = cachedInfo.length;
            while (index < max) {
                WildcardBinding cachedType = cachedInfo[index];
                if (cachedType == null) break;
                if (cachedType.genericType == genericType && cachedType.rank == rank && cachedType.boundKind == boundKind && cachedType.bound == bound) {
                    if (cachedType.otherBounds != otherBounds) {
                        int length;
                        int cachedLength = cachedType.otherBounds == null ? 0 : cachedType.otherBounds.length;
                        int n = length = otherBounds == null ? 0 : otherBounds.length;
                        if (cachedLength == length) {
                            int j = 0;
                            while (j < length) {
                                if (cachedType.otherBounds[j] == otherBounds[j]) {
                                    ++j;
                                    continue;
                                }
                                break;
                            }
                        }
                    } else {
                        return cachedType;
                    }
                }
                ++index;
            }
            needToGrow = true;
        } else {
            cachedInfo = new WildcardBinding[10];
            this.uniqueWildcardBindings.put(genericType, cachedInfo);
        }
        int length = cachedInfo.length;
        if (needToGrow && index == length) {
            WildcardBinding[] wildcardBindingArray = cachedInfo;
            cachedInfo = new WildcardBinding[length * 2];
            System.arraycopy(wildcardBindingArray, 0, cachedInfo, 0, length);
            this.uniqueWildcardBindings.put(genericType, cachedInfo);
        }
        cachedInfo[index] = wildcard = new WildcardBinding(genericType, rank, bound, otherBounds, boundKind, this);
        return wildcard;
    }

    public AccessRestriction getAccessRestriction(TypeBinding type) {
        return (AccessRestriction)this.accessRestrictions.get(type);
    }

    public ReferenceBinding getCachedType(char[][] compoundName) {
        if (compoundName.length == 1) {
            return this.defaultPackage.getType0(compoundName[0]);
        }
        PackageBinding packageBinding = this.getPackage0(compoundName[0]);
        if (packageBinding == null || packageBinding == TheNotFoundPackage) {
            return null;
        }
        int i = 1;
        int packageLength = compoundName.length - 1;
        while (i < packageLength) {
            if ((packageBinding = packageBinding.getPackage0(compoundName[i])) == null || packageBinding == TheNotFoundPackage) {
                return null;
            }
            ++i;
        }
        return packageBinding.getType0(compoundName[compoundName.length - 1]);
    }

    PackageBinding getPackage0(char[] name) {
        return this.knownPackages.get(name);
    }

    public ReferenceBinding getResolvedType(char[][] compoundName, Scope scope) {
        ReferenceBinding type = this.getType(compoundName);
        if (type != null) {
            return type;
        }
        this.problemReporter.isClassPathCorrect(compoundName, scope == null ? this.unitBeingCompleted : scope.referenceCompilationUnit(), this.missingClassFileLocation);
        return this.createMissingType(null, compoundName);
    }

    PackageBinding getTopLevelPackage(char[] name) {
        PackageBinding packageBinding = this.getPackage0(name);
        if (packageBinding != null) {
            if (packageBinding == TheNotFoundPackage) {
                return null;
            }
            return packageBinding;
        }
        if (this.nameEnvironment.isPackage(null, name)) {
            packageBinding = new PackageBinding(name, this);
            this.knownPackages.put(name, packageBinding);
            return packageBinding;
        }
        this.knownPackages.put(name, TheNotFoundPackage);
        return null;
    }

    public ReferenceBinding getType(char[][] compoundName) {
        ReferenceBinding referenceBinding;
        if (compoundName.length == 1) {
            referenceBinding = this.defaultPackage.getType0(compoundName[0]);
            if (referenceBinding == null) {
                PackageBinding packageBinding = this.getPackage0(compoundName[0]);
                if (packageBinding != null && packageBinding != TheNotFoundPackage) {
                    return null;
                }
                referenceBinding = this.askForType(this.defaultPackage, compoundName[0]);
            }
        } else {
            PackageBinding packageBinding = this.getPackage0(compoundName[0]);
            if (packageBinding == TheNotFoundPackage) {
                return null;
            }
            if (packageBinding != null) {
                int i = 1;
                int packageLength = compoundName.length - 1;
                while (i < packageLength) {
                    if ((packageBinding = packageBinding.getPackage0(compoundName[i])) == null) break;
                    if (packageBinding == TheNotFoundPackage) {
                        return null;
                    }
                    ++i;
                }
            }
            if (packageBinding == null) {
                referenceBinding = this.askForType(compoundName);
            } else {
                referenceBinding = packageBinding.getType0(compoundName[compoundName.length - 1]);
                if (referenceBinding == null) {
                    referenceBinding = this.askForType(packageBinding, compoundName[compoundName.length - 1]);
                }
            }
        }
        if (referenceBinding == null || referenceBinding == TheNotFoundType) {
            return null;
        }
        if ((referenceBinding = (ReferenceBinding)BinaryTypeBinding.resolveType(referenceBinding, this, false)).isNestedType()) {
            return new ProblemReferenceBinding(compoundName, referenceBinding, 4);
        }
        return referenceBinding;
    }

    private TypeBinding[] getTypeArgumentsFromSignature(SignatureWrapper wrapper, TypeVariableBinding[] staticVariables, ReferenceBinding enclosingType, ReferenceBinding genericType, char[][][] missingTypeNames) {
        ArrayList<TypeBinding> args = new ArrayList<TypeBinding>(2);
        int rank = 0;
        do {
            args.add(this.getTypeFromVariantTypeSignature(wrapper, staticVariables, enclosingType, genericType, rank++, missingTypeNames));
        } while (wrapper.signature[wrapper.start] != '>');
        ++wrapper.start;
        TypeBinding[] typeArguments = new TypeBinding[args.size()];
        args.toArray(typeArguments);
        return typeArguments;
    }

    private ReferenceBinding getTypeFromCompoundName(char[][] compoundName, boolean isParameterized, boolean wasMissingType) {
        ReferenceBinding binding = this.getCachedType(compoundName);
        if (binding == null) {
            PackageBinding packageBinding = this.computePackageFrom(compoundName, false);
            binding = new UnresolvedReferenceBinding(compoundName, packageBinding);
            if (wasMissingType) {
                binding.tagBits |= 0x80L;
            }
            packageBinding.addType(binding);
        } else if (binding == TheNotFoundType) {
            this.problemReporter.isClassPathCorrect(compoundName, this.unitBeingCompleted, this.missingClassFileLocation);
            binding = this.createMissingType(null, compoundName);
        } else if (!isParameterized) {
            binding = (ReferenceBinding)this.convertUnresolvedBinaryToRawType(binding);
        }
        return binding;
    }

    ReferenceBinding getTypeFromConstantPoolName(char[] signature, int start, int end, boolean isParameterized, char[][][] missingTypeNames) {
        if (end == -1) {
            end = signature.length;
        }
        char[][] compoundName = CharOperation.splitOn('/', signature, start, end);
        boolean wasMissingType = false;
        if (missingTypeNames != null) {
            int i = 0;
            int max = missingTypeNames.length;
            while (i < max) {
                if (CharOperation.equals(compoundName, missingTypeNames[i])) {
                    wasMissingType = true;
                    break;
                }
                ++i;
            }
        }
        return this.getTypeFromCompoundName(compoundName, isParameterized, wasMissingType);
    }

    TypeBinding getTypeFromSignature(char[] signature, int start, int end, boolean isParameterized, TypeBinding enclosingType, char[][][] missingTypeNames) {
        int dimension = 0;
        while (signature[start] == '[') {
            ++start;
            ++dimension;
        }
        if (end == -1) {
            end = signature.length - 1;
        }
        TypeBinding binding = null;
        if (start == end) {
            switch (signature[start]) {
                case 'I': {
                    binding = TypeBinding.INT;
                    break;
                }
                case 'Z': {
                    binding = TypeBinding.BOOLEAN;
                    break;
                }
                case 'V': {
                    binding = TypeBinding.VOID;
                    break;
                }
                case 'C': {
                    binding = TypeBinding.CHAR;
                    break;
                }
                case 'D': {
                    binding = TypeBinding.DOUBLE;
                    break;
                }
                case 'B': {
                    binding = TypeBinding.BYTE;
                    break;
                }
                case 'F': {
                    binding = TypeBinding.FLOAT;
                    break;
                }
                case 'J': {
                    binding = TypeBinding.LONG;
                    break;
                }
                case 'S': {
                    binding = TypeBinding.SHORT;
                    break;
                }
                default: {
                    this.problemReporter.corruptedSignature(enclosingType, signature, start);
                    break;
                }
            }
        } else {
            binding = this.getTypeFromConstantPoolName(signature, start + 1, end, isParameterized, missingTypeNames);
        }
        if (dimension == 0) {
            return binding;
        }
        return this.createArrayType(binding, dimension);
    }

    public TypeBinding getTypeFromTypeSignature(SignatureWrapper wrapper, TypeVariableBinding[] staticVariables, ReferenceBinding enclosingType, char[][][] missingTypeNames) {
        ReferenceBinding actualEnclosing;
        int dimension = 0;
        while (wrapper.signature[wrapper.start] == '[') {
            ++wrapper.start;
            ++dimension;
        }
        if (wrapper.signature[wrapper.start] == 'T') {
            int varStart = wrapper.start + 1;
            int varEnd = wrapper.computeEnd();
            int i = staticVariables.length;
            while (--i >= 0) {
                if (!CharOperation.equals(staticVariables[i].sourceName, wrapper.signature, varStart, varEnd)) continue;
                return dimension == 0 ? staticVariables[i] : this.createArrayType(staticVariables[i], dimension);
            }
            ReferenceBinding initialType = enclosingType;
            do {
                TypeVariableBinding[] enclosingTypeVariables = enclosingType instanceof BinaryTypeBinding ? ((BinaryTypeBinding)enclosingType).typeVariables : enclosingType.typeVariables();
                int i2 = enclosingTypeVariables.length;
                while (--i2 >= 0) {
                    if (!CharOperation.equals(enclosingTypeVariables[i2].sourceName, wrapper.signature, varStart, varEnd)) continue;
                    return dimension == 0 ? enclosingTypeVariables[i2] : this.createArrayType(enclosingTypeVariables[i2], dimension);
                }
            } while ((enclosingType = enclosingType.enclosingType()) != null);
            this.problemReporter.undefinedTypeVariableSignature(CharOperation.subarray(wrapper.signature, varStart, varEnd), initialType);
            return null;
        }
        boolean isParameterized = wrapper.end == wrapper.bracket;
        TypeBinding type = this.getTypeFromSignature(wrapper.signature, wrapper.start, wrapper.computeEnd(), isParameterized, enclosingType, missingTypeNames);
        if (!isParameterized) {
            return dimension == 0 ? type : this.createArrayType(type, dimension);
        }
        ReferenceBinding actualType = (ReferenceBinding)type;
        if (actualType instanceof UnresolvedReferenceBinding && CharOperation.indexOf('$', actualType.compoundName[actualType.compoundName.length - 1]) > 0) {
            actualType = (ReferenceBinding)BinaryTypeBinding.resolveType(actualType, this, false);
        }
        if ((actualEnclosing = actualType.enclosingType()) != null) {
            actualEnclosing = (ReferenceBinding)this.convertToRawType(actualEnclosing, false);
        }
        TypeBinding[] typeArguments = this.getTypeArgumentsFromSignature(wrapper, staticVariables, enclosingType, actualType, missingTypeNames);
        ParameterizedTypeBinding parameterizedType = this.createParameterizedType(actualType, typeArguments, actualEnclosing);
        while (wrapper.signature[wrapper.start] == '.') {
            int memberStart = ++wrapper.start;
            char[] memberName = wrapper.nextWord();
            BinaryTypeBinding.resolveType(parameterizedType, this, false);
            ReferenceBinding memberType = parameterizedType.genericType().getMemberType(memberName);
            if (memberType == null) {
                this.problemReporter.corruptedSignature(parameterizedType, wrapper.signature, memberStart);
            }
            if (wrapper.signature[wrapper.start] == '<') {
                ++wrapper.start;
                typeArguments = this.getTypeArgumentsFromSignature(wrapper, staticVariables, enclosingType, memberType, missingTypeNames);
            } else {
                typeArguments = null;
            }
            parameterizedType = this.createParameterizedType(memberType, typeArguments, parameterizedType);
        }
        ++wrapper.start;
        return dimension == 0 ? parameterizedType : this.createArrayType(parameterizedType, dimension);
    }

    TypeBinding getTypeFromVariantTypeSignature(SignatureWrapper wrapper, TypeVariableBinding[] staticVariables, ReferenceBinding enclosingType, ReferenceBinding genericType, int rank, char[][][] missingTypeNames) {
        switch (wrapper.signature[wrapper.start]) {
            case '-': {
                ++wrapper.start;
                TypeBinding bound = this.getTypeFromTypeSignature(wrapper, staticVariables, enclosingType, missingTypeNames);
                return this.createWildcard(genericType, rank, bound, null, 2);
            }
            case '+': {
                ++wrapper.start;
                TypeBinding bound = this.getTypeFromTypeSignature(wrapper, staticVariables, enclosingType, missingTypeNames);
                return this.createWildcard(genericType, rank, bound, null, 1);
            }
            case '*': {
                ++wrapper.start;
                return this.createWildcard(genericType, rank, null, null, 0);
            }
        }
        return this.getTypeFromTypeSignature(wrapper, staticVariables, enclosingType, missingTypeNames);
    }

    boolean isMissingType(char[] typeName) {
        int i = this.missingTypes == null ? 0 : this.missingTypes.size();
        while (--i >= 0) {
            MissingTypeBinding missingType = (MissingTypeBinding)this.missingTypes.get(i);
            if (!CharOperation.equals(missingType.sourceName, typeName)) continue;
            return true;
        }
        return false;
    }

    boolean isPackage(char[][] compoundName, char[] name) {
        if (compoundName == null || compoundName.length == 0) {
            return this.nameEnvironment.isPackage(null, name);
        }
        return this.nameEnvironment.isPackage(compoundName, name);
    }

    public MethodVerifier methodVerifier() {
        if (this.verifier == null) {
            this.verifier = this.newMethodVerifier();
        }
        return this.verifier;
    }

    public MethodVerifier newMethodVerifier() {
        return new MethodVerifier15(this);
    }

    public void releaseClassFiles(ClassFile[] classFiles) {
        int i = 0;
        int fileCount = classFiles.length;
        while (i < fileCount) {
            this.classFilePool.release(classFiles[i]);
            ++i;
        }
    }

    public void reset() {
        this.defaultPackage = new PackageBinding(this);
        this.defaultImports = null;
        this.knownPackages = new HashtableOfPackage();
        this.accessRestrictions = new HashMap(3);
        this.verifier = null;
        int i = this.uniqueArrayBindings.length;
        while (--i >= 0) {
            ArrayBinding[] arrayBindings = this.uniqueArrayBindings[i];
            if (arrayBindings == null) continue;
            int j = arrayBindings.length;
            while (--j >= 0) {
                arrayBindings[j] = null;
            }
        }
        this.uniqueParameterizedTypeBindings = new SimpleLookupTable(3);
        this.uniqueRawTypeBindings = new SimpleLookupTable(3);
        this.uniqueWildcardBindings = new SimpleLookupTable(3);
        this.uniqueParameterizedGenericMethodBindings = new SimpleLookupTable(3);
        this.uniquePolymorphicMethodBindings = new SimpleLookupTable(3);
        this.uniqueGetClassMethodBinding = null;
        this.missingTypes = null;
        this.typesBeingConnected = new HashSet();
        i = this.units.length;
        while (--i >= 0) {
            this.units[i] = null;
        }
        this.lastUnitIndex = -1;
        this.lastCompletedUnitIndex = -1;
        this.unitBeingCompleted = null;
        this.classFilePool.reset();
    }

    public void setAccessRestriction(ReferenceBinding type, AccessRestriction accessRestriction) {
        if (accessRestriction == null) {
            return;
        }
        type.modifiers |= 0x40000;
        this.accessRestrictions.put(type, accessRestriction);
    }

    void updateCaches(UnresolvedReferenceBinding unresolvedType, ReferenceBinding resolvedType) {
        int l;
        int i;
        Object[] keys;
        if (this.uniqueParameterizedTypeBindings.get(unresolvedType) != null) {
            keys = this.uniqueParameterizedTypeBindings.keyTable;
            i = 0;
            l = keys.length;
            while (i < l) {
                if (keys[i] == unresolvedType) {
                    keys[i] = resolvedType;
                    break;
                }
                ++i;
            }
        }
        if (this.uniqueRawTypeBindings.get(unresolvedType) != null) {
            keys = this.uniqueRawTypeBindings.keyTable;
            i = 0;
            l = keys.length;
            while (i < l) {
                if (keys[i] == unresolvedType) {
                    keys[i] = resolvedType;
                    break;
                }
                ++i;
            }
        }
        if (this.uniqueWildcardBindings.get(unresolvedType) != null) {
            keys = this.uniqueWildcardBindings.keyTable;
            i = 0;
            l = keys.length;
            while (i < l) {
                if (keys[i] == unresolvedType) {
                    keys[i] = resolvedType;
                    break;
                }
                ++i;
            }
        }
    }
}

