/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractTableViewer
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.internal.databinding.viewers.TableViewerUpdater;
import org.eclipse.jface.viewers.AbstractTableViewer;
import org.eclipse.jface.viewers.CheckboxTableViewer;

public class CheckboxTableViewerUpdater
extends TableViewerUpdater {
    private final CheckboxTableViewer checkboxViewer;

    CheckboxTableViewerUpdater(CheckboxTableViewer viewer) {
        super((AbstractTableViewer)viewer);
        this.checkboxViewer = viewer;
    }

    public void move(Object element, int oldPosition, int newPosition) {
        if (this.isElementOrderPreserved()) {
            boolean wasChecked = this.checkboxViewer.getChecked(element);
            boolean wasGrayed = this.checkboxViewer.getGrayed(element);
            super.move(element, oldPosition, newPosition);
            this.checkboxViewer.setChecked(element, wasChecked);
            this.checkboxViewer.setGrayed(element, wasGrayed);
        }
    }
}

