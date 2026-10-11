/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.contexts;

import java.util.Collection;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.core.expressions.Expression;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.services.IServiceWithSources;

public interface IContextService
extends IServiceWithSources {
    public static final String CONTEXT_ID_WORKBENCH_MENU = "org.eclipse.ui.contexts.workbenchMenu";
    public static final String CONTEXT_ID_DIALOG = "org.eclipse.ui.contexts.dialog";
    public static final String CONTEXT_ID_DIALOG_AND_WINDOW = "org.eclipse.ui.contexts.dialogAndWindow";
    public static final String CONTEXT_ID_WINDOW = "org.eclipse.ui.contexts.window";
    public static final int TYPE_DIALOG = 0;
    public static final int TYPE_NONE = 1;
    public static final int TYPE_WINDOW = 2;

    public IContextActivation activateContext(String var1);

    public IContextActivation activateContext(String var1, Expression var2);

    public IContextActivation activateContext(String var1, Expression var2, boolean var3);

    public IContextActivation activateContext(String var1, Expression var2, int var3);

    public void addContextManagerListener(IContextManagerListener var1);

    public void deactivateContext(IContextActivation var1);

    public void deactivateContexts(Collection var1);

    public Collection getActiveContextIds();

    public Context getContext(String var1);

    public Context[] getDefinedContexts();

    public Collection getDefinedContextIds();

    public int getShellType(Shell var1);

    public void readRegistry();

    public boolean registerShell(Shell var1, int var2);

    public void removeContextManagerListener(IContextManagerListener var1);

    public boolean unregisterShell(Shell var1);

    public void deferUpdates(boolean var1);
}

