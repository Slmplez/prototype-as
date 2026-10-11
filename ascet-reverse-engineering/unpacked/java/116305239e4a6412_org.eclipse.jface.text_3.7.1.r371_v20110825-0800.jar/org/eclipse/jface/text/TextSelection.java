/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.ITextSelection;

public class TextSelection
implements ITextSelection {
    private static final boolean ASSERT_INVLID_SELECTION_NULL = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text/assert/TextSelection/validConstructorArguments"));
    private static final ITextSelection NULL = new TextSelection();
    private final IDocument fDocument;
    private int fOffset;
    private int fLength;

    public static ITextSelection emptySelection() {
        return NULL;
    }

    private TextSelection() {
        this.fOffset = -1;
        this.fLength = -1;
        this.fDocument = null;
    }

    public TextSelection(int offset, int length) {
        this(null, offset, length);
    }

    public TextSelection(IDocument document, int offset, int length) {
        if (ASSERT_INVLID_SELECTION_NULL) {
            Assert.isLegal((offset >= 0 ? 1 : 0) != 0);
            Assert.isLegal((length >= 0 ? 1 : 0) != 0);
        }
        this.fDocument = document;
        this.fOffset = offset;
        this.fLength = length;
    }

    public boolean isEmpty() {
        return this == NULL || this.fOffset < 0 || this.fLength < 0;
    }

    public int getOffset() {
        return this.fOffset;
    }

    public int getLength() {
        return this.fLength;
    }

    public int getStartLine() {
        try {
            if (this.fDocument != null) {
                return this.fDocument.getLineOfOffset(this.fOffset);
            }
        }
        catch (BadLocationException badLocationException) {}
        return -1;
    }

    public int getEndLine() {
        try {
            if (this.fDocument != null) {
                int endOffset = this.fOffset + this.fLength;
                if (this.fLength != 0) {
                    --endOffset;
                }
                return this.fDocument.getLineOfOffset(endOffset);
            }
        }
        catch (BadLocationException badLocationException) {}
        return -1;
    }

    public String getText() {
        try {
            if (this.fDocument != null) {
                return this.fDocument.get(this.fOffset, this.fLength);
            }
        }
        catch (BadLocationException badLocationException) {}
        return null;
    }

    public boolean equals(Object obj) {
        boolean sameRange;
        if (obj == this) {
            return true;
        }
        if (obj == null || this.getClass() != obj.getClass()) {
            return false;
        }
        TextSelection s = (TextSelection)obj;
        boolean bl = sameRange = s.fOffset == this.fOffset && s.fLength == this.fLength;
        if (sameRange) {
            if (s.fDocument == null && this.fDocument == null) {
                return true;
            }
            if (s.fDocument == null || this.fDocument == null) {
                return false;
            }
            try {
                String sContent = s.fDocument.get(this.fOffset, this.fLength);
                String content = this.fDocument.get(this.fOffset, this.fLength);
                return sContent.equals(content);
            }
            catch (BadLocationException badLocationException) {}
        }
        return false;
    }

    public int hashCode() {
        int low = this.fDocument != null ? this.fDocument.hashCode() : 0;
        return this.fOffset << 24 | this.fLength << 16 | low;
    }

    protected IDocument getDocument() {
        return this.fDocument;
    }
}

