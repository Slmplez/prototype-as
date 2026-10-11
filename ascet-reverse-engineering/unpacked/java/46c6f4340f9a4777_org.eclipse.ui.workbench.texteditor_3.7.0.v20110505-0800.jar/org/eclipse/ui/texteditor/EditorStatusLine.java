/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.texteditor.IEditorStatusLine;

class EditorStatusLine
implements IEditorStatusLine {
    private final IStatusLineManager fStatusLineManager;
    private final ISelectionProvider fSelectionProvider;
    private StatusLineClearer fStatusLineClearer;

    public EditorStatusLine(IStatusLineManager statusLineManager, ISelectionProvider selectionProvider) {
        Assert.isNotNull((Object)statusLineManager);
        Assert.isNotNull((Object)selectionProvider);
        this.fStatusLineManager = statusLineManager;
        this.fSelectionProvider = selectionProvider;
    }

    public IStatusLineManager getStatusLineManager() {
        return this.fStatusLineManager;
    }

    public ISelectionProvider getSelectionProvider() {
        return this.fSelectionProvider;
    }

    public void setMessage(boolean error, String message, Image image) {
        if (error) {
            this.fStatusLineManager.setErrorMessage(image, message);
        } else {
            this.fStatusLineManager.setErrorMessage(null, null);
            this.fStatusLineManager.setMessage(image, message);
        }
        if (EditorStatusLine.isMessageEmpty(message)) {
            this.uninstallStatusLineClearer();
        } else {
            this.installStatusLineClearer();
        }
    }

    private static boolean isMessageEmpty(String message) {
        return message == null || message.trim().length() == 0;
    }

    private void uninstallStatusLineClearer() {
        if (this.fStatusLineClearer == null) {
            return;
        }
        this.fSelectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this.fStatusLineClearer);
        this.fStatusLineClearer = null;
    }

    private void installStatusLineClearer() {
        if (this.fStatusLineClearer != null) {
            return;
        }
        StatusLineClearer statusLineClearer = new StatusLineClearer();
        this.fSelectionProvider.addSelectionChangedListener((ISelectionChangedListener)statusLineClearer);
        this.fStatusLineClearer = statusLineClearer;
    }

    private class StatusLineClearer
    implements ISelectionChangedListener {
        private StatusLineClearer() {
        }

        public void selectionChanged(SelectionChangedEvent event) {
            EditorStatusLine.this.fStatusLineManager.setErrorMessage(null, null);
            EditorStatusLine.this.fStatusLineManager.setMessage(null, null);
            Assert.isTrue((this == EditorStatusLine.this.fStatusLineClearer ? 1 : 0) != 0);
            EditorStatusLine.this.uninstallStatusLineClearer();
        }
    }
}

