/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;

public class ColumnViewerEditorActivationStrategy {
    private ColumnViewer viewer;
    private KeyListener keyboardActivationListener;

    public ColumnViewerEditorActivationStrategy(ColumnViewer viewer) {
        this.viewer = viewer;
    }

    protected boolean isEditorActivationEvent(ColumnViewerEditorActivationEvent event) {
        boolean isLeftMouseSelect;
        boolean singleSelect = ((IStructuredSelection)this.viewer.getSelection()).size() == 1;
        boolean bl = isLeftMouseSelect = event.eventType == 2 && ((MouseEvent)event.sourceEvent).button == 1;
        return singleSelect && (isLeftMouseSelect || event.eventType == 4 || event.eventType == 5);
    }

    private ViewerCell getFocusCell() {
        return this.viewer.getColumnViewerEditor().getFocusCell();
    }

    public ColumnViewer getViewer() {
        return this.viewer;
    }

    public void setEnableEditorActivationWithKeyboard(boolean enable) {
        if (enable) {
            if (this.keyboardActivationListener == null) {
                this.keyboardActivationListener = new KeyListener(){

                    public void keyPressed(KeyEvent e) {
                        ViewerCell cell = ColumnViewerEditorActivationStrategy.this.getFocusCell();
                        if (cell != null) {
                            ColumnViewerEditorActivationStrategy.this.viewer.triggerEditorActivationEvent(new ColumnViewerEditorActivationEvent(cell, e));
                        }
                    }

                    public void keyReleased(KeyEvent e) {
                    }
                };
                this.viewer.getControl().addKeyListener(this.keyboardActivationListener);
            }
        } else if (this.keyboardActivationListener != null) {
            this.viewer.getControl().removeKeyListener(this.keyboardActivationListener);
            this.keyboardActivationListener = null;
        }
    }
}

