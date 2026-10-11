/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist;

import org.eclipse.jdt.core.CompletionContext;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.InternalExtendedCompletionContext;
import org.eclipse.jdt.internal.codeassist.complete.CompletionParser;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class InternalCompletionContext
extends CompletionContext {
    protected char[][] expectedTypesSignatures;
    protected char[][] expectedTypesKeys;
    protected int javadoc;
    protected int offset = -1;
    protected int tokenStart = -1;
    protected int tokenEnd = -1;
    protected char[] token = null;
    protected int tokenKind;
    protected int tokenLocation;
    protected boolean isExtended;
    protected InternalExtendedCompletionContext extendedContext;

    protected void setExpectedTypesKeys(char[][] expectedTypesKeys) {
        this.expectedTypesKeys = expectedTypesKeys;
    }

    protected void setExpectedTypesSignatures(char[][] expectedTypesSignatures) {
        this.expectedTypesSignatures = expectedTypesSignatures;
    }

    protected void setExtended() {
        this.isExtended = true;
    }

    protected void setExtendedData(ITypeRoot typeRoot, CompilationUnitDeclaration compilationUnitDeclaration, LookupEnvironment lookupEnvironment, Scope scope, ASTNode astNode, WorkingCopyOwner owner, CompletionParser parser) {
        this.isExtended = true;
        this.extendedContext = new InternalExtendedCompletionContext(this, typeRoot, compilationUnitDeclaration, lookupEnvironment, scope, astNode, owner, parser);
    }

    protected void setJavadoc(int javadoc) {
        this.javadoc = javadoc;
    }

    protected void setOffset(int offset) {
        this.offset = offset;
    }

    protected void setToken(char[] token) {
        this.token = token;
    }

    protected void setTokenKind(int tokenKind) {
        this.tokenKind = tokenKind;
    }

    protected void setTokenLocation(int tokenLocation) {
        this.tokenLocation = tokenLocation;
    }

    protected void setTokenRange(int start, int end) {
        this.setTokenRange(start, end, -1);
    }

    protected void setTokenRange(int start, int end, int endOfEmptyToken) {
        this.tokenStart = start;
        int n = this.tokenEnd = endOfEmptyToken > end ? endOfEmptyToken : end;
        if (this.tokenEnd == -1) {
            this.tokenEnd = 0;
        }
    }

    public IJavaElement getEnclosingElement() {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        if (this.extendedContext == null) {
            return null;
        }
        return this.extendedContext.getEnclosingElement();
    }

    public char[][] getExpectedTypesKeys() {
        return this.expectedTypesKeys;
    }

    public char[][] getExpectedTypesSignatures() {
        return this.expectedTypesSignatures;
    }

    public int getOffset() {
        return this.offset;
    }

    public char[] getToken() {
        return this.token;
    }

    public int getTokenEnd() {
        return this.tokenEnd;
    }

    public int getTokenKind() {
        return this.tokenKind;
    }

    public int getTokenLocation() {
        return this.tokenLocation;
    }

    public int getTokenStart() {
        return this.tokenStart;
    }

    public IJavaElement[] getVisibleElements(String typeSignature) {
        if (!this.isExtended) {
            throw new UnsupportedOperationException("Operation only supported in extended context");
        }
        if (this.extendedContext == null) {
            return new IJavaElement[0];
        }
        return this.extendedContext.getVisibleElements(typeSignature);
    }

    public boolean isExtended() {
        return this.isExtended;
    }

    public boolean isInJavadoc() {
        return this.javadoc != 0;
    }

    public boolean isInJavadocFormalReference() {
        return (this.javadoc & 0x40) != 0;
    }

    public boolean isInJavadocText() {
        return (this.javadoc & 4) != 0;
    }
}

