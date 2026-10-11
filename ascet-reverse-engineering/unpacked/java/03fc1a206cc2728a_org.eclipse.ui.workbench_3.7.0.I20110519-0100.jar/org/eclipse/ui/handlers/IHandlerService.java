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
package org.eclipse.ui.handlers;

import java.util.Collection;
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
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.services.IServiceWithSources;

public interface IHandlerService
extends IServiceWithSources {
    public IHandlerActivation activateHandler(IHandlerActivation var1);

    public IHandlerActivation activateHandler(String var1, IHandler var2);

    public IHandlerActivation activateHandler(String var1, IHandler var2, Expression var3);

    public IHandlerActivation activateHandler(String var1, IHandler var2, Expression var3, boolean var4);

    public IHandlerActivation activateHandler(String var1, IHandler var2, Expression var3, int var4);

    public ExecutionEvent createExecutionEvent(Command var1, Event var2);

    public ExecutionEvent createExecutionEvent(ParameterizedCommand var1, Event var2);

    public void deactivateHandler(IHandlerActivation var1);

    public void deactivateHandlers(Collection var1);

    public Object executeCommand(String var1, Event var2) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException;

    public Object executeCommand(ParameterizedCommand var1, Event var2) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException;

    public Object executeCommandInContext(ParameterizedCommand var1, Event var2, IEvaluationContext var3) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException;

    public IEvaluationContext createContextSnapshot(boolean var1);

    public IEvaluationContext getCurrentState();

    public void readRegistry();

    public void setHelpContextId(IHandler var1, String var2);
}

