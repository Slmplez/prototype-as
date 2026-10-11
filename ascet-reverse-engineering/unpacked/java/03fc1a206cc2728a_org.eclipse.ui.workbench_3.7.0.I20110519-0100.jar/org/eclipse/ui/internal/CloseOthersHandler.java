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
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.AbstractEvaluationHandler;
import org.eclipse.ui.internal.InternalHandlerUtil;

public class CloseOthersHandler
extends AbstractEvaluationHandler {
    private Expression enabledWhen;

    public CloseOthersHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IEditorReference[] refArray;
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        IWorkbenchPage page = window.getActivePage();
        if (page != null && (refArray = page.getEditorReferences()) != null && refArray.length > 1) {
            IEditorReference[] otherEditors = new IEditorReference[refArray.length - 1];
            IEditorReference activeEditor = (IEditorReference)page.getReference(page.getActiveEditor());
            int i = 0;
            while (i < refArray.length) {
                if (refArray[i] == activeEditor) {
                    System.arraycopy(refArray, 0, otherEditors, 0, i);
                    System.arraycopy(refArray, i + 1, otherEditors, i, refArray.length - 1 - i);
                    break;
                }
                ++i;
            }
            page.closeEditors(otherEditors, true);
        }
        return null;
    }

    protected Expression getEnabledWhenExpression() {
        if (this.enabledWhen == null) {
            this.enabledWhen = new Expression(){

                public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
                    IEditorReference[] refArray;
                    IWorkbenchPage page;
                    IWorkbenchWindow window = InternalHandlerUtil.getActiveWorkbenchWindow(context);
                    if (window != null && (page = window.getActivePage()) != null && (refArray = page.getEditorReferences()) != null && refArray.length > 1) {
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

