/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.internal.intro.IntroMessages;

public class IntroHandler
extends AbstractHandler {
    private Workbench workbench = (Workbench)PlatformUI.getWorkbench();
    private IntroDescriptor introDescriptor = this.workbench.getIntroDescriptor();

    public Object execute(ExecutionEvent event) {
        if (this.introDescriptor == null) {
            MessageDialog.openWarning((Shell)HandlerUtil.getActiveShell(event), (String)IntroMessages.Intro_missing_product_title, (String)IntroMessages.Intro_missing_product_message);
        } else {
            IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindow(event);
            this.workbench.getIntroManager().showIntro(window, false);
        }
        return null;
    }

    public boolean isEnabled() {
        boolean enabled = false;
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null) {
            enabled = window.getPages().length > 0;
        }
        return enabled;
    }
}

