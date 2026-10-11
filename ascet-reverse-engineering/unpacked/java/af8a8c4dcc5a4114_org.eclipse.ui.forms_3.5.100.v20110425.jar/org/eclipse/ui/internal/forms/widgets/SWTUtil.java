/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.widgets.Caret
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public class SWTUtil {
    public static Display getStandardDisplay() {
        Display display = Display.getCurrent();
        if (display == null) {
            display = Display.getDefault();
        }
        return display;
    }

    public static Shell getShell(Widget widget) {
        if (widget instanceof Control) {
            return ((Control)widget).getShell();
        }
        if (widget instanceof Caret) {
            return ((Caret)widget).getParent().getShell();
        }
        if (widget instanceof DragSource) {
            return ((DragSource)widget).getControl().getShell();
        }
        if (widget instanceof DropTarget) {
            return ((DropTarget)widget).getControl().getShell();
        }
        if (widget instanceof Menu) {
            return ((Menu)widget).getParent().getShell();
        }
        if (widget instanceof ScrollBar) {
            return ((ScrollBar)widget).getParent().getShell();
        }
        return null;
    }
}

