/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal.handlers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.expressions.AndExpression;
import org.eclipse.ui.internal.handlers.HandlerActivation;

public class SlaveHandlerService
implements IHandlerService {
    protected final Expression defaultExpression;
    private Collection fSourceProviders = new ArrayList();
    protected final Map localActivationsToParentActivations = new HashMap();
    protected final IHandlerService parent;
    protected final Set parentActivations = new HashSet();

    public SlaveHandlerService(IHandlerService parentHandlerService, Expression defaultExpression) {
        if (parentHandlerService == null) {
            throw new NullPointerException("The parent handler service cannot be null");
        }
        this.defaultExpression = defaultExpression;
        this.parent = parentHandlerService;
    }

    public final IHandlerActivation activateHandler(IHandlerActivation childActivation) {
        String commandId = childActivation.getCommandId();
        IHandler handler = childActivation.getHandler();
        Expression childExpression = childActivation.getExpression();
        Expression expression = this.defaultExpression;
        if (childExpression != null && this.defaultExpression != null) {
            AndExpression andExpression = new AndExpression();
            andExpression.add(childExpression);
            andExpression.add(this.defaultExpression);
            expression = andExpression;
        } else if (childExpression != null) {
            expression = childExpression;
        }
        int depth = childActivation.getDepth() + 1;
        HandlerActivation localActivation = new HandlerActivation(commandId, handler, expression, depth, this);
        return this.doActivation(localActivation);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler) {
        HandlerActivation localActivation = new HandlerActivation(commandId, handler, this.defaultExpression, 1, this);
        return this.doActivation(localActivation);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression) {
        return this.activateHandler(commandId, handler, expression, false);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression, boolean global) {
        if (global) {
            IHandlerActivation activation = this.parent.activateHandler(commandId, handler, expression, global);
            this.parentActivations.add(activation);
            return activation;
        }
        Expression aExpression = this.defaultExpression;
        if (expression != null && this.defaultExpression != null) {
            AndExpression andExpression = new AndExpression();
            andExpression.add(expression);
            andExpression.add(this.defaultExpression);
            aExpression = andExpression;
        } else if (expression != null) {
            aExpression = expression;
        }
        HandlerActivation localActivation = new HandlerActivation(commandId, handler, aExpression, 1, this);
        return this.doActivation(localActivation);
    }

    public final IHandlerActivation activateHandler(String commandId, IHandler handler, Expression expression, int sourcePriorities) {
        return this.activateHandler(commandId, handler, expression);
    }

    public final void addSourceProvider(ISourceProvider provider) {
        if (!this.fSourceProviders.contains(provider)) {
            this.fSourceProviders.add(provider);
        }
        this.parent.addSourceProvider(provider);
    }

    public final ExecutionEvent createExecutionEvent(Command command, Event event) {
        return this.parent.createExecutionEvent(command, event);
    }

    public final ExecutionEvent createExecutionEvent(ParameterizedCommand command, Event event) {
        return this.parent.createExecutionEvent(command, event);
    }

    public final void deactivateHandler(IHandlerActivation activation) {
        IHandlerActivation parentActivation = this.localActivationsToParentActivations.containsKey(activation) ? (IHandlerActivation)this.localActivationsToParentActivations.remove(activation) : activation;
        if (parentActivation != null) {
            this.parent.deactivateHandler(parentActivation);
            this.parentActivations.remove(parentActivation);
        }
    }

    public final void deactivateHandlers(Collection activations) {
        Object[] array = activations.toArray();
        int i = 0;
        while (i < array.length) {
            this.deactivateHandler((IHandlerActivation)array[i]);
            array[i] = null;
            ++i;
        }
    }

    public final void dispose() {
        this.parent.deactivateHandlers(this.parentActivations);
        this.parentActivations.clear();
        this.localActivationsToParentActivations.clear();
        if (!this.fSourceProviders.isEmpty()) {
            Object[] array = this.fSourceProviders.toArray();
            int i = 0;
            while (i < array.length) {
                this.removeSourceProvider((ISourceProvider)array[i]);
                ++i;
            }
            this.fSourceProviders.clear();
        }
    }

    protected IHandlerActivation doActivation(IHandlerActivation localActivation) {
        IHandlerActivation parentActivation = this.parent.activateHandler(localActivation);
        this.parentActivations.add(parentActivation);
        this.localActivationsToParentActivations.put(localActivation, parentActivation);
        return localActivation;
    }

    public final Object executeCommand(ParameterizedCommand command, Event event) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        return this.parent.executeCommand(command, event);
    }

    public final Object executeCommand(String commandId, Event event) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        return this.parent.executeCommand(commandId, event);
    }

    public final IEvaluationContext getCurrentState() {
        return this.parent.getCurrentState();
    }

    public final void readRegistry() {
        this.parent.readRegistry();
    }

    public final void removeSourceProvider(ISourceProvider provider) {
        this.fSourceProviders.remove(provider);
        this.parent.removeSourceProvider(provider);
    }

    public final void setHelpContextId(IHandler handler, String helpContextId) {
        this.parent.setHelpContextId(handler, helpContextId);
    }

    Expression getDefaultExpression() {
        return this.defaultExpression;
    }

    public IEvaluationContext createContextSnapshot(boolean includeSelection) {
        return this.parent.createContextSnapshot(includeSelection);
    }

    public Object executeCommandInContext(ParameterizedCommand command, Event event, IEvaluationContext context) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        return this.parent.executeCommandInContext(command, event, context);
    }
}

