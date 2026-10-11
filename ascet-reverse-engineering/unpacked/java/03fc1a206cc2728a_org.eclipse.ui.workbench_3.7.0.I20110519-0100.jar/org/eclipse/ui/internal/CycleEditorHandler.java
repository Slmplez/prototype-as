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
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.CycleBaseHandler;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;

public class CycleEditorHandler
extends CycleBaseHandler {
    static /* synthetic */ Class class$0;

    protected void addItems(Table table, WorkbenchPage page) {
        IEditorReference[] refs = page.getSortedEditors();
        int i = refs.length - 1;
        while (i >= 0) {
            TableItem item = null;
            item = new TableItem(table, 0);
            if (refs[i].isDirty()) {
                item.setText("*" + refs[i].getTitle());
            } else {
                item.setText(refs[i].getTitle());
            }
            item.setImage(refs[i].getTitleImage());
            item.setData((Object)refs[i]);
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
        Command command = commandService.getCommand("org.eclipse.ui.window.previousEditor");
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
        Command command = commandService.getCommand("org.eclipse.ui.window.nextEditor");
        ParameterizedCommand commandF = new ParameterizedCommand(command, null);
        return commandF;
    }

    protected String getTableHeader(IWorkbenchPart activePart) {
        return WorkbenchMessages.CycleEditorAction_header;
    }
}

