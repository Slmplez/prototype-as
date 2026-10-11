/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.contexts;

import java.util.Collection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.contexts.EnabledSubmission;
import org.eclipse.ui.contexts.IContextManager;

public interface IWorkbenchContextSupport {
    public static final String CONTEXT_ID_DIALOG = "org.eclipse.ui.contexts.dialog";
    public static final String CONTEXT_ID_DIALOG_AND_WINDOW = "org.eclipse.ui.contexts.dialogAndWindow";
    public static final String CONTEXT_ID_WINDOW = "org.eclipse.ui.contexts.window";
    public static final int TYPE_DIALOG = 0;
    public static final int TYPE_NONE = 1;
    public static final int TYPE_WINDOW = 2;

    public void addEnabledSubmission(EnabledSubmission var1);

    public void addEnabledSubmissions(Collection var1);

    public IContextManager getContextManager();

    public int getShellType(Shell var1);

    public boolean isKeyFilterEnabled();

    public void openKeyAssistDialog();

    public boolean registerShell(Shell var1, int var2);

    public void removeEnabledSubmission(EnabledSubmission var1);

    public void removeEnabledSubmissions(Collection var1);

    public void setKeyFilterEnabled(boolean var1);

    public boolean unregisterShell(Shell var1);
}

