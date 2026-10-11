/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;

public class CompletionOnAnnotationOfType
extends TypeDeclaration {
    public ASTNode potentialAnnotatedNode;
    public boolean isParameter;

    public CompletionOnAnnotationOfType(char[] typeName, CompilationResult compilationResult, Annotation annotation) {
        super(compilationResult);
        this.sourceEnd = annotation.sourceEnd;
        this.sourceStart = annotation.sourceEnd;
        this.name = typeName;
        this.annotations = new Annotation[]{annotation};
    }

    public StringBuffer print(int indent, StringBuffer output) {
        return this.annotations[0].print(indent, output);
    }
}

