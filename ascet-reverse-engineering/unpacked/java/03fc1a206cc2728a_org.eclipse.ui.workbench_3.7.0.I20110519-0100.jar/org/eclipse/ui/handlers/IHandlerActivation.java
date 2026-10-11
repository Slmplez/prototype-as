/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.handlers;

import org.eclipse.core.commands.IHandler;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.services.IEvaluationResultCache;

public interface IHandlerActivation
extends IEvaluationResultCache,
Comparable {
    public static final int ROOT_DEPTH = 1;

    public void clearActive();

    public String getCommandId();

    public int getDepth();

    public IHandler getHandler();

    public IHandlerService getHandlerService();

    public boolean isActive(IEvaluationContext var1);
}

