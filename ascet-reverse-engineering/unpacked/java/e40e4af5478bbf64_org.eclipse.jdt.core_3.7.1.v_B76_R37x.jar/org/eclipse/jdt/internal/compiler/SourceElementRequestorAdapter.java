/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SourceElementRequestorAdapter
implements ISourceElementRequestor {
    public void acceptAnnotationTypeReference(char[][] typeName, int sourceStart, int sourceEnd) {
    }

    public void acceptAnnotationTypeReference(char[] typeName, int sourcePosition) {
    }

    public void acceptConstructorReference(char[] typeName, int argCount, int sourcePosition) {
    }

    public void acceptFieldReference(char[] fieldName, int sourcePosition) {
    }

    public void acceptImport(int declarationStart, int declarationEnd, int nameStart, int nameEnd, char[][] tokens, boolean onDemand, int modifiers) {
    }

    public void acceptLineSeparatorPositions(int[] positions) {
    }

    public void acceptMethodReference(char[] methodName, int argCount, int sourcePosition) {
    }

    public void acceptPackage(ImportReference importReference) {
    }

    public void acceptProblem(CategorizedProblem problem) {
    }

    public void acceptTypeReference(char[][] typeName, int sourceStart, int sourceEnd) {
    }

    public void acceptTypeReference(char[] typeName, int sourcePosition) {
    }

    public void acceptUnknownReference(char[][] name, int sourceStart, int sourceEnd) {
    }

    public void acceptUnknownReference(char[] name, int sourcePosition) {
    }

    public void enterCompilationUnit() {
    }

    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
    }

    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
    }

    public void enterInitializer(int declarationStart, int modifiers) {
    }

    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
    }

    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
    }

    public void exitCompilationUnit(int declarationEnd) {
    }

    public void exitConstructor(int declarationEnd) {
    }

    public void exitField(int initializationStart, int declarationEnd, int declarationSourceEnd) {
    }

    public void exitInitializer(int declarationEnd) {
    }

    public void exitMethod(int declarationEnd, Expression defaultValue) {
    }

    public void exitType(int declarationEnd) {
    }
}

