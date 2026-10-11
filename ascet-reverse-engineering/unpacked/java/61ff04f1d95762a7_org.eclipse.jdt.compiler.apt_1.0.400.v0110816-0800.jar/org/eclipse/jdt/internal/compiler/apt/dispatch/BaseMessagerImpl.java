/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.CompilationResult
 *  org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.Annotation
 *  org.eclipse.jdt.internal.compiler.ast.FieldDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.LocalDeclaration
 *  org.eclipse.jdt.internal.compiler.ast.MemberValuePair
 *  org.eclipse.jdt.internal.compiler.ast.TypeDeclaration
 *  org.eclipse.jdt.internal.compiler.impl.ReferenceContext
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.FieldBinding
 *  org.eclipse.jdt.internal.compiler.lookup.MethodBinding
 *  org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding
 *  org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding
 *  org.eclipse.jdt.internal.compiler.util.Util
 */
package org.eclipse.jdt.internal.compiler.apt.dispatch;

import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.AnnotationValue;
import javax.lang.model.element.Element;
import javax.tools.Diagnostic;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.apt.dispatch.AptProblem;
import org.eclipse.jdt.internal.compiler.apt.model.AnnotationMemberValue;
import org.eclipse.jdt.internal.compiler.apt.model.AnnotationMirrorImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ExecutableElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.TypeElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.VariableElementImpl;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.AptSourceLocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public class BaseMessagerImpl {
    static final String[] NO_ARGUMENTS = new String[0];

    public static AptProblem createProblem(Diagnostic.Kind kind, CharSequence msg, Element e, AnnotationMirror a, AnnotationValue v) {
        int severity;
        TypeDeclaration referenceContext = null;
        Annotation[] elementAnnotations = null;
        int startPosition = 0;
        int endPosition = 0;
        if (e != null) {
            switch (e.getKind()) {
                case ENUM: 
                case CLASS: 
                case ANNOTATION_TYPE: 
                case INTERFACE: {
                    TypeDeclaration typeDeclaration;
                    TypeElementImpl typeElementImpl = (TypeElementImpl)e;
                    Binding typeBinding = typeElementImpl._binding;
                    if (!(typeBinding instanceof SourceTypeBinding)) break;
                    SourceTypeBinding sourceTypeBinding = (SourceTypeBinding)typeBinding;
                    referenceContext = typeDeclaration = (TypeDeclaration)sourceTypeBinding.scope.referenceContext();
                    elementAnnotations = typeDeclaration.annotations;
                    startPosition = typeDeclaration.sourceStart;
                    endPosition = typeDeclaration.sourceEnd;
                    break;
                }
                case PACKAGE: {
                    break;
                }
                case METHOD: 
                case CONSTRUCTOR: {
                    MethodBinding methodBinding;
                    AbstractMethodDeclaration sourceMethod;
                    ExecutableElementImpl executableElementImpl = (ExecutableElementImpl)e;
                    Binding binding = executableElementImpl._binding;
                    if (!(binding instanceof MethodBinding) || (sourceMethod = (methodBinding = (MethodBinding)binding).sourceMethod()) == null) break;
                    referenceContext = sourceMethod;
                    elementAnnotations = sourceMethod.annotations;
                    startPosition = sourceMethod.sourceStart;
                    endPosition = sourceMethod.sourceEnd;
                    break;
                }
                case ENUM_CONSTANT: {
                    break;
                }
                case EXCEPTION_PARAMETER: {
                    break;
                }
                case FIELD: 
                case PARAMETER: {
                    VariableElementImpl variableElementImpl = (VariableElementImpl)e;
                    Binding binding = variableElementImpl._binding;
                    if (binding instanceof FieldBinding) {
                        FieldBinding fieldBinding = (FieldBinding)binding;
                        FieldDeclaration fieldDeclaration = fieldBinding.sourceField();
                        if (fieldDeclaration == null) break;
                        ReferenceBinding declaringClass = fieldBinding.declaringClass;
                        if (declaringClass instanceof SourceTypeBinding) {
                            TypeDeclaration typeDeclaration;
                            SourceTypeBinding sourceTypeBinding = (SourceTypeBinding)declaringClass;
                            referenceContext = typeDeclaration = (TypeDeclaration)sourceTypeBinding.scope.referenceContext();
                        }
                        elementAnnotations = fieldDeclaration.annotations;
                        startPosition = fieldDeclaration.sourceStart;
                        endPosition = fieldDeclaration.sourceEnd;
                        break;
                    }
                    if (!(binding instanceof AptSourceLocalVariableBinding)) break;
                    AptSourceLocalVariableBinding parameterBinding = (AptSourceLocalVariableBinding)binding;
                    LocalDeclaration parameterDeclaration = parameterBinding.declaration;
                    if (parameterDeclaration == null) break;
                    MethodBinding methodBinding = parameterBinding.methodBinding;
                    if (methodBinding != null) {
                        referenceContext = methodBinding.sourceMethod();
                    }
                    elementAnnotations = parameterDeclaration.annotations;
                    startPosition = parameterDeclaration.sourceStart;
                    endPosition = parameterDeclaration.sourceEnd;
                    break;
                }
                case STATIC_INIT: 
                case INSTANCE_INIT: {
                    break;
                }
            }
        }
        StringBuilder builder = new StringBuilder();
        if (msg != null) {
            builder.append(msg);
        }
        if (a != null && elementAnnotations != null) {
            AnnotationBinding annotationBinding = ((AnnotationMirrorImpl)a)._binding;
            Annotation annotation = null;
            int i = 0;
            while (annotation == null && i < elementAnnotations.length) {
                if (annotationBinding == elementAnnotations[i].getCompilerAnnotation()) {
                    annotation = elementAnnotations[i];
                }
                ++i;
            }
            if (annotation != null) {
                startPosition = annotation.sourceStart;
                endPosition = annotation.sourceEnd;
                if (v != null && v instanceof AnnotationMemberValue) {
                    MethodBinding methodBinding = ((AnnotationMemberValue)v).getMethodBinding();
                    MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
                    MemberValuePair memberValuePair = null;
                    int i2 = 0;
                    while (memberValuePair == null && i2 < memberValuePairs.length) {
                        if (methodBinding == memberValuePairs[i2].binding) {
                            memberValuePair = memberValuePairs[i2];
                        }
                        ++i2;
                    }
                    if (memberValuePair != null) {
                        startPosition = memberValuePair.sourceStart;
                        endPosition = memberValuePair.sourceEnd;
                    }
                }
            }
        }
        int lineNumber = 0;
        int columnNumber = 1;
        char[] fileName = null;
        if (referenceContext != null) {
            int n;
            CompilationResult result = referenceContext.compilationResult();
            fileName = result.fileName;
            int[] lineEnds = null;
            if (startPosition >= 0) {
                lineEnds = result.getLineSeparatorPositions();
                n = Util.getLineNumber((int)startPosition, (int[])lineEnds, (int)0, (int)(lineEnds.length - 1));
            } else {
                n = 0;
            }
            lineNumber = n;
            columnNumber = startPosition >= 0 ? Util.searchColumnNumber((int[])result.getLineSeparatorPositions(), (int)lineNumber, (int)startPosition) : 0;
        }
        switch (kind) {
            case ERROR: {
                severity = 1;
                break;
            }
            default: {
                severity = 0;
            }
        }
        return new AptProblem((ReferenceContext)referenceContext, fileName, String.valueOf(builder), 0, NO_ARGUMENTS, severity, startPosition, endPosition, lineNumber, columnNumber);
    }
}

