/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.ui.internal;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.AbstractEvaluationHandler;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSite;

public class ShowPartPaneMenuHandler
extends AbstractEvaluationHandler {
    private Expression enabledWhen;

    public ShowPartPaneMenuHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchPartSite site;
        IWorkbenchPart part = HandlerUtil.getActivePart(event);
        if (part != null && (site = part.getSite()) instanceof PartSite) {
            PartPane pane = ((PartSite)site).getPane();
            pane.showSystemMenu();
        }
        return null;
    }

    protected Expression getEnabledWhenExpression() {
        if (this.enabledWhen == null) {
            this.enabledWhen = new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
                    IWorkbenchPart part = InternalHandlerUtil.getActivePart(context);
                    if (part != null) {
                        return EvaluationResult.TRUE;
                    }
                    return EvaluationResult.FALSE;
                }

                public void collectExpressionInfo(ExpressionInfo info) {
                    info.addVariableNameAccess("activePart");
                }
            };
        }
        return this.enabledWhen;
    }
}

