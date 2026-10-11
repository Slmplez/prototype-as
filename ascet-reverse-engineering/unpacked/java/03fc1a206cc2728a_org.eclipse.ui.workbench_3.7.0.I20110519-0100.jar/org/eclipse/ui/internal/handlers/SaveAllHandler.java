/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.IEvaluationContext
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.InternalHandlerUtil;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.handlers.AbstractSaveHandler;

public class SaveAllHandler
extends AbstractSaveHandler {
    static /* synthetic */ Class class$0;

    public SaveAllHandler() {
        this.registerEnablement();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchWindow window = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        IWorkbenchPage page = window.getActivePage();
        if (page != null) {
            ((WorkbenchPage)page).saveAllEditors(false, true);
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
        if (page.getDirtyParts().length > 0) {
            return EvaluationResult.TRUE;
        }
        IWorkbench iWorkbench = window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SaveablesList saveablesList = (SaveablesList)iWorkbench.getService(clazz);
        ISaveablesSource[] nonPartSources = saveablesList.getNonPartSources();
        int i = 0;
        while (i < nonPartSources.length) {
            Saveable[] saveables = nonPartSources[i].getSaveables();
            int j = 0;
            while (j < saveables.length) {
                if (saveables[j].isDirty()) {
                    return EvaluationResult.TRUE;
                }
                ++j;
            }
            ++i;
        }
        return EvaluationResult.FALSE;
    }
}

