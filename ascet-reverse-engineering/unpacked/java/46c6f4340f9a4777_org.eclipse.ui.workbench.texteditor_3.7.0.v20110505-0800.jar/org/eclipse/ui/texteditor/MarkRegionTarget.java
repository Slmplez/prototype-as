/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.text.IMarkRegionTarget
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.text.IMarkRegionTarget;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.texteditor.EditorMessages;

public class MarkRegionTarget
implements IMarkRegionTarget {
    private final ITextViewer fViewer;
    private final IStatusLineManager fStatusLine;

    public MarkRegionTarget(ITextViewer viewer, IStatusLineManager manager) {
        this.fViewer = viewer;
        this.fStatusLine = manager;
    }

    public void setMarkAtCursor(boolean set) {
        if (!(this.fViewer instanceof ITextViewerExtension)) {
            return;
        }
        ITextViewerExtension viewerExtension = (ITextViewerExtension)this.fViewer;
        if (set) {
            Point selection = this.fViewer.getSelectedRange();
            viewerExtension.setMark(selection.x);
            this.fStatusLine.setErrorMessage("");
            this.fStatusLine.setMessage(EditorMessages.Editor_mark_status_message_mark_set);
        } else {
            viewerExtension.setMark(-1);
            this.fStatusLine.setErrorMessage("");
            this.fStatusLine.setMessage(EditorMessages.Editor_mark_status_message_mark_cleared);
        }
    }

    public void swapMarkAndCursor() {
        if (!(this.fViewer instanceof ITextViewerExtension)) {
            return;
        }
        ITextViewerExtension viewerExtension = (ITextViewerExtension)this.fViewer;
        int markPosition = viewerExtension.getMark();
        if (markPosition == -1) {
            this.fStatusLine.setErrorMessage(EditorMessages.MarkRegionTarget_markNotSet);
            this.fStatusLine.setMessage("");
            return;
        }
        if (!MarkRegionTarget.isVisible(this.fViewer, markPosition)) {
            this.fStatusLine.setErrorMessage(EditorMessages.MarkRegionTarget_markNotVisible);
            this.fStatusLine.setMessage("");
            return;
        }
        Point selection = this.fViewer.getSelectedRange();
        viewerExtension.setMark(selection.x);
        this.fViewer.setSelectedRange(markPosition, 0);
        this.fViewer.revealRange(markPosition, 0);
        this.fStatusLine.setErrorMessage("");
        this.fStatusLine.setMessage(EditorMessages.Editor_mark_status_message_mark_swapped);
    }

    protected static final boolean isVisible(ITextViewer viewer, int offset) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)viewer;
            return extension.modelOffset2WidgetOffset(offset) >= 0;
        }
        IRegion region = viewer.getVisibleRegion();
        int vOffset = region.getOffset();
        return vOffset <= offset && offset <= vOffset + region.getLength();
    }
}

