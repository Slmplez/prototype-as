/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.jface.text.source;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.source.ICharacterPairMatcher;

public class DefaultCharacterPairMatcher
implements ICharacterPairMatcher {
    private int fAnchor = -1;
    private final CharPairs fPairs;
    private final String fPartitioning;

    public DefaultCharacterPairMatcher(char[] chars, String partitioning) {
        Assert.isLegal((chars.length % 2 == 0 ? 1 : 0) != 0);
        Assert.isNotNull((Object)partitioning);
        this.fPairs = new CharPairs(chars);
        this.fPartitioning = partitioning;
    }

    public DefaultCharacterPairMatcher(char[] chars) {
        this(chars, "__dftl_partitioning");
    }

    public IRegion match(IDocument doc, int offset) {
        if (doc == null || offset < 0 || offset > doc.getLength()) {
            return null;
        }
        try {
            return this.performMatch(doc, offset);
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private IRegion performMatch(IDocument doc, int caretOffset) throws BadLocationException {
        int adjustedEndOffset;
        int charOffset = caretOffset - 1;
        char prevChar = doc.getChar(Math.max(charOffset, 0));
        if (!this.fPairs.contains(prevChar)) {
            return null;
        }
        boolean isForward = this.fPairs.isStartCharacter(prevChar);
        this.fAnchor = isForward ? 1 : 0;
        int searchStartPosition = isForward ? caretOffset : caretOffset - 2;
        int adjustedOffset = isForward ? charOffset : caretOffset;
        String partition = TextUtilities.getContentType((IDocument)doc, (String)this.fPartitioning, (int)charOffset, (boolean)false);
        DocumentPartitionAccessor partDoc = new DocumentPartitionAccessor(doc, this.fPartitioning, partition);
        int endOffset = this.findMatchingPeer(partDoc, prevChar, this.fPairs.getMatching(prevChar), isForward, isForward ? doc.getLength() : -1, searchStartPosition);
        if (endOffset == -1) {
            return null;
        }
        int n = adjustedEndOffset = isForward ? endOffset + 1 : endOffset;
        if (adjustedEndOffset == adjustedOffset) {
            return null;
        }
        return new Region(Math.min(adjustedOffset, adjustedEndOffset), Math.abs(adjustedEndOffset - adjustedOffset));
    }

    private int findMatchingPeer(DocumentPartitionAccessor doc, char start, char end, boolean searchForward, int boundary, int startPos) throws BadLocationException {
        int pos = startPos;
        while (pos != boundary) {
            char c = doc.getChar(pos);
            if (doc.isMatch(pos, end)) {
                return pos;
            }
            if (c == start && doc.inPartition(pos) && (pos = this.findMatchingPeer(doc, start, end, searchForward, boundary, doc.getNextPosition(pos, searchForward))) == -1) {
                return -1;
            }
            pos = doc.getNextPosition(pos, searchForward);
        }
        return -1;
    }

    public int getAnchor() {
        return this.fAnchor;
    }

    public void dispose() {
    }

    public void clear() {
        this.fAnchor = -1;
    }

    private static class CharPairs {
        private final char[] fPairs;
        private Set fCharsCache = null;

        public CharPairs(char[] pairs) {
            this.fPairs = pairs;
        }

        public boolean contains(char c) {
            return this.getAllCharacters().contains(new Character(c));
        }

        private Set getAllCharacters() {
            if (this.fCharsCache == null) {
                HashSet<Character> set = new HashSet<Character>();
                int i = 0;
                while (i < this.fPairs.length) {
                    set.add(new Character(this.fPairs[i]));
                    ++i;
                }
                this.fCharsCache = set;
            }
            return this.fCharsCache;
        }

        public boolean isOpeningCharacter(char c, boolean searchForward) {
            int i = 0;
            while (i < this.fPairs.length) {
                if (searchForward && this.getStartChar(i) == c) {
                    return true;
                }
                if (!searchForward && this.getEndChar(i) == c) {
                    return true;
                }
                i += 2;
            }
            return false;
        }

        public boolean isStartCharacter(char c) {
            return this.isOpeningCharacter(c, true);
        }

        public char getMatching(char c) {
            int i = 0;
            while (i < this.fPairs.length) {
                if (this.getStartChar(i) == c) {
                    return this.getEndChar(i);
                }
                if (this.getEndChar(i) == c) {
                    return this.getStartChar(i);
                }
                i += 2;
            }
            Assert.isTrue((boolean)false);
            return '\u0000';
        }

        private char getStartChar(int i) {
            return this.fPairs[i];
        }

        private char getEndChar(int i) {
            return this.fPairs[i + 1];
        }
    }

    private static class DocumentPartitionAccessor {
        private final IDocument fDocument;
        private final String fPartitioning;
        private final String fPartition;
        private ITypedRegion fCachedPartition;

        public DocumentPartitionAccessor(IDocument doc, String partitioning, String partition) {
            this.fDocument = doc;
            this.fPartitioning = partitioning;
            this.fPartition = partition;
        }

        public char getChar(int pos) throws BadLocationException {
            return this.fDocument.getChar(pos);
        }

        public boolean isMatch(int pos, char end) throws BadLocationException {
            return this.getChar(pos) == end && this.inPartition(pos);
        }

        public boolean inPartition(int pos) {
            ITypedRegion partition = this.getPartition(pos);
            return partition != null && partition.getType().equals(this.fPartition);
        }

        public int getNextPosition(int pos, boolean searchForward) {
            ITypedRegion partition = this.getPartition(pos);
            if (partition == null) {
                return this.simpleIncrement(pos, searchForward);
            }
            if (this.fPartition.equals(partition.getType())) {
                return this.simpleIncrement(pos, searchForward);
            }
            if (searchForward) {
                int end = partition.getOffset() + partition.getLength();
                if (pos < end) {
                    return end;
                }
            } else {
                int offset = partition.getOffset();
                if (pos > offset) {
                    return offset - 1;
                }
            }
            return this.simpleIncrement(pos, searchForward);
        }

        private int simpleIncrement(int pos, boolean searchForward) {
            return pos + (searchForward ? 1 : -1);
        }

        private ITypedRegion getPartition(int pos) {
            if (this.fCachedPartition == null || !DocumentPartitionAccessor.contains((IRegion)this.fCachedPartition, pos)) {
                Assert.isTrue((pos >= 0 && pos <= this.fDocument.getLength() ? 1 : 0) != 0);
                try {
                    this.fCachedPartition = TextUtilities.getPartition((IDocument)this.fDocument, (String)this.fPartitioning, (int)pos, (boolean)false);
                }
                catch (BadLocationException badLocationException) {
                    this.fCachedPartition = null;
                }
            }
            return this.fCachedPartition;
        }

        private static boolean contains(IRegion region, int pos) {
            int offset = region.getOffset();
            return offset <= pos && pos < offset + region.getLength();
        }
    }
}

