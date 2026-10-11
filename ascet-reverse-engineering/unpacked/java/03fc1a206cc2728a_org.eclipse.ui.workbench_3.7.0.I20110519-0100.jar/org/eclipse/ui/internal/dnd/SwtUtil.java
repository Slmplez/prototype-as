/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Monitor
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dnd;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.dnd.DragUtil;

public class SwtUtil {
    private SwtUtil() {
    }

    public static boolean isDisposed(Control toTest) {
        return toTest == null || toTest.isDisposed();
    }

    public static Control controlThatCovers(Control toTest) {
        return SwtUtil.controlThatCovers(toTest, DragUtil.getDisplayBounds(toTest));
    }

    private static Control controlThatCovers(Control toTest, Rectangle testRegion) {
        Composite parent = toTest.getParent();
        if (parent == null || toTest instanceof Shell) {
            return null;
        }
        Control[] children = parent.getChildren();
        int i = 0;
        while (i < children.length) {
            Rectangle nextBounds;
            Control control = children[i];
            if (control == toTest) break;
            if (control.isVisible() && (nextBounds = DragUtil.getDisplayBounds(control)).intersects(testRegion)) {
                return control;
            }
            ++i;
        }
        return SwtUtil.controlThatCovers((Control)parent, testRegion);
    }

    public static boolean isChild(Control potentialParent, Control childToTest) {
        if (childToTest == null) {
            return false;
        }
        if (childToTest == potentialParent) {
            return true;
        }
        return SwtUtil.isChild(potentialParent, (Control)childToTest.getParent());
    }

    public static boolean isFocusAncestor(Control potentialParent) {
        if (potentialParent == null) {
            return false;
        }
        Control focusControl = Display.getCurrent().getFocusControl();
        if (focusControl == null) {
            return false;
        }
        return SwtUtil.isChild(potentialParent, focusControl);
    }

    public static Control findControl(Display displayToSearch, Point locationToFind) {
        Shell[] shells = displayToSearch.getShells();
        return SwtUtil.findControl((Control[])shells, locationToFind);
    }

    public static Control findControl(Control[] toSearch, Point locationToFind) {
        int idx = toSearch.length - 1;
        while (idx >= 0) {
            Rectangle bounds;
            Control next = toSearch[idx];
            if (!next.isDisposed() && next.isVisible() && (bounds = DragUtil.getDisplayBounds(next)).contains(locationToFind)) {
                Control result;
                if (next instanceof Composite && (result = SwtUtil.findControl((Composite)next, locationToFind)) != null) {
                    return result;
                }
                return next;
            }
            --idx;
        }
        return null;
    }

    public static Control[] getAncestors(Control theControl) {
        return SwtUtil.getAncestors(theControl, 1);
    }

    private static Control[] getAncestors(Control theControl, int children) {
        Control[] result = theControl.getParent() == null ? new Control[children] : SwtUtil.getAncestors((Control)theControl.getParent(), children + 1);
        result[result.length - children] = theControl;
        return result;
    }

    public static Control findCommonAncestor(Control control1, Control control2) {
        Control[] control1Ancestors = SwtUtil.getAncestors(control1);
        Control[] control2Ancestors = SwtUtil.getAncestors(control2);
        Control mostSpecific = null;
        int idx = 0;
        while (idx < Math.min(control1Ancestors.length, control2Ancestors.length)) {
            Control control1Ancestor = control1Ancestors[idx];
            if (control1Ancestor != control2Ancestors[idx]) break;
            mostSpecific = control1Ancestor;
            ++idx;
        }
        return mostSpecific;
    }

    public static Control findControl(Composite toSearch, Point locationToFind) {
        Control[] children = toSearch.getChildren();
        return SwtUtil.findControl(children, locationToFind);
    }

    public static boolean intersectsAnyMonitor(Display display, Rectangle someRectangle) {
        Monitor[] monitors = display.getMonitors();
        int idx = 0;
        while (idx < monitors.length) {
            Monitor mon = monitors[idx];
            if (mon.getClientArea().intersects(someRectangle)) {
                return true;
            }
            ++idx;
        }
        return false;
    }
}

