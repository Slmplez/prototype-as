/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.SWTFocusCellManager;
import org.eclipse.jface.viewers.ViewerCell;

public abstract class FocusCellHighlighter {
    private ColumnViewer viewer;
    private SWTFocusCellManager mgr;

    public FocusCellHighlighter(ColumnViewer viewer) {
        this.viewer = viewer;
    }

    void setMgr(SWTFocusCellManager mgr) {
        this.mgr = mgr;
    }

    public ViewerCell getFocusCell() {
        if (this.mgr != null) {
            return this.mgr._getFocusCell();
        }
        return this.viewer.getColumnViewerEditor().getFocusCell();
    }

    protected void focusCellChanged(ViewerCell cell) {
    }

    protected void focusCellChanged(ViewerCell newCell, ViewerCell oldCell) {
        this.focusCellChanged(newCell);
    }

    protected void init() {
    }
}

