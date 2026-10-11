/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.BreakIterator
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 */
package org.eclipse.jface.text;

import com.ibm.icu.text.BreakIterator;
import java.text.CharacterIterator;
import java.util.Locale;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextDoubleClickStrategy;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Region;

public class DefaultTextDoubleClickStrategy
implements ITextDoubleClickStrategy {
    private DocumentCharacterIterator fDocIter = new DocumentCharacterIterator();
    private BreakIterator fWordBreakIterator;
    private BreakIterator fPOSIXWordBreakIterator;

    public void doubleClicked(ITextViewer text) {
        int offset = text.getSelectedRange().x;
        if (offset < 0) {
            return;
        }
        IDocument document = text.getDocument();
        IRegion region = this.findExtendedDoubleClickSelection(document, offset);
        if (region == null) {
            region = this.findWord(document, offset);
        }
        if (region != null) {
            text.setSelectedRange(region.getOffset(), region.getLength());
        }
    }

    protected IRegion findExtendedDoubleClickSelection(IDocument document, int offset) {
        return null;
    }

    protected IRegion findWord(IDocument document, int offset) {
        return this.findWord(document, offset, this.getWordBreakIterator());
    }

    private BreakIterator getWordBreakIterator() {
        if (this.fWordBreakIterator == null) {
            this.fWordBreakIterator = BreakIterator.getWordInstance();
        }
        return this.fWordBreakIterator;
    }

    private BreakIterator getPOSIXWordBreakIterator() {
        if (this.fPOSIXWordBreakIterator == null) {
            this.fPOSIXWordBreakIterator = BreakIterator.getWordInstance((Locale)new Locale("en", "US", "POSIX"));
        }
        return this.fPOSIXWordBreakIterator;
    }

    private IRegion findWord(IDocument document, int offset, BreakIterator wordBreakIterator) {
        int end;
        IRegion line;
        try {
            line = document.getLineInformationOfOffset(offset);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
        if (offset == line.getOffset() + line.getLength()) {
            return null;
        }
        this.fDocIter.setDocument(document, line);
        wordBreakIterator.setText((CharacterIterator)this.fDocIter);
        int start = wordBreakIterator.preceding(offset);
        if (start == -1) {
            start = line.getOffset();
        }
        if ((end = wordBreakIterator.following(offset)) == -1) {
            end = line.getOffset() + line.getLength();
        }
        if (wordBreakIterator.isBoundary(offset)) {
            if (end - offset > offset - start) {
                start = offset;
            } else {
                end = offset;
            }
        }
        if (end == start) {
            return null;
        }
        int length = end - start;
        try {
            IRegion wordRegion;
            if (this.fPOSIXWordBreakIterator != wordBreakIterator && document.get(start, length).indexOf(46) != -1 && (wordRegion = this.findWord(document, offset, this.getPOSIXWordBreakIterator())) != null) {
                int wordStart = wordRegion.getOffset();
                int wordEnd = wordStart + wordRegion.getLength();
                if ((wordStart == start || wordStart > start && document.getChar(wordStart - 1) == '.') && (wordEnd == end || wordEnd < end && document.getChar(wordEnd) == '.')) {
                    return wordRegion;
                }
            }
        }
        catch (BadLocationException badLocationException) {}
        return new Region(start, length);
    }

    static class DocumentCharacterIterator
    implements CharacterIterator {
        private IDocument fDocument;
        private int fOffset = -1;
        private int fEndOffset = -1;
        private int fIndex = -1;

        public void setDocument(IDocument document, IRegion iteratorRange) {
            this.fDocument = document;
            this.fOffset = iteratorRange.getOffset();
            this.fEndOffset = this.fOffset + iteratorRange.getLength();
        }

        public char first() {
            this.fIndex = this.fOffset;
            return this.current();
        }

        public char last() {
            this.fIndex = this.fOffset < this.fEndOffset ? this.fEndOffset - 1 : this.fEndOffset;
            return this.current();
        }

        public char current() {
            if (this.fOffset <= this.fIndex && this.fIndex < this.fEndOffset) {
                try {
                    return this.fDocument.getChar(this.fIndex);
                }
                catch (BadLocationException badLocationException) {}
            }
            return '\uffff';
        }

        public char next() {
            ++this.fIndex;
            int end = this.getEndIndex();
            if (this.fIndex >= end) {
                this.fIndex = end;
                return '\uffff';
            }
            return this.current();
        }

        public char previous() {
            if (this.fIndex == this.fOffset) {
                return '\uffff';
            }
            if (this.fIndex > this.fOffset) {
                --this.fIndex;
            }
            return this.current();
        }

        public char setIndex(int index) {
            this.fIndex = index;
            return this.current();
        }

        public int getBeginIndex() {
            return this.fOffset;
        }

        public int getEndIndex() {
            return this.fEndOffset;
        }

        public int getIndex() {
            return this.fIndex;
        }

        public Object clone() {
            DocumentCharacterIterator i = new DocumentCharacterIterator();
            i.fDocument = this.fDocument;
            i.fIndex = this.fIndex;
            i.fOffset = this.fOffset;
            i.fEndOffset = this.fEndOffset;
            return i;
        }
    }
}

