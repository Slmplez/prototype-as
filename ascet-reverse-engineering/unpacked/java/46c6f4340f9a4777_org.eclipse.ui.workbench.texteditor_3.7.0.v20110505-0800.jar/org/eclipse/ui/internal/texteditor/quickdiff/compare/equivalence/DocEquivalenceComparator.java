/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.compare.rangedifferencer.IRangeComparator
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.source.ILineRange
 */
package org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence;

import java.util.ConcurrentModificationException;
import org.eclipse.compare.rangedifferencer.IRangeComparator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.DocumentEquivalenceClass;
import org.eclipse.ui.internal.texteditor.quickdiff.compare.equivalence.Hash;

public final class DocEquivalenceComparator
implements IRangeComparator {
    private final DocumentEquivalenceClass fEquivalenceClass;
    private final int fLineOffset;
    private final int fLines;
    private boolean fSkip = false;

    public DocEquivalenceComparator(DocumentEquivalenceClass equivalenceClass, ILineRange range) {
        this.fEquivalenceClass = equivalenceClass;
        if (range == null) {
            this.fLineOffset = 0;
            this.fLines = this.fEquivalenceClass.getCount();
        } else {
            this.fLineOffset = range.getStartLine();
            this.fLines = range.getNumberOfLines();
            Assert.isTrue((this.fLineOffset >= 0 ? 1 : 0) != 0);
            Assert.isTrue((this.fLineOffset + this.fLines <= this.fEquivalenceClass.getCount() ? 1 : 0) != 0);
        }
    }

    public int getRangeCount() {
        return this.fLines;
    }

    public boolean rangesEqual(int thisIndex, IRangeComparator other, int otherIndex) {
        if (other instanceof DocEquivalenceComparator) {
            DocEquivalenceComparator dec = (DocEquivalenceComparator)other;
            try {
                Hash ourHash = this.getHash(thisIndex);
                Hash otherHash = dec.getHash(otherIndex);
                return ourHash.equals(otherHash);
            }
            catch (ConcurrentModificationException concurrentModificationException) {
                this.fSkip = true;
            }
            catch (IndexOutOfBoundsException indexOutOfBoundsException) {
                this.fSkip = true;
            }
        }
        return false;
    }

    Hash getHash(int index) {
        return this.fEquivalenceClass.getHash(this.fLineOffset + index);
    }

    public boolean skipRangeComparison(int length, int max, IRangeComparator other) {
        return this.fSkip;
    }
}

