/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Collection;
import org.eclipse.ui.commands.HandlerSubmission;
import org.eclipse.ui.commands.ICommandManager;

public interface IWorkbenchCommandSupport {
    public void addHandlerSubmission(HandlerSubmission var1);

    public void addHandlerSubmissions(Collection var1);

    public ICommandManager getCommandManager();

    public void removeHandlerSubmission(HandlerSubmission var1);

    public void removeHandlerSubmissions(Collection var1);
}

