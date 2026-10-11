/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.help.IContext
 *  org.eclipse.jface.dialogs.IDialogPage
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.help;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.help.IContext;
import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.help.IContextComputer;
import org.eclipse.ui.help.WorkbenchHelp;

public class DialogPageContextComputer
implements IContextComputer {
    private IDialogPage page;
    private ArrayList contextList;
    private Object context;

    public DialogPageContextComputer(IDialogPage page, Object helpContext) {
        Assert.isTrue((helpContext instanceof String || helpContext instanceof IContext ? 1 : 0) != 0);
        this.page = page;
        this.context = helpContext;
    }

    private void addContexts(Object object, HelpEvent event) {
        Assert.isTrue((object instanceof Object[] || object instanceof IContextComputer || object instanceof String ? 1 : 0) != 0);
        if (object instanceof String) {
            this.contextList.add(object);
            return;
        }
        Object[] contexts = object instanceof IContextComputer ? ((IContextComputer)object).getLocalContexts(event) : (Object[])object;
        int i = 0;
        while (i < contexts.length) {
            this.contextList.add(contexts[i]);
            ++i;
        }
    }

    private void addContextsForControl(Control control, HelpEvent event) {
        Object object = WorkbenchHelp.getHelp(control);
        if (object == null || object == this) {
            return;
        }
        this.addContexts(object, event);
    }

    public Object[] computeContexts(HelpEvent event) {
        this.contextList = new ArrayList();
        this.contextList.add(this.context);
        this.addContextsForControl(this.page.getControl(), event);
        this.addContextsForControl((Control)this.page.getControl().getShell(), event);
        return this.contextList.toArray();
    }

    public Object[] getLocalContexts(HelpEvent event) {
        return new Object[]{this.context};
    }
}

