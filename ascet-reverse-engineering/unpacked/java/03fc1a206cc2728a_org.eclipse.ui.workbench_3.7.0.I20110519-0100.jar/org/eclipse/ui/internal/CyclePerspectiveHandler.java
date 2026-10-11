/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.CycleBaseHandler;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.model.PerspectiveLabelProvider;

public class CyclePerspectiveHandler
extends CycleBaseHandler {
    private PerspectiveLabelProvider labelProvider = new PerspectiveLabelProvider(false);
    static /* synthetic */ Class class$0;

    protected void addItems(Table table, WorkbenchPage page) {
        IPerspectiveDescriptor[] perspectives = page.getSortedPerspectives();
        int i = perspectives.length - 1;
        while (i >= 0) {
            TableItem item = new TableItem(table, 0);
            IPerspectiveDescriptor desc = perspectives[i];
            String text = this.labelProvider.getText(desc);
            if (text == null) {
                text = "";
            }
            item.setText(text);
            item.setImage(this.labelProvider.getImage(desc));
            item.setData((Object)desc);
            --i;
        }
    }

    protected ParameterizedCommand getBackwardCommand() {
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbench.getService(clazz);
        Command command = commandService.getCommand("org.eclipse.ui.window.previousPerspective");
        ParameterizedCommand commandBack = new ParameterizedCommand(command, null);
        return commandBack;
    }

    protected ParameterizedCommand getForwardCommand() {
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbench.getService(clazz);
        Command command = commandService.getCommand("org.eclipse.ui.window.nextPerspective");
        ParameterizedCommand commandF = new ParameterizedCommand(command, null);
        return commandF;
    }

    protected String getTableHeader(IWorkbenchPart activePart) {
        return WorkbenchMessages.CyclePerspectiveAction_header;
    }

    public void dispose() {
        if (this.labelProvider != null) {
            this.labelProvider.dispose();
            this.labelProvider = null;
        }
        super.dispose();
    }
}

