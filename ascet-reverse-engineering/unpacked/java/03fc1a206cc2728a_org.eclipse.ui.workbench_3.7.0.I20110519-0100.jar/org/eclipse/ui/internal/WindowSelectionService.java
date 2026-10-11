/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.AbstractPartSelectionTracker;
import org.eclipse.ui.internal.AbstractSelectionService;
import org.eclipse.ui.internal.WindowPartSelectionTracker;

class WindowSelectionService
extends AbstractSelectionService {
    private IWorkbenchWindow window;

    public WindowSelectionService(IWorkbenchWindow window) {
        this.setWindow(window);
    }

    private void setWindow(IWorkbenchWindow window) {
        this.window = window;
    }

    protected IWorkbenchWindow getWindow() {
        return this.window;
    }

    protected AbstractPartSelectionTracker createPartTracker(String partId) {
        return new WindowPartSelectionTracker(this.getWindow(), partId);
    }
}

