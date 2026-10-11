/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Scrollable
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.LayoutConstants;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Scrollable;

class LayoutGenerator {
    private static final Point defaultSize = new Point(150, 150);
    private static final int wrapSize = 350;
    private static final GridDataFactory nonWrappingLabelData = GridDataFactory.fillDefaults().align(1, 0x1000000).grab(false, false);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    LayoutGenerator() {
    }

    private static boolean hasStyle(Control c, int style) {
        return (c.getStyle() & style) != 0;
    }

    public static void generateLayout(Composite toGenerate) {
        Control[] children = toGenerate.getChildren();
        int i = 0;
        while (i < children.length) {
            Control control = children[i];
            if (control.getLayoutData() == null) {
                LayoutGenerator.applyLayoutDataTo(control);
            }
            ++i;
        }
    }

    private static void applyLayoutDataTo(Control control) {
        LayoutGenerator.defaultsFor(control).applyTo(control);
    }

    /*
     * Unable to fully structure code
     */
    public static GridDataFactory defaultsFor(Control control) {
        if (control instanceof Button) {
            button = (Button)control;
            if (LayoutGenerator.hasStyle((Control)button, 32)) {
                return LayoutGenerator.nonWrappingLabelData.copy();
            }
            return GridDataFactory.fillDefaults().align(4, 0x1000000).hint(Geometry.max(button.computeSize(-1, -1, true), LayoutConstants.getMinButtonSize()));
        }
        if (control instanceof Scrollable && (scrollable = (Scrollable)control) instanceof Composite && (theLayout = (composite = (Composite)control).getLayout()) instanceof GridLayout) {
            growsHorizontally = false;
            growsVertically = false;
            children = composite.getChildren();
            i = 0;
            while (i < children.length) {
                child = children[i];
                data = (GridData)child.getLayoutData();
                if (data != null) {
                    if (data.grabExcessHorizontalSpace) {
                        growsHorizontally = true;
                    }
                    if (data.grabExcessVerticalSpace) {
                        growsVertically = true;
                    }
                }
                ++i;
            }
            return GridDataFactory.fillDefaults().grab(growsHorizontally, growsVertically);
        }
        wrapping = LayoutGenerator.hasStyle(control, 64);
        hScroll = LayoutGenerator.hasStyle(control, 256);
        vScroll = LayoutGenerator.hasStyle(control, 512);
        v0 = new Class[1];
        v1 = LayoutGenerator.class$0;
        if (v1 == null) {
            try {
                v1 = LayoutGenerator.class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException v2) {
                throw new NoClassDefFoundError(v2.getMessage());
            }
        }
        v0[0] = v1;
        containsText = LayoutGenerator.hasMethod(control, "setText", v0);
        if (LayoutGenerator.hasStyle(control, 8) || !containsText) ** GOTO lbl-1000
        v3 = new Class[1];
        v4 = LayoutGenerator.class$1;
        if (v4 == null) {
            try {
                v4 = LayoutGenerator.class$1 = Class.forName("org.eclipse.swt.events.ModifyListener");
            }
            catch (ClassNotFoundException v5) {
                throw new NoClassDefFoundError(v5.getMessage());
            }
        }
        v3[0] = v4;
        if (LayoutGenerator.hasMethod(control, "addModifyListener", v3)) {
            v6 = true;
        } else lbl-1000:
        // 2 sources

        {
            v6 = userEditable = false;
        }
        if (userEditable) {
            if (LayoutGenerator.hasStyle(control, 2)) {
                vScroll = true;
            }
            if (!wrapping) {
                hScroll = true;
            }
        }
        hHint = -1;
        grabHorizontal = hScroll;
        if (hScroll) {
            hHint = LayoutGenerator.defaultSize.x;
        } else if (wrapping && containsText) {
            hHint = 350;
            grabHorizontal = true;
        }
        vAlign = 4;
        if (!vScroll && !wrapping && !userEditable && containsText) {
            vAlign = 0x1000000;
        }
        return GridDataFactory.fillDefaults().grab(grabHorizontal, vScroll).align(4, vAlign).hint(hHint, vScroll != false ? LayoutGenerator.defaultSize.y : -1);
    }

    private static boolean hasMethod(Control control, String name, Class[] parameterTypes) {
        Class<?> c = control.getClass();
        try {
            return c.getMethod(name, parameterTypes) != null;
        }
        catch (SecurityException securityException) {
            return false;
        }
        catch (NoSuchMethodException noSuchMethodException) {
            return false;
        }
    }
}

