/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.revisions;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.revisions.Hunk;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextHoverExtension;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.revisions.Revision;
import org.eclipse.jface.text.revisions.RevisionRange;

public final class RevisionInformation
implements ITextHoverExtension,
IInformationProviderExtension2 {
    private final List fRevisions = new ArrayList();
    private final List fRORevisions = Collections.unmodifiableList(this.fRevisions);
    private List fRanges = null;
    private IInformationControlCreator fHoverControlCreator;
    private IInformationControlCreator fInformationPresenterControlCreator;

    public void addRevision(Revision revision) {
        Assert.isLegal((revision != null ? 1 : 0) != 0);
        this.fRevisions.add(revision);
    }

    public List getRevisions() {
        return this.fRORevisions;
    }

    public List getRanges() {
        if (this.fRanges == null) {
            ArrayList ranges = new ArrayList(this.fRevisions.size() * 2);
            Iterator it = this.fRevisions.iterator();
            while (it.hasNext()) {
                Revision revision = (Revision)it.next();
                ranges.addAll(revision.getRegions());
            }
            Collections.sort(ranges, new Comparator(){

                public int compare(Object o1, Object o2) {
                    RevisionRange r1 = (RevisionRange)o1;
                    RevisionRange r2 = (RevisionRange)o2;
                    return r1.getStartLine() - r2.getStartLine();
                }
            });
            this.fRanges = Collections.unmodifiableList(ranges);
        }
        return this.fRanges;
    }

    public void applyDiff(Hunk[] hunks) {
        this.fRanges = null;
        Iterator revisions = this.getRevisions().iterator();
        while (revisions.hasNext()) {
            ((Revision)revisions.next()).applyDiff(hunks);
        }
    }

    public IInformationControlCreator getHoverControlCreator() {
        return this.fHoverControlCreator;
    }

    public IInformationControlCreator getInformationPresenterControlCreator() {
        return this.fInformationPresenterControlCreator;
    }

    public void setHoverControlCreator(IInformationControlCreator creator) {
        this.fHoverControlCreator = creator;
    }

    public void setInformationPresenterControlCreator(IInformationControlCreator creator) {
        this.fInformationPresenterControlCreator = creator;
    }
}

