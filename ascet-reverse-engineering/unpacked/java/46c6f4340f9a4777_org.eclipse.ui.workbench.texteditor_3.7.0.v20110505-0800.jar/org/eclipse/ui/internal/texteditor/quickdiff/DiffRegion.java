/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.ILineDiffInfo
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffRangeDifference;

public final class DiffRegion
extends Annotation
implements ILineDiffInfo {
    private final QuickDiffRangeDifference fDifference;
    private final int fOffset;
    private final List fList;
    private final IDocument fDocument;

    public DiffRegion(QuickDiffRangeDifference difference, int offset, List differences, IDocument source) {
        super("org.eclipse.ui.workbench.texteditor.quickdiffChange", false, null);
        this.fOffset = offset;
        this.fDifference = difference;
        this.fList = differences;
        this.fDocument = source;
    }

    public String getType() {
        switch (this.getChangeType()) {
            case 2: {
                int r = this.fDifference.rightLength();
                int l = this.fDifference.leftLength();
                int c = Math.min(r, l);
                if (c == 0 && r - l < 0) {
                    return "org.eclipse.ui.workbench.texteditor.quickdiffDeletion";
                }
                return "org.eclipse.ui.workbench.texteditor.quickdiffChange";
            }
            case 1: {
                return "org.eclipse.ui.workbench.texteditor.quickdiffAddition";
            }
            case 0: {
                return "org.eclipse.ui.workbench.texteditor.quickdiffUnchanged";
            }
        }
        return "org.eclipse.text.annotation.unknown";
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getRemovedLinesBelow() {
        if (this.fOffset == this.fDifference.rightLength() - 1) {
            if (this.getChangeType() != 0) {
                return Math.max(this.fDifference.leftLength() - this.fDifference.rightLength(), 0);
            }
            List list = this.fList;
            synchronized (list) {
                ListIterator it = this.fList.listIterator();
                while (it.hasNext()) {
                    QuickDiffRangeDifference next;
                    if (!this.fDifference.equals(it.next())) continue;
                    if (!it.hasNext() || (next = (QuickDiffRangeDifference)((Object)it.next())).rightLength() != 0) break;
                    return Math.max(next.leftLength() - next.rightLength(), 0);
                }
            }
        }
        return 0;
    }

    public int getChangeType() {
        if (this.fDifference.kind() == 0) {
            return 0;
        }
        if (this.fOffset >= this.fDifference.leftLength()) {
            return 1;
        }
        return 2;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public int getRemovedLinesAbove() {
        if (this.getChangeType() == 0 && this.fOffset == 0) {
            List list = this.fList;
            synchronized (list) {
                ListIterator it = this.fList.listIterator(this.fList.size());
                while (it.hasPrevious()) {
                    if (!this.fDifference.equals(it.previous())) continue;
                    if (!it.hasPrevious()) break;
                    QuickDiffRangeDifference previous = (QuickDiffRangeDifference)((Object)it.previous());
                    return Math.max(previous.leftLength() - previous.rightLength(), 0);
                }
            }
        }
        return 0;
    }

    public boolean hasChanges() {
        return this.getChangeType() != 0 || this.getRemovedLinesAbove() > 0 || this.getRemovedLinesBelow() > 0;
    }

    public String[] getOriginalText() {
        IDocument doc = this.fDocument;
        if (doc != null) {
            int startLine = this.fDifference.leftStart() + this.fOffset;
            if (startLine >= this.fDifference.leftEnd()) {
                return new String[0];
            }
            int endLine = startLine + this.getRemovedLinesBelow();
            if (this.getChangeType() == 0) {
                ++startLine;
            }
            String[] ret = new String[endLine - startLine + 1];
            int i = 0;
            while (i < ret.length) {
                try {
                    ret[i] = doc.get(doc.getLineOffset(startLine + i), doc.getLineLength(startLine + i));
                }
                catch (BadLocationException badLocationException) {
                    ret[i] = "";
                }
                ++i;
            }
            return ret;
        }
        return new String[0];
    }

    public String getText() {
        String changed;
        int r = this.fDifference.rightLength();
        int l = this.fDifference.leftLength();
        int c = Math.min(r, l);
        int a = r - l;
        String string = changed = c > 0 ? NLSUtility.format(QuickDiffMessages.quickdiff_annotation_changed, new Integer(c)) : null;
        String added = a > 0 ? NLSUtility.format(QuickDiffMessages.quickdiff_annotation_added, new Integer(a)) : (a < 0 ? NLSUtility.format(QuickDiffMessages.quickdiff_annotation_deleted, new Integer(-a)) : null);
        String line = c > 1 || c == 0 && Math.abs(a) > 1 ? QuickDiffMessages.quickdiff_annotation_line_plural : QuickDiffMessages.quickdiff_annotation_line_singular;
        String ret = String.valueOf(changed != null ? changed : "") + (changed != null ? " " + line : "") + (changed != null && added != null ? ", " : " ") + (added != null ? added : "") + (added != null && changed == null ? " " + line : "");
        return ret;
    }

    public QuickDiffRangeDifference getDifference() {
        return this.fDifference;
    }

    public int getOffset() {
        return this.fOffset;
    }
}

