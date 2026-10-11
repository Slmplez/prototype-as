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
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.CycleBaseHandler;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;

public class CycleViewHandler
extends CycleBaseHandler {
    static /* synthetic */ Class class$0;

    protected void addItems(Table table, WorkbenchPage page) {
        IWorkbenchPartReference[] refs = page.getSortedParts();
        boolean includeEditor = true;
        int i = refs.length - 1;
        while (i >= 0) {
            if (refs[i] instanceof IEditorReference) {
                if (includeEditor) {
                    IEditorReference activeEditor = (IEditorReference)refs[i];
                    TableItem item = new TableItem(table, 0);
                    item.setText(WorkbenchMessages.CyclePartAction_editor);
                    item.setImage(activeEditor.getTitleImage());
                    item.setData((Object)activeEditor);
                    includeEditor = false;
                }
            } else {
                TableItem item = new TableItem(table, 0);
                item.setText(refs[i].getTitle());
                item.setImage(refs[i].getTitleImage());
                item.setData((Object)refs[i]);
            }
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
        Command command = commandService.getCommand("org.eclipse.ui.window.previousView");
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
        Command command = commandService.getCommand("org.eclipse.ui.window.nextView");
        ParameterizedCommand commandF = new ParameterizedCommand(command, null);
        return commandF;
    }

    protected String getTableHeader(IWorkbenchPart activePart) {
        return WorkbenchMessages.CyclePartAction_header;
    }
}

