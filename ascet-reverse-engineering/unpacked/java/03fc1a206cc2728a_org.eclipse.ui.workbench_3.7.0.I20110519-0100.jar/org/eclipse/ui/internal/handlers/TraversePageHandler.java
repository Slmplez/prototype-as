/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal.handlers;

import java.lang.reflect.Method;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.internal.handlers.WidgetMethodHandler;

public class TraversePageHandler
extends WidgetMethodHandler {
    private static final Class[] METHOD_PARAMETERS = new Class[]{Integer.TYPE};

    public final Object execute(ExecutionEvent event) {
        Control focusControl = Display.getCurrent().getFocusControl();
        if (focusControl != null) {
            int traversal = "next".equals(this.methodName) ? 512 : 256;
            focusControl.traverse(traversal, new Event());
        }
        return null;
    }

    protected Method getMethodToExecute() {
        Control focusControl = Display.getCurrent().getFocusControl();
        if (focusControl != null) {
            try {
                return focusControl.getClass().getMethod("traverse", METHOD_PARAMETERS);
            }
            catch (NoSuchMethodException noSuchMethodException) {}
        }
        return null;
    }
}

