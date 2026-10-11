/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.handlers;

import java.util.Collection;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.State;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchSite;
import org.eclipse.ui.IWorkbenchWindow;

public class HandlerUtil {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    private static void noVariableFound(ExecutionEvent event, String name) throws ExecutionException {
        throw new ExecutionException("No " + name + " found while executing " + event.getCommand().getId());
    }

    private static void incorrectTypeFound(ExecutionEvent event, String name, Class expectedType, Class wrongType) throws ExecutionException {
        throw new ExecutionException("Incorrect type for " + name + " found while executing " + event.getCommand().getId() + ", expected " + expectedType.getName() + " found " + wrongType.getName());
    }

    public static Object getVariable(ExecutionEvent event, String name) {
        if (event.getApplicationContext() instanceof IEvaluationContext) {
            Object var = ((IEvaluationContext)event.getApplicationContext()).getVariable(name);
            return var == IEvaluationContext.UNDEFINED_VARIABLE ? null : var;
        }
        return null;
    }

    public static Object getVariableChecked(ExecutionEvent event, String name) throws ExecutionException {
        Object o = HandlerUtil.getVariable(event, name);
        if (o == null) {
            HandlerUtil.noVariableFound(event, name);
        }
        return o;
    }

    public static Object getVariable(Object context, String name) {
        if (context instanceof IEvaluationContext) {
            Object var = ((IEvaluationContext)context).getVariable(name);
            return var == IEvaluationContext.UNDEFINED_VARIABLE ? null : var;
        }
        return null;
    }

    public static Collection getActiveContexts(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeContexts");
        if (o instanceof Collection) {
            return (Collection)o;
        }
        return null;
    }

    public static Collection getActiveContextsChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeContexts");
        if (!(o instanceof Collection)) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.util.Collection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeContexts", clazz, o.getClass());
        }
        return (Collection)o;
    }

    public static Shell getActiveShell(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeShell");
        if (o instanceof Shell) {
            return (Shell)o;
        }
        return null;
    }

    public static Shell getActiveShellChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeShell");
        if (!(o instanceof Shell)) {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.swt.widgets.Shell");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeShell", clazz, o.getClass());
        }
        return (Shell)o;
    }

    public static IWorkbenchWindow getActiveWorkbenchWindow(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeWorkbenchWindow");
        if (o instanceof IWorkbenchWindow) {
            return (IWorkbenchWindow)o;
        }
        return null;
    }

    public static IWorkbenchWindow getActiveWorkbenchWindowChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeWorkbenchWindow");
        if (!(o instanceof IWorkbenchWindow)) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.ui.IWorkbenchWindow");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeWorkbenchWindow", clazz, o.getClass());
        }
        return (IWorkbenchWindow)o;
    }

    public static IEditorPart getActiveEditor(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeEditor");
        if (o instanceof IEditorPart) {
            return (IEditorPart)o;
        }
        return null;
    }

    public static IEditorPart getActiveEditorChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeEditor");
        if (!(o instanceof IEditorPart)) {
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.ui.IEditorPart");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeEditor", clazz, o.getClass());
        }
        return (IEditorPart)o;
    }

    public static String getActiveEditorId(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeEditorId");
        if (o instanceof String) {
            return (String)o;
        }
        return null;
    }

    public static String getActiveEditorIdChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeEditorId");
        if (!(o instanceof String)) {
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeEditorId", clazz, o.getClass());
        }
        return (String)o;
    }

    public static IEditorInput getActiveEditorInput(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeEditorInput");
        if (o instanceof IEditorInput) {
            return (IEditorInput)o;
        }
        return null;
    }

    public static IEditorInput getActiveEditorInputChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeEditorInput");
        if (!(o instanceof IEditorInput)) {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.ui.IEditorInput");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeEditorInput", clazz, o.getClass());
        }
        return (IEditorInput)o;
    }

    public static IWorkbenchPart getActivePart(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activePart");
        if (o instanceof IWorkbenchPart) {
            return (IWorkbenchPart)o;
        }
        return null;
    }

    public static IWorkbenchPart getActivePartChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activePart");
        if (!(o instanceof IWorkbenchPart)) {
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.ui.IWorkbenchPart");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activePart", clazz, o.getClass());
        }
        return (IWorkbenchPart)o;
    }

    public static String getActivePartId(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activePartId");
        if (o instanceof String) {
            return (String)o;
        }
        return null;
    }

    public static String getActivePartIdChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activePartId");
        if (!(o instanceof String)) {
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activePartId", clazz, o.getClass());
        }
        return (String)o;
    }

    public static IWorkbenchSite getActiveSite(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeSite");
        if (o instanceof IWorkbenchSite) {
            return (IWorkbenchSite)o;
        }
        return null;
    }

    public static IWorkbenchSite getActiveSiteChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeSite");
        if (!(o instanceof IWorkbenchSite)) {
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("org.eclipse.ui.IWorkbenchSite");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeSite", clazz, o.getClass());
        }
        return (IWorkbenchSite)o;
    }

    public static ISelection getCurrentSelection(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "selection");
        if (o instanceof ISelection) {
            return (ISelection)o;
        }
        return null;
    }

    public static ISelection getCurrentSelectionChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "selection");
        if (!(o instanceof ISelection)) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.jface.viewers.ISelection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "selection", clazz, o.getClass());
        }
        return (ISelection)o;
    }

    public static Collection getActiveMenus(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeMenu");
        if (o instanceof Collection) {
            return (Collection)o;
        }
        return null;
    }

    public static Collection getActiveMenusChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeMenu");
        if (!(o instanceof Collection)) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.util.Collection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeMenu", clazz, o.getClass());
        }
        return (Collection)o;
    }

    public static ISelection getActiveMenuSelection(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeMenuSelection");
        if (o instanceof ISelection) {
            return (ISelection)o;
        }
        return null;
    }

    public static ISelection getActiveMenuSelectionChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeMenuSelection");
        if (!(o instanceof ISelection)) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.jface.viewers.ISelection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeMenuSelection", clazz, o.getClass());
        }
        return (ISelection)o;
    }

    public static ISelection getActiveMenuEditorInput(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "activeMenuEditorInput");
        if (o instanceof ISelection) {
            return (ISelection)o;
        }
        return null;
    }

    public static ISelection getActiveMenuEditorInputChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "activeMenuEditorInput");
        if (!(o instanceof ISelection)) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.jface.viewers.ISelection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "activeMenuEditorInput", clazz, o.getClass());
        }
        return (ISelection)o;
    }

    public static ISelection getShowInSelection(ExecutionEvent event) {
        Object o = HandlerUtil.getVariable(event, "showInSelection");
        if (o instanceof ISelection) {
            return (ISelection)o;
        }
        return null;
    }

    public static ISelection getShowInSelectionChecked(ExecutionEvent event) throws ExecutionException {
        Object o = HandlerUtil.getVariableChecked(event, "showInSelection");
        if (!(o instanceof ISelection)) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.jface.viewers.ISelection");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            HandlerUtil.incorrectTypeFound(event, "showInSelection", clazz, o.getClass());
        }
        return (ISelection)o;
    }

    public static Object getShowInInput(ExecutionEvent event) {
        Object var = HandlerUtil.getVariable(event, "showInInput");
        return var;
    }

    public static Object getShowInInputChecked(ExecutionEvent event) throws ExecutionException {
        Object var = HandlerUtil.getVariableChecked(event, "showInInput");
        return var;
    }

    public static boolean toggleCommandState(Command command) throws ExecutionException {
        State state = command.getState("org.eclipse.ui.commands.toggleState");
        if (state == null) {
            throw new ExecutionException("The command does not have a toggle state");
        }
        if (!(state.getValue() instanceof Boolean)) {
            throw new ExecutionException("The command's toggle state doesn't contain a boolean value");
        }
        boolean oldValue = (Boolean)state.getValue();
        state.setValue((Object)new Boolean(!oldValue));
        return oldValue;
    }

    public static boolean matchesRadioState(ExecutionEvent event) throws ExecutionException {
        String parameter = event.getParameter("org.eclipse.ui.commands.radioStateParameter");
        if (parameter == null) {
            throw new ExecutionException("The event does not have the radio state parameter");
        }
        Command command = event.getCommand();
        State state = command.getState("org.eclipse.ui.commands.radioState");
        if (state == null) {
            throw new ExecutionException("The command does not have a radio state");
        }
        if (!(state.getValue() instanceof String)) {
            throw new ExecutionException("The command's radio state doesn't contain a String value");
        }
        return parameter.equals(state.getValue());
    }

    public static void updateRadioState(Command command, String newState) throws ExecutionException {
        State state = command.getState("org.eclipse.ui.commands.radioState");
        if (state == null) {
            throw new ExecutionException("The command does not have a radio state");
        }
        state.setValue((Object)newState);
    }
}

