/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.statushandlers.AbstractStatusHandler;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class WorkbenchErrorHandlerProxy
extends AbstractStatusHandler {
    public void handle(StatusAdapter statusAdapter, int style) {
        Workbench.getInstance().getAdvisor().getWorkbenchErrorHandler().handle(statusAdapter, style);
    }

    public boolean supportsNotification(int type) {
        return Workbench.getInstance().getAdvisor().getWorkbenchErrorHandler().supportsNotification(type);
    }
}

