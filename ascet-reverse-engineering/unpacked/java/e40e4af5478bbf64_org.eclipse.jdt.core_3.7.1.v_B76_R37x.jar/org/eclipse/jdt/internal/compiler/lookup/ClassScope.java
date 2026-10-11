/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.UnresolvedReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;

public class ClassScope
extends Scope {
    public TypeDeclaration referenceContext;
    public TypeReference superTypeReference;
    ArrayList deferredBoundChecks;

    public ClassScope(Scope parent, TypeDeclaration context) {
        super(3, parent);
        this.referenceContext = context;
        this.deferredBoundChecks = null;
    }

    void buildAnonymousTypeBinding(SourceTypeBinding enclosingType, ReferenceBinding supertype) {
        LocalTypeBinding anonymousType = this.buildLocalType(enclosingType, enclosingType.fPackage);
        anonymousType.modifiers |= 0x8000000;
        if (supertype.isInterface()) {
            anonymousType.superclass = this.getJavaLangObject();
            anonymousType.superInterfaces = new ReferenceBinding[]{supertype};
            TypeReference typeReference = this.referenceContext.allocation.type;
            if (typeReference != null && (supertype.tagBits & 0x40000000L) != 0L) {
                this.problemReporter().superTypeCannotUseWildcard(anonymousType, typeReference, supertype);
                anonymousType.tagBits |= 0x20000L;
                anonymousType.superInterfaces = Binding.NO_SUPERINTERFACES;
            }
        } else {
            anonymousType.superclass = supertype;
            anonymousType.superInterfaces = Binding.NO_SUPERINTERFACES;
            TypeReference typeReference = this.referenceContext.allocation.type;
            if (typeReference != null) {
                if (supertype.erasure().id == 41) {
                    this.problemReporter().cannotExtendEnum(anonymousType, typeReference, supertype);
                    anonymousType.tagBits |= 0x20000L;
                    anonymousType.superclass = this.getJavaLangObject();
                } else if (supertype.isFinal()) {
                    this.problemReporter().anonymousClassCannotExtendFinalClass(typeReference, supertype);
                    anonymousType.tagBits |= 0x20000L;
                    anonymousType.superclass = this.getJavaLangObject();
                } else if ((supertype.tagBits & 0x40000000L) != 0L) {
                    this.problemReporter().superTypeCannotUseWildcard(anonymousType, typeReference, supertype);
                    anonymousType.tagBits |= 0x20000L;
                    anonymousType.superclass = this.getJavaLangObject();
                }
            }
        }
        this.connectMemberTypes();
        this.buildFieldsAndMethods();
        anonymousType.faultInTypesForFieldsAndMethods();
        anonymousType.verifyMethods(this.environment().methodVerifier());
    }

    void buildFields() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if (sourceType.areFieldsInitialized()) {
            return;
        }
        if (this.referenceContext.fields == null) {
            sourceType.setFields(Binding.NO_FIELDS);
            return;
        }
        FieldDeclaration[] fields = this.referenceContext.fields;
        int size = fields.length;
        int count = 0;
        int i = 0;
        while (i < size) {
            switch (fields[i].getKind()) {
                case 1: 
                case 3: {
                    ++count;
                }
            }
            ++i;
        }
        FieldBinding[] fieldBindings = new FieldBinding[count];
        HashtableOfObject knownFieldNames = new HashtableOfObject(count);
        count = 0;
        int i2 = 0;
        while (i2 < size) {
            FieldDeclaration field = fields[i2];
            if (field.getKind() != 2) {
                FieldBinding fieldBinding = new FieldBinding(field, null, field.modifiers | 0x2000000, sourceType);
                fieldBinding.id = count;
                this.checkAndSetModifiersForField(fieldBinding, field);
                if (knownFieldNames.containsKey(field.name)) {
                    FieldBinding previousBinding = (FieldBinding)knownFieldNames.get(field.name);
                    if (previousBinding != null) {
                        int f = 0;
                        while (f < i2) {
                            FieldDeclaration previousField = fields[f];
                            if (previousField.binding == previousBinding) {
                                this.problemReporter().duplicateFieldInType(sourceType, previousField);
                                break;
                            }
                            ++f;
                        }
                    }
                    knownFieldNames.put(field.name, null);
                    this.problemReporter().duplicateFieldInType(sourceType, field);
                    field.binding = null;
                } else {
                    knownFieldNames.put(field.name, fieldBinding);
                    fieldBindings[count++] = fieldBinding;
                }
            }
            ++i2;
        }
        if (count != fieldBindings.length) {
            FieldBinding[] fieldBindingArray = fieldBindings;
            fieldBindings = new FieldBinding[count];
            System.arraycopy(fieldBindingArray, 0, fieldBindings, 0, count);
        }
        sourceType.tagBits &= 0xFFFFFFFFFFFFCFFFL;
        sourceType.setFields(fieldBindings);
    }

    void buildFieldsAndMethods() {
        this.buildFields();
        this.buildMethods();
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if (!sourceType.isPrivate() && sourceType.superclass instanceof SourceTypeBinding && sourceType.superclass.isPrivate()) {
            ((SourceTypeBinding)sourceType.superclass).tagIndirectlyAccessibleMembers();
        }
        if (sourceType.isMemberType() && !sourceType.isLocalType()) {
            ((MemberTypeBinding)sourceType).checkSyntheticArgsAndFields();
        }
        ReferenceBinding[] memberTypes = sourceType.memberTypes;
        int i = 0;
        int length = memberTypes.length;
        while (i < length) {
            ((SourceTypeBinding)memberTypes[i]).scope.buildFieldsAndMethods();
            ++i;
        }
    }

    private LocalTypeBinding buildLocalType(SourceTypeBinding enclosingType, PackageBinding packageBinding) {
        this.referenceContext.scope = this;
        this.referenceContext.staticInitializerScope = new MethodScope(this, this.referenceContext, true);
        this.referenceContext.initializerScope = new MethodScope(this, this.referenceContext, false);
        LocalTypeBinding localType = new LocalTypeBinding(this, enclosingType, this.innermostSwitchCase());
        this.referenceContext.binding = localType;
        this.checkAndSetModifiers();
        this.buildTypeVariables();
        ReferenceBinding[] memberTypeBindings = Binding.NO_MEMBER_TYPES;
        if (this.referenceContext.memberTypes != null) {
            int size = this.referenceContext.memberTypes.length;
            memberTypeBindings = new ReferenceBinding[size];
            int count = 0;
            int i = 0;
            while (i < size) {
                TypeDeclaration memberContext = this.referenceContext.memberTypes[i];
                block0 : switch (TypeDeclaration.kind(memberContext.modifiers)) {
                    case 2: 
                    case 4: {
                        this.problemReporter().illegalLocalTypeDeclaration(memberContext);
                        break;
                    }
                    default: {
                        ReferenceBinding type = localType;
                        do {
                            if (!CharOperation.equals(type.sourceName, memberContext.name)) continue;
                            this.problemReporter().typeCollidesWithEnclosingType(memberContext);
                            break block0;
                        } while ((type = ((TypeBinding)type).enclosingType()) != null);
                        int j = 0;
                        while (j < i) {
                            if (CharOperation.equals(this.referenceContext.memberTypes[j].name, memberContext.name)) {
                                this.problemReporter().duplicateNestedType(memberContext);
                                break block0;
                            }
                            ++j;
                        }
                        ClassScope memberScope = new ClassScope(this, this.referenceContext.memberTypes[i]);
                        LocalTypeBinding memberBinding = memberScope.buildLocalType(localType, packageBinding);
                        memberBinding.setAsMemberType();
                        memberTypeBindings[count++] = memberBinding;
                    }
                }
                ++i;
            }
            if (count != size) {
                ReferenceBinding[] referenceBindingArray = memberTypeBindings;
                memberTypeBindings = new ReferenceBinding[count];
                System.arraycopy(referenceBindingArray, 0, memberTypeBindings, 0, count);
            }
        }
        localType.memberTypes = memberTypeBindings;
        return localType;
    }

    void buildLocalTypeBinding(SourceTypeBinding enclosingType) {
        LocalTypeBinding localType = this.buildLocalType(enclosingType, enclosingType.fPackage);
        this.connectTypeHierarchy();
        if (this.compilerOptions().sourceLevel >= 0x310000L) {
            this.checkParameterizedTypeBounds();
            this.checkParameterizedSuperTypeCollisions();
        }
        this.buildFieldsAndMethods();
        localType.faultInTypesForFieldsAndMethods();
        this.referenceContext.binding.verifyMethods(this.environment().methodVerifier());
    }

    private void buildMemberTypes(AccessRestriction accessRestriction) {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        ReferenceBinding[] memberTypeBindings = Binding.NO_MEMBER_TYPES;
        if (this.referenceContext.memberTypes != null) {
            int length = this.referenceContext.memberTypes.length;
            memberTypeBindings = new ReferenceBinding[length];
            int count = 0;
            int i = 0;
            while (i < length) {
                TypeDeclaration memberContext = this.referenceContext.memberTypes[i];
                block0 : switch (TypeDeclaration.kind(memberContext.modifiers)) {
                    case 2: 
                    case 4: {
                        if (sourceType.isNestedType() && sourceType.isClass() && !sourceType.isStatic()) {
                            this.problemReporter().illegalLocalTypeDeclaration(memberContext);
                            break;
                        }
                    }
                    default: {
                        ReferenceBinding type = sourceType;
                        do {
                            if (!CharOperation.equals(type.sourceName, memberContext.name)) continue;
                            this.problemReporter().typeCollidesWithEnclosingType(memberContext);
                            break block0;
                        } while ((type = type.enclosingType()) != null);
                        int j = 0;
                        while (j < i) {
                            if (CharOperation.equals(this.referenceContext.memberTypes[j].name, memberContext.name)) {
                                this.problemReporter().duplicateNestedType(memberContext);
                                break block0;
                            }
                            ++j;
                        }
                        ClassScope memberScope = new ClassScope(this, memberContext);
                        memberTypeBindings[count++] = memberScope.buildType(sourceType, sourceType.fPackage, accessRestriction);
                    }
                }
                ++i;
            }
            if (count != length) {
                ReferenceBinding[] referenceBindingArray = memberTypeBindings;
                memberTypeBindings = new ReferenceBinding[count];
                System.arraycopy(referenceBindingArray, 0, memberTypeBindings, 0, count);
            }
        }
        sourceType.memberTypes = memberTypeBindings;
    }

    void buildMethods() {
        int i;
        boolean isEnum;
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if (sourceType.areMethodsInitialized()) {
            return;
        }
        boolean bl = isEnum = TypeDeclaration.kind(this.referenceContext.modifiers) == 3;
        if (this.referenceContext.methods == null && !isEnum) {
            this.referenceContext.binding.setMethods(Binding.NO_METHODS);
            return;
        }
        AbstractMethodDeclaration[] methods = this.referenceContext.methods;
        int size = methods == null ? 0 : methods.length;
        int clinitIndex = -1;
        int i2 = 0;
        while (i2 < size) {
            if (methods[i2].isClinit()) {
                clinitIndex = i2;
                break;
            }
            ++i2;
        }
        int count = isEnum ? 2 : 0;
        MethodBinding[] methodBindings = new MethodBinding[(clinitIndex == -1 ? size : size - 1) + count];
        if (isEnum) {
            methodBindings[0] = sourceType.addSyntheticEnumMethod(TypeConstants.VALUES);
            methodBindings[1] = sourceType.addSyntheticEnumMethod(TypeConstants.VALUEOF);
        }
        boolean hasNativeMethods = false;
        if (sourceType.isAbstract()) {
            i = 0;
            while (i < size) {
                MethodScope scope;
                MethodBinding methodBinding;
                if (i != clinitIndex && (methodBinding = (scope = new MethodScope(this, methods[i], false)).createMethod(methods[i])) != null) {
                    methodBindings[count++] = methodBinding;
                    hasNativeMethods = hasNativeMethods || methodBinding.isNative();
                }
                ++i;
            }
        } else {
            boolean hasAbstractMethods = false;
            int i3 = 0;
            while (i3 < size) {
                MethodScope scope;
                MethodBinding methodBinding;
                if (i3 != clinitIndex && (methodBinding = (scope = new MethodScope(this, methods[i3], false)).createMethod(methods[i3])) != null) {
                    methodBindings[count++] = methodBinding;
                    hasAbstractMethods = hasAbstractMethods || methodBinding.isAbstract();
                    hasNativeMethods = hasNativeMethods || methodBinding.isNative();
                }
                ++i3;
            }
            if (hasAbstractMethods) {
                this.problemReporter().abstractMethodInConcreteClass(sourceType);
            }
        }
        if (count != methodBindings.length) {
            MethodBinding[] methodBindingArray = methodBindings;
            methodBindings = new MethodBinding[count];
            System.arraycopy(methodBindingArray, 0, methodBindings, 0, count);
        }
        sourceType.tagBits &= 0xFFFFFFFFFFFF3FFFL;
        sourceType.setMethods(methodBindings);
        if (hasNativeMethods) {
            i = 0;
            while (i < methodBindings.length) {
                methodBindings[i].modifiers |= 0x8000000;
                ++i;
            }
            FieldBinding[] fields = sourceType.unResolvedFields();
            int i4 = 0;
            while (i4 < fields.length) {
                fields[i4].modifiers |= 0x8000000;
                ++i4;
            }
        }
    }

    SourceTypeBinding buildType(SourceTypeBinding enclosingType, PackageBinding packageBinding, AccessRestriction accessRestriction) {
        char[][] className;
        this.referenceContext.scope = this;
        this.referenceContext.staticInitializerScope = new MethodScope(this, this.referenceContext, true);
        this.referenceContext.initializerScope = new MethodScope(this, this.referenceContext, false);
        if (enclosingType == null) {
            className = CharOperation.arrayConcat(packageBinding.compoundName, this.referenceContext.name);
            this.referenceContext.binding = new SourceTypeBinding(className, packageBinding, this);
        } else {
            className = CharOperation.deepCopy(enclosingType.compoundName);
            className[className.length - 1] = CharOperation.concat(className[className.length - 1], this.referenceContext.name, '$');
            ReferenceBinding existingType = packageBinding.getType0(className[className.length - 1]);
            if (existingType != null && !(existingType instanceof UnresolvedReferenceBinding)) {
                this.parent.problemReporter().duplicateNestedType(this.referenceContext);
            }
            this.referenceContext.binding = new MemberTypeBinding(className, this, enclosingType);
        }
        SourceTypeBinding sourceType = this.referenceContext.binding;
        this.environment().setAccessRestriction(sourceType, accessRestriction);
        sourceType.fPackage.addType(sourceType);
        this.checkAndSetModifiers();
        this.buildTypeVariables();
        this.buildMemberTypes(accessRestriction);
        return sourceType;
    }

    private void buildTypeVariables() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        TypeParameter[] typeParameters = this.referenceContext.typeParameters;
        if (typeParameters == null || typeParameters.length == 0) {
            sourceType.typeVariables = Binding.NO_TYPE_VARIABLES;
            return;
        }
        sourceType.typeVariables = Binding.NO_TYPE_VARIABLES;
        if (sourceType.id == 1) {
            this.problemReporter().objectCannotBeGeneric(this.referenceContext);
            return;
        }
        sourceType.typeVariables = this.createTypeVariables(typeParameters, sourceType);
        sourceType.modifiers |= 0x40000000;
    }

    private void checkAndSetModifiers() {
        int realModifiers;
        SourceTypeBinding sourceType = this.referenceContext.binding;
        int modifiers = sourceType.modifiers;
        if ((modifiers & 0x400000) != 0) {
            this.problemReporter().duplicateModifierForType(sourceType);
        }
        ReferenceBinding enclosingType = sourceType.enclosingType();
        boolean isMemberType = sourceType.isMemberType();
        if (isMemberType) {
            modifiers |= enclosingType.modifiers & 0x40000800;
            if (enclosingType.isInterface()) {
                modifiers |= 1;
            }
            if (sourceType.isEnum()) {
                if (!enclosingType.isStatic()) {
                    this.problemReporter().nonStaticContextForEnumMemberType(sourceType);
                } else {
                    modifiers |= 8;
                }
            }
        } else if (sourceType.isLocalType()) {
            if (sourceType.isEnum()) {
                this.problemReporter().illegalLocalTypeDeclaration(this.referenceContext);
                sourceType.modifiers = 0;
                return;
            }
            if (sourceType.isAnonymousType()) {
                modifiers |= 0x10;
                if (this.referenceContext.allocation.type == null) {
                    modifiers |= 0x4000;
                }
            }
            Scope scope = this;
            block4: do {
                switch (scope.kind) {
                    case 2: {
                        MethodScope methodScope = (MethodScope)scope;
                        if (methodScope.isInsideInitializer()) {
                            SourceTypeBinding type = ((TypeDeclaration)methodScope.referenceContext).binding;
                            if (methodScope.initializedField != null) {
                                if (!methodScope.initializedField.isViewedAsDeprecated() || sourceType.isDeprecated()) continue block4;
                                modifiers |= 0x200000;
                                break;
                            }
                            if (type.isStrictfp()) {
                                modifiers |= 0x800;
                            }
                            if (!type.isViewedAsDeprecated() || sourceType.isDeprecated()) continue block4;
                            modifiers |= 0x200000;
                            break;
                        }
                        MethodBinding method = ((AbstractMethodDeclaration)methodScope.referenceContext).binding;
                        if (method == null) break;
                        if (method.isStrictfp()) {
                            modifiers |= 0x800;
                        }
                        if (!method.isViewedAsDeprecated() || sourceType.isDeprecated()) continue block4;
                        modifiers |= 0x200000;
                        break;
                    }
                    case 3: {
                        if (enclosingType.isStrictfp()) {
                            modifiers |= 0x800;
                        }
                        if (!enclosingType.isViewedAsDeprecated() || sourceType.isDeprecated()) continue block4;
                        modifiers |= 0x200000;
                    }
                }
            } while ((scope = scope.parent) != null);
        }
        if (((realModifiers = modifiers & 0xFFFF) & 0x200) != 0) {
            if (isMemberType) {
                if ((realModifiers & 0xFFFFD1F0) != 0) {
                    if ((realModifiers & 0x2000) != 0) {
                        this.problemReporter().illegalModifierForAnnotationMemberType(sourceType);
                    } else {
                        this.problemReporter().illegalModifierForMemberInterface(sourceType);
                    }
                }
            } else if ((realModifiers & 0xFFFFD1FE) != 0) {
                if ((realModifiers & 0x2000) != 0) {
                    this.problemReporter().illegalModifierForAnnotationType(sourceType);
                } else {
                    this.problemReporter().illegalModifierForInterface(sourceType);
                }
            }
            if (sourceType.sourceName == TypeConstants.PACKAGE_INFO_NAME && this.compilerOptions().targetJDK > 0x310000L) {
                modifiers |= 0x1000;
            }
            modifiers |= 0x400;
        } else if ((realModifiers & 0x4000) != 0) {
            if (isMemberType) {
                if ((realModifiers & 0xFFFFB7F0) != 0) {
                    this.problemReporter().illegalModifierForMemberEnum(sourceType);
                    modifiers &= 0xFFFFFBFF;
                    realModifiers &= 0xFFFFFBFF;
                }
            } else if (!sourceType.isLocalType() && (realModifiers & 0xFFFFB7FE) != 0) {
                this.problemReporter().illegalModifierForEnum(sourceType);
            }
            if (!sourceType.isAnonymousType()) {
                FieldDeclaration[] fields;
                TypeDeclaration typeDeclaration;
                block77: {
                    if ((this.referenceContext.bits & 0x800) != 0) {
                        modifiers |= 0x400;
                    } else {
                        int fieldsLength;
                        typeDeclaration = this.referenceContext;
                        fields = typeDeclaration.fields;
                        int n = fieldsLength = fields == null ? 0 : fields.length;
                        if (fieldsLength != 0) {
                            AbstractMethodDeclaration[] methods = typeDeclaration.methods;
                            int methodsLength = methods == null ? 0 : methods.length;
                            boolean definesAbstractMethod = typeDeclaration.superInterfaces != null;
                            int i = 0;
                            while (i < methodsLength && !definesAbstractMethod) {
                                definesAbstractMethod = methods[i].isAbstract();
                                ++i;
                            }
                            if (definesAbstractMethod) {
                                boolean needAbstractBit = false;
                                int i2 = 0;
                                while (i2 < fieldsLength) {
                                    FieldDeclaration fieldDecl = fields[i2];
                                    if (fieldDecl.getKind() == 3) {
                                        if (!(fieldDecl.initialization instanceof QualifiedAllocationExpression)) break block77;
                                        needAbstractBit = true;
                                    }
                                    ++i2;
                                }
                                if (needAbstractBit) {
                                    modifiers |= 0x400;
                                }
                            }
                        }
                    }
                }
                typeDeclaration = this.referenceContext;
                fields = typeDeclaration.fields;
                if (fields != null) {
                    int i = 0;
                    int fieldsLength = fields.length;
                    while (i < fieldsLength) {
                        FieldDeclaration fieldDecl = fields[i];
                        if (fieldDecl.getKind() != 3 || !(fieldDecl.initialization instanceof QualifiedAllocationExpression)) {
                            ++i;
                            continue;
                        }
                        break;
                    }
                } else {
                    modifiers |= 0x10;
                }
            }
        } else {
            if (isMemberType) {
                if ((realModifiers & 0xFFFFF3E0) != 0) {
                    this.problemReporter().illegalModifierForMemberClass(sourceType);
                }
            } else if (sourceType.isLocalType()) {
                if ((realModifiers & 0xFFFFF3EF) != 0) {
                    this.problemReporter().illegalModifierForLocalClass(sourceType);
                }
            } else if ((realModifiers & 0xFFFFF3EE) != 0) {
                this.problemReporter().illegalModifierForClass(sourceType);
            }
            if ((realModifiers & 0x410) == 1040) {
                this.problemReporter().illegalModifierCombinationFinalAbstractForClass(sourceType);
            }
        }
        if (isMemberType) {
            if (enclosingType.isInterface()) {
                if ((realModifiers & 6) != 0) {
                    this.problemReporter().illegalVisibilityModifierForInterfaceMemberType(sourceType);
                    if ((realModifiers & 4) != 0) {
                        modifiers &= 0xFFFFFFFB;
                    }
                    if ((realModifiers & 2) != 0) {
                        modifiers &= 0xFFFFFFFD;
                    }
                }
            } else {
                int accessorBits = realModifiers & 7;
                if ((accessorBits & accessorBits - 1) > 1) {
                    this.problemReporter().illegalVisibilityModifierCombinationForMemberType(sourceType);
                    if ((accessorBits & 1) != 0) {
                        if ((accessorBits & 4) != 0) {
                            modifiers &= 0xFFFFFFFB;
                        }
                        if ((accessorBits & 2) != 0) {
                            modifiers &= 0xFFFFFFFD;
                        }
                    } else if ((accessorBits & 4) != 0 && (accessorBits & 2) != 0) {
                        modifiers &= 0xFFFFFFFD;
                    }
                }
            }
            if ((realModifiers & 8) == 0) {
                if (enclosingType.isInterface()) {
                    modifiers |= 8;
                }
            } else if (!enclosingType.isStatic()) {
                this.problemReporter().illegalStaticModifierForMemberType(sourceType);
            }
        }
        sourceType.modifiers = modifiers;
    }

    private void checkAndSetModifiersForField(FieldBinding fieldBinding, FieldDeclaration fieldDecl) {
        int accessorBits;
        int modifiers = fieldBinding.modifiers;
        ReferenceBinding declaringClass = fieldBinding.declaringClass;
        if ((modifiers & 0x400000) != 0) {
            this.problemReporter().duplicateModifierForField(declaringClass, fieldDecl);
        }
        if (declaringClass.isInterface()) {
            if (((modifiers |= 0x19) & 0xFFFF) != 25) {
                if ((declaringClass.modifiers & 0x2000) != 0) {
                    this.problemReporter().illegalModifierForAnnotationField(fieldDecl);
                } else {
                    this.problemReporter().illegalModifierForInterfaceField(fieldDecl);
                }
            }
            fieldBinding.modifiers = modifiers;
            return;
        }
        if (fieldDecl.getKind() == 3) {
            if ((modifiers & 0xFFFF) != 0) {
                this.problemReporter().illegalModifierForEnumConstant(declaringClass, fieldDecl);
            }
            fieldBinding.modifiers |= 0x8004019;
            return;
        }
        int realModifiers = modifiers & 0xFFFF;
        if ((realModifiers & 0xFFFFFF20) != 0) {
            this.problemReporter().illegalModifierForField(declaringClass, fieldDecl);
            modifiers &= 0xFFFF00DF;
        }
        if (((accessorBits = realModifiers & 7) & accessorBits - 1) > 1) {
            this.problemReporter().illegalVisibilityModifierCombinationForField(declaringClass, fieldDecl);
            if ((accessorBits & 1) != 0) {
                if ((accessorBits & 4) != 0) {
                    modifiers &= 0xFFFFFFFB;
                }
                if ((accessorBits & 2) != 0) {
                    modifiers &= 0xFFFFFFFD;
                }
            } else if ((accessorBits & 4) != 0 && (accessorBits & 2) != 0) {
                modifiers &= 0xFFFFFFFD;
            }
        }
        if ((realModifiers & 0x50) == 80) {
            this.problemReporter().illegalModifierCombinationFinalVolatileForField(declaringClass, fieldDecl);
        }
        if (fieldDecl.initialization == null && (modifiers & 0x10) != 0) {
            modifiers |= 0x4000000;
        }
        fieldBinding.modifiers = modifiers;
    }

    public void checkParameterizedSuperTypeCollisions() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        ReferenceBinding[] interfaces = sourceType.superInterfaces;
        HashMap invocations = new HashMap(2);
        ReferenceBinding itsSuperclass = sourceType.isInterface() ? null : sourceType.superclass;
        int i = 0;
        int length = interfaces.length;
        while (i < length) {
            ReferenceBinding one = interfaces[i];
            if (!(one == null || itsSuperclass != null && this.hasErasedCandidatesCollisions(itsSuperclass, one, invocations, sourceType, this.referenceContext))) {
                int j = 0;
                while (j < i) {
                    ReferenceBinding two = interfaces[j];
                    if (two != null && this.hasErasedCandidatesCollisions(one, two, invocations, sourceType, this.referenceContext)) break;
                    ++j;
                }
            }
            ++i;
        }
        TypeParameter[] typeParameters = this.referenceContext.typeParameters;
        int i2 = 0;
        int paramLength = typeParameters == null ? 0 : typeParameters.length;
        while (i2 < paramLength) {
            TypeReference[] boundRefs;
            TypeParameter typeParameter = typeParameters[i2];
            TypeVariableBinding typeVariable = typeParameter.binding;
            if (typeVariable != null && typeVariable.isValidBinding() && (boundRefs = typeParameter.bounds) != null) {
                boolean checkSuperclass = typeVariable.firstBound == typeVariable.superclass;
                int j = 0;
                int boundLength = boundRefs.length;
                block3: while (j < boundLength) {
                    TypeReference typeRef = boundRefs[j];
                    TypeBinding superType = typeRef.resolvedType;
                    if (superType != null && superType.isValidBinding()) {
                        if (checkSuperclass && this.hasErasedCandidatesCollisions(superType, typeVariable.superclass, invocations, typeVariable, typeRef)) break;
                        int index = typeVariable.superInterfaces.length;
                        while (--index >= 0) {
                            if (this.hasErasedCandidatesCollisions(superType, typeVariable.superInterfaces[index], invocations, typeVariable, typeRef)) break block3;
                        }
                    }
                    ++j;
                }
            }
            ++i2;
        }
        ReferenceBinding[] memberTypes = this.referenceContext.binding.memberTypes;
        if (memberTypes != null && memberTypes != Binding.NO_MEMBER_TYPES) {
            int i3 = 0;
            int size = memberTypes.length;
            while (i3 < size) {
                ((SourceTypeBinding)memberTypes[i3]).scope.checkParameterizedSuperTypeCollisions();
                ++i3;
            }
        }
    }

    private void checkForInheritedMemberTypes(SourceTypeBinding sourceType) {
        ReferenceBinding currentType = sourceType;
        ReferenceBinding[] interfacesToVisit = null;
        int nextPosition = 0;
        do {
            if (currentType.hasMemberTypes()) {
                return;
            }
            ReferenceBinding[] itsInterfaces = currentType.superInterfaces();
            if (itsInterfaces == null || itsInterfaces == Binding.NO_SUPERINTERFACES) continue;
            if (interfacesToVisit == null) {
                interfacesToVisit = itsInterfaces;
                nextPosition = interfacesToVisit.length;
                continue;
            }
            int itsLength = itsInterfaces.length;
            if (nextPosition + itsLength >= interfacesToVisit.length) {
                ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
            }
            int a = 0;
            while (a < itsLength) {
                block19: {
                    ReferenceBinding next = itsInterfaces[a];
                    int b = 0;
                    while (b < nextPosition) {
                        if (next != interfacesToVisit[b]) {
                            ++b;
                            continue;
                        }
                        break block19;
                    }
                    interfacesToVisit[nextPosition++] = next;
                }
                ++a;
            }
        } while ((currentType = currentType.superclass()) != null && (currentType.tagBits & 0x10000L) == 0L);
        if (interfacesToVisit != null) {
            boolean needToTag = false;
            int i = 0;
            while (i < nextPosition) {
                ReferenceBinding anInterface = interfacesToVisit[i];
                if ((anInterface.tagBits & 0x10000L) == 0L) {
                    if (anInterface.hasMemberTypes()) {
                        return;
                    }
                    needToTag = true;
                    ReferenceBinding[] itsInterfaces = anInterface.superInterfaces();
                    if (itsInterfaces != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                        int itsLength = itsInterfaces.length;
                        if (nextPosition + itsLength >= interfacesToVisit.length) {
                            ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                            interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                            System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                        }
                        int a = 0;
                        while (a < itsLength) {
                            block20: {
                                ReferenceBinding next = itsInterfaces[a];
                                int b = 0;
                                while (b < nextPosition) {
                                    if (next != interfacesToVisit[b]) {
                                        ++b;
                                        continue;
                                    }
                                    break block20;
                                }
                                interfacesToVisit[nextPosition++] = next;
                            }
                            ++a;
                        }
                    }
                }
                ++i;
            }
            if (needToTag) {
                i = 0;
                while (i < nextPosition) {
                    interfacesToVisit[i].tagBits |= 0x10000L;
                    ++i;
                }
            }
        }
        currentType = sourceType;
        do {
            currentType.tagBits |= 0x10000L;
        } while ((currentType = currentType.superclass()) != null && (currentType.tagBits & 0x10000L) == 0L);
    }

    public void checkParameterizedTypeBounds() {
        int i = 0;
        int l = this.deferredBoundChecks == null ? 0 : this.deferredBoundChecks.size();
        while (i < l) {
            ((TypeReference)this.deferredBoundChecks.get(i)).checkBounds(this);
            ++i;
        }
        this.deferredBoundChecks = null;
        ReferenceBinding[] memberTypes = this.referenceContext.binding.memberTypes;
        if (memberTypes != null && memberTypes != Binding.NO_MEMBER_TYPES) {
            int i2 = 0;
            int size = memberTypes.length;
            while (i2 < size) {
                ((SourceTypeBinding)memberTypes[i2]).scope.checkParameterizedTypeBounds();
                ++i2;
            }
        }
    }

    private void connectMemberTypes() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        ReferenceBinding[] memberTypes = sourceType.memberTypes;
        if (memberTypes != null && memberTypes != Binding.NO_MEMBER_TYPES) {
            int i = 0;
            int size = memberTypes.length;
            while (i < size) {
                ((SourceTypeBinding)memberTypes[i]).scope.connectTypeHierarchy();
                ++i;
            }
        }
    }

    private boolean connectSuperclass() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if (sourceType.id == 1) {
            sourceType.superclass = null;
            sourceType.superInterfaces = Binding.NO_SUPERINTERFACES;
            if (!sourceType.isClass()) {
                this.problemReporter().objectMustBeClass(sourceType);
            }
            if (this.referenceContext.superclass != null || this.referenceContext.superInterfaces != null && this.referenceContext.superInterfaces.length > 0) {
                this.problemReporter().objectCannotHaveSuperTypes(sourceType);
            }
            return true;
        }
        if (this.referenceContext.superclass == null) {
            if (sourceType.isEnum() && this.compilerOptions().sourceLevel >= 0x310000L) {
                return this.connectEnumSuperclass();
            }
            sourceType.superclass = this.getJavaLangObject();
            return !this.detectHierarchyCycle(sourceType, sourceType.superclass, null);
        }
        TypeReference superclassRef = this.referenceContext.superclass;
        ReferenceBinding superclass = this.findSupertype(superclassRef);
        if (superclass != null) {
            if (!superclass.isClass() && (superclass.tagBits & 0x80L) == 0L) {
                this.problemReporter().superclassMustBeAClass(sourceType, superclassRef, superclass);
            } else if (superclass.isFinal()) {
                this.problemReporter().classExtendFinalClass(sourceType, superclassRef, superclass);
            } else if ((superclass.tagBits & 0x40000000L) != 0L) {
                this.problemReporter().superTypeCannotUseWildcard(sourceType, superclassRef, superclass);
            } else if (superclass.erasure().id == 41) {
                this.problemReporter().cannotExtendEnum(sourceType, superclassRef, superclass);
            } else {
                if ((superclass.tagBits & 0x20000L) != 0L || !superclassRef.resolvedType.isValidBinding()) {
                    sourceType.superclass = superclass;
                    sourceType.tagBits |= 0x20000L;
                    return superclassRef.resolvedType.isValidBinding();
                }
                sourceType.superclass = superclass;
                return true;
            }
        }
        sourceType.tagBits |= 0x20000L;
        sourceType.superclass = this.getJavaLangObject();
        if ((sourceType.superclass.tagBits & 0x100L) == 0L) {
            this.detectHierarchyCycle(sourceType, sourceType.superclass, null);
        }
        return false;
    }

    private boolean connectEnumSuperclass() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        ReferenceBinding rootEnumType = this.getJavaLangEnum();
        if ((rootEnumType.tagBits & 0x80L) != 0L) {
            sourceType.tagBits |= 0x20000L;
            sourceType.superclass = rootEnumType;
            return false;
        }
        boolean foundCycle = this.detectHierarchyCycle(sourceType, rootEnumType, null);
        TypeVariableBinding[] refTypeVariables = rootEnumType.typeVariables();
        if (refTypeVariables == Binding.NO_TYPE_VARIABLES) {
            this.problemReporter().nonGenericTypeCannotBeParameterized(0, null, rootEnumType, new TypeBinding[]{sourceType});
            return false;
        }
        if (1 != refTypeVariables.length) {
            this.problemReporter().incorrectArityForParameterizedType(null, rootEnumType, new TypeBinding[]{sourceType});
            return false;
        }
        ParameterizedTypeBinding superType = this.environment().createParameterizedType(rootEnumType, new TypeBinding[]{this.environment().convertToRawType(sourceType, false)}, null);
        sourceType.tagBits |= superType.tagBits & 0x20000L;
        sourceType.superclass = superType;
        if (refTypeVariables[0].boundCheck(superType, sourceType) != 0) {
            this.problemReporter().typeMismatchError((TypeBinding)rootEnumType, refTypeVariables[0], sourceType, null);
        }
        return !foundCycle;
    }

    private boolean connectSuperInterfaces() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        sourceType.superInterfaces = Binding.NO_SUPERINTERFACES;
        if (this.referenceContext.superInterfaces == null) {
            if (sourceType.isAnnotationType() && this.compilerOptions().sourceLevel >= 0x310000L) {
                ReferenceBinding annotationType = this.getJavaLangAnnotationAnnotation();
                boolean foundCycle = this.detectHierarchyCycle(sourceType, annotationType, null);
                sourceType.superInterfaces = new ReferenceBinding[]{annotationType};
                return !foundCycle;
            }
            return true;
        }
        if (sourceType.id == 1) {
            return true;
        }
        boolean noProblems = true;
        int length = this.referenceContext.superInterfaces.length;
        ReferenceBinding[] interfaceBindings = new ReferenceBinding[length];
        int count = 0;
        int i = 0;
        while (i < length) {
            block16: {
                TypeReference superInterfaceRef = this.referenceContext.superInterfaces[i];
                ReferenceBinding superInterface = this.findSupertype(superInterfaceRef);
                if (superInterface == null) {
                    sourceType.tagBits |= 0x20000L;
                    noProblems = false;
                } else {
                    int j = 0;
                    while (j < i) {
                        if (interfaceBindings[j] == superInterface) {
                            this.problemReporter().duplicateSuperinterface(sourceType, superInterfaceRef, superInterface);
                            sourceType.tagBits |= 0x20000L;
                            noProblems = false;
                            break block16;
                        }
                        ++j;
                    }
                    if (!superInterface.isInterface() && (superInterface.tagBits & 0x80L) == 0L) {
                        this.problemReporter().superinterfaceMustBeAnInterface(sourceType, superInterfaceRef, superInterface);
                        sourceType.tagBits |= 0x20000L;
                        noProblems = false;
                    } else {
                        if (superInterface.isAnnotationType()) {
                            this.problemReporter().annotationTypeUsedAsSuperinterface(sourceType, superInterfaceRef, superInterface);
                        }
                        if ((superInterface.tagBits & 0x40000000L) != 0L) {
                            this.problemReporter().superTypeCannotUseWildcard(sourceType, superInterfaceRef, superInterface);
                            sourceType.tagBits |= 0x20000L;
                            noProblems = false;
                        } else {
                            if ((superInterface.tagBits & 0x20000L) != 0L || !superInterfaceRef.resolvedType.isValidBinding()) {
                                sourceType.tagBits |= 0x20000L;
                                noProblems &= superInterfaceRef.resolvedType.isValidBinding();
                            }
                            interfaceBindings[count++] = superInterface;
                        }
                    }
                }
            }
            ++i;
        }
        if (count > 0) {
            if (count != length) {
                ReferenceBinding[] referenceBindingArray = interfaceBindings;
                interfaceBindings = new ReferenceBinding[count];
                System.arraycopy(referenceBindingArray, 0, interfaceBindings, 0, count);
            }
            sourceType.superInterfaces = interfaceBindings;
        }
        return noProblems;
    }

    void connectTypeHierarchy() {
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if ((sourceType.tagBits & 0x100L) == 0L) {
            sourceType.tagBits |= 0x100L;
            this.environment().typesBeingConnected.add(sourceType);
            boolean noProblems = this.connectSuperclass();
            noProblems &= this.connectSuperInterfaces();
            this.environment().typesBeingConnected.remove(sourceType);
            sourceType.tagBits |= 0x200L;
            sourceType.tagBits |= 0x40000L;
            if ((noProblems &= this.connectTypeVariables(this.referenceContext.typeParameters, false)) && sourceType.isHierarchyInconsistent()) {
                this.problemReporter().hierarchyHasProblems(sourceType);
            }
        }
        this.connectMemberTypes();
        LookupEnvironment env = this.environment();
        try {
            try {
                env.missingClassFileLocation = this.referenceContext;
                this.checkForInheritedMemberTypes(sourceType);
            }
            catch (AbortCompilation e) {
                e.updateContext(this.referenceContext, this.referenceCompilationUnit().compilationResult);
                throw e;
            }
        }
        finally {
            env.missingClassFileLocation = null;
        }
    }

    private void connectTypeHierarchyWithoutMembers() {
        if (this.parent instanceof CompilationUnitScope) {
            if (((CompilationUnitScope)this.parent).imports == null) {
                ((CompilationUnitScope)this.parent).checkAndSetImports();
            }
        } else if (this.parent instanceof ClassScope) {
            ((ClassScope)this.parent).connectTypeHierarchyWithoutMembers();
        }
        SourceTypeBinding sourceType = this.referenceContext.binding;
        if ((sourceType.tagBits & 0x100L) != 0L) {
            return;
        }
        sourceType.tagBits |= 0x100L;
        this.environment().typesBeingConnected.add(sourceType);
        boolean noProblems = this.connectSuperclass();
        noProblems &= this.connectSuperInterfaces();
        this.environment().typesBeingConnected.remove(sourceType);
        sourceType.tagBits |= 0x200L;
        sourceType.tagBits |= 0x40000L;
        if ((noProblems &= this.connectTypeVariables(this.referenceContext.typeParameters, false)) && sourceType.isHierarchyInconsistent()) {
            this.problemReporter().hierarchyHasProblems(sourceType);
        }
    }

    public boolean detectHierarchyCycle(TypeBinding superType, TypeReference reference) {
        if (!(superType instanceof ReferenceBinding)) {
            return false;
        }
        if (reference == this.superTypeReference) {
            if (superType.isTypeVariable()) {
                return false;
            }
            if (superType.isParameterizedType()) {
                superType = ((ParameterizedTypeBinding)superType).genericType();
            }
            this.compilationUnitScope().recordSuperTypeReference(superType);
            return this.detectHierarchyCycle(this.referenceContext.binding, (ReferenceBinding)superType, reference);
        }
        if ((superType.tagBits & 0x100L) == 0L && superType instanceof SourceTypeBinding) {
            ((SourceTypeBinding)superType).scope.connectTypeHierarchyWithoutMembers();
        }
        return false;
    }

    private boolean detectHierarchyCycle(SourceTypeBinding sourceType, ReferenceBinding superType, TypeReference reference) {
        if (superType.isRawType()) {
            superType = ((RawTypeBinding)superType).genericType();
        }
        if (sourceType == superType) {
            this.problemReporter().hierarchyCircularity(sourceType, superType, reference);
            sourceType.tagBits |= 0x20000L;
            return true;
        }
        if (superType.isMemberType()) {
            ReferenceBinding current = superType.enclosingType();
            do {
                if (!current.isHierarchyBeingActivelyConnected() || current != sourceType) continue;
                this.problemReporter().hierarchyCircularity(sourceType, current, reference);
                sourceType.tagBits |= 0x20000L;
                current.tagBits |= 0x20000L;
                return true;
            } while ((current = current.enclosingType()) != null);
        }
        if (superType.isBinaryBinding()) {
            ReferenceBinding[] itsInterfaces;
            boolean hasCycle = false;
            ReferenceBinding parentType = superType.superclass();
            if (parentType != null) {
                if (sourceType == parentType) {
                    this.problemReporter().hierarchyCircularity(sourceType, superType, reference);
                    sourceType.tagBits |= 0x20000L;
                    superType.tagBits |= 0x20000L;
                    return true;
                }
                if (parentType.isParameterizedType()) {
                    parentType = ((ParameterizedTypeBinding)parentType).genericType();
                }
                hasCycle |= this.detectHierarchyCycle(sourceType, parentType, reference);
                if ((parentType.tagBits & 0x20000L) != 0L) {
                    sourceType.tagBits |= 0x20000L;
                    parentType.tagBits |= 0x20000L;
                }
            }
            if ((itsInterfaces = superType.superInterfaces()) != null && itsInterfaces != Binding.NO_SUPERINTERFACES) {
                int i = 0;
                int length = itsInterfaces.length;
                while (i < length) {
                    ReferenceBinding anInterface = itsInterfaces[i];
                    if (sourceType == anInterface) {
                        this.problemReporter().hierarchyCircularity(sourceType, superType, reference);
                        sourceType.tagBits |= 0x20000L;
                        superType.tagBits |= 0x20000L;
                        return true;
                    }
                    if (anInterface.isParameterizedType()) {
                        anInterface = ((ParameterizedTypeBinding)anInterface).genericType();
                    }
                    hasCycle |= this.detectHierarchyCycle(sourceType, anInterface, reference);
                    if ((anInterface.tagBits & 0x20000L) != 0L) {
                        sourceType.tagBits |= 0x20000L;
                        superType.tagBits |= 0x20000L;
                    }
                    ++i;
                }
            }
            return hasCycle;
        }
        if (superType.isHierarchyBeingActivelyConnected()) {
            TypeReference ref = ((SourceTypeBinding)superType).scope.superTypeReference;
            if (ref != null && ref.resolvedType != null && ((ReferenceBinding)ref.resolvedType).isHierarchyBeingActivelyConnected()) {
                this.problemReporter().hierarchyCircularity(sourceType, superType, reference);
                sourceType.tagBits |= 0x20000L;
                superType.tagBits |= 0x20000L;
                return true;
            }
            if (ref != null && ref.resolvedType == null) {
                char[] referredName = ref.getLastToken();
                Iterator iter = this.environment().typesBeingConnected.iterator();
                while (iter.hasNext()) {
                    SourceTypeBinding type = (SourceTypeBinding)iter.next();
                    if (!CharOperation.equals(referredName, type.sourceName())) continue;
                    this.problemReporter().hierarchyCircularity(sourceType, superType, reference);
                    sourceType.tagBits |= 0x20000L;
                    superType.tagBits |= 0x20000L;
                    return true;
                }
            }
        }
        if ((superType.tagBits & 0x100L) == 0L) {
            ((SourceTypeBinding)superType).scope.connectTypeHierarchyWithoutMembers();
        }
        if ((superType.tagBits & 0x20000L) != 0L) {
            sourceType.tagBits |= 0x20000L;
        }
        return false;
    }

    private ReferenceBinding findSupertype(TypeReference typeReference) {
        CompilationUnitScope unitScope = this.compilationUnitScope();
        LookupEnvironment env = unitScope.environment;
        try {
            ReferenceBinding superType;
            env.missingClassFileLocation = typeReference;
            typeReference.aboutToResolve(this);
            unitScope.recordQualifiedReference(typeReference.getTypeName());
            this.superTypeReference = typeReference;
            ReferenceBinding referenceBinding = superType = (ReferenceBinding)typeReference.resolveSuperType(this);
            return referenceBinding;
        }
        catch (AbortCompilation e) {
            SourceTypeBinding sourceType = this.referenceContext.binding;
            if (sourceType.superInterfaces == null) {
                sourceType.superInterfaces = Binding.NO_SUPERINTERFACES;
            }
            e.updateContext(typeReference, this.referenceCompilationUnit().compilationResult);
            throw e;
        }
        finally {
            env.missingClassFileLocation = null;
            this.superTypeReference = null;
        }
    }

    public ProblemReporter problemReporter() {
        MethodScope outerMethodScope = this.outerMostMethodScope();
        if (outerMethodScope == null) {
            ProblemReporter problemReporter = this.referenceCompilationUnit().problemReporter;
            problemReporter.referenceContext = this.referenceContext;
            return problemReporter;
        }
        return outerMethodScope.problemReporter();
    }

    public TypeDeclaration referenceType() {
        return this.referenceContext;
    }

    public String toString() {
        if (this.referenceContext != null) {
            return "--- Class Scope ---\n\n" + this.referenceContext.binding.toString();
        }
        return "--- Class Scope ---\n\n Binding not initialized";
    }
}

