/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.keys.BindingService;
import org.eclipse.ui.internal.menus.CommandMessages;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.quickaccess.CommandProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class CommandElement
extends QuickAccessElement {
    private ParameterizedCommand command;
    private String id;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    CommandElement(ParameterizedCommand command, String id, CommandProvider commandProvider) {
        super(commandProvider);
        this.id = id;
        this.command = command;
    }

    public void execute() {
        CommandProvider provider;
        QuickAccessProvider o = this.getProvider();
        if (o instanceof CommandProvider && (provider = (CommandProvider)o).getHandlerService() != null) {
            try {
                provider.getHandlerService().executeCommandInContext(this.command, null, provider.getContextSnapshot());
            }
            catch (Exception ex) {
                StatusUtil.handleStatus(ex, 3);
            }
            return;
        }
        IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        if (window != null) {
            IWorkbench iWorkbench = window.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService handlerService = (IHandlerService)iWorkbench.getService(clazz);
            try {
                handlerService.executeCommand(this.command, null);
            }
            catch (Exception ex) {
                StatusUtil.handleStatus(ex, 3);
            }
        }
    }

    public String getId() {
        return this.id;
    }

    public ImageDescriptor getImageDescriptor() {
        return null;
    }

    public String getCommand() {
        StringBuffer label = new StringBuffer();
        try {
            Command nestedCommand = this.command.getCommand();
            label.append(this.command.getName());
            if (nestedCommand != null && nestedCommand.getDescription() != null && nestedCommand.getDescription().length() != 0) {
                label.append(" - ").append(nestedCommand.getDescription());
            }
        }
        catch (NotDefinedException notDefinedException) {
            label.append(this.command.toString());
        }
        return label.toString();
    }

    public String getLabel() {
        String command = this.getCommand();
        String binding = this.getBinding();
        if (binding != null) {
            return NLS.bind((String)CommandMessages.Tooltip_Accelerator, (Object)command, (Object)binding);
        }
        return command;
    }

    public String getBinding() {
        BindingService service;
        TriggerSequence[] triggerSeq;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((triggerSeq = (service = (BindingService)iWorkbench.getService(clazz)).getBindingManager().getActiveBindingsDisregardingContextFor(this.command)) != null && triggerSeq.length > 0) {
            return triggerSeq[0].format();
        }
        return null;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.command == null ? 0 : this.command.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        CommandElement other = (CommandElement)obj;
        return !(this.command == null ? other.command != null : !this.command.equals((Object)other.command));
    }
}

