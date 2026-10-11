/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.help.IWorkbenchHelpSystem;

public final class DisplayHelpHandler
extends AbstractHandler {
    private static final String PARAM_ID_HREF = "href";

    public final Object execute(ExecutionEvent event) {
        IWorkbenchHelpSystem helpSystem = PlatformUI.getWorkbench().getHelpSystem();
        String href = event.getParameter(PARAM_ID_HREF);
        if (href == null) {
            helpSystem.displayHelp();
        } else {
            helpSystem.displayHelpResource(href);
        }
        return null;
    }
}

