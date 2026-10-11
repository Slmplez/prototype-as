/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.handlers.HandlerUtil
 */
package org.eclipse.pde.internal.runtime.spy.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.pde.internal.runtime.spy.dialogs.SpyDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.handlers.HandlerUtil;

public class SpyHandler
extends AbstractHandler {
    private SpyDialog INSTANCE = null;

    public Object execute(ExecutionEvent event) {
        if (event != null) {
            SpyDialog dialog;
            if (this.INSTANCE != null && this.INSTANCE.getShell() != null && !this.INSTANCE.getShell().isDisposed()) {
                this.INSTANCE.close();
            }
            Shell shell = HandlerUtil.getActiveShell((ExecutionEvent)event);
            this.INSTANCE = dialog = new SpyDialog(shell, event, shell.getDisplay().getCursorLocation());
            dialog.create();
            dialog.open();
        }
        return null;
    }
}

