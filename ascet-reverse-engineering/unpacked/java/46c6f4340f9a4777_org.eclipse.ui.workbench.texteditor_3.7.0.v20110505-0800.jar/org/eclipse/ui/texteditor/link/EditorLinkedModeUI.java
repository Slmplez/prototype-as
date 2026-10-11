/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.link.LinkedModeModel
 *  org.eclipse.jface.text.link.LinkedModeUI
 *  org.eclipse.jface.text.link.LinkedModeUI$ILinkedModeUIFocusListener
 *  org.eclipse.jface.text.link.LinkedModeUI$LinkedModeUITarget
 *  org.eclipse.jface.text.link.LinkedPosition
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.texteditor.link;

import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedModeUI;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;

public class EditorLinkedModeUI
extends LinkedModeUI {
    public EditorLinkedModeUI(LinkedModeModel model, ITextViewer viewer) {
        super(model, viewer);
        this.setPositionListener(new EditorHistoryUpdater());
    }

    public EditorLinkedModeUI(LinkedModeModel model, ITextViewer[] viewers) {
        super(model, viewers);
        this.setPositionListener(new EditorHistoryUpdater());
    }

    public EditorLinkedModeUI(LinkedModeModel model, LinkedModeUI.LinkedModeUITarget target) {
        super(model, target);
        this.setPositionListener(new EditorHistoryUpdater());
    }

    public EditorLinkedModeUI(LinkedModeModel model, LinkedModeUI.LinkedModeUITarget[] targets) {
        super(model, targets);
        this.setPositionListener(new EditorHistoryUpdater());
    }

    private static class EditorHistoryUpdater
    implements LinkedModeUI.ILinkedModeUIFocusListener {
        private EditorHistoryUpdater() {
        }

        public void linkingFocusLost(LinkedPosition position, LinkedModeUI.LinkedModeUITarget target) {
            IWorkbenchPage page;
            IWorkbenchWindow win = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
            if (win != null && (page = win.getActivePage()) != null) {
                IEditorPart part = page.getActiveEditor();
                page.getNavigationHistory().markLocation(part);
            }
        }

        public void linkingFocusGained(LinkedPosition position, LinkedModeUI.LinkedModeUITarget target) {
        }
    }
}

