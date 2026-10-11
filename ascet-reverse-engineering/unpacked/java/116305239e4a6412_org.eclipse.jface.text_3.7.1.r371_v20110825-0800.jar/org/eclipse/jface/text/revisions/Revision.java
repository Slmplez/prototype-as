/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.text.revisions;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.internal.text.revisions.ChangeRegion;
import org.eclipse.jface.internal.text.revisions.Hunk;
import org.eclipse.jface.text.revisions.RevisionRange;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.swt.graphics.RGB;

public abstract class Revision {
    private final List fChangeRegions = new ArrayList();
    private List fRanges = null;

    protected Revision() {
    }

    public final void addRange(ILineRange range) throws IndexOutOfBoundsException {
        this.fChangeRegions.add(new ChangeRegion(this, range));
    }

    public final List getRegions() {
        if (this.fRanges == null) {
            ArrayList<RevisionRange> ranges = new ArrayList<RevisionRange>(this.fChangeRegions.size());
            Iterator it = this.fChangeRegions.iterator();
            while (it.hasNext()) {
                ChangeRegion region = (ChangeRegion)it.next();
                Iterator inner = region.getAdjustedRanges().iterator();
                while (inner.hasNext()) {
                    ILineRange range = (ILineRange)inner.next();
                    ranges.add(new RevisionRange(this, range));
                }
            }
            this.fRanges = Collections.unmodifiableList(ranges);
        }
        return this.fRanges;
    }

    final void applyDiff(Hunk[] hunks) {
        this.fRanges = null;
        Iterator regions = this.fChangeRegions.iterator();
        while (regions.hasNext()) {
            ChangeRegion region = (ChangeRegion)regions.next();
            region.clearDiff();
            int i = 0;
            while (i < hunks.length) {
                Hunk hunk = hunks[i];
                region.adjustTo(hunk);
                ++i;
            }
        }
    }

    public abstract Object getHoverInfo();

    public abstract RGB getColor();

    public abstract String getId();

    public abstract Date getDate();

    public String toString() {
        return "Revision " + this.getId();
    }

    public String getAuthor() {
        return "";
    }
}

