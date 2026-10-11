/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentCommand;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.TextUtilities;

public class DefaultIndentLineAutoEditStrategy
implements IAutoEditStrategy {
    protected int findEndOfWhiteSpace(IDocument document, int offset, int end) throws BadLocationException {
        while (offset < end) {
            char c = document.getChar(offset);
            if (c != ' ' && c != '\t') {
                return offset;
            }
            ++offset;
        }
        return end;
    }

    private void autoIndentAfterNewLine(IDocument d, DocumentCommand c) {
        if (c.offset == -1 || d.getLength() == 0) {
            return;
        }
        try {
            int p = c.offset == d.getLength() ? c.offset - 1 : c.offset;
            IRegion info = d.getLineInformationOfOffset(p);
            int start = info.getOffset();
            int end = this.findEndOfWhiteSpace(d, start, c.offset);
            StringBuffer buf = new StringBuffer(c.text);
            if (end > start) {
                buf.append(d.get(start, end - start));
            }
            c.text = buf.toString();
        }
        catch (BadLocationException badLocationException) {}
    }

    public void customizeDocumentCommand(IDocument d, DocumentCommand c) {
        if (c.length == 0 && c.text != null && TextUtilities.endsWith((String[])d.getLegalLineDelimiters(), (String)c.text) != -1) {
            this.autoIndentAfterNewLine(d, c);
        }
    }
}

