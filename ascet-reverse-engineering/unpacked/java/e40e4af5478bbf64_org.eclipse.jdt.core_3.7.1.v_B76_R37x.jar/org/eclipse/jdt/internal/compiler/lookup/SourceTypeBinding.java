/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationHolder;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;

public class SourceTypeBinding
extends ReferenceBinding {
    public ReferenceBinding superclass;
    public ReferenceBinding[] superInterfaces;
    private FieldBinding[] fields;
    private MethodBinding[] methods;
    public ReferenceBinding[] memberTypes;
    public TypeVariableBinding[] typeVariables;
    public ClassScope scope;
    private static final int METHOD_EMUL = 0;
    private static final int FIELD_EMUL = 1;
    private static final int CLASS_LITERAL_EMUL = 2;
    private static final int MAX_SYNTHETICS = 3;
    HashMap[] synthetics;
    char[] genericReferenceTypeSignature;
    private SimpleLookupTable storedAnnotations = null;

    public SourceTypeBinding(char[][] compoundName, PackageBinding fPackage, ClassScope scope) {
        this.compoundName = compoundName;
        this.fPackage = fPackage;
        this.fileName = scope.referenceCompilationUnit().getFileName();
        this.modifiers = scope.referenceContext.modifiers;
        this.sourceName = scope.referenceContext.name;
        this.scope = scope;
        this.fields = Binding.UNINITIALIZED_FIELDS;
        this.methods = Binding.UNINITIALIZED_METHODS;
        this.computeId();
    }

    private void addDefaultAbstractMethods() {
        if ((this.tagBits & 0x400L) != 0L) {
            return;
        }
        this.tagBits |= 0x400L;
        if (this.isClass() && this.isAbstract()) {
            if (this.scope.compilerOptions().targetJDK >= 0x2E0000L) {
                return;
            }
            ReferenceBinding[] itsInterfaces = this.superInterfaces();
            if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                MethodBinding[] defaultAbstracts = null;
                int defaultAbstractsCount = 0;
                ReferenceBinding[] interfacesToVisit = itsInterfaces;
                int nextPosition = interfacesToVisit.length;
                int i = 0;
                while (i < nextPosition) {
                    ReferenceBinding superType = interfacesToVisit[i];
                    if (superType.isValidBinding()) {
                        MethodBinding[] superMethods = superType.methods();
                        int m = superMethods.length;
                        block1: while (--m >= 0) {
                            MethodBinding method = superMethods[m];
                            if (this.implementsMethod(method)) continue;
                            if (defaultAbstractsCount == 0) {
                                defaultAbstracts = new MethodBinding[5];
                            } else {
                                int k = 0;
                                while (k < defaultAbstractsCount) {
                                    MethodBinding alreadyAdded = defaultAbstracts[k];
                                    if (CharOperation.equals(alreadyAdded.selector, method.selector) && alreadyAdded.areParametersEqual(method)) continue block1;
                                    ++k;
                                }
                            }
                            MethodBinding defaultAbstract = new MethodBinding(method.modifiers | 0x80000 | 0x1000, method.selector, method.returnType, method.parameters, method.thrownExceptions, this);
                            if (defaultAbstractsCount == defaultAbstracts.length) {
                                MethodBinding[] methodBindingArray = defaultAbstracts;
                                defaultAbstracts = new MethodBinding[2 * defaultAbstractsCount];
                                System.arraycopy(methodBindingArray, 0, defaultAbstracts, 0, defaultAbstractsCount);
                            }
                            defaultAbstracts[defaultAbstractsCount++] = defaultAbstract;
                        }
                        itsInterfaces = superType.superInterfaces();
                        if (itsInterfaces != Binding.NO_SUPERINTERFACES) {
                            int itsLength = itsInterfaces.length;
                            if (nextPosition + itsLength >= interfacesToVisit.length) {
                                ReferenceBinding[] referenceBindingArray = interfacesToVisit;
                                interfacesToVisit = new ReferenceBinding[nextPosition + itsLength + 5];
                                System.arraycopy(referenceBindingArray, 0, interfacesToVisit, 0, nextPosition);
                            }
                            int a = 0;
                            while (a < itsLength) {
                                block18: {
                                    ReferenceBinding next = itsInterfaces[a];
                                    int b = 0;
                                    while (b < nextPosition) {
                                        if (next != interfacesToVisit[b]) {
                                            ++b;
                                            continue;
                                        }
                                        break block18;
                                    }
                                    interfacesToVisit[nextPosition++] = next;
                                }
                                ++a;
                            }
                        }
                    }
                    ++i;
                }
                if (defaultAbstractsCount > 0) {
                    int length = this.methods.length;
                    this.methods = new MethodBinding[length + defaultAbstractsCount];
                    System.arraycopy(this.methods, 0, this.methods, 0, length);
                    System.arraycopy(defaultAbstracts, 0, this.methods, length, defaultAbstractsCount);
                    if ((length += defaultAbstractsCount) > 1) {
                        ReferenceBinding.sortMethods(this.methods, 0, length);
                    }
                }
            }
        }
    }

    public FieldBinding addSyntheticFieldForInnerclass(LocalVariableBinding actualOuterLocalVariable) {
        boolean needRecheck;
        FieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[1] == null) {
            this.synthetics[1] = new HashMap(5);
        }
        if ((synthField = (FieldBinding)this.synthetics[1].get(actualOuterLocalVariable)) == null) {
            synthField = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_OUTER_LOCAL_PREFIX, actualOuterLocalVariable.name), actualOuterLocalVariable.type, 4114, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put(actualOuterLocalVariable, synthField);
        }
        int index = 1;
        block0: do {
            needRecheck = false;
            FieldBinding existingField = this.getField(synthField.name, true);
            if (existingField == null) continue;
            TypeDeclaration typeDecl = this.scope.referenceContext;
            FieldDeclaration[] fieldDeclarations = typeDecl.fields;
            int max = fieldDeclarations == null ? 0 : fieldDeclarations.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = fieldDeclarations[i];
                if (fieldDecl.binding == existingField) {
                    synthField.name = CharOperation.concat(TypeConstants.SYNTHETIC_OUTER_LOCAL_PREFIX, actualOuterLocalVariable.name, ("$" + String.valueOf(index++)).toCharArray());
                    needRecheck = true;
                    continue block0;
                }
                ++i;
            }
        } while (needRecheck);
        return synthField;
    }

    public FieldBinding addSyntheticFieldForInnerclass(ReferenceBinding enclosingType) {
        boolean needRecheck;
        FieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[1] == null) {
            this.synthetics[1] = new HashMap(5);
        }
        if ((synthField = (FieldBinding)this.synthetics[1].get(enclosingType)) == null) {
            synthField = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, String.valueOf(enclosingType.depth()).toCharArray()), enclosingType, 4112, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put(enclosingType, synthField);
        }
        block0: do {
            needRecheck = false;
            FieldBinding existingField = this.getField(synthField.name, true);
            if (existingField == null) continue;
            TypeDeclaration typeDecl = this.scope.referenceContext;
            FieldDeclaration[] fieldDeclarations = typeDecl.fields;
            int max = fieldDeclarations == null ? 0 : fieldDeclarations.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = fieldDeclarations[i];
                if (fieldDecl.binding == existingField) {
                    if (this.scope.compilerOptions().complianceLevel >= 0x310000L) {
                        synthField.name = CharOperation.concat(synthField.name, "$".toCharArray());
                        needRecheck = true;
                        continue block0;
                    }
                    this.scope.problemReporter().duplicateFieldInType(this, fieldDecl);
                    continue block0;
                }
                ++i;
            }
        } while (needRecheck);
        return synthField;
    }

    public FieldBinding addSyntheticFieldForClassLiteral(TypeBinding targetType, BlockScope blockScope) {
        FieldBinding existingField;
        FieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[2] == null) {
            this.synthetics[2] = new HashMap(5);
        }
        if ((synthField = (FieldBinding)this.synthetics[2].get(targetType)) == null) {
            synthField = new SyntheticFieldBinding(CharOperation.concat(TypeConstants.SYNTHETIC_CLASS, String.valueOf(this.synthetics[2].size()).toCharArray()), blockScope.getJavaLangClass(), 4104, this, Constant.NotAConstant, this.synthetics[2].size());
            this.synthetics[2].put(targetType, synthField);
        }
        if ((existingField = this.getField(synthField.name, true)) != null) {
            TypeDeclaration typeDecl = blockScope.referenceType();
            FieldDeclaration[] typeDeclarationFields = typeDecl.fields;
            int max = typeDeclarationFields == null ? 0 : typeDeclarationFields.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = typeDeclarationFields[i];
                if (fieldDecl.binding == existingField) {
                    blockScope.problemReporter().duplicateFieldInType(this, fieldDecl);
                    break;
                }
                ++i;
            }
        }
        return synthField;
    }

    public FieldBinding addSyntheticFieldForAssert(BlockScope blockScope) {
        boolean needRecheck;
        FieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[1] == null) {
            this.synthetics[1] = new HashMap(5);
        }
        if ((synthField = (FieldBinding)this.synthetics[1].get("assertionEmulation")) == null) {
            synthField = new SyntheticFieldBinding(TypeConstants.SYNTHETIC_ASSERT_DISABLED, TypeBinding.BOOLEAN, 4120, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put("assertionEmulation", synthField);
        }
        int index = 0;
        block0: do {
            needRecheck = false;
            FieldBinding existingField = this.getField(synthField.name, true);
            if (existingField == null) continue;
            TypeDeclaration typeDecl = this.scope.referenceContext;
            int max = typeDecl.fields == null ? 0 : typeDecl.fields.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = typeDecl.fields[i];
                if (fieldDecl.binding == existingField) {
                    synthField.name = CharOperation.concat(TypeConstants.SYNTHETIC_ASSERT_DISABLED, ("_" + String.valueOf(index++)).toCharArray());
                    needRecheck = true;
                    continue block0;
                }
                ++i;
            }
        } while (needRecheck);
        return synthField;
    }

    public FieldBinding addSyntheticFieldForEnumValues() {
        boolean needRecheck;
        FieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[1] == null) {
            this.synthetics[1] = new HashMap(5);
        }
        if ((synthField = (FieldBinding)this.synthetics[1].get("enumConstantValues")) == null) {
            synthField = new SyntheticFieldBinding(TypeConstants.SYNTHETIC_ENUM_VALUES, this.scope.createArrayType(this, 1), 4122, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put("enumConstantValues", synthField);
        }
        int index = 0;
        block0: do {
            needRecheck = false;
            FieldBinding existingField = this.getField(synthField.name, true);
            if (existingField == null) continue;
            TypeDeclaration typeDecl = this.scope.referenceContext;
            FieldDeclaration[] fieldDeclarations = typeDecl.fields;
            int max = fieldDeclarations == null ? 0 : fieldDeclarations.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = fieldDeclarations[i];
                if (fieldDecl.binding == existingField) {
                    synthField.name = CharOperation.concat(TypeConstants.SYNTHETIC_ENUM_VALUES, ("_" + String.valueOf(index++)).toCharArray());
                    needRecheck = true;
                    continue block0;
                }
                ++i;
            }
        } while (needRecheck);
        return synthField;
    }

    public SyntheticMethodBinding addSyntheticMethod(FieldBinding targetField, boolean isReadAccess, boolean isSuperAccess) {
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        }
        SyntheticMethodBinding accessMethod = null;
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(targetField);
        if (accessors == null) {
            accessMethod = new SyntheticMethodBinding(targetField, isReadAccess, isSuperAccess, (ReferenceBinding)this);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(targetField, accessors);
            accessors[isReadAccess ? 0 : 1] = accessMethod;
        } else {
            accessMethod = accessors[isReadAccess ? 0 : 1];
            if (accessMethod == null) {
                accessMethod = new SyntheticMethodBinding(targetField, isReadAccess, isSuperAccess, (ReferenceBinding)this);
                accessors[isReadAccess ? 0 : 1] = accessMethod;
            }
        }
        return accessMethod;
    }

    public SyntheticMethodBinding addSyntheticEnumMethod(char[] selector) {
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        }
        SyntheticMethodBinding accessMethod = null;
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(selector);
        if (accessors == null) {
            accessMethod = new SyntheticMethodBinding(this, selector);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(selector, accessors);
            accessors[0] = accessMethod;
        } else {
            accessMethod = accessors[0];
            if (accessMethod == null) {
                accessors[0] = accessMethod = new SyntheticMethodBinding(this, selector);
            }
        }
        return accessMethod;
    }

    public SyntheticFieldBinding addSyntheticFieldForSwitchEnum(char[] fieldName, String key) {
        boolean needRecheck;
        SyntheticFieldBinding synthField;
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[1] == null) {
            this.synthetics[1] = new HashMap(5);
        }
        if ((synthField = (SyntheticFieldBinding)this.synthetics[1].get(key)) == null) {
            synthField = new SyntheticFieldBinding(fieldName, this.scope.createArrayType(TypeBinding.INT, 1), 4106, this, Constant.NotAConstant, this.synthetics[1].size());
            this.synthetics[1].put(key, synthField);
        }
        int index = 0;
        block0: do {
            needRecheck = false;
            FieldBinding existingField = this.getField(synthField.name, true);
            if (existingField == null) continue;
            TypeDeclaration typeDecl = this.scope.referenceContext;
            FieldDeclaration[] fieldDeclarations = typeDecl.fields;
            int max = fieldDeclarations == null ? 0 : fieldDeclarations.length;
            int i = 0;
            while (i < max) {
                FieldDeclaration fieldDecl = fieldDeclarations[i];
                if (fieldDecl.binding == existingField) {
                    synthField.name = CharOperation.concat(fieldName, ("_" + String.valueOf(index++)).toCharArray());
                    needRecheck = true;
                    continue block0;
                }
                ++i;
            }
        } while (needRecheck);
        return synthField;
    }

    public SyntheticMethodBinding addSyntheticMethodForSwitchEnum(TypeBinding enumBinding) {
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        }
        SyntheticMethodBinding accessMethod = null;
        char[] selector = CharOperation.concat(TypeConstants.SYNTHETIC_SWITCH_ENUM_TABLE, enumBinding.constantPoolName());
        CharOperation.replace(selector, '/', '$');
        String key = new String(selector);
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(key);
        if (accessors == null) {
            SyntheticFieldBinding fieldBinding = this.addSyntheticFieldForSwitchEnum(selector, key);
            accessMethod = new SyntheticMethodBinding((FieldBinding)fieldBinding, this, enumBinding, selector);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(key, accessors);
            accessors[0] = accessMethod;
        } else {
            accessMethod = accessors[0];
            if (accessMethod == null) {
                SyntheticFieldBinding fieldBinding = this.addSyntheticFieldForSwitchEnum(selector, key);
                accessors[0] = accessMethod = new SyntheticMethodBinding((FieldBinding)fieldBinding, this, enumBinding, selector);
            }
        }
        return accessMethod;
    }

    public SyntheticMethodBinding addSyntheticMethodForEnumInitialization(int begin, int end) {
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        }
        SyntheticMethodBinding accessMethod = new SyntheticMethodBinding(this, begin, end);
        SyntheticMethodBinding[] accessors = new SyntheticMethodBinding[2];
        this.synthetics[0].put(accessMethod.selector, accessors);
        accessors[0] = accessMethod;
        return accessMethod;
    }

    public SyntheticMethodBinding addSyntheticMethod(MethodBinding targetMethod, boolean isSuperAccess) {
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        }
        SyntheticMethodBinding accessMethod = null;
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(targetMethod);
        if (accessors == null) {
            accessMethod = new SyntheticMethodBinding(targetMethod, isSuperAccess, (ReferenceBinding)this);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(targetMethod, accessors);
            accessors[isSuperAccess ? 0 : 1] = accessMethod;
        } else {
            accessMethod = accessors[isSuperAccess ? 0 : 1];
            if (accessMethod == null) {
                accessMethod = new SyntheticMethodBinding(targetMethod, isSuperAccess, (ReferenceBinding)this);
                accessors[isSuperAccess ? 0 : 1] = accessMethod;
            }
        }
        if (targetMethod.declaringClass.isStatic()) {
            if (targetMethod.isConstructor() && targetMethod.parameters.length >= 254 || targetMethod.parameters.length >= 255) {
                this.scope.problemReporter().tooManyParametersForSyntheticMethod(targetMethod.sourceMethod());
            }
        } else if (targetMethod.isConstructor() && targetMethod.parameters.length >= 253 || targetMethod.parameters.length >= 254) {
            this.scope.problemReporter().tooManyParametersForSyntheticMethod(targetMethod.sourceMethod());
        }
        return accessMethod;
    }

    public SyntheticMethodBinding addSyntheticBridgeMethod(MethodBinding inheritedMethodToBridge, MethodBinding targetMethod) {
        if (this.isInterface()) {
            return null;
        }
        if (inheritedMethodToBridge.returnType.erasure() == targetMethod.returnType.erasure() && inheritedMethodToBridge.areParameterErasuresEqual(targetMethod)) {
            return null;
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        } else {
            Iterator synthMethods = this.synthetics[0].keySet().iterator();
            while (synthMethods.hasNext()) {
                Object synthetic = synthMethods.next();
                if (!(synthetic instanceof MethodBinding)) continue;
                MethodBinding method = (MethodBinding)synthetic;
                if (!CharOperation.equals(inheritedMethodToBridge.selector, method.selector) || inheritedMethodToBridge.returnType.erasure() != method.returnType.erasure() || !inheritedMethodToBridge.areParameterErasuresEqual(method)) continue;
                return null;
            }
        }
        SyntheticMethodBinding accessMethod = null;
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(inheritedMethodToBridge);
        if (accessors == null) {
            accessMethod = new SyntheticMethodBinding(inheritedMethodToBridge, targetMethod, this);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(inheritedMethodToBridge, accessors);
            accessors[1] = accessMethod;
        } else {
            accessMethod = accessors[1];
            if (accessMethod == null) {
                accessors[1] = accessMethod = new SyntheticMethodBinding(inheritedMethodToBridge, targetMethod, this);
            }
        }
        return accessMethod;
    }

    public SyntheticMethodBinding addSyntheticBridgeMethod(MethodBinding inheritedMethodToBridge) {
        if (this.scope.compilerOptions().complianceLevel <= 0x310000L) {
            return null;
        }
        if (this.isInterface()) {
            return null;
        }
        if (inheritedMethodToBridge.isAbstract() || inheritedMethodToBridge.isFinal() || inheritedMethodToBridge.isStatic()) {
            return null;
        }
        if (this.synthetics == null) {
            this.synthetics = new HashMap[3];
        }
        if (this.synthetics[0] == null) {
            this.synthetics[0] = new HashMap(5);
        } else {
            Iterator synthMethods = this.synthetics[0].keySet().iterator();
            while (synthMethods.hasNext()) {
                Object synthetic = synthMethods.next();
                if (!(synthetic instanceof MethodBinding)) continue;
                MethodBinding method = (MethodBinding)synthetic;
                if (!CharOperation.equals(inheritedMethodToBridge.selector, method.selector) || inheritedMethodToBridge.returnType.erasure() != method.returnType.erasure() || !inheritedMethodToBridge.areParameterErasuresEqual(method)) continue;
                return null;
            }
        }
        SyntheticMethodBinding accessMethod = null;
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(inheritedMethodToBridge);
        if (accessors == null) {
            accessMethod = new SyntheticMethodBinding(inheritedMethodToBridge, this);
            accessors = new SyntheticMethodBinding[2];
            this.synthetics[0].put(inheritedMethodToBridge, accessors);
            accessors[0] = accessMethod;
        } else {
            accessMethod = accessors[0];
            if (accessMethod == null) {
                accessors[0] = accessMethod = new SyntheticMethodBinding(inheritedMethodToBridge, this);
            }
        }
        return accessMethod;
    }

    boolean areFieldsInitialized() {
        return this.fields != Binding.UNINITIALIZED_FIELDS;
    }

    boolean areMethodsInitialized() {
        return this.methods != Binding.UNINITIALIZED_METHODS;
    }

    public int kind() {
        if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            return 2052;
        }
        return 4;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        char[] uniqueKey = super.computeUniqueKey(isLeaf);
        if (uniqueKey.length == 2) {
            return uniqueKey;
        }
        if (Util.isClassFileName(this.fileName)) {
            return uniqueKey;
        }
        int end = CharOperation.lastIndexOf('.', this.fileName);
        if (end != -1) {
            char[] topLevelType;
            int start = CharOperation.lastIndexOf('/', this.fileName) + 1;
            char[] mainTypeName = CharOperation.subarray(this.fileName, start, end);
            start = CharOperation.lastIndexOf('/', uniqueKey) + 1;
            if (start == 0) {
                start = 1;
            }
            if ((end = this.isMemberType() ? CharOperation.indexOf('$', uniqueKey, start) : -1) == -1) {
                end = CharOperation.indexOf('<', uniqueKey, start);
            }
            if (end == -1) {
                end = CharOperation.indexOf(';', uniqueKey, start);
            }
            if (!CharOperation.equals(topLevelType = CharOperation.subarray(uniqueKey, start, end), mainTypeName)) {
                StringBuffer buffer = new StringBuffer();
                buffer.append(uniqueKey, 0, start);
                buffer.append(mainTypeName);
                buffer.append('~');
                buffer.append(topLevelType);
                buffer.append(uniqueKey, end, uniqueKey.length - end);
                int length = buffer.length();
                uniqueKey = new char[length];
                buffer.getChars(0, length, uniqueKey, 0);
                return uniqueKey;
            }
        }
        return uniqueKey;
    }

    void faultInTypesForFieldsAndMethods() {
        this.getAnnotationTagBits();
        ReferenceBinding enclosingType = this.enclosingType();
        if (enclosingType != null && enclosingType.isViewedAsDeprecated() && !this.isDeprecated()) {
            this.modifiers |= 0x200000;
        }
        this.fields();
        this.methods();
        int i = 0;
        int length = this.memberTypes.length;
        while (i < length) {
            ((SourceTypeBinding)this.memberTypes[i]).faultInTypesForFieldsAndMethods();
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    public FieldBinding[] fields() {
        block12: {
            if ((this.tagBits & 8192L) != 0L) {
                return this.fields;
            }
            failed = 0;
            resolvedFields = this.fields;
            try {
                if ((this.tagBits & 4096L) == 0L) {
                    length = this.fields.length;
                    if (length > 1) {
                        ReferenceBinding.sortFields(this.fields, 0, length);
                    }
                    this.tagBits |= 4096L;
                }
                i = 0;
                length = this.fields.length;
                while (i < length) {
                    if (this.resolveTypeFor(this.fields[i]) == null) {
                        if (resolvedFields == this.fields) {
                            resolvedFields = new FieldBinding[length];
                            System.arraycopy(this.fields, 0, resolvedFields, 0, length);
                        }
                        resolvedFields[i] = null;
                        ++failed;
                    }
                    ++i;
                }
            }
            finally {
                if (failed <= 0) break block12;
                newSize = resolvedFields.length - failed;
                if (newSize == 0) {
                    this.fields = Binding.NO_FIELDS;
                    return Binding.NO_FIELDS;
                }
                newFields = new FieldBinding[newSize];
                i = 0;
                j = 0;
                length = resolvedFields.length;
                ** while (i < length)
            }
lbl-1000:
            // 1 sources

            {
                if (resolvedFields[i] != null) {
                    newFields[j++] = resolvedFields[i];
                }
                ++i;
                continue;
            }
lbl38:
            // 1 sources

            this.fields = newFields;
        }
        this.tagBits |= 8192L;
        return this.fields;
    }

    public char[] genericTypeSignature() {
        if (this.genericReferenceTypeSignature == null) {
            this.genericReferenceTypeSignature = this.computeGenericTypeSignature(this.typeVariables);
        }
        return this.genericReferenceTypeSignature;
    }

    public char[] genericSignature() {
        int length;
        int i;
        StringBuffer sig = null;
        if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            sig = new StringBuffer(10);
            sig.append('<');
            i = 0;
            length = this.typeVariables.length;
            while (i < length) {
                sig.append(this.typeVariables[i].genericSignature());
                ++i;
            }
            sig.append('>');
        } else {
            block9: {
                if (this.superclass == null || !this.superclass.isParameterizedType()) {
                    i = 0;
                    length = this.superInterfaces.length;
                    while (i < length) {
                        if (!this.superInterfaces[i].isParameterizedType()) {
                            ++i;
                            continue;
                        }
                        break block9;
                    }
                    return null;
                }
            }
            sig = new StringBuffer(10);
        }
        if (this.superclass != null) {
            sig.append(this.superclass.genericTypeSignature());
        } else {
            sig.append(this.scope.getJavaLangObject().genericTypeSignature());
        }
        i = 0;
        length = this.superInterfaces.length;
        while (i < length) {
            sig.append(this.superInterfaces[i].genericTypeSignature());
            ++i;
        }
        return sig.toString().toCharArray();
    }

    public long getAnnotationTagBits() {
        if ((this.tagBits & 0x200000000L) == 0L && this.scope != null) {
            TypeDeclaration typeDecl = this.scope.referenceContext;
            boolean old = typeDecl.staticInitializerScope.insideTypeAnnotation;
            try {
                typeDecl.staticInitializerScope.insideTypeAnnotation = true;
                ASTNode.resolveAnnotations(typeDecl.staticInitializerScope, typeDecl.annotations, this);
            }
            finally {
                typeDecl.staticInitializerScope.insideTypeAnnotation = old;
            }
            if ((this.tagBits & 0x400000000000L) != 0L) {
                this.modifiers |= 0x100000;
            }
        }
        return this.tagBits;
    }

    public MethodBinding[] getDefaultAbstractMethods() {
        int count = 0;
        int i = this.methods.length;
        while (--i >= 0) {
            if (!this.methods[i].isDefaultAbstract()) continue;
            ++count;
        }
        if (count == 0) {
            return Binding.NO_METHODS;
        }
        MethodBinding[] result = new MethodBinding[count];
        count = 0;
        int i2 = this.methods.length;
        while (--i2 >= 0) {
            if (!this.methods[i2].isDefaultAbstract()) continue;
            result[count++] = this.methods[i2];
        }
        return result;
    }

    public MethodBinding getExactConstructor(TypeBinding[] argumentTypes) {
        block15: {
            long range;
            int argCount;
            block14: {
                argCount = argumentTypes.length;
                if ((this.tagBits & 0x8000L) == 0L) break block14;
                long range2 = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
                if (range2 < 0L) break block15;
                int imethod = (int)range2;
                int end = (int)(range2 >> 32);
                while (imethod <= end) {
                    block12: {
                        MethodBinding method = this.methods[imethod];
                        if (method.parameters.length == argCount) {
                            TypeBinding[] toMatch = method.parameters;
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block12;
                            }
                            return method;
                        }
                    }
                    ++imethod;
                }
                break block15;
            }
            if ((this.tagBits & 0x4000L) == 0L) {
                int length = this.methods.length;
                if (length > 1) {
                    ReferenceBinding.sortMethods(this.methods, 0, length);
                }
                this.tagBits |= 0x4000L;
            }
            if ((range = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods)) >= 0L) {
                int imethod = (int)range;
                int end = (int)(range >> 32);
                while (imethod <= end) {
                    block13: {
                        MethodBinding method = this.methods[imethod];
                        if (this.resolveTypesFor(method) == null || method.returnType == null) {
                            this.methods();
                            return this.getExactConstructor(argumentTypes);
                        }
                        if (method.parameters.length == argCount) {
                            TypeBinding[] toMatch = method.parameters;
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block13;
                            }
                            return method;
                        }
                    }
                    ++imethod;
                }
            }
        }
        return null;
    }

    public MethodBinding getExactMethod(char[] selector, TypeBinding[] argumentTypes, CompilationUnitScope refScope) {
        int argCount = argumentTypes.length;
        boolean foundNothing = true;
        if ((this.tagBits & 0x8000L) != 0L) {
            long range = ReferenceBinding.binarySearch(selector, this.methods);
            if (range >= 0L) {
                int imethod = (int)range;
                int end = (int)(range >> 32);
                while (imethod <= end) {
                    block26: {
                        MethodBinding method = this.methods[imethod];
                        foundNothing = false;
                        if (method.parameters.length == argCount) {
                            TypeBinding[] toMatch = method.parameters;
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block26;
                            }
                            return method;
                        }
                    }
                    ++imethod;
                }
            }
        } else {
            long range;
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
                int imethod = start;
                while (imethod <= end) {
                    MethodBinding method = this.methods[imethod];
                    if (this.resolveTypesFor(method) == null || method.returnType == null) {
                        this.methods();
                        return this.getExactMethod(selector, argumentTypes, refScope);
                    }
                    ++imethod;
                }
                boolean isSource15 = this.scope.compilerOptions().sourceLevel >= 0x310000L;
                int i = start;
                while (i <= end) {
                    MethodBinding method1 = this.methods[i];
                    int j = end;
                    while (j > i) {
                        boolean paramsMatch;
                        MethodBinding method2 = this.methods[j];
                        boolean bl = paramsMatch = isSource15 ? method1.areParameterErasuresEqual(method2) : method1.areParametersEqual(method2);
                        if (paramsMatch) {
                            this.methods();
                            return this.getExactMethod(selector, argumentTypes, refScope);
                        }
                        --j;
                    }
                    ++i;
                }
                int imethod2 = start;
                while (imethod2 <= end) {
                    block27: {
                        MethodBinding method = this.methods[imethod2];
                        TypeBinding[] toMatch = method.parameters;
                        if (toMatch.length == argCount) {
                            int iarg = 0;
                            while (iarg < argCount) {
                                if (toMatch[iarg] == argumentTypes[iarg]) {
                                    ++iarg;
                                    continue;
                                }
                                break block27;
                            }
                            return method;
                        }
                    }
                    ++imethod2;
                }
            }
        }
        if (foundNothing) {
            if (this.isInterface()) {
                if (this.superInterfaces.length == 1) {
                    if (refScope != null) {
                        refScope.recordTypeReference(this.superInterfaces[0]);
                    }
                    return this.superInterfaces[0].getExactMethod(selector, argumentTypes, refScope);
                }
            } else if (this.superclass != null) {
                if (refScope != null) {
                    refScope.recordTypeReference(this.superclass);
                }
                return this.superclass.getExactMethod(selector, argumentTypes, refScope);
            }
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public FieldBinding getField(char[] fieldName, boolean needResolve) {
        if ((this.tagBits & 8192L) != 0L) {
            return ReferenceBinding.binarySearch(fieldName, this.fields);
        }
        if ((this.tagBits & 4096L) == 0L) {
            length = this.fields.length;
            if (length > 1) {
                ReferenceBinding.sortFields(this.fields, 0, length);
            }
            this.tagBits |= 4096L;
        }
        if ((field = ReferenceBinding.binarySearch(fieldName, this.fields)) == null) return null;
        result = null;
        try {
            var6_6 = result = this.resolveTypeFor(field);
            return var6_6;
        }
        finally {
            if (result != null) return var6_6;
            newSize = this.fields.length - 1;
            if (newSize == 0) {
                this.fields = Binding.NO_FIELDS;
                return var6_6;
            }
            newFields = new FieldBinding[newSize];
            index = 0;
            i = 0;
            length = this.fields.length;
            ** while (i < length)
        }
lbl-1000:
        // 1 sources

        {
            f = this.fields[i];
            if (f != field) {
                newFields[index++] = f;
            }
            ++i;
            continue;
        }
lbl29:
        // 1 sources

        this.fields = newFields;
        return var6_6;
    }

    public MethodBinding[] getMethods(char[] selector) {
        MethodBinding method;
        int end;
        int start;
        long range;
        if ((this.tagBits & 0x8000L) != 0L) {
            long range2 = ReferenceBinding.binarySearch(selector, this.methods);
            if (range2 >= 0L) {
                int start2 = (int)range2;
                int end2 = (int)(range2 >> 32);
                int length = end2 - start2 + 1;
                MethodBinding[] result = new MethodBinding[length];
                System.arraycopy(this.methods, start2, result, 0, length);
                return result;
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
            start = (int)range;
            end = (int)(range >> 32);
            int i = start;
            while (i <= end) {
                method = this.methods[i];
                if (this.resolveTypesFor(method) == null || method.returnType == null) {
                    this.methods();
                    return this.getMethods(selector);
                }
                ++i;
            }
        } else {
            return Binding.NO_METHODS;
        }
        int length = end - start + 1;
        MethodBinding[] result = new MethodBinding[length];
        System.arraycopy(this.methods, start, result, 0, length);
        boolean isSource15 = this.scope.compilerOptions().sourceLevel >= 0x310000L;
        int i = 0;
        length = result.length - 1;
        while (i < length) {
            method = result[i];
            int j = length;
            while (j > i) {
                boolean paramsMatch;
                boolean bl = paramsMatch = isSource15 ? method.areParameterErasuresEqual(result[j]) : method.areParametersEqual(result[j]);
                if (paramsMatch) {
                    this.methods();
                    return this.getMethods(selector);
                }
                --j;
            }
            ++i;
        }
        return result;
    }

    public FieldBinding getSyntheticField(LocalVariableBinding actualOuterLocalVariable) {
        if (this.synthetics == null || this.synthetics[1] == null) {
            return null;
        }
        return (FieldBinding)this.synthetics[1].get(actualOuterLocalVariable);
    }

    public FieldBinding getSyntheticField(ReferenceBinding targetEnclosingType, boolean onlyExactMatch) {
        if (this.synthetics == null || this.synthetics[1] == null) {
            return null;
        }
        FieldBinding field = (FieldBinding)this.synthetics[1].get(targetEnclosingType);
        if (field != null) {
            return field;
        }
        if (!onlyExactMatch) {
            Iterator accessFields = this.synthetics[1].values().iterator();
            while (accessFields.hasNext()) {
                field = (FieldBinding)accessFields.next();
                if (!CharOperation.prefixEquals(TypeConstants.SYNTHETIC_ENCLOSING_INSTANCE_PREFIX, field.name) || field.type.findSuperTypeOriginatingFrom(targetEnclosingType) == null) continue;
                return field;
            }
        }
        return null;
    }

    public SyntheticMethodBinding getSyntheticBridgeMethod(MethodBinding inheritedMethodToBridge) {
        if (this.synthetics == null) {
            return null;
        }
        if (this.synthetics[0] == null) {
            return null;
        }
        SyntheticMethodBinding[] accessors = (SyntheticMethodBinding[])this.synthetics[0].get(inheritedMethodToBridge);
        if (accessors == null) {
            return null;
        }
        return accessors[1];
    }

    public void initializeDeprecatedAnnotationTagBits() {
        if ((this.tagBits & 0x400000000L) == 0L) {
            TypeDeclaration typeDecl = this.scope.referenceContext;
            boolean old = typeDecl.staticInitializerScope.insideTypeAnnotation;
            try {
                typeDecl.staticInitializerScope.insideTypeAnnotation = true;
                ASTNode.resolveDeprecatedAnnotations(typeDecl.staticInitializerScope, typeDecl.annotations, this);
                this.tagBits |= 0x400000000L;
            }
            finally {
                typeDecl.staticInitializerScope.insideTypeAnnotation = old;
            }
            if ((this.tagBits & 0x400000000000L) != 0L) {
                this.modifiers |= 0x100000;
            }
        }
    }

    void initializeForStaticImports() {
        if (this.scope == null) {
            return;
        }
        if (this.superInterfaces == null) {
            this.scope.connectTypeHierarchy();
        }
        this.scope.buildFields();
        this.scope.buildMethods();
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
            case 260: {
                int otherLength;
                ReferenceBinding enclosing;
                if (!((otherType.tagBits & 0x40000000L) != 0L || this.isMemberType() && otherType.isMemberType())) {
                    return false;
                }
                ParameterizedTypeBinding otherParamType = (ParameterizedTypeBinding)otherType;
                if (this != otherParamType.genericType()) {
                    return false;
                }
                if (!this.isStatic() && (enclosing = this.enclosingType()) != null) {
                    ReferenceBinding otherEnclosing = otherParamType.enclosingType();
                    if (otherEnclosing == null) {
                        return false;
                    }
                    if ((otherEnclosing.tagBits & 0x40000000L) == 0L ? enclosing != otherEnclosing : !enclosing.isEquivalentTo(otherParamType.enclosingType())) {
                        return false;
                    }
                }
                int length = this.typeVariables == null ? 0 : this.typeVariables.length;
                TypeBinding[] otherArguments = otherParamType.arguments;
                int n = otherLength = otherArguments == null ? 0 : otherArguments.length;
                if (otherLength != length) {
                    return false;
                }
                int i = 0;
                while (i < length) {
                    if (!this.typeVariables[i].isTypeArgumentContainedBy(otherArguments[i])) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
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
        return (this.tagBits & 0x200L) != 0L;
    }

    public ReferenceBinding[] memberTypes() {
        return this.memberTypes;
    }

    public boolean hasMemberTypes() {
        return this.memberTypes.length > 0;
    }

    /*
     * Unable to fully structure code
     */
    public MethodBinding[] methods() {
        block46: {
            if ((this.tagBits & 32768L) != 0L) {
                return this.methods;
            }
            if ((this.tagBits & 16384L) == 0L) {
                length = this.methods.length;
                if (length > 1) {
                    ReferenceBinding.sortMethods(this.methods, 0, length);
                }
                this.tagBits |= 16384L;
            }
            failed = 0;
            resolvedMethods = this.methods;
            try {
                i = 0;
                length = this.methods.length;
                while (i < length) {
                    if (this.resolveTypesFor(this.methods[i]) == null) {
                        if (resolvedMethods == this.methods) {
                            resolvedMethods = new MethodBinding[length];
                            System.arraycopy(this.methods, 0, resolvedMethods, 0, length);
                        }
                        resolvedMethods[i] = null;
                        ++failed;
                    }
                    ++i;
                }
                complyTo15OrAbove = this.scope.compilerOptions().sourceLevel >= 0x310000L;
                compliance16 = this.scope.compilerOptions().complianceLevel == 0x320000L;
                i = 0;
                length = this.methods.length;
                while (i < length) {
                    block47: {
                        severity = 1;
                        method = resolvedMethods[i];
                        if (method == null) break block47;
                        selector = method.selector;
                        methodDecl = null;
                        j = i + 1;
                        while (j < length) {
                            block48: {
                                block50: {
                                    block49: {
                                        method2 = resolvedMethods[j];
                                        if (method2 == null) break block48;
                                        if (!CharOperation.equals(selector, method2.selector)) break;
                                        if (!complyTo15OrAbove) break block49;
                                        if (!method.areParameterErasuresEqual(method2)) break block48;
                                        if (compliance16 && method.returnType != null && method2.returnType != null && method.returnType.erasure() != method2.returnType.erasure()) {
                                            params1 = method.parameters;
                                            params2 = method2.parameters;
                                            pLength = params1.length;
                                            vars = method.typeVariables;
                                            vars2 = method2.typeVariables;
                                            equalTypeVars = vars == vars2;
                                            subMethod = method2;
                                            if (!equalTypeVars && (temp = method.computeSubstitutedMethod(method2, this.scope.environment())) != null) {
                                                equalTypeVars = true;
                                                subMethod = temp;
                                            }
                                            if (!(equalParams = method.areParametersEqual(subMethod)) || !equalTypeVars) {
                                                if (vars != Binding.NO_TYPE_VARIABLES && vars2 != Binding.NO_TYPE_VARIABLES) {
                                                    severity = 0;
                                                } else if (pLength > 0) {
                                                    index = pLength;
                                                    while (--index >= 0) {
                                                        if (params1[index] != params2[index].erasure()) break;
                                                        if (params1[index] != params2[index] || !((type = params1[index].leafComponentType()) instanceof SourceTypeBinding) || type.typeVariables() == Binding.NO_TYPE_VARIABLES) continue;
                                                        index = pLength;
                                                        break;
                                                    }
                                                    if (index >= 0 && index < pLength) {
                                                        index = pLength;
                                                        while (--index >= 0) {
                                                            if (params1[index].erasure() != params2[index]) break;
                                                        }
                                                    }
                                                    if (index >= 0) {
                                                        severity = 0;
                                                    }
                                                } else if (pLength != 0) {
                                                    severity = 0;
                                                }
                                            }
                                        }
                                        break block50;
                                    }
                                    if (!method.areParametersEqual(method2)) break block48;
                                }
                                isEnumSpecialMethod = this.isEnum() != false && (CharOperation.equals(selector, TypeConstants.VALUEOF) != false || CharOperation.equals(selector, TypeConstants.VALUES) != false);
                                v0 = removeMethod2 = severity == 1;
                                if (methodDecl == null && (methodDecl = method.sourceMethod()) != null && methodDecl.binding != null) {
                                    v1 = removeMethod = method.returnType == null && method2.returnType != null;
                                    if (isEnumSpecialMethod) {
                                        this.scope.problemReporter().duplicateEnumSpecialMethod(this, methodDecl);
                                        removeMethod = true;
                                    } else {
                                        this.scope.problemReporter().duplicateMethodInType(this, methodDecl, method.areParametersEqual(method2), severity);
                                    }
                                    if (removeMethod) {
                                        removeMethod2 = false;
                                        methodDecl.binding = null;
                                        if (resolvedMethods == this.methods) {
                                            resolvedMethods = new MethodBinding[length];
                                            System.arraycopy(this.methods, 0, resolvedMethods, 0, length);
                                        }
                                        resolvedMethods[i] = null;
                                        ++failed;
                                    }
                                }
                                if ((method2Decl = method2.sourceMethod()) != null && method2Decl.binding != null) {
                                    if (isEnumSpecialMethod) {
                                        this.scope.problemReporter().duplicateEnumSpecialMethod(this, method2Decl);
                                        removeMethod2 = true;
                                    } else {
                                        this.scope.problemReporter().duplicateMethodInType(this, method2Decl, method.areParametersEqual(method2), severity);
                                    }
                                    if (removeMethod2) {
                                        method2Decl.binding = null;
                                        if (resolvedMethods == this.methods) {
                                            resolvedMethods = new MethodBinding[length];
                                            System.arraycopy(this.methods, 0, resolvedMethods, 0, length);
                                        }
                                        resolvedMethods[j] = null;
                                        ++failed;
                                    }
                                }
                            }
                            ++j;
                        }
                        if (method.returnType == null && resolvedMethods[i] != null) {
                            methodDecl = method.sourceMethod();
                            if (methodDecl != null) {
                                methodDecl.binding = null;
                            }
                            if (resolvedMethods == this.methods) {
                                resolvedMethods = new MethodBinding[length];
                                System.arraycopy(this.methods, 0, resolvedMethods, 0, length);
                            }
                            resolvedMethods[i] = null;
                            ++failed;
                        }
                    }
                    ++i;
                }
            }
            finally {
                if (failed <= 0) break block46;
                newSize = resolvedMethods.length - failed;
                if (newSize == 0) {
                    this.methods = Binding.NO_METHODS;
                    break block46;
                }
                newMethods = new MethodBinding[newSize];
                i = 0;
                j = 0;
                length = resolvedMethods.length;
                ** while (i < length)
            }
lbl-1000:
            // 1 sources

            {
                if (resolvedMethods[i] != null) {
                    newMethods[j++] = resolvedMethods[i];
                }
                ++i;
                continue;
            }
lbl136:
            // 1 sources

            this.methods = newMethods;
        }
        this.addDefaultAbstractMethods();
        this.tagBits |= 32768L;
        return this.methods;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public FieldBinding resolveTypeFor(FieldBinding field) {
        FieldDeclaration[] fieldDecls;
        if ((field.modifiers & 0x2000000) == 0) {
            return field;
        }
        if (this.scope.compilerOptions().sourceLevel >= 0x310000L && (field.getAnnotationTagBits() & 0x400000000000L) != 0L) {
            field.modifiers |= 0x100000;
        }
        if (this.isViewedAsDeprecated() && !field.isDeprecated()) {
            field.modifiers |= 0x200000;
        }
        if (this.hasRestrictedAccess()) {
            field.modifiers |= 0x40000;
        }
        if ((fieldDecls = this.scope.referenceContext.fields) == null) {
            return null;
        }
        int n = fieldDecls.length;
        int length = n;
        int f = 0;
        while (f < length) {
            if (fieldDecls[f].binding == field) {
                MethodScope initializationScope = field.isStatic() ? this.scope.referenceContext.staticInitializerScope : this.scope.referenceContext.initializerScope;
                FieldBinding previousField = initializationScope.initializedField;
                try {
                    TypeBinding leafType;
                    TypeBinding fieldType;
                    initializationScope.initializedField = field;
                    FieldDeclaration fieldDecl = fieldDecls[f];
                    field.type = fieldType = fieldDecl.getKind() == 3 ? initializationScope.environment().convertToRawType(this, false) : fieldDecl.type.resolveType(initializationScope, true);
                    field.modifiers &= 0xFDFFFFFF;
                    if (fieldType == null) {
                        fieldDecl.binding = null;
                        return null;
                    }
                    if (fieldType == TypeBinding.VOID) {
                        this.scope.problemReporter().variableTypeCannotBeVoid(fieldDecl);
                        fieldDecl.binding = null;
                        return null;
                    }
                    if (fieldType.isArrayType() && ((ArrayBinding)fieldType).leafComponentType == TypeBinding.VOID) {
                        this.scope.problemReporter().variableTypeCannotBeVoidArray(fieldDecl);
                        fieldDecl.binding = null;
                        return null;
                    }
                    if ((fieldType.tagBits & 0x80L) != 0L) {
                        field.tagBits |= 0x80L;
                    }
                    if (!((leafType = fieldType.leafComponentType()) instanceof ReferenceBinding)) return field;
                    if ((((ReferenceBinding)leafType).modifiers & 0x40000000) == 0) return field;
                    field.modifiers |= 0x40000000;
                    return field;
                }
                finally {
                    initializationScope.initializedField = previousField;
                }
            }
            ++f;
        }
        return null;
    }

    public MethodBinding resolveTypesFor(MethodBinding method) {
        TypeReference[] exceptionTypes;
        AbstractMethodDeclaration methodDecl;
        if ((method.modifiers & 0x2000000) == 0) {
            return method;
        }
        if (this.scope.compilerOptions().sourceLevel >= 0x310000L && (method.getAnnotationTagBits() & 0x400000000000L) != 0L) {
            method.modifiers |= 0x100000;
        }
        if (this.isViewedAsDeprecated() && !method.isDeprecated()) {
            method.modifiers |= 0x200000;
        }
        if (this.hasRestrictedAccess()) {
            method.modifiers |= 0x40000;
        }
        if ((methodDecl = method.sourceMethod()) == null) {
            return null;
        }
        TypeParameter[] typeParameters = methodDecl.typeParameters();
        if (typeParameters != null) {
            methodDecl.scope.connectTypeVariables(typeParameters, true);
            int i = 0;
            int paramLength = typeParameters.length;
            while (i < paramLength) {
                typeParameters[i].checkBounds(methodDecl.scope);
                ++i;
            }
        }
        if ((exceptionTypes = methodDecl.thrownExceptions) != null) {
            int size = exceptionTypes.length;
            method.thrownExceptions = new ReferenceBinding[size];
            int count = 0;
            int i = 0;
            while (i < size) {
                ReferenceBinding resolvedExceptionType = (ReferenceBinding)exceptionTypes[i].resolveType(methodDecl.scope, true);
                if (resolvedExceptionType != null) {
                    if (resolvedExceptionType.isBoundParameterizedType()) {
                        methodDecl.scope.problemReporter().invalidParameterizedExceptionType(resolvedExceptionType, exceptionTypes[i]);
                    } else if (resolvedExceptionType.findSuperTypeOriginatingFrom(21, true) == null && resolvedExceptionType.isValidBinding()) {
                        methodDecl.scope.problemReporter().cannotThrowType(exceptionTypes[i], resolvedExceptionType);
                    } else {
                        if ((resolvedExceptionType.tagBits & 0x80L) != 0L) {
                            method.tagBits |= 0x80L;
                        }
                        method.modifiers |= resolvedExceptionType.modifiers & 0x40000000;
                        method.thrownExceptions[count++] = resolvedExceptionType;
                    }
                }
                ++i;
            }
            if (count < size) {
                method.thrownExceptions = new ReferenceBinding[count];
                System.arraycopy(method.thrownExceptions, 0, method.thrownExceptions, 0, count);
            }
        }
        boolean reportUnavoidableGenericTypeProblems = this.scope.compilerOptions().reportUnavoidableGenericTypeProblems;
        boolean foundArgProblem = false;
        Argument[] arguments = methodDecl.arguments;
        if (arguments != null) {
            int size = arguments.length;
            method.parameters = Binding.NO_PARAMETERS;
            TypeBinding[] newParameters = new TypeBinding[size];
            int i = 0;
            while (i < size) {
                TypeBinding parameterType;
                boolean deferRawTypeCheck;
                Argument arg = arguments[i];
                if (arg.annotations != null) {
                    method.tagBits |= 0x400L;
                }
                boolean bl = deferRawTypeCheck = !reportUnavoidableGenericTypeProblems && !method.isConstructor() && (arg.type.bits & 0x40000000) == 0;
                if (deferRawTypeCheck) {
                    arg.type.bits |= 0x40000000;
                }
                try {
                    parameterType = arg.type.resolveType(methodDecl.scope, true);
                }
                finally {
                    if (deferRawTypeCheck) {
                        arg.type.bits &= 0xBFFFFFFF;
                    }
                }
                if (parameterType == null) {
                    foundArgProblem = true;
                } else if (parameterType == TypeBinding.VOID) {
                    methodDecl.scope.problemReporter().argumentTypeCannotBeVoid(this, methodDecl, arg);
                    foundArgProblem = true;
                } else {
                    TypeBinding leafType;
                    if ((parameterType.tagBits & 0x80L) != 0L) {
                        method.tagBits |= 0x80L;
                    }
                    if ((leafType = parameterType.leafComponentType()) instanceof ReferenceBinding && (((ReferenceBinding)leafType).modifiers & 0x40000000) != 0) {
                        method.modifiers |= 0x40000000;
                    }
                    newParameters[i] = parameterType;
                    arg.binding = new LocalVariableBinding(arg, parameterType, arg.modifiers, true);
                }
                ++i;
            }
            if (!foundArgProblem) {
                method.parameters = newParameters;
            }
        }
        if (this.scope.compilerOptions().sourceLevel >= 0x330000L) {
            if ((method.tagBits & 0x8000000000000L) != 0L) {
                if (!method.isVarargs()) {
                    methodDecl.scope.problemReporter().safeVarargsOnFixedArityMethod(method);
                } else if (!(method.isStatic() || method.isFinal() || method.isConstructor())) {
                    methodDecl.scope.problemReporter().safeVarargsOnNonFinalInstanceMethod(method);
                }
            } else if (method.parameters != null && method.parameters.length > 0 && method.isVarargs() && !method.parameters[method.parameters.length - 1].isReifiable()) {
                methodDecl.scope.problemReporter().possibleHeapPollutionFromVararg(methodDecl.arguments[methodDecl.arguments.length - 1]);
            }
        }
        boolean foundReturnTypeProblem = false;
        if (!method.isConstructor()) {
            TypeReference returnType;
            TypeReference typeReference = returnType = methodDecl instanceof MethodDeclaration ? ((MethodDeclaration)methodDecl).returnType : null;
            if (returnType == null) {
                methodDecl.scope.problemReporter().missingReturnType(methodDecl);
                method.returnType = null;
                foundReturnTypeProblem = true;
            } else {
                TypeBinding methodType;
                boolean deferRawTypeCheck;
                boolean bl = deferRawTypeCheck = !reportUnavoidableGenericTypeProblems && (returnType.bits & 0x40000000) == 0;
                if (deferRawTypeCheck) {
                    returnType.bits |= 0x40000000;
                }
                try {
                    methodType = returnType.resolveType(methodDecl.scope, true);
                }
                finally {
                    if (deferRawTypeCheck) {
                        returnType.bits &= 0xBFFFFFFF;
                    }
                }
                if (methodType == null) {
                    foundReturnTypeProblem = true;
                } else if (methodType.isArrayType() && ((ArrayBinding)methodType).leafComponentType == TypeBinding.VOID) {
                    methodDecl.scope.problemReporter().returnTypeCannotBeVoidArray((MethodDeclaration)methodDecl);
                    foundReturnTypeProblem = true;
                } else {
                    if ((methodType.tagBits & 0x80L) != 0L) {
                        method.tagBits |= 0x80L;
                    }
                    method.returnType = methodType;
                    TypeBinding leafType = methodType.leafComponentType();
                    if (leafType instanceof ReferenceBinding && (((ReferenceBinding)leafType).modifiers & 0x40000000) != 0) {
                        method.modifiers |= 0x40000000;
                    }
                }
            }
        }
        if (foundArgProblem) {
            methodDecl.binding = null;
            method.parameters = Binding.NO_PARAMETERS;
            if (typeParameters != null) {
                int i = 0;
                int length = typeParameters.length;
                while (i < length) {
                    typeParameters[i].binding = null;
                    ++i;
                }
            }
            return null;
        }
        if (foundReturnTypeProblem) {
            return method;
        }
        method.modifiers &= 0xFDFFFFFF;
        return method;
    }

    public AnnotationHolder retrieveAnnotationHolder(Binding binding, boolean forceInitialization) {
        if (forceInitialization) {
            binding.getAnnotationTagBits();
        }
        return super.retrieveAnnotationHolder(binding, false);
    }

    public void setFields(FieldBinding[] fields) {
        this.fields = fields;
    }

    public void setMethods(MethodBinding[] methods) {
        this.methods = methods;
    }

    public final int sourceEnd() {
        return this.scope.referenceContext.sourceEnd;
    }

    public final int sourceStart() {
        return this.scope.referenceContext.sourceStart;
    }

    SimpleLookupTable storedAnnotations(boolean forceInitialize) {
        if (forceInitialize && this.storedAnnotations == null && this.scope != null) {
            this.scope.referenceCompilationUnit().compilationResult.hasAnnotations = true;
            if (!this.scope.environment().globalOptions.storeAnnotations) {
                return null;
            }
            this.storedAnnotations = new SimpleLookupTable(3);
        }
        return this.storedAnnotations;
    }

    public ReferenceBinding superclass() {
        return this.superclass;
    }

    public ReferenceBinding[] superInterfaces() {
        return this.superInterfaces;
    }

    public SyntheticMethodBinding[] syntheticMethods() {
        if (this.synthetics == null || this.synthetics[0] == null || this.synthetics[0].size() == 0) {
            return null;
        }
        int index = 0;
        SyntheticMethodBinding[] bindings = new SyntheticMethodBinding[1];
        Iterator methodArrayIterator = this.synthetics[0].values().iterator();
        while (methodArrayIterator.hasNext()) {
            SyntheticMethodBinding[] methodAccessors = (SyntheticMethodBinding[])methodArrayIterator.next();
            int i = 0;
            int max = methodAccessors.length;
            while (i < max) {
                if (methodAccessors[i] != null) {
                    if (index + 1 > bindings.length) {
                        SyntheticMethodBinding[] syntheticMethodBindingArray = bindings;
                        bindings = new SyntheticMethodBinding[index + 1];
                        System.arraycopy(syntheticMethodBindingArray, 0, bindings, 0, index);
                    }
                    bindings[index++] = methodAccessors[i];
                }
                ++i;
            }
        }
        int length = bindings.length;
        SyntheticMethodBinding[] sortedBindings = new SyntheticMethodBinding[length];
        int i = 0;
        while (i < length) {
            SyntheticMethodBinding binding;
            sortedBindings[binding.index] = binding = bindings[i];
            ++i;
        }
        return sortedBindings;
    }

    public FieldBinding[] syntheticFields() {
        SyntheticFieldBinding synthBinding;
        int i;
        Iterator elements;
        int literalSize;
        if (this.synthetics == null) {
            return null;
        }
        int fieldSize = this.synthetics[1] == null ? 0 : this.synthetics[1].size();
        int totalSize = fieldSize + (literalSize = this.synthetics[2] == null ? 0 : this.synthetics[2].size());
        if (totalSize == 0) {
            return null;
        }
        FieldBinding[] bindings = new FieldBinding[totalSize];
        if (this.synthetics[1] != null) {
            elements = this.synthetics[1].values().iterator();
            i = 0;
            while (i < fieldSize) {
                synthBinding = (SyntheticFieldBinding)elements.next();
                bindings[synthBinding.index] = synthBinding;
                ++i;
            }
        }
        if (this.synthetics[2] != null) {
            elements = this.synthetics[2].values().iterator();
            i = 0;
            while (i < literalSize) {
                synthBinding = (SyntheticFieldBinding)elements.next();
                bindings[fieldSize + synthBinding.index] = synthBinding;
                ++i;
            }
        }
        return bindings;
    }

    public String toString() {
        int length;
        int i;
        StringBuffer buffer = new StringBuffer(30);
        buffer.append("(id=");
        if (this.id == Integer.MAX_VALUE) {
            buffer.append("NoId");
        } else {
            buffer.append(this.id);
        }
        buffer.append(")\n");
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
        if (this.enclosingType() != null) {
            buffer.append("\n\tenclosing type : ");
            buffer.append(this.enclosingType().debugName());
        }
        if (this.fields != null) {
            if (this.fields != Binding.NO_FIELDS) {
                buffer.append("\n/*   fields   */");
                i = 0;
                length = this.fields.length;
                while (i < length) {
                    buffer.append('\n').append(this.fields[i] != null ? this.fields[i].toString() : "NULL FIELD");
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
                    buffer.append('\n').append(this.methods[i] != null ? this.methods[i].toString() : "NULL METHOD");
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
                    buffer.append('\n').append(this.memberTypes[i] != null ? this.memberTypes[i].toString() : "NULL TYPE");
                    ++i;
                }
            }
        } else {
            buffer.append("NULL MEMBER TYPES");
        }
        buffer.append("\n\n");
        return buffer.toString();
    }

    public TypeVariableBinding[] typeVariables() {
        return this.typeVariables != null ? this.typeVariables : Binding.NO_TYPE_VARIABLES;
    }

    void verifyMethods(MethodVerifier verifier) {
        verifier.verify(this);
        int i = this.memberTypes.length;
        while (--i >= 0) {
            ((SourceTypeBinding)this.memberTypes[i]).verifyMethods(verifier);
        }
    }

    public FieldBinding[] unResolvedFields() {
        return this.fields;
    }

    public void tagIndirectlyAccessibleMembers() {
        int i = 0;
        while (i < this.fields.length) {
            if (!this.fields[i].isPrivate()) {
                this.fields[i].modifiers |= 0x8000000;
            }
            ++i;
        }
        i = 0;
        while (i < this.memberTypes.length) {
            if (!this.memberTypes[i].isPrivate()) {
                this.memberTypes[i].modifiers |= 0x8000000;
            }
            ++i;
        }
        if (this.superclass.isPrivate() && this.superclass instanceof SourceTypeBinding) {
            ((SourceTypeBinding)this.superclass).tagIndirectlyAccessibleMembers();
        }
    }
}

