/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.revisions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.revisions.Revision;
import org.eclipse.jface.text.source.ILineRange;

public final class RevisionRange
implements ILineRange {
    private final Revision fRevision;
    private final int fStartLine;
    private final int fNumberOfLines;

    RevisionRange(Revision revision, ILineRange range) {
        Assert.isLegal((revision != null ? 1 : 0) != 0);
        this.fRevision = revision;
        this.fStartLine = range.getStartLine();
        this.fNumberOfLines = range.getNumberOfLines();
    }

    public Revision getRevision() {
        return this.fRevision;
    }

    public int getStartLine() {
        return this.fStartLine;
    }

    public int getNumberOfLines() {
        return this.fNumberOfLines;
    }

    public String toString() {
        return "RevisionRange [" + this.fRevision.toString() + ", [" + this.getStartLine() + "+" + this.getNumberOfLines() + ")]";
    }
}

