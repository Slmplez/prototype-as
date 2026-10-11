/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandler2
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.handlers.HandlerActivation;
import org.eclipse.ui.internal.handlers.HandlerAuthority;
import org.eclipse.ui.internal.handlers.HandlerPersistence;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.services.IServiceLocator;

public final class HandlerService
implements IHandlerService {
    private final ICommandService commandService;
    private final HandlerAuthority handlerAuthority;
    private final HandlerPersistence handlerPersistence;

    static {
        Command.DEBUG_HANDLERS = Policy.DEBUG_HANDLERS_VERBOSE;
        Command.DEBUG_HANDLERS_COMMAND_ID = Policy.DEBUG_HANDLERS_VERBOSE_COMMAND_ID;
    }

    public HandlerService(ICommandService commandService, IEvaluationService evaluationService, IServiceLocator locator) {
        if (commandService == null) {
            throw new NullPointerException("A handler service requires a command service");
        }
        this.commandService = commandService;
        this.handlerAuthority = new HandlerAuthority(commandService, locator);
        this.handlerPersistence = new HandlerPersistence(this, evaluationService);
    }

    public final IHandlerActivation activateHandler(IHandlerActivation childActivation) {
        String commandId = childActivation.getCommandId();
        IHandler handler = childActivation.getHandler();
        Expression expression = childActivation.getExpression();
        int depth = childActivation.getDepth() + 1;
        HandlerActivation localActivation = new HandlerActivation(commandId, handler, expression, depth, this);
        this.handlerAuthority.activateHandler(localActivation);
        return localActivation;
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler) {
        return this.activateHandler(commandId, handler, null);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression) {
        return this.activateHandler(commandId, handler, expression, false);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression, boolean global) {
        HandlerActivation activation = new HandlerActivation(commandId, handler, expression, 1, this);
        this.handlerAuthority.activateHandler(activation);
        return activation;
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression, int sourcePriority) {
        return this.activateHandler(commandId, handler, expression);
    }

    public final void addSourceProvider(ISourceProvider provider) {
    }

    public final ExecutionEvent createExecutionEvent(Command command, Event event) {
        return new ExecutionEvent(command, Collections.EMPTY_MAP, (Object)event, (Object)this.getCurrentState());
    }

    public ExecutionEvent createExecutionEvent(ParameterizedCommand command, Event event) {
        return new ExecutionEvent(command.getCommand(), command.getParameterMap(), (Object)event, (Object)this.getCurrentState());
    }

    public final void deactivateHandler(IHandlerActivation activation) {
        if (activation.getHandlerService() == this) {
            this.handlerAuthority.deactivateHandler(activation);
        }
    }

    public final void deactivateHandlers(Collection activations) {
        Iterator activationItr = activations.iterator();
        while (activationItr.hasNext()) {
            IHandlerActivation activation = (IHandlerActivation)activationItr.next();
            this.deactivateHandler(activation);
        }
    }

    public final void dispose() {
        this.handlerAuthority.dispose();
        this.handlerPersistence.dispose();
    }

    public final Object executeCommand(ParameterizedCommand command, Event trigger) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        return command.executeWithChecks((Object)trigger, (Object)this.getCurrentState());
    }

    public final Object executeCommand(String commandId, Event trigger) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        Command command = this.commandService.getCommand(commandId);
        ExecutionEvent event = new ExecutionEvent(command, Collections.EMPTY_MAP, (Object)trigger, (Object)this.getCurrentState());
        return command.executeWithChecks(event);
    }

    public final IEvaluationContext getCurrentState() {
        return this.handlerAuthority.getCurrentState();
    }

    public final void readRegistry() {
        this.handlerPersistence.read();
    }

    public final void removeSourceProvider(ISourceProvider provider) {
    }

    public final void setHelpContextId(IHandler handler, String helpContextId) {
        this.commandService.setHelpContextId(handler, helpContextId);
    }

    public final void updateShellKludge() {
        this.handlerAuthority.updateShellKludge();
    }

    public final void updateShellKludge(Shell shell) {
        this.handlerAuthority.updateShellKludge(shell);
    }

    public final IHandler findHandler(String commandId, IEvaluationContext context) {
        return this.handlerAuthority.findHandler(commandId, context);
    }

    public IEvaluationContext createContextSnapshot(boolean includeSelection) {
        return this.handlerAuthority.createContextSnapshot(includeSelection);
    }

    public final Object executeCommandInContext(ParameterizedCommand command, Event trigger, IEvaluationContext context) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        IHandler oldHandler = command.getCommand().getHandler();
        IHandler handler = this.findHandler(command.getId(), context);
        if (handler instanceof IHandler2) {
            ((IHandler2)handler).setEnabled((Object)context);
        }
        try {
            command.getCommand().setHandler(handler);
            Object object = command.executeWithChecks((Object)trigger, (Object)context);
            return object;
        }
        finally {
            command.getCommand().setHandler(oldHandler);
            if (handler instanceof IHandler2) {
                ((IHandler2)handler).setEnabled((Object)this.getCurrentState());
            }
        }
    }

    public HandlerPersistence getHandlerPersistence() {
        return this.handlerPersistence;
    }
}

