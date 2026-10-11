/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportConflictBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeCollisionException;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.CompoundNameVector;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.HashtableOfType;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleNameVector;

public class CompilationUnitScope
extends Scope {
    public LookupEnvironment environment;
    public CompilationUnitDeclaration referenceContext;
    public char[][] currentPackageName;
    public PackageBinding fPackage;
    public ImportBinding[] imports;
    public HashtableOfObject typeOrPackageCache;
    public SourceTypeBinding[] topLevelTypes;
    private CompoundNameVector qualifiedReferences;
    private SimpleNameVector simpleNameReferences;
    private SimpleNameVector rootReferences;
    private ObjectVector referencedTypes;
    private ObjectVector referencedSuperTypes;
    HashtableOfType constantPoolNameUsage;
    private int captureID = 1;

    public CompilationUnitScope(CompilationUnitDeclaration unit, LookupEnvironment environment) {
        super(4, null);
        this.environment = environment;
        this.referenceContext = unit;
        unit.scope = this;
        char[][] cArray = this.currentPackageName = unit.currentPackage == null ? CharOperation.NO_CHAR_CHAR : unit.currentPackage.tokens;
        if (this.compilerOptions().produceReferenceInfo) {
            this.qualifiedReferences = new CompoundNameVector();
            this.simpleNameReferences = new SimpleNameVector();
            this.rootReferences = new SimpleNameVector();
            this.referencedTypes = new ObjectVector();
            this.referencedSuperTypes = new ObjectVector();
        } else {
            this.qualifiedReferences = null;
            this.simpleNameReferences = null;
            this.rootReferences = null;
            this.referencedTypes = null;
            this.referencedSuperTypes = null;
        }
    }

    void buildFieldsAndMethods() {
        int i = 0;
        int length = this.topLevelTypes.length;
        while (i < length) {
            this.topLevelTypes[i].scope.buildFieldsAndMethods();
            ++i;
        }
    }

    void buildTypeBindings(AccessRestriction accessRestriction) {
        char[][] expectedPackageName;
        this.topLevelTypes = new SourceTypeBinding[0];
        boolean firstIsSynthetic = false;
        if (this.referenceContext.compilationResult.compilationUnit != null && (expectedPackageName = this.referenceContext.compilationResult.compilationUnit.getPackageName()) != null && !CharOperation.equals(this.currentPackageName, expectedPackageName)) {
            if (this.referenceContext.currentPackage != null || this.referenceContext.types != null || this.referenceContext.imports != null) {
                this.problemReporter().packageIsNotExpectedPackage(this.referenceContext);
            }
            char[][] cArray = this.currentPackageName = expectedPackageName.length == 0 ? CharOperation.NO_CHAR_CHAR : expectedPackageName;
        }
        if (this.currentPackageName == CharOperation.NO_CHAR_CHAR) {
            this.fPackage = this.environment.defaultPackage;
        } else {
            this.fPackage = this.environment.createPackage(this.currentPackageName);
            if (this.fPackage == null) {
                if (this.referenceContext.currentPackage != null) {
                    this.problemReporter().packageCollidesWithType(this.referenceContext);
                }
                this.fPackage = this.environment.defaultPackage;
                return;
            }
            if (this.referenceContext.isPackageInfo()) {
                if (this.referenceContext.types == null || this.referenceContext.types.length == 0) {
                    this.referenceContext.types = new TypeDeclaration[1];
                    this.referenceContext.createPackageInfoType();
                    firstIsSynthetic = true;
                }
                if (this.referenceContext.currentPackage != null) {
                    this.referenceContext.types[0].annotations = this.referenceContext.currentPackage.annotations;
                }
            }
            this.recordQualifiedReference(this.currentPackageName);
        }
        TypeDeclaration[] types = this.referenceContext.types;
        int typeLength = types == null ? 0 : types.length;
        this.topLevelTypes = new SourceTypeBinding[typeLength];
        int count = 0;
        int i = 0;
        while (i < typeLength) {
            TypeDeclaration typeDecl = types[i];
            if (this.environment.isProcessingAnnotations && this.environment.isMissingType(typeDecl.name)) {
                throw new SourceTypeCollisionException();
            }
            ReferenceBinding typeBinding = this.fPackage.getType0(typeDecl.name);
            this.recordSimpleReference(typeDecl.name);
            if (typeBinding != null && typeBinding.isValidBinding() && !(typeBinding instanceof UnresolvedReferenceBinding)) {
                if (this.environment.isProcessingAnnotations) {
                    throw new SourceTypeCollisionException();
                }
                this.problemReporter().duplicateTypes(this.referenceContext, typeDecl);
            } else {
                char[] mainTypeName;
                if (this.fPackage != this.environment.defaultPackage && this.fPackage.getPackage(typeDecl.name) != null) {
                    this.problemReporter().typeCollidesWithPackage(this.referenceContext, typeDecl);
                }
                if ((typeDecl.modifiers & 1) != 0 && (mainTypeName = this.referenceContext.getMainTypeName()) != null && !CharOperation.equals(mainTypeName, typeDecl.name)) {
                    this.problemReporter().publicClassMustMatchFileName(this.referenceContext, typeDecl);
                }
                ClassScope child = new ClassScope(this, typeDecl);
                SourceTypeBinding type = child.buildType(null, this.fPackage, accessRestriction);
                if (firstIsSynthetic && i == 0) {
                    type.modifiers |= 0x1000;
                }
                if (type != null) {
                    this.topLevelTypes[count++] = type;
                }
            }
            ++i;
        }
        if (count != this.topLevelTypes.length) {
            this.topLevelTypes = new SourceTypeBinding[count];
            System.arraycopy(this.topLevelTypes, 0, this.topLevelTypes, 0, count);
        }
    }

    void checkAndSetImports() {
        if (this.referenceContext.imports == null) {
            this.imports = this.getDefaultImports();
            return;
        }
        int numberOfStatements = this.referenceContext.imports.length;
        int numberOfImports = numberOfStatements + 1;
        int i = 0;
        while (i < numberOfStatements) {
            ImportReference importReference = this.referenceContext.imports[i];
            if ((importReference.bits & 0x20000) != 0 && CharOperation.equals(TypeConstants.JAVA_LANG, importReference.tokens) && !importReference.isStatic()) {
                --numberOfImports;
                break;
            }
            ++i;
        }
        ImportBinding[] resolvedImports = new ImportBinding[numberOfImports];
        resolvedImports[0] = this.getDefaultImports()[0];
        int index = 1;
        int i2 = 0;
        while (i2 < numberOfStatements) {
            block10: {
                ImportReference importReference = this.referenceContext.imports[i2];
                char[][] compoundName = importReference.tokens;
                int j = 0;
                while (j < index) {
                    ImportBinding resolved = resolvedImports[j];
                    if (resolved.onDemand != ((importReference.bits & 0x20000) != 0) || resolved.isStatic() != importReference.isStatic() || !CharOperation.equals(compoundName, resolvedImports[j].compoundName)) {
                        ++j;
                        continue;
                    }
                    break block10;
                }
                if ((importReference.bits & 0x20000) != 0) {
                    Binding importBinding;
                    if (!(CharOperation.equals(compoundName, this.currentPackageName) || !(importBinding = this.findImport(compoundName, compoundName.length)).isValidBinding() || importReference.isStatic() && importBinding instanceof PackageBinding)) {
                        resolvedImports[index++] = new ImportBinding(compoundName, true, importBinding, importReference);
                    }
                } else {
                    resolvedImports[index++] = new ImportBinding(compoundName, false, null, importReference);
                }
            }
            ++i2;
        }
        if (resolvedImports.length > index) {
            ImportBinding[] importBindingArray = resolvedImports;
            resolvedImports = new ImportBinding[index];
            System.arraycopy(importBindingArray, 0, resolvedImports, 0, index);
        }
        this.imports = resolvedImports;
    }

    void checkParameterizedTypes() {
        if (this.compilerOptions().sourceLevel < 0x310000L) {
            return;
        }
        int i = 0;
        int length = this.topLevelTypes.length;
        while (i < length) {
            ClassScope scope = this.topLevelTypes[i].scope;
            scope.checkParameterizedTypeBounds();
            scope.checkParameterizedSuperTypeCollisions();
            ++i;
        }
    }

    public char[] computeConstantPoolName(LocalTypeBinding localType) {
        char[] candidateName;
        boolean isCompliant15;
        if (localType.constantPoolName != null) {
            return localType.constantPoolName;
        }
        if (this.constantPoolNameUsage == null) {
            this.constantPoolNameUsage = new HashtableOfType();
        }
        SourceTypeBinding outerMostEnclosingType = localType.scope.outerMostClassScope().enclosingSourceType();
        int index = 0;
        boolean bl = isCompliant15 = this.compilerOptions().complianceLevel >= 0x310000L;
        while (true) {
            candidateName = localType.isMemberType() ? (index == 0 ? CharOperation.concat(localType.enclosingType().constantPoolName(), localType.sourceName, '$') : CharOperation.concat(localType.enclosingType().constantPoolName(), '$', String.valueOf(index).toCharArray(), '$', localType.sourceName)) : (localType.isAnonymousType() ? (isCompliant15 ? CharOperation.concat(localType.enclosingType.constantPoolName(), String.valueOf(index + 1).toCharArray(), '$') : CharOperation.concat(outerMostEnclosingType.constantPoolName(), String.valueOf(index + 1).toCharArray(), '$')) : (isCompliant15 ? CharOperation.concat(CharOperation.concat(localType.enclosingType().constantPoolName(), String.valueOf(index + 1).toCharArray(), '$'), localType.sourceName) : CharOperation.concat(outerMostEnclosingType.constantPoolName(), '$', String.valueOf(index + 1).toCharArray(), '$', localType.sourceName)));
            if (this.constantPoolNameUsage.get(candidateName) == null) break;
            ++index;
        }
        this.constantPoolNameUsage.put(candidateName, localType);
        return candidateName;
    }

    void connectTypeHierarchy() {
        int i = 0;
        int length = this.topLevelTypes.length;
        while (i < length) {
            this.topLevelTypes[i].scope.connectTypeHierarchy();
            ++i;
        }
    }

    void faultInImports() {
        if (this.typeOrPackageCache != null) {
            return;
        }
        if (this.referenceContext.imports == null) {
            this.typeOrPackageCache = new HashtableOfObject(1);
            return;
        }
        int numberOfStatements = this.referenceContext.imports.length;
        HashtableOfType typesBySimpleNames = null;
        int i = 0;
        while (i < numberOfStatements) {
            if ((this.referenceContext.imports[i].bits & 0x20000) == 0) {
                typesBySimpleNames = new HashtableOfType(this.topLevelTypes.length + numberOfStatements);
                int j = 0;
                int length = this.topLevelTypes.length;
                while (j < length) {
                    typesBySimpleNames.put(this.topLevelTypes[j].sourceName, this.topLevelTypes[j]);
                    ++j;
                }
                break;
            }
            ++i;
        }
        int numberOfImports = numberOfStatements + 1;
        int i2 = 0;
        while (i2 < numberOfStatements) {
            ImportReference importReference = this.referenceContext.imports[i2];
            if ((importReference.bits & 0x20000) != 0 && CharOperation.equals(TypeConstants.JAVA_LANG, importReference.tokens) && !importReference.isStatic()) {
                --numberOfImports;
                break;
            }
            ++i2;
        }
        ImportBinding[] resolvedImports = new ImportBinding[numberOfImports];
        resolvedImports[0] = this.getDefaultImports()[0];
        int index = 1;
        int i3 = 0;
        while (i3 < numberOfStatements) {
            block33: {
                ReferenceBinding conflictingType;
                Binding importBinding;
                char[][] compoundName;
                ImportReference importReference;
                block39: {
                    block37: {
                        ReferenceBinding referenceBinding;
                        block38: {
                            int j;
                            ReferenceBinding existingType;
                            ReferenceBinding typeToCheck;
                            block36: {
                                block35: {
                                    block34: {
                                        importReference = this.referenceContext.imports[i3];
                                        compoundName = importReference.tokens;
                                        int j2 = 0;
                                        while (j2 < index) {
                                            ImportBinding resolved = resolvedImports[j2];
                                            if (resolved.onDemand == ((importReference.bits & 0x20000) != 0) && resolved.isStatic() == importReference.isStatic() && CharOperation.equals(compoundName, resolved.compoundName)) {
                                                this.problemReporter().unusedImport(importReference);
                                                break block33;
                                            }
                                            ++j2;
                                        }
                                        if ((importReference.bits & 0x20000) == 0) break block34;
                                        if (CharOperation.equals(compoundName, this.currentPackageName)) {
                                            this.problemReporter().unusedImport(importReference);
                                        } else {
                                            Binding importBinding2 = this.findImport(compoundName, compoundName.length);
                                            if (!importBinding2.isValidBinding()) {
                                                this.problemReporter().importProblem(importReference, importBinding2);
                                            } else if (importReference.isStatic() && importBinding2 instanceof PackageBinding) {
                                                this.problemReporter().cannotImportPackage(importReference);
                                            } else {
                                                resolvedImports[index++] = new ImportBinding(compoundName, true, importBinding2, importReference);
                                            }
                                        }
                                        break block33;
                                    }
                                    importBinding = this.findSingleImport(compoundName, 13, importReference.isStatic());
                                    if (importBinding.isValidBinding() || importBinding.problemId() == 3) break block35;
                                    this.problemReporter().importProblem(importReference, importBinding);
                                    break block33;
                                }
                                if (!(importBinding instanceof PackageBinding)) break block36;
                                this.problemReporter().cannotImportPackage(importReference);
                                break block33;
                            }
                            conflictingType = null;
                            if (importBinding instanceof MethodBinding && (!(conflictingType = (ReferenceBinding)this.getType(compoundName, compoundName.length)).isValidBinding() || importReference.isStatic() && !conflictingType.isStatic())) {
                                conflictingType = null;
                            }
                            if (!(importBinding instanceof ReferenceBinding) && conflictingType == null) break block37;
                            referenceBinding = conflictingType == null ? (ReferenceBinding)importBinding : conflictingType;
                            ReferenceBinding referenceBinding2 = typeToCheck = referenceBinding.problemId() == 3 ? ((ProblemReferenceBinding)referenceBinding).closestMatch : referenceBinding;
                            if (importReference.isTypeUseDeprecated(typeToCheck, this)) {
                                this.problemReporter().deprecatedType(typeToCheck, importReference);
                            }
                            if ((existingType = typesBySimpleNames.get(compoundName[compoundName.length - 1])) == null) break block38;
                            if (existingType == referenceBinding) {
                                j = 0;
                                while (j < index) {
                                    ImportBinding resolved = resolvedImports[j];
                                    if (resolved instanceof ImportConflictBinding) {
                                        ImportConflictBinding importConflictBinding = (ImportConflictBinding)resolved;
                                        if (importConflictBinding.conflictingTypeBinding == referenceBinding && !importReference.isStatic()) {
                                            this.problemReporter().duplicateImport(importReference);
                                            resolvedImports[index++] = new ImportBinding(compoundName, false, importBinding, importReference);
                                        }
                                    } else if (resolved.resolvedImport == referenceBinding && importReference.isStatic() != resolved.isStatic()) {
                                        this.problemReporter().duplicateImport(importReference);
                                        resolvedImports[index++] = new ImportBinding(compoundName, false, importBinding, importReference);
                                    }
                                    ++j;
                                }
                            } else {
                                j = 0;
                                int length = this.topLevelTypes.length;
                                while (j < length) {
                                    if (CharOperation.equals(this.topLevelTypes[j].sourceName, existingType.sourceName)) {
                                        this.problemReporter().conflictingImport(importReference);
                                        break block33;
                                    }
                                    ++j;
                                }
                                this.problemReporter().duplicateImport(importReference);
                            }
                            break block33;
                        }
                        typesBySimpleNames.put(compoundName[compoundName.length - 1], referenceBinding);
                        break block39;
                    }
                    if (importBinding instanceof FieldBinding) {
                        int j = 0;
                        while (j < index) {
                            ImportBinding resolved = resolvedImports[j];
                            if (resolved.isStatic() && resolved.resolvedImport instanceof FieldBinding && importBinding != resolved.resolvedImport && CharOperation.equals(compoundName[compoundName.length - 1], resolved.compoundName[resolved.compoundName.length - 1])) {
                                this.problemReporter().duplicateImport(importReference);
                                break block33;
                            }
                            ++j;
                        }
                    }
                }
                resolvedImports[index++] = conflictingType == null ? new ImportBinding(compoundName, false, importBinding, importReference) : new ImportConflictBinding(compoundName, importBinding, conflictingType, importReference);
            }
            ++i3;
        }
        if (resolvedImports.length > index) {
            ImportBinding[] importBindingArray = resolvedImports;
            resolvedImports = new ImportBinding[index];
            System.arraycopy(importBindingArray, 0, resolvedImports, 0, index);
        }
        this.imports = resolvedImports;
        int length = this.imports.length;
        this.typeOrPackageCache = new HashtableOfObject(length);
        int i4 = 0;
        while (i4 < length) {
            ImportBinding binding = this.imports[i4];
            if (!binding.onDemand && binding.resolvedImport instanceof ReferenceBinding || binding instanceof ImportConflictBinding) {
                this.typeOrPackageCache.put(binding.compoundName[binding.compoundName.length - 1], binding);
            }
            ++i4;
        }
    }

    public void faultInTypes() {
        this.faultInImports();
        int i = 0;
        int length = this.topLevelTypes.length;
        while (i < length) {
            this.topLevelTypes[i].faultInTypesForFieldsAndMethods();
            ++i;
        }
    }

    public Binding findImport(char[][] compoundName, boolean findStaticImports, boolean onDemand) {
        if (onDemand) {
            return this.findImport(compoundName, compoundName.length);
        }
        return this.findSingleImport(compoundName, 13, findStaticImports);
    }

    private Binding findImport(char[][] compoundName, int length) {
        ReferenceBinding type;
        int i;
        Binding binding;
        block12: {
            this.recordQualifiedReference(compoundName);
            binding = this.environment.getTopLevelPackage(compoundName[0]);
            i = 1;
            if (binding != null) {
                PackageBinding packageBinding = binding;
                while (i < length) {
                    if ((binding = packageBinding.getTypeOrPackage(compoundName[i++])) == null || !binding.isValidBinding()) {
                        binding = null;
                    } else if (binding instanceof PackageBinding) {
                        packageBinding = (PackageBinding)binding;
                        continue;
                    }
                    break block12;
                }
                return packageBinding;
            }
        }
        if (binding == null) {
            if (this.compilerOptions().complianceLevel >= 0x300000L) {
                return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, i), null, 1);
            }
            type = this.findType(compoundName[0], this.environment.defaultPackage, this.environment.defaultPackage);
            if (type == null || !type.isValidBinding()) {
                return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, i), null, 1);
            }
            i = 1;
        } else {
            type = (ReferenceBinding)binding;
        }
        while (i < length) {
            char[] name;
            if (!(type = (ReferenceBinding)this.environment.convertToRawType(type, false)).canBeSeenBy(this.fPackage)) {
                return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, i), type, 2);
            }
            if ((type = type.getMemberType(name = compoundName[i++])) != null) continue;
            return new ProblemReferenceBinding(CharOperation.subarray(compoundName, 0, i), null, 1);
        }
        if (!type.canBeSeenBy(this.fPackage)) {
            return new ProblemReferenceBinding(compoundName, type, 2);
        }
        return type;
    }

    private Binding findSingleImport(char[][] compoundName, int mask, boolean findStaticImports) {
        if (compoundName.length == 1) {
            if (this.compilerOptions().complianceLevel >= 0x300000L) {
                return new ProblemReferenceBinding(compoundName, null, 1);
            }
            ReferenceBinding typeBinding = this.findType(compoundName[0], this.environment.defaultPackage, this.fPackage);
            if (typeBinding == null) {
                return new ProblemReferenceBinding(compoundName, null, 1);
            }
            return typeBinding;
        }
        if (findStaticImports) {
            return this.findSingleStaticImport(compoundName, mask);
        }
        return this.findImport(compoundName, compoundName.length);
    }

    private Binding findSingleStaticImport(char[][] compoundName, int mask) {
        MethodBinding method;
        FieldBinding field;
        Binding binding = this.findImport(compoundName, compoundName.length - 1);
        if (!binding.isValidBinding()) {
            return binding;
        }
        char[] name = compoundName[compoundName.length - 1];
        if (binding instanceof PackageBinding) {
            Binding temp = ((PackageBinding)binding).getTypeOrPackage(name);
            if (temp != null && temp instanceof ReferenceBinding) {
                return new ProblemReferenceBinding(compoundName, (ReferenceBinding)temp, 14);
            }
            return binding;
        }
        ReferenceBinding type = (ReferenceBinding)binding;
        FieldBinding fieldBinding = field = (mask & 1) != 0 ? this.findField(type, name, null, true) : null;
        if (field != null) {
            if (field.problemId() == 3 && ((ProblemFieldBinding)field).closestMatch.isStatic()) {
                return field;
            }
            if (field.isValidBinding() && field.isStatic() && field.canBeSeenBy(type, null, this)) {
                return field;
            }
        }
        MethodBinding methodBinding = method = (mask & 8) != 0 ? this.findStaticMethod(type, name) : null;
        if (method != null) {
            return method;
        }
        if ((type = this.findMemberType(name, type)) == null || !type.isStatic()) {
            if (field != null && !field.isValidBinding() && field.problemId() != 1) {
                return field;
            }
            return new ProblemReferenceBinding(compoundName, type, 1);
        }
        if (type.isValidBinding() && !type.canBeSeenBy(this.fPackage)) {
            return new ProblemReferenceBinding(compoundName, type, 2);
        }
        if (type.problemId() == 2) {
            return new ProblemReferenceBinding(compoundName, ((ProblemReferenceBinding)type).closestMatch, 2);
        }
        return type;
    }

    private MethodBinding findStaticMethod(ReferenceBinding currentType, char[] selector) {
        if (!currentType.canBeSeenBy(this)) {
            return null;
        }
        do {
            currentType.initializeForStaticImports();
            MethodBinding[] methods = currentType.getMethods(selector);
            if (methods == Binding.NO_METHODS) continue;
            int i = methods.length;
            while (--i >= 0) {
                MethodBinding method = methods[i];
                if (!method.isStatic() || !method.canBeSeenBy(this.fPackage)) continue;
                return method;
            }
        } while ((currentType = currentType.superclass()) != null);
        return null;
    }

    ImportBinding[] getDefaultImports() {
        if (this.environment.defaultImports != null) {
            return this.environment.defaultImports;
        }
        Binding importBinding = this.environment.getTopLevelPackage(TypeConstants.JAVA);
        if (importBinding != null) {
            importBinding = importBinding.getTypeOrPackage(TypeConstants.JAVA_LANG[1]);
        }
        if (importBinding == null || !importBinding.isValidBinding()) {
            this.problemReporter().isClassPathCorrect(TypeConstants.JAVA_LANG_OBJECT, this.referenceContext, this.environment.missingClassFileLocation);
            MissingTypeBinding missingObject = this.environment.createMissingType(null, TypeConstants.JAVA_LANG_OBJECT);
            importBinding = missingObject.fPackage;
        }
        this.environment.defaultImports = new ImportBinding[]{new ImportBinding(TypeConstants.JAVA_LANG, true, importBinding, null)};
        return this.environment.defaultImports;
    }

    public final Binding getImport(char[][] compoundName, boolean onDemand, boolean isStaticImport) {
        if (onDemand) {
            return this.findImport(compoundName, compoundName.length);
        }
        return this.findSingleImport(compoundName, 13, isStaticImport);
    }

    public int nextCaptureID() {
        return this.captureID++;
    }

    public ProblemReporter problemReporter() {
        ProblemReporter problemReporter = this.referenceContext.problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    void recordQualifiedReference(char[][] qualifiedName) {
        if (this.qualifiedReferences == null) {
            return;
        }
        int length = ((char[][])qualifiedName).length;
        if (length > 1) {
            this.recordRootReference(qualifiedName[0]);
            while (!this.qualifiedReferences.contains((char[][])qualifiedName)) {
                this.qualifiedReferences.add((char[][])qualifiedName);
                if (length == 2) {
                    this.recordSimpleReference(qualifiedName[0]);
                    this.recordSimpleReference(qualifiedName[1]);
                    return;
                }
                this.recordSimpleReference(qualifiedName[--length]);
                char[][] cArray = qualifiedName;
                char[][] cArrayArray = new char[length][];
                qualifiedName = cArrayArray;
                System.arraycopy(cArray, 0, cArrayArray, 0, length);
            }
        } else if (length == 1) {
            this.recordRootReference(qualifiedName[0]);
            this.recordSimpleReference(qualifiedName[0]);
        }
    }

    void recordReference(char[][] qualifiedEnclosingName, char[] simpleName) {
        this.recordQualifiedReference(qualifiedEnclosingName);
        if (qualifiedEnclosingName.length == 0) {
            this.recordRootReference(simpleName);
        }
        this.recordSimpleReference(simpleName);
    }

    void recordReference(ReferenceBinding type, char[] simpleName) {
        ReferenceBinding actualType = this.typeToRecord(type);
        if (actualType != null) {
            this.recordReference(actualType.compoundName, simpleName);
        }
    }

    void recordRootReference(char[] simpleName) {
        if (this.rootReferences == null) {
            return;
        }
        if (!this.rootReferences.contains(simpleName)) {
            this.rootReferences.add(simpleName);
        }
    }

    void recordSimpleReference(char[] simpleName) {
        if (this.simpleNameReferences == null) {
            return;
        }
        if (!this.simpleNameReferences.contains(simpleName)) {
            this.simpleNameReferences.add(simpleName);
        }
    }

    void recordSuperTypeReference(TypeBinding type) {
        if (this.referencedSuperTypes == null) {
            return;
        }
        ReferenceBinding actualType = this.typeToRecord(type);
        if (actualType != null && !this.referencedSuperTypes.containsIdentical(actualType)) {
            this.referencedSuperTypes.add(actualType);
        }
    }

    public void recordTypeConversion(TypeBinding superType, TypeBinding subType) {
        this.recordSuperTypeReference(subType);
    }

    void recordTypeReference(TypeBinding type) {
        if (this.referencedTypes == null) {
            return;
        }
        ReferenceBinding actualType = this.typeToRecord(type);
        if (actualType != null && !this.referencedTypes.containsIdentical(actualType)) {
            this.referencedTypes.add(actualType);
        }
    }

    void recordTypeReferences(TypeBinding[] types) {
        if (this.referencedTypes == null) {
            return;
        }
        if (types == null || types.length == 0) {
            return;
        }
        int i = 0;
        int max = types.length;
        while (i < max) {
            ReferenceBinding actualType = this.typeToRecord(types[i]);
            if (actualType != null && !this.referencedTypes.containsIdentical(actualType)) {
                this.referencedTypes.add(actualType);
            }
            ++i;
        }
    }

    Binding resolveSingleImport(ImportBinding importBinding, int mask) {
        if (importBinding.resolvedImport == null) {
            importBinding.resolvedImport = this.findSingleImport(importBinding.compoundName, mask, importBinding.isStatic());
            if (!importBinding.resolvedImport.isValidBinding() || importBinding.resolvedImport instanceof PackageBinding) {
                if (importBinding.resolvedImport.problemId() == 3) {
                    return importBinding.resolvedImport;
                }
                if (this.imports != null) {
                    ImportBinding[] newImports = new ImportBinding[this.imports.length - 1];
                    int i = 0;
                    int n = 0;
                    int max = this.imports.length;
                    while (i < max) {
                        if (this.imports[i] != importBinding) {
                            newImports[n++] = this.imports[i];
                        }
                        ++i;
                    }
                    this.imports = newImports;
                }
                return null;
            }
        }
        return importBinding.resolvedImport;
    }

    public void storeDependencyInfo() {
        int i = 0;
        while (i < this.referencedSuperTypes.size) {
            ReferenceBinding[] interfaces;
            ReferenceBinding superclass;
            ReferenceBinding enclosing;
            ReferenceBinding type = (ReferenceBinding)this.referencedSuperTypes.elementAt(i);
            if (!this.referencedTypes.containsIdentical(type)) {
                this.referencedTypes.add(type);
            }
            if (!type.isLocalType() && (enclosing = type.enclosingType()) != null) {
                this.recordSuperTypeReference(enclosing);
            }
            if ((superclass = type.superclass()) != null) {
                this.recordSuperTypeReference(superclass);
            }
            if ((interfaces = type.superInterfaces()) != null) {
                int j = 0;
                int length = interfaces.length;
                while (j < length) {
                    this.recordSuperTypeReference(interfaces[j]);
                    ++j;
                }
            }
            ++i;
        }
        i = 0;
        int l = this.referencedTypes.size;
        while (i < l) {
            ReferenceBinding type = (ReferenceBinding)this.referencedTypes.elementAt(i);
            if (!type.isLocalType()) {
                this.recordQualifiedReference(type.isMemberType() ? CharOperation.splitOn('.', type.readableName()) : type.compoundName);
            }
            ++i;
        }
        int size = this.qualifiedReferences.size;
        char[][][] qualifiedRefs = new char[size][][];
        int i2 = 0;
        while (i2 < size) {
            qualifiedRefs[i2] = this.qualifiedReferences.elementAt(i2);
            ++i2;
        }
        this.referenceContext.compilationResult.qualifiedReferences = qualifiedRefs;
        size = this.simpleNameReferences.size;
        char[][] simpleRefs = new char[size][];
        int i3 = 0;
        while (i3 < size) {
            simpleRefs[i3] = this.simpleNameReferences.elementAt(i3);
            ++i3;
        }
        this.referenceContext.compilationResult.simpleNameReferences = simpleRefs;
        size = this.rootReferences.size;
        char[][] rootRefs = new char[size][];
        int i4 = 0;
        while (i4 < size) {
            rootRefs[i4] = this.rootReferences.elementAt(i4);
            ++i4;
        }
        this.referenceContext.compilationResult.rootReferences = rootRefs;
    }

    public String toString() {
        return "--- CompilationUnit Scope : " + new String(this.referenceContext.getFileName());
    }

    private ReferenceBinding typeToRecord(TypeBinding type) {
        if (type.isArrayType()) {
            type = ((ArrayBinding)type).leafComponentType;
        }
        switch (type.kind()) {
            case 132: 
            case 516: 
            case 4100: 
            case 8196: {
                return null;
            }
            case 260: 
            case 1028: {
                type = type.erasure();
            }
        }
        ReferenceBinding refType = (ReferenceBinding)type;
        if (refType.isLocalType()) {
            return null;
        }
        return refType;
    }

    public void verifyMethods(MethodVerifier verifier) {
        int i = 0;
        int length = this.topLevelTypes.length;
        while (i < length) {
            this.topLevelTypes[i].verifyMethods(verifier);
            ++i;
        }
    }
}

