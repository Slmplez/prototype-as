/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.SelectionProcessor;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IBlockTextSelection;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextSelection;

public class BlockTextSelection
extends TextSelection
implements IBlockTextSelection {
    private final int fStartLine;
    private final int fStartColumn;
    private final int fEndLine;
    private final int fEndColumn;
    private final int fTabWidth;

    public BlockTextSelection(IDocument document, int startLine, int startColumn, int endLine, int endColumn, int tabWidth) {
        super(document, BlockTextSelection.computeOffset(document, startLine, startColumn), BlockTextSelection.computeOffset(document, endLine, endColumn) - BlockTextSelection.computeOffset(document, startLine, startColumn));
        Assert.isLegal((startLine >= 0 ? 1 : 0) != 0);
        Assert.isLegal((startColumn >= 0 ? 1 : 0) != 0);
        Assert.isLegal((endLine >= startLine ? 1 : 0) != 0);
        Assert.isLegal((endColumn >= 0 ? 1 : 0) != 0);
        Assert.isLegal((tabWidth >= 0 ? 1 : 0) != 0);
        this.fStartLine = startLine;
        this.fStartColumn = startColumn;
        this.fEndLine = endLine;
        this.fEndColumn = endColumn;
        this.fTabWidth = tabWidth > 0 ? tabWidth : 8;
    }

    private static int computeOffset(IDocument document, int line, int column) {
        try {
            IRegion lineInfo = document.getLineInformation(line);
            int offsetInLine = Math.min(column, lineInfo.getLength());
            return lineInfo.getOffset() + offsetInLine;
        }
        catch (BadLocationException badLocationException) {
            if (line < 0) {
                return 0;
            }
            return document.getLength();
        }
    }

    public int getStartLine() {
        return this.fStartLine;
    }

    public int getStartColumn() {
        return this.fStartColumn;
    }

    public int getEndLine() {
        return this.fEndLine;
    }

    public int getEndColumn() {
        return this.fEndColumn;
    }

    public String getText() {
        IDocument document = this.getDocument();
        if (document != null) {
            try {
                return new SelectionProcessor(document, this.fTabWidth).getText(this);
            }
            catch (BadLocationException badLocationException) {}
        }
        return super.getText();
    }

    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.fEndColumn;
        result = 31 * result + this.fEndLine;
        result = 31 * result + this.fStartColumn;
        result = 31 * result + this.fStartLine;
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        BlockTextSelection other = (BlockTextSelection)obj;
        if (this.fEndColumn != other.fEndColumn) {
            return false;
        }
        if (this.fEndLine != other.fEndLine) {
            return false;
        }
        if (this.fStartColumn != other.fStartColumn) {
            return false;
        }
        return this.fStartLine == other.fStartLine;
    }

    public IRegion[] getRegions() {
        IDocument document = this.getDocument();
        if (document != null) {
            try {
                return new SelectionProcessor(document, this.fTabWidth).getRanges(this);
            }
            catch (BadLocationException badLocationException) {}
        }
        return new IRegion[]{new Region(this.getOffset(), this.getLength())};
    }
}

