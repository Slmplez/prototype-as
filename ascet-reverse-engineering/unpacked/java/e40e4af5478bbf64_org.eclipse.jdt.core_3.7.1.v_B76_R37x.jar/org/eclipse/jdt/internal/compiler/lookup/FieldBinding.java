/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class FieldBinding
extends VariableBinding {
    public ReferenceBinding declaringClass;
    public int compoundUseFlag = 0;

    protected FieldBinding() {
        super(null, null, 0, null);
    }

    public FieldBinding(char[] name, TypeBinding type, int modifiers, ReferenceBinding declaringClass, Constant constant) {
        super(name, type, modifiers, constant);
        this.declaringClass = declaringClass;
    }

    public FieldBinding(FieldBinding initialFieldBinding, ReferenceBinding declaringClass) {
        super(initialFieldBinding.name, initialFieldBinding.type, initialFieldBinding.modifiers, initialFieldBinding.constant());
        this.declaringClass = declaringClass;
        this.id = initialFieldBinding.id;
        this.setAnnotations(initialFieldBinding.getAnnotations());
    }

    public FieldBinding(FieldDeclaration field, TypeBinding type, int modifiers, ReferenceBinding declaringClass) {
        this(field.name, type, modifiers, declaringClass, null);
        field.binding = this;
    }

    public final boolean canBeSeenBy(PackageBinding invocationPackage) {
        if (this.isPublic()) {
            return true;
        }
        if (this.isPrivate()) {
            return false;
        }
        return invocationPackage == this.declaringClass.getPackage();
    }

    public final boolean canBeSeenBy(TypeBinding receiverType, InvocationSite invocationSite, Scope scope) {
        if (this.isPublic()) {
            return true;
        }
        SourceTypeBinding invocationType = scope.enclosingSourceType();
        if (invocationType == this.declaringClass && invocationType == receiverType) {
            return true;
        }
        if (invocationType == null) {
            return !this.isPrivate() && scope.getCurrentPackage() == this.declaringClass.fPackage;
        }
        if (this.isProtected()) {
            if (invocationType == this.declaringClass) {
                return true;
            }
            if (invocationType.fPackage == this.declaringClass.fPackage) {
                return true;
            }
            ReferenceBinding currentType = invocationType;
            int depth = 0;
            ReferenceBinding receiverErasure = (ReferenceBinding)receiverType.erasure();
            ReferenceBinding declaringErasure = (ReferenceBinding)this.declaringClass.erasure();
            do {
                if (currentType.findSuperTypeOriginatingFrom(declaringErasure) != null) {
                    if (invocationSite.isSuperAccess()) {
                        return true;
                    }
                    if (receiverType instanceof ArrayBinding) {
                        return false;
                    }
                    if (this.isStatic()) {
                        if (depth > 0) {
                            invocationSite.setDepth(depth);
                        }
                        return true;
                    }
                    if (currentType == receiverErasure || receiverErasure.findSuperTypeOriginatingFrom(currentType) != null) {
                        if (depth > 0) {
                            invocationSite.setDepth(depth);
                        }
                        return true;
                    }
                }
                ++depth;
            } while ((currentType = currentType.enclosingType()) != null);
            return false;
        }
        if (this.isPrivate()) {
            if (!(receiverType == this.declaringClass || scope.compilerOptions().complianceLevel <= 0x320000L && receiverType.isTypeVariable() && ((TypeVariableBinding)receiverType).isErasureBoundTo(this.declaringClass.erasure()))) {
                return false;
            }
            if (invocationType != this.declaringClass) {
                ReferenceBinding outerInvocationType = invocationType;
                ReferenceBinding temp = outerInvocationType.enclosingType();
                while (temp != null) {
                    outerInvocationType = temp;
                    temp = temp.enclosingType();
                }
                ReferenceBinding outerDeclaringClass = (ReferenceBinding)this.declaringClass.erasure();
                temp = outerDeclaringClass.enclosingType();
                while (temp != null) {
                    outerDeclaringClass = temp;
                    temp = temp.enclosingType();
                }
                if (outerInvocationType != outerDeclaringClass) {
                    return false;
                }
            }
            return true;
        }
        PackageBinding declaringPackage = this.declaringClass.fPackage;
        if (invocationType.fPackage != declaringPackage) {
            return false;
        }
        if (receiverType instanceof ArrayBinding) {
            return false;
        }
        TypeBinding originalDeclaringClass = this.declaringClass.original();
        ReferenceBinding currentType = (ReferenceBinding)receiverType;
        do {
            if (currentType.isCapture() ? originalDeclaringClass == currentType.erasure().original() : originalDeclaringClass == currentType.original()) {
                return true;
            }
            PackageBinding currentPackage = currentType.fPackage;
            if (currentPackage == null || currentPackage == declaringPackage) continue;
            return false;
        } while ((currentType = currentType.superclass()) != null);
        return false;
    }

    public char[] computeUniqueKey(boolean isLeaf) {
        char[] cArray;
        char[] declaringKey = this.declaringClass == null ? CharOperation.NO_CHAR : this.declaringClass.computeUniqueKey(false);
        int declaringLength = declaringKey.length;
        int nameLength = this.name.length;
        if (this.type == null) {
            char[] cArray2 = new char[1];
            cArray = cArray2;
            cArray2[0] = 86;
        } else {
            cArray = this.type.computeUniqueKey(false);
        }
        char[] returnTypeKey = cArray;
        int returnTypeLength = returnTypeKey.length;
        char[] uniqueKey = new char[declaringLength + 1 + nameLength + 1 + returnTypeLength];
        int index = 0;
        System.arraycopy(declaringKey, 0, uniqueKey, index, declaringLength);
        index += declaringLength;
        uniqueKey[index++] = 46;
        System.arraycopy(this.name, 0, uniqueKey, index, nameLength);
        index += nameLength;
        uniqueKey[index++] = 41;
        System.arraycopy(returnTypeKey, 0, uniqueKey, index, returnTypeLength);
        return uniqueKey;
    }

    public Constant constant() {
        Constant fieldConstant = this.constant;
        if (fieldConstant == null) {
            if (this.isFinal()) {
                FieldBinding originalField = this.original();
                if (originalField.declaringClass instanceof SourceTypeBinding) {
                    SourceTypeBinding sourceType = (SourceTypeBinding)originalField.declaringClass;
                    if (sourceType.scope != null) {
                        TypeDeclaration typeDecl = sourceType.scope.referenceContext;
                        FieldDeclaration fieldDecl = typeDecl.declarationOf(originalField);
                        MethodScope initScope = originalField.isStatic() ? typeDecl.staticInitializerScope : typeDecl.initializerScope;
                        boolean old = initScope.insideTypeAnnotation;
                        try {
                            initScope.insideTypeAnnotation = false;
                            fieldDecl.resolve(initScope);
                        }
                        finally {
                            initScope.insideTypeAnnotation = old;
                        }
                        fieldConstant = originalField.constant == null ? Constant.NotAConstant : originalField.constant;
                    } else {
                        fieldConstant = Constant.NotAConstant;
                    }
                } else {
                    fieldConstant = Constant.NotAConstant;
                }
            } else {
                fieldConstant = Constant.NotAConstant;
            }
            this.constant = fieldConstant;
        }
        return fieldConstant;
    }

    public char[] genericSignature() {
        if ((this.modifiers & 0x40000000) == 0) {
            return null;
        }
        return this.type.genericTypeSignature();
    }

    public final int getAccessFlags() {
        return this.modifiers & 0xFFFF;
    }

    public AnnotationBinding[] getAnnotations() {
        FieldBinding originalField = this.original();
        ReferenceBinding declaringClassBinding = originalField.declaringClass;
        if (declaringClassBinding == null) {
            return Binding.NO_ANNOTATIONS;
        }
        return declaringClassBinding.retrieveAnnotations(originalField);
    }

    public long getAnnotationTagBits() {
        FieldBinding originalField = this.original();
        if ((originalField.tagBits & 0x200000000L) == 0L && originalField.declaringClass instanceof SourceTypeBinding) {
            ClassScope scope = ((SourceTypeBinding)originalField.declaringClass).scope;
            if (scope == null) {
                this.tagBits |= 0x600000000L;
                return 0L;
            }
            TypeDeclaration typeDecl = scope.referenceContext;
            FieldDeclaration fieldDecl = typeDecl.declarationOf(originalField);
            if (fieldDecl != null) {
                MethodScope initializationScope = this.isStatic() ? typeDecl.staticInitializerScope : typeDecl.initializerScope;
                FieldBinding previousField = initializationScope.initializedField;
                int previousFieldID = initializationScope.lastVisibleFieldID;
                try {
                    initializationScope.initializedField = originalField;
                    initializationScope.lastVisibleFieldID = originalField.id;
                    ASTNode.resolveAnnotations(initializationScope, fieldDecl.annotations, originalField);
                }
                finally {
                    initializationScope.initializedField = previousField;
                    initializationScope.lastVisibleFieldID = previousFieldID;
                }
            }
        }
        return originalField.tagBits;
    }

    public final boolean isDefault() {
        return !this.isPublic() && !this.isProtected() && !this.isPrivate();
    }

    public final boolean isDeprecated() {
        return (this.modifiers & 0x100000) != 0;
    }

    public final boolean isPrivate() {
        return (this.modifiers & 2) != 0;
    }

    public final boolean isOrEnclosedByPrivateType() {
        if ((this.modifiers & 2) != 0) {
            return true;
        }
        return this.declaringClass != null && this.declaringClass.isOrEnclosedByPrivateType();
    }

    public final boolean isProtected() {
        return (this.modifiers & 4) != 0;
    }

    public final boolean isPublic() {
        return (this.modifiers & 1) != 0;
    }

    public final boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    public final boolean isSynthetic() {
        return (this.modifiers & 0x1000) != 0;
    }

    public final boolean isTransient() {
        return (this.modifiers & 0x80) != 0;
    }

    public final boolean isUsed() {
        return (this.modifiers & 0x8000000) != 0 || this.compoundUseFlag > 0;
    }

    public final boolean isUsedOnlyInCompound() {
        return (this.modifiers & 0x8000000) == 0 && this.compoundUseFlag > 0;
    }

    public final boolean isViewedAsDeprecated() {
        return (this.modifiers & 0x300000) != 0;
    }

    public final boolean isVolatile() {
        return (this.modifiers & 0x40) != 0;
    }

    public final int kind() {
        return 1;
    }

    public FieldBinding original() {
        return this;
    }

    public void setAnnotations(AnnotationBinding[] annotations) {
        this.declaringClass.storeAnnotations(this, annotations);
    }

    public FieldDeclaration sourceField() {
        SourceTypeBinding sourceType;
        try {
            sourceType = (SourceTypeBinding)this.declaringClass;
        }
        catch (ClassCastException classCastException) {
            return null;
        }
        FieldDeclaration[] fields = sourceType.scope.referenceContext.fields;
        if (fields != null) {
            int i = fields.length;
            while (--i >= 0) {
                if (this != fields[i].binding) continue;
                return fields[i];
            }
        }
        return null;
    }
}

