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
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.AbstractEvaluationHandler;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.util.Util;

public class CloseAllSavedHandler
extends AbstractEvaluationHandler {
    private Expression enabledWhen;
    private IWorkbenchPage page;

    protected Expression getEnabledWhenExpression() {
        if (this.enabledWhen == null) {
            this.enabledWhen = new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) {
                    return CloseAllSavedHandler.this.evaluate(context);
                }

                public void collectExpressionInfo(ExpressionInfo info) {
                    info.addVariableNameAccess("activePart");
                }
            };
        }
        return this.enabledWhen;
    }

    private EvaluationResult evaluate(IEvaluationContext context) {
        IWorkbenchWindow window = InternalHandlerUtil.getActiveWorkbenchWindow(context);
        this.setWindow(window);
        return window != null && window.getActivePage() != null ? EvaluationResult.TRUE : EvaluationResult.FALSE;
    }

    private void setWindow(IWorkbenchWindow window) {
        if (Util.equals(this.page, window.getActivePage())) {
            return;
        }
        this.page = window.getActivePage();
        this.update();
    }

    public IWorkbenchPage getActivePage() {
        return this.page;
    }

    public Object execute(ExecutionEvent event) {
        IWorkbenchPage page = this.getActivePage();
        if (page != null) {
            ((WorkbenchPage)page).closeAllSavedEditors();
        }
        return null;
    }

    protected void update() {
        IWorkbenchPage page = this.getActivePage();
        if (page == null) {
            this.setEnabled(false);
            return;
        }
        IEditorReference[] editors = page.getEditorReferences();
        int i = 0;
        while (i < editors.length) {
            if (!editors[i].isDirty()) {
                this.setEnabled(true);
                return;
            }
            ++i;
        }
        this.setEnabled(false);
    }
}

