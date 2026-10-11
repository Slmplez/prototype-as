/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.internal.handlers;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchPage;

public class ClosePerspectiveHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) throws ExecutionException {
        WorkbenchPage page;
        IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
        if (activeWorkbenchWindow != null && (page = (WorkbenchPage)activeWorkbenchWindow.getActivePage()) != null) {
            Map parameters = event.getParameters();
            String value = (String)parameters.get("org.eclipse.ui.window.closePerspective.perspectiveId");
            if (value == null) {
                page.closePerspective(page.getPerspective(), true, true);
            } else {
                IPerspectiveDescriptor perspective = activeWorkbenchWindow.getWorkbench().getPerspectiveRegistry().findPerspectiveWithId(value);
                if (perspective != null) {
                    page.closePerspective(perspective, true, true);
                }
            }
        }
        return null;
    }

    public static void closePerspective(WorkbenchPage page, Perspective persp) {
        if (page != null && persp != null) {
            page.closePerspective(persp.getDesc(), true, true);
        }
    }
}

