/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.dialogs.PreferencesUtil;
import org.eclipse.ui.handlers.HandlerUtil;

public final class ShowPreferencePageHandler
extends AbstractHandler {
    public final Object execute(ExecutionEvent event) {
        String preferencePageId = event.getParameter("preferencePageId");
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        Shell shell = activeWorkbenchWindow == null ? null : activeWorkbenchWindow.getShell();
        PreferenceDialog dialog = PreferencesUtil.createPreferenceDialogOn(shell, preferencePageId, null, null);
        dialog.open();
        return null;
    }
}

