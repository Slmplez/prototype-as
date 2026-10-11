/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.util.IPropertyChangeListener
 */
package org.eclipse.ui.internal.handlers;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.services.EvaluationResultCache;
import org.eclipse.ui.services.IEvaluationReference;

final class HandlerActivation
extends EvaluationResultCache
implements IHandlerActivation {
    private final String commandId;
    private final int depth;
    private final IHandler handler;
    private final IHandlerService handlerService;
    private IEvaluationReference reference = null;
    private IPropertyChangeListener listener = null;

    HandlerActivation(String commandId, IHandler handler, Expression expression, int depth, IHandlerService handlerService) {
        super(expression);
        if (commandId == null) {
            throw new NullPointerException("The command identifier for a handler activation cannot be null");
        }
        if (handlerService == null) {
            throw new NullPointerException("The handler service for an activation cannot be null");
        }
        this.commandId = commandId;
        this.depth = depth;
        this.handler = handler;
        this.handlerService = handlerService;
    }

    public final void clearActive() {
        this.clearResult();
    }

    public final int compareTo(Object object) {
        int difference;
        IHandlerActivation activation = (IHandlerActivation)object;
        int thisPriority = this.getSourcePriority();
        int thatPriority = activation.getSourcePriority();
        int thisLsb = 0;
        int thatLsb = 0;
        if ((thisPriority & Integer.MIN_VALUE | thatPriority & Integer.MIN_VALUE) != 0) {
            thisLsb = thisPriority & 1;
            thisPriority = thisPriority >> 1 & Integer.MAX_VALUE;
            thatLsb = thatPriority & 1;
            thatPriority = thatPriority >> 1 & Integer.MAX_VALUE;
        }
        if ((difference = thisPriority - thatPriority) != 0) {
            return difference;
        }
        difference = thisLsb - thatLsb;
        if (difference != 0) {
            return difference;
        }
        int thisDepth = this.getDepth();
        int thatDepth = activation.getDepth();
        difference = thisDepth - thatDepth;
        return difference;
    }

    public final String getCommandId() {
        return this.commandId;
    }

    public final int getDepth() {
        return this.depth;
    }

    public final IHandler getHandler() {
        return this.handler;
    }

    public final IHandlerService getHandlerService() {
        return this.handlerService;
    }

    public final boolean isActive(IEvaluationContext context) {
        return this.evaluate(context);
    }

    public final String toString() {
        StringWriter sw = new StringWriter();
        BufferedWriter buffer = new BufferedWriter(sw);
        try {
            buffer.write("HandlerActivation(commandId=");
            buffer.write(this.commandId);
            buffer.write(44);
            buffer.newLine();
            buffer.write("\thandler=");
            buffer.write(this.handler == null ? "" : this.handler.toString());
            buffer.write(44);
            buffer.newLine();
            buffer.write("\texpression=");
            Expression exp = this.getExpression();
            buffer.write(exp == null ? "" : exp.toString());
            buffer.write(",sourcePriority=");
            buffer.write(Integer.toString(this.getSourcePriority()));
            buffer.write(41);
            buffer.flush();
        }
        catch (IOException iOException) {}
        return sw.toString();
    }

    public IEvaluationReference getReference() {
        return this.reference;
    }

    public void setReference(IEvaluationReference reference) {
        this.reference = reference;
    }

    public void setListener(IPropertyChangeListener listener) {
        this.listener = listener;
    }

    public IPropertyChangeListener getListener() {
        return this.listener;
    }
}

