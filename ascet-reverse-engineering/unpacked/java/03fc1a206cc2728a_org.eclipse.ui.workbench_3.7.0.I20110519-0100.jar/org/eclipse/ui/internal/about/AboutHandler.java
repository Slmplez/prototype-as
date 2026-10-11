/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 */
package org.eclipse.ui.internal.about;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.dialogs.AboutDialog;

public class AboutHandler
extends AbstractHandler {
    public Object execute(ExecutionEvent event) throws ExecutionException {
        new AboutDialog(HandlerUtil.getActiveShellChecked(event)).open();
        return null;
    }
}

