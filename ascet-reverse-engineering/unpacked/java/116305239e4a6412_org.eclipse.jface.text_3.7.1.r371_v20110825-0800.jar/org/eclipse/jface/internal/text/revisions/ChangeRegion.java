/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.internal.text.revisions;

import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.revisions.Hunk;
import org.eclipse.jface.internal.text.revisions.Range;
import org.eclipse.jface.text.revisions.Revision;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.LineRange;

public final class ChangeRegion {
    private final Revision fRevision;
    private final ILineRange fLines;
    private final List fAdjusted = new LinkedList();

    public ChangeRegion(Revision revision, ILineRange lines) throws IndexOutOfBoundsException {
        Assert.isLegal((revision != null ? 1 : 0) != 0);
        Assert.isLegal((lines != null ? 1 : 0) != 0);
        this.fLines = Range.copy(lines);
        this.fRevision = revision;
        this.clearDiff();
    }

    public Revision getRevision() {
        return this.fRevision;
    }

    public ILineRange getOriginalRange() {
        return this.fLines;
    }

    public List getAdjustedRanges() {
        return this.fAdjusted;
    }

    public ILineRange getAdjustedCoverage() {
        if (this.fAdjusted.isEmpty()) {
            return new LineRange(this.fLines.getStartLine(), 0);
        }
        Range first = (Range)this.fAdjusted.get(0);
        Range last = (Range)this.fAdjusted.get(this.fAdjusted.size() - 1);
        return Range.createAbsolute(first.start(), last.end());
    }

    public void clearDiff() {
        this.fAdjusted.clear();
        this.fAdjusted.add(Range.copy(this.fLines));
    }

    public void adjustTo(Hunk hunk) {
        ListIterator<Range> it = this.fAdjusted.listIterator();
        while (it.hasNext()) {
            int line;
            Range range = (Range)it.next();
            int unchanged = this.getUnchanged(hunk, range.start());
            if (unchanged > 0) {
                if (unchanged >= range.length()) continue;
                range = range.split(unchanged);
                it.add(range);
                it.previous();
                it.next();
            }
            Assert.isTrue((hunk.line <= (line = range.start()) ? 1 : 0) != 0);
            int overlap = this.getOverlap(hunk, line);
            if (overlap >= range.length()) {
                it.remove();
                continue;
            }
            range.moveBy(hunk.delta + overlap);
            range.resizeBy(-overlap);
        }
    }

    private int getUnchanged(Hunk hunk, int line) {
        return Math.max(0, hunk.line - line);
    }

    private int getOverlap(Hunk hunk, int line) {
        int deltaLine = hunk.line + hunk.changed;
        if (hunk.delta >= 0) {
            if (deltaLine <= line) {
                return 0;
            }
            return deltaLine - line;
        }
        int hunkEnd = deltaLine - hunk.delta;
        int cutCount = hunkEnd - line;
        return Math.max(0, cutCount);
    }

    public String toString() {
        return "ChangeRegion [" + this.fRevision.toString() + ", [" + this.fLines.getStartLine() + "+" + this.fLines.getNumberOfLines() + ")]";
    }
}

