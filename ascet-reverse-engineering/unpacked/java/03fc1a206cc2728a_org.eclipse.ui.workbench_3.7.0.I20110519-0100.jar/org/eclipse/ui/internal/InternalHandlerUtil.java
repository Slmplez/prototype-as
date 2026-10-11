/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.Collection;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchSite;
import org.eclipse.ui.IWorkbenchWindow;

public class InternalHandlerUtil {
    public static Object getVariable(Object appContext, String name) {
        if (appContext instanceof IEvaluationContext) {
            return ((IEvaluationContext)appContext).getVariable(name);
        }
        return null;
    }

    public static Collection getActiveContexts(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeContexts");
        if (o instanceof Collection) {
            return (Collection)o;
        }
        return null;
    }

    public static Shell getActiveShell(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeShell");
        if (o instanceof Shell) {
            return (Shell)o;
        }
        return null;
    }

    public static IWorkbenchWindow getActiveWorkbenchWindow(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeWorkbenchWindow");
        if (o instanceof IWorkbenchWindow) {
            return (IWorkbenchWindow)o;
        }
        return null;
    }

    public static IEditorPart getActiveEditor(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeEditor");
        if (o instanceof IEditorPart) {
            return (IEditorPart)o;
        }
        return null;
    }

    public static String getActiveEditorId(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeEditorId");
        if (o instanceof String) {
            return (String)o;
        }
        return null;
    }

    public static IWorkbenchPart getActivePart(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activePart");
        if (o instanceof IWorkbenchPart) {
            return (IWorkbenchPart)o;
        }
        return null;
    }

    public static String getActivePartId(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activePartId");
        if (o instanceof String) {
            return (String)o;
        }
        return null;
    }

    public static IWorkbenchSite getActiveSite(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "activeSite");
        if (o instanceof IWorkbenchSite) {
            return (IWorkbenchSite)o;
        }
        return null;
    }

    public static ISelection getCurrentSelection(Object appContext) {
        Object o = InternalHandlerUtil.getVariable(appContext, "selection");
        if (o instanceof ISelection) {
            return (ISelection)o;
        }
        return null;
    }
}

