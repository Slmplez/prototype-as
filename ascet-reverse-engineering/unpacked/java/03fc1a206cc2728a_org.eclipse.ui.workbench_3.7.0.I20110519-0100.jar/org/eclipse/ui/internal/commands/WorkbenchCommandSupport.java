/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.jface.bindings.BindingManager
 */
package org.eclipse.ui.internal.commands;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.ui.LegacyHandlerSubmissionExpression;
import org.eclipse.ui.commands.HandlerSubmission;
import org.eclipse.ui.commands.ICommandManager;
import org.eclipse.ui.commands.IWorkbenchCommandSupport;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.commands.CommandManagerFactory;
import org.eclipse.ui.internal.commands.CommandManagerLegacyWrapper;
import org.eclipse.ui.internal.handlers.LegacyHandlerWrapper;
import org.eclipse.ui.keys.KeyFormatterFactory;
import org.eclipse.ui.keys.SWTKeySupport;

public class WorkbenchCommandSupport
implements IWorkbenchCommandSupport {
    private Map activationsBySubmission = null;
    private final CommandManagerLegacyWrapper commandManagerWrapper;
    private final IHandlerService handlerService;

    public WorkbenchCommandSupport(BindingManager bindingManager, CommandManager commandManager, ContextManager contextManager, IHandlerService handlerService) {
        if (handlerService == null) {
            throw new NullPointerException("The handler service cannot be null");
        }
        this.handlerService = handlerService;
        this.commandManagerWrapper = CommandManagerFactory.getCommandManagerWrapper(bindingManager, commandManager, contextManager);
        KeyFormatterFactory.setDefault(SWTKeySupport.getKeyFormatterForPlatform());
    }

    public final void addHandlerSubmission(HandlerSubmission handlerSubmission) {
        IHandlerActivation activation = this.handlerService.activateHandler(handlerSubmission.getCommandId(), new LegacyHandlerWrapper(handlerSubmission.getHandler()), new LegacyHandlerSubmissionExpression(handlerSubmission.getActivePartId(), handlerSubmission.getActiveShell(), handlerSubmission.getActiveWorkbenchPartSite()));
        if (this.activationsBySubmission == null) {
            this.activationsBySubmission = new HashMap();
        }
        this.activationsBySubmission.put(handlerSubmission, activation);
    }

    public final void addHandlerSubmissions(Collection handlerSubmissions) {
        Iterator submissionItr = handlerSubmissions.iterator();
        while (submissionItr.hasNext()) {
            this.addHandlerSubmission((HandlerSubmission)submissionItr.next());
        }
    }

    public ICommandManager getCommandManager() {
        return this.commandManagerWrapper;
    }

    public final void removeHandlerSubmission(HandlerSubmission handlerSubmission) {
        if (this.activationsBySubmission == null) {
            return;
        }
        Object value = this.activationsBySubmission.remove(handlerSubmission);
        if (value instanceof IHandlerActivation) {
            IHandlerActivation activation = (IHandlerActivation)value;
            this.handlerService.deactivateHandler(activation);
        }
    }

    public final void removeHandlerSubmissions(Collection handlerSubmissions) {
        Iterator submissionItr = handlerSubmissions.iterator();
        while (submissionItr.hasNext()) {
            this.removeHandlerSubmission((HandlerSubmission)submissionItr.next());
        }
    }
}

