/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;

public abstract class LineInformation {
    public static LineInformation create(final IDocument doc) {
        return new LineInformation(){

            public int getLineOfOffset(int offset) {
                try {
                    return doc.getLineOfOffset(offset);
                }
                catch (BadLocationException badLocationException) {
                    return -1;
                }
            }

            public int getLineOffset(int line) {
                try {
                    return doc.getLineOffset(line);
                }
                catch (BadLocationException badLocationException) {
                    return -1;
                }
            }
        };
    }

    public static LineInformation create(final CompilationUnit astRoot) {
        return new LineInformation(){

            public int getLineOfOffset(int offset) {
                return astRoot.getLineNumber(offset) - 1;
            }

            public int getLineOffset(int line) {
                return astRoot.getPosition(line + 1, 0);
            }
        };
    }

    public abstract int getLineOfOffset(int var1);

    public abstract int getLineOffset(int var1);
}

