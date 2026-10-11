/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.handlers.AbstractSaveHandler;

public class SaveAsHandler
extends AbstractSaveHandler {
    public SaveAsHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) {
        ISaveablePart saveablePart = this.getSaveablePart(event);
        if (saveablePart != null) {
            saveablePart.doSaveAs();
        }
        return null;
    }

    protected EvaluationResult evaluate(IEvaluationContext context) {
        IWorkbenchWindow window = InternalHandlerUtil.getActiveWorkbenchWindow(context);
        if (window == null) {
            return EvaluationResult.FALSE;
        }
        WorkbenchPage page = (WorkbenchPage)window.getActivePage();
        if (page == null) {
            return EvaluationResult.FALSE;
        }
        ISaveablePart saveablePart = this.getSaveablePart(context);
        if (saveablePart == null) {
            return EvaluationResult.FALSE;
        }
        return saveablePart.isSaveAsAllowed() ? EvaluationResult.TRUE : EvaluationResult.FALSE;
    }
}

