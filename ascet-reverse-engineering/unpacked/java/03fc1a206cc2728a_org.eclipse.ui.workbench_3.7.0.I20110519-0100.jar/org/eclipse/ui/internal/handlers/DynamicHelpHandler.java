/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.swt.custom.BusyIndicator
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.ui.PlatformUI;

public class DynamicHelpHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) {
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                PlatformUI.getWorkbench().getHelpSystem().displayDynamicHelp();
            }
        });
        return null;
    }
}

