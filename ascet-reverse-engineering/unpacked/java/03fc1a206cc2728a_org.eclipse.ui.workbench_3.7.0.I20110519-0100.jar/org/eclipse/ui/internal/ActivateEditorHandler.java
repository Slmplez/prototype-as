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
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.AbstractEvaluationHandler;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.WorkbenchPage;

public class ActivateEditorHandler
extends AbstractEvaluationHandler {
    private Expression enabledWhen;

    public ActivateEditorHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        IWorkbenchPage page = window.getActivePage();
        if (page != null) {
            IEditorPart part = HandlerUtil.getActiveEditor(event);
            if (part != null) {
                page.activate(part);
            } else {
                IWorkbenchPartReference ref = page.getActivePartReference();
                if (ref instanceof IViewReference && ((WorkbenchPage)page).isFastView((IViewReference)ref)) {
                    ((WorkbenchPage)page).toggleFastView((IViewReference)ref);
                }
            }
        }
        return null;
    }

    protected Expression getEnabledWhenExpression() {
        if (this.enabledWhen == null) {
            this.enabledWhen = new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
                    IWorkbenchWindow window = InternalHandlerUtil.getActiveWorkbenchWindow(context);
                    if (window != null && window.getActivePage() != null) {
                        return EvaluationResult.TRUE;
                    }
                    return EvaluationResult.FALSE;
                }

                public void collectExpressionInfo(ExpressionInfo info) {
                    info.addVariableNameAccess("activeWorkbenchWindow");
                }
            };
        }
        return this.enabledWhen;
    }
}

