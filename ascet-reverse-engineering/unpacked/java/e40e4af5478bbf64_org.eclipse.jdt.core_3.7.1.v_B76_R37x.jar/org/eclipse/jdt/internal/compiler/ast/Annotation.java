/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public abstract class Annotation
extends Expression {
    static final MemberValuePair[] NoValuePairs = new MemberValuePair[0];
    public int declarationSourceEnd;
    public Binding recipient;
    public TypeReference type;
    private AnnotationBinding compilerAnnotation = null;

    public static long getRetentionPolicy(char[] policyName) {
        if (policyName == null || policyName.length == 0) {
            return 0L;
        }
        switch (policyName[0]) {
            case 'C': {
                if (!CharOperation.equals(policyName, TypeConstants.UPPER_CLASS)) break;
                return 0x200000000000L;
            }
            case 'S': {
                if (!CharOperation.equals(policyName, TypeConstants.UPPER_SOURCE)) break;
                return 0x100000000000L;
            }
            case 'R': {
                if (!CharOperation.equals(policyName, TypeConstants.UPPER_RUNTIME)) break;
                return 0x300000000000L;
            }
        }
        return 0L;
    }

    public static long getTargetElementType(char[] elementName) {
        if (elementName == null || elementName.length == 0) {
            return 0L;
        }
        switch (elementName[0]) {
            case 'A': {
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_ANNOTATION_TYPE)) break;
                return 0x40000000000L;
            }
            case 'C': {
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_CONSTRUCTOR)) break;
                return 0x10000000000L;
            }
            case 'F': {
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_FIELD)) break;
                return 0x2000000000L;
            }
            case 'L': {
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_LOCAL_VARIABLE)) break;
                return 0x20000000000L;
            }
            case 'M': {
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_METHOD)) break;
                return 0x4000000000L;
            }
            case 'P': {
                if (CharOperation.equals(elementName, TypeConstants.UPPER_PARAMETER)) {
                    return 0x8000000000L;
                }
                if (!CharOperation.equals(elementName, TypeConstants.UPPER_PACKAGE)) break;
                return 0x80000000000L;
            }
            case 'T': {
                if (!CharOperation.equals(elementName, TypeConstants.TYPE)) break;
                return 0x1000000000L;
            }
        }
        return 0L;
    }

    public ElementValuePair[] computeElementValuePairs() {
        return Binding.NO_ELEMENT_VALUE_PAIRS;
    }

    private long detectStandardAnnotation(Scope scope, ReferenceBinding annotationType, MemberValuePair valueAttribute) {
        long tagBits = 0L;
        switch (annotationType.id) {
            case 48: {
                FieldBinding field;
                if (valueAttribute == null) break;
                Expression expr = valueAttribute.value;
                if ((expr.bits & 3) != 1 || (field = ((Reference)expr).fieldBinding()) == null || field.declaringClass.id != 51) break;
                tagBits |= Annotation.getRetentionPolicy(field.name);
                break;
            }
            case 50: {
                FieldBinding field;
                tagBits |= 0x800000000L;
                if (valueAttribute == null) break;
                Expression expr = valueAttribute.value;
                if (expr instanceof ArrayInitializer) {
                    ArrayInitializer initializer = (ArrayInitializer)expr;
                    Expression[] expressions = initializer.expressions;
                    if (expressions == null) break;
                    int i = 0;
                    int length = expressions.length;
                    while (i < length) {
                        FieldBinding field2;
                        Expression initExpr = expressions[i];
                        if ((initExpr.bits & 3) == 1 && (field2 = ((Reference)initExpr).fieldBinding()) != null && field2.declaringClass.id == 52) {
                            long element = Annotation.getTargetElementType(field2.name);
                            if ((tagBits & element) != 0L) {
                                scope.problemReporter().duplicateTargetInTargetAnnotation(annotationType, (NameReference)initExpr);
                            } else {
                                tagBits |= element;
                            }
                        }
                        ++i;
                    }
                    break;
                }
                if ((expr.bits & 3) != 1 || (field = ((Reference)expr).fieldBinding()) == null || field.declaringClass.id != 52) break;
                tagBits |= Annotation.getTargetElementType(field.name);
                break;
            }
            case 44: {
                tagBits |= 0x400000000000L;
                break;
            }
            case 45: {
                tagBits |= 0x800000000000L;
                break;
            }
            case 46: {
                tagBits |= 0x1000000000000L;
                break;
            }
            case 47: {
                tagBits |= 0x2000000000000L;
                break;
            }
            case 49: {
                tagBits |= 0x4000000000000L;
                break;
            }
            case 60: {
                tagBits |= 0x8000000000000L;
                break;
            }
            case 61: {
                tagBits |= 0x10000000000000L;
            }
        }
        return tagBits;
    }

    public AnnotationBinding getCompilerAnnotation() {
        return this.compilerAnnotation;
    }

    public boolean isRuntimeInvisible() {
        TypeBinding annotationBinding = this.resolvedType;
        if (annotationBinding == null) {
            return false;
        }
        long metaTagBits = annotationBinding.getAnnotationTagBits();
        if ((metaTagBits & 0x300000000000L) == 0L) {
            return true;
        }
        return (metaTagBits & 0x300000000000L) == 0x200000000000L;
    }

    public boolean isRuntimeVisible() {
        TypeBinding annotationBinding = this.resolvedType;
        if (annotationBinding == null) {
            return false;
        }
        long metaTagBits = annotationBinding.getAnnotationTagBits();
        if ((metaTagBits & 0x300000000000L) == 0L) {
            return false;
        }
        return (metaTagBits & 0x300000000000L) == 0x300000000000L;
    }

    public abstract MemberValuePair[] memberValuePairs();

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append('@');
        this.type.printExpression(0, output);
        return output;
    }

    public void recordSuppressWarnings(Scope scope, int startSuppresss, int endSuppress, boolean isSuppressingWarnings) {
        IrritantSet suppressWarningIrritants = null;
        MemberValuePair[] pairs = this.memberValuePairs();
        int i = 0;
        int length = pairs.length;
        while (i < length) {
            MemberValuePair pair = pairs[i];
            if (CharOperation.equals(pair.name, TypeConstants.VALUE)) {
                Expression value = pair.value;
                if (value instanceof ArrayInitializer) {
                    ArrayInitializer initializer = (ArrayInitializer)value;
                    Expression[] inits = initializer.expressions;
                    if (inits == null) break;
                    int j = 0;
                    int initsLength = inits.length;
                    while (j < initsLength) {
                        Constant cst = inits[j].constant;
                        if (cst != Constant.NotAConstant && cst.typeID() == 11) {
                            IrritantSet irritants = CompilerOptions.warningTokenToIrritants(cst.stringValue());
                            if (irritants != null) {
                                if (suppressWarningIrritants == null) {
                                    suppressWarningIrritants = new IrritantSet(irritants);
                                } else if (suppressWarningIrritants.set(irritants) == null) {
                                    scope.problemReporter().unusedWarningToken(inits[j]);
                                }
                            } else {
                                scope.problemReporter().unhandledWarningToken(inits[j]);
                            }
                        }
                        ++j;
                    }
                    break;
                }
                Constant cst = value.constant;
                if (cst == Constant.NotAConstant || cst.typeID() != 11) break;
                IrritantSet irritants = CompilerOptions.warningTokenToIrritants(cst.stringValue());
                if (irritants != null) {
                    suppressWarningIrritants = new IrritantSet(irritants);
                    break;
                }
                scope.problemReporter().unhandledWarningToken(value);
                break;
            }
            ++i;
        }
        if (isSuppressingWarnings && suppressWarningIrritants != null) {
            scope.referenceCompilationUnit().recordSuppressWarnings(suppressWarningIrritants, this, startSuppresss, endSuppress);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public TypeBinding resolveType(BlockScope scope) {
        long metaTagBits;
        MemberValuePair[] pairs;
        if (this.compilerAnnotation != null) {
            return this.resolvedType;
        }
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.type.resolveType(scope);
        if (typeBinding == null) {
            return null;
        }
        this.resolvedType = typeBinding;
        if (!typeBinding.isAnnotationType() && typeBinding.isValidBinding()) {
            scope.problemReporter().typeMismatchError(typeBinding, scope.getJavaLangAnnotationAnnotation(), this.type, null);
            return null;
        }
        ReferenceBinding annotationType = (ReferenceBinding)this.resolvedType;
        MethodBinding[] methods = annotationType.methods();
        MemberValuePair[] originalValuePairs = this.memberValuePairs();
        MemberValuePair valueAttribute = null;
        int pairsLength = originalValuePairs.length;
        if (pairsLength > 0) {
            pairs = new MemberValuePair[pairsLength];
            System.arraycopy(originalValuePairs, 0, pairs, 0, pairsLength);
        } else {
            pairs = originalValuePairs;
        }
        int i = 0;
        int requiredLength = methods.length;
        while (i < requiredLength) {
            block33: {
                MethodBinding method = methods[i];
                char[] selector = method.selector;
                boolean foundValue = false;
                int j = 0;
                while (j < pairsLength) {
                    char[] name;
                    MemberValuePair pair = pairs[j];
                    if (pair != null && CharOperation.equals(name = pair.name, selector)) {
                        if (valueAttribute == null && CharOperation.equals(name, TypeConstants.VALUE)) {
                            valueAttribute = pair;
                        }
                        pair.binding = method;
                        pair.resolveTypeExpecting(scope, method.returnType);
                        pairs[j] = null;
                        foundValue = true;
                        boolean foundDuplicate = false;
                        int k = j + 1;
                        while (k < pairsLength) {
                            MemberValuePair otherPair = pairs[k];
                            if (otherPair != null && CharOperation.equals(otherPair.name, selector)) {
                                foundDuplicate = true;
                                scope.problemReporter().duplicateAnnotationValue(annotationType, otherPair);
                                otherPair.binding = method;
                                otherPair.resolveTypeExpecting(scope, method.returnType);
                                pairs[k] = null;
                            }
                            ++k;
                        }
                        if (foundDuplicate) {
                            scope.problemReporter().duplicateAnnotationValue(annotationType, pair);
                            break block33;
                        }
                    }
                    ++j;
                }
                if (!foundValue && (method.modifiers & 0x20000) == 0 && (this.bits & 0x20) == 0) {
                    scope.problemReporter().missingValueForAnnotationMember(this, selector);
                }
            }
            ++i;
        }
        i = 0;
        while (i < pairsLength) {
            if (pairs[i] != null) {
                scope.problemReporter().undefinedAnnotationValue(annotationType, pairs[i]);
                pairs[i].resolveTypeExpecting(scope, null);
            }
            ++i;
        }
        this.compilerAnnotation = scope.environment().createAnnotation((ReferenceBinding)this.resolvedType, this.computeElementValuePairs());
        long tagBits = this.detectStandardAnnotation(scope, annotationType, valueAttribute);
        scope.referenceCompilationUnit().recordSuppressWarnings(IrritantSet.NLS, null, this.sourceStart, this.declarationSourceEnd);
        if (this.recipient == null) return this.resolvedType;
        if (tagBits != 0L) {
            switch (this.recipient.kind()) {
                case 16: {
                    ((PackageBinding)this.recipient).tagBits |= tagBits;
                    break;
                }
                case 4: 
                case 2052: {
                    SourceTypeBinding sourceType = (SourceTypeBinding)this.recipient;
                    sourceType.tagBits |= tagBits;
                    if ((tagBits & 0x4000000000000L) == 0L) break;
                    TypeDeclaration typeDeclaration = sourceType.scope.referenceContext;
                    int start = scope.referenceCompilationUnit().types[0] == typeDeclaration ? 0 : typeDeclaration.declarationSourceStart;
                    this.recordSuppressWarnings(scope, start, typeDeclaration.declarationSourceEnd, scope.compilerOptions().suppressWarnings);
                    break;
                }
                case 8: {
                    MethodBinding sourceMethod = (MethodBinding)this.recipient;
                    sourceMethod.tagBits |= tagBits;
                    if ((tagBits & 0x4000000000000L) == 0L) break;
                    SourceTypeBinding sourceType = (SourceTypeBinding)sourceMethod.declaringClass;
                    AbstractMethodDeclaration methodDeclaration = sourceType.scope.referenceContext.declarationOf(sourceMethod);
                    this.recordSuppressWarnings(scope, methodDeclaration.declarationSourceStart, methodDeclaration.declarationSourceEnd, scope.compilerOptions().suppressWarnings);
                    break;
                }
                case 1: {
                    FieldBinding sourceField = (FieldBinding)this.recipient;
                    sourceField.tagBits |= tagBits;
                    if ((tagBits & 0x4000000000000L) == 0L) break;
                    SourceTypeBinding sourceType = (SourceTypeBinding)sourceField.declaringClass;
                    FieldDeclaration fieldDeclaration = sourceType.scope.referenceContext.declarationOf(sourceField);
                    this.recordSuppressWarnings(scope, fieldDeclaration.declarationSourceStart, fieldDeclaration.declarationSourceEnd, scope.compilerOptions().suppressWarnings);
                    break;
                }
                case 2: {
                    LocalVariableBinding variable = (LocalVariableBinding)this.recipient;
                    variable.tagBits |= tagBits;
                    if ((tagBits & 0x4000000000000L) == 0L) break;
                    LocalDeclaration localDeclaration = variable.declaration;
                    this.recordSuppressWarnings(scope, localDeclaration.declarationSourceStart, localDeclaration.declarationSourceEnd, scope.compilerOptions().suppressWarnings);
                    break;
                }
            }
        }
        if (((metaTagBits = annotationType.getAnnotationTagBits()) & 0xFF800000000L) == 0L) {
            return this.resolvedType;
        }
        switch (this.recipient.kind()) {
            case 16: {
                if ((metaTagBits & 0x80000000000L) == 0L) break;
                return this.resolvedType;
            }
            case 4: 
            case 2052: {
                if (((ReferenceBinding)this.recipient).isAnnotationType()) {
                    if ((metaTagBits & 0x41000000000L) == 0L) break;
                    return this.resolvedType;
                }
                if ((metaTagBits & 0x1000000000L) != 0L) {
                    return this.resolvedType;
                }
                if ((metaTagBits & 0x80000000000L) == 0L || !CharOperation.equals(((ReferenceBinding)this.recipient).sourceName, TypeConstants.PACKAGE_INFO_NAME)) break;
                return this.resolvedType;
            }
            case 8: {
                if (!(((MethodBinding)this.recipient).isConstructor() ? (metaTagBits & 0x10000000000L) != 0L : (metaTagBits & 0x4000000000L) != 0L)) break;
                return this.resolvedType;
            }
            case 1: {
                if ((metaTagBits & 0x2000000000L) == 0L) break;
                return this.resolvedType;
            }
            case 2: {
                if (!((((LocalVariableBinding)this.recipient).tagBits & 0x400L) != 0L ? (metaTagBits & 0x8000000000L) != 0L : (annotationType.tagBits & 0x20000000000L) != 0L)) break;
                return this.resolvedType;
            }
        }
        scope.problemReporter().disallowedTargetForAnnotation(this);
        return this.resolvedType;
    }

    public abstract void traverse(ASTVisitor var1, BlockScope var2);
}

