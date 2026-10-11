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
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.SaveableHelper;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.handlers.AbstractSaveHandler;

public class SaveHandler
extends AbstractSaveHandler {
    public SaveHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) {
        ISaveablePart saveablePart = this.getSaveablePart(event);
        if (saveablePart == null) {
            return null;
        }
        if (saveablePart instanceof IEditorPart) {
            IEditorPart editorPart = (IEditorPart)saveablePart;
            IWorkbenchPage page = editorPart.getSite().getPage();
            page.saveEditor(editorPart, false);
            return null;
        }
        IWorkbenchPart activePart = HandlerUtil.getActivePart(event);
        WorkbenchPage page = (WorkbenchPage)activePart.getSite().getPage();
        page.savePart(saveablePart, activePart, false);
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
        if (saveablePart instanceof ISaveablesSource) {
            ISaveablesSource modelSource = (ISaveablesSource)((Object)saveablePart);
            if (SaveableHelper.needsSave(modelSource)) {
                return EvaluationResult.TRUE;
            }
            return EvaluationResult.FALSE;
        }
        if (saveablePart != null && saveablePart.isDirty()) {
            return EvaluationResult.TRUE;
        }
        return EvaluationResult.FALSE;
    }
}

