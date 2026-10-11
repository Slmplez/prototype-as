/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SelectionScanner
extends Scanner {
    public char[] selectionIdentifier;
    public int selectionStart;
    public int selectionEnd;

    public SelectionScanner(long sourceLevel) {
        super(false, false, false, sourceLevel, null, null, true);
    }

    public char[] getCurrentIdentifierSource() {
        if (this.selectionIdentifier == null && this.selectionStart == this.startPosition && this.selectionEnd == this.currentPosition - 1) {
            if (this.withoutUnicodePtr != 0) {
                this.selectionIdentifier = new char[this.withoutUnicodePtr];
                System.arraycopy(this.withoutUnicodeBuffer, 1, this.selectionIdentifier, 0, this.withoutUnicodePtr);
            } else {
                int length = this.currentPosition - this.startPosition;
                this.selectionIdentifier = new char[length];
                System.arraycopy(this.source, this.startPosition, this.selectionIdentifier, 0, length);
            }
            return this.selectionIdentifier;
        }
        return super.getCurrentIdentifierSource();
    }

    public int scanIdentifierOrKeyword() {
        int id = super.scanIdentifierOrKeyword();
        if (id != 26 && this.startPosition == this.selectionStart && this.currentPosition == this.selectionEnd + 1) {
            return 26;
        }
        return id;
    }
}

