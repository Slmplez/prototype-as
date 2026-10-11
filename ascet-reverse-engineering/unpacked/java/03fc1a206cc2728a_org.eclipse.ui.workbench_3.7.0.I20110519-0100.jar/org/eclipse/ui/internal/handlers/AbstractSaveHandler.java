/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.AbstractEvaluationHandler;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.handlers.DirtyStateTracker;
import org.eclipse.ui.internal.util.Util;

public abstract class AbstractSaveHandler
extends AbstractEvaluationHandler {
    protected static DirtyStateTracker dirtyStateTracker;
    private Expression enabledWhen;
    static /* synthetic */ Class class$0;

    public AbstractSaveHandler() {
        if (dirtyStateTracker == null) {
            dirtyStateTracker = new DirtyStateTracker();
        }
    }

    protected Expression getEnabledWhenExpression() {
        if (this.enabledWhen == null) {
            this.enabledWhen = new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) {
                    return AbstractSaveHandler.this.evaluate(context);
                }

                public void collectExpressionInfo(ExpressionInfo info) {
                    info.addVariableNameAccess("activePart");
                }
            };
        }
        return this.enabledWhen;
    }

    protected abstract EvaluationResult evaluate(IEvaluationContext var1);

    protected ISaveablePart getSaveablePart(IEvaluationContext context) {
        IWorkbenchPart activePart = InternalHandlerUtil.getActivePart(context);
        if (activePart instanceof ISaveablePart) {
            return (ISaveablePart)((Object)activePart);
        }
        return InternalHandlerUtil.getActiveEditor(context);
    }

    protected ISaveablePart getSaveablePart(ExecutionEvent event) {
        ISaveablePart part;
        IWorkbenchPart activePart = HandlerUtil.getActivePart(event);
        if (activePart instanceof ISaveablePart) {
            return (ISaveablePart)((Object)activePart);
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablePart");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((part = (ISaveablePart)Util.getAdapter(activePart, clazz)) != null) {
            return part;
        }
        return HandlerUtil.getActiveEditor(event);
    }
}

