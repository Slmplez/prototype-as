/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.text.edits;

import org.eclipse.text.edits.TextEdit;

public class MalformedTreeException
extends RuntimeException {
    private static final long serialVersionUID = 1L;
    private TextEdit fParent;
    private TextEdit fChild;

    public MalformedTreeException(TextEdit parent, TextEdit child, String message) {
        super(message);
        this.fParent = parent;
        this.fChild = child;
    }

    public TextEdit getParent() {
        return this.fParent;
    }

    public TextEdit getChild() {
        return this.fChild;
    }

    void setParent(TextEdit parent) {
        this.fParent = parent;
    }
}

