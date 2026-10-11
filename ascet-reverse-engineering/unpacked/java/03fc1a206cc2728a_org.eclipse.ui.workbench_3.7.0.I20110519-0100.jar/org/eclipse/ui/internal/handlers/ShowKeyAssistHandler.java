/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.handlers.WorkbenchWindowHandlerDelegate;
import org.eclipse.ui.keys.IBindingService;

public class ShowKeyAssistHandler
extends WorkbenchWindowHandlerDelegate {
    static /* synthetic */ Class class$0;

    public Object execute(ExecutionEvent event) {
        IWorkbench workbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IBindingService bindingService = (IBindingService)workbench.getService(clazz);
        bindingService.openKeyAssistDialog();
        return null;
    }
}

