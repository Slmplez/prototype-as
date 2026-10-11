/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.IOpenListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.OpenEvent
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredViewer
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.IOpenListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.OpenEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredViewer;

public abstract class OpenAndLinkWithEditorHelper {
    private StructuredViewer viewer;
    private boolean isLinkingEnabled;
    private ISelection lastOpenSelection;
    private InternalListener listener;

    public OpenAndLinkWithEditorHelper(StructuredViewer viewer) {
        Assert.isLegal((viewer != null ? 1 : 0) != 0);
        this.viewer = viewer;
        this.listener = new InternalListener();
        viewer.addPostSelectionChangedListener((ISelectionChangedListener)this.listener);
        viewer.addOpenListener((IOpenListener)this.listener);
        viewer.addDoubleClickListener((IDoubleClickListener)this.listener);
    }

    public void setLinkWithEditor(boolean enabled) {
        this.isLinkingEnabled = enabled;
    }

    public void dispose() {
        this.viewer.removePostSelectionChangedListener((ISelectionChangedListener)this.listener);
        this.viewer.removeOpenListener((IOpenListener)this.listener);
        this.viewer.removeDoubleClickListener((IDoubleClickListener)this.listener);
        this.listener = null;
    }

    protected abstract void activate(ISelection var1);

    protected abstract void open(ISelection var1, boolean var2);

    protected abstract void linkToEditor(ISelection var1);

    private final class InternalListener
    implements IOpenListener,
    ISelectionChangedListener,
    IDoubleClickListener {
        private InternalListener() {
        }

        public final void open(OpenEvent event) {
            OpenAndLinkWithEditorHelper.this.lastOpenSelection = event.getSelection();
            OpenAndLinkWithEditorHelper.this.open(OpenAndLinkWithEditorHelper.this.lastOpenSelection, OpenStrategy.activateOnOpen());
        }

        public void selectionChanged(SelectionChangedEvent event) {
            ISelection selection = event.getSelection();
            if (OpenAndLinkWithEditorHelper.this.isLinkingEnabled && !selection.equals(OpenAndLinkWithEditorHelper.this.lastOpenSelection) && OpenAndLinkWithEditorHelper.this.viewer.getControl().isFocusControl()) {
                OpenAndLinkWithEditorHelper.this.linkToEditor(selection);
            }
            OpenAndLinkWithEditorHelper.this.lastOpenSelection = null;
        }

        public void doubleClick(DoubleClickEvent event) {
            if (!OpenStrategy.activateOnOpen()) {
                OpenAndLinkWithEditorHelper.this.activate(event.getSelection());
            }
        }
    }
}

