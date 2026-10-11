/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.internal.databinding.viewers.TreeViewerUpdater;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;

public class CheckboxTreeViewerUpdater
extends TreeViewerUpdater {
    private final CheckboxTreeViewer checkboxViewer;

    CheckboxTreeViewerUpdater(CheckboxTreeViewer viewer) {
        super((AbstractTreeViewer)viewer);
        this.checkboxViewer = viewer;
    }

    public void move(Object parent, Object element, int oldPosition, int newPosition) {
        if (this.isElementOrderPreserved()) {
            boolean wasChecked = this.checkboxViewer.getChecked(element);
            boolean wasGrayed = this.checkboxViewer.getGrayed(element);
            super.move(parent, element, oldPosition, newPosition);
            this.checkboxViewer.setChecked(element, wasChecked);
            this.checkboxViewer.setGrayed(element, wasGrayed);
        }
    }
}

