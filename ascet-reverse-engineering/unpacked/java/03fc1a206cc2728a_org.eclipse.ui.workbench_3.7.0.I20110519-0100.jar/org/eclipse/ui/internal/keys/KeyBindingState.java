/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.StatusLineContributionItem
 *  org.eclipse.jface.action.StatusLineManager
 *  org.eclipse.jface.bindings.keys.KeySequence
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.StatusLineContributionItem;
import org.eclipse.jface.action.StatusLineManager;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindow;

class KeyBindingState {
    private IWorkbenchWindow associatedWindow;
    private KeySequence currentSequence = KeySequence.getInstance();
    private final IWorkbench workbench;

    KeyBindingState(IWorkbench workbenchToNotify) {
        this.workbench = workbenchToNotify;
        this.associatedWindow = this.workbench.getActiveWorkbenchWindow();
    }

    IWorkbenchWindow getAssociatedWindow() {
        return this.associatedWindow;
    }

    KeySequence getCurrentSequence() {
        return this.currentSequence;
    }

    StatusLineContributionItem getStatusLine() {
        IContributionItem item;
        WorkbenchWindow window;
        StatusLineManager statusLine;
        if (this.associatedWindow instanceof WorkbenchWindow && (statusLine = (window = (WorkbenchWindow)this.associatedWindow).getStatusLineManager()) != null && (item = statusLine.find("ModeContributionItem")) instanceof StatusLineContributionItem) {
            return (StatusLineContributionItem)item;
        }
        return null;
    }

    void reset() {
        this.currentSequence = KeySequence.getInstance();
        this.updateStatusLines();
    }

    void setAssociatedWindow(IWorkbenchWindow window) {
        this.associatedWindow = window;
    }

    void setCurrentSequence(KeySequence sequence) {
        this.currentSequence = sequence;
        this.updateStatusLines();
    }

    private void updateStatusLines() {
        StatusLineContributionItem statusLine = this.getStatusLine();
        if (statusLine != null) {
            statusLine.setText(this.getCurrentSequence().format());
        }
    }
}

