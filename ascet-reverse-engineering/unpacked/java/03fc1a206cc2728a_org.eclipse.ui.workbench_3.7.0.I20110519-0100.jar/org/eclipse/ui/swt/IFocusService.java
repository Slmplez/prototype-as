/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.swt;

import org.eclipse.swt.widgets.Control;

public interface IFocusService {
    public static final String COPY_HANDLER = "org.eclipse.ui.internal.handlers.WidgetMethodHandler:copy";
    public static final String PASTE_HANDLER = "org.eclipse.ui.internal.handlers.WidgetMethodHandler:paste";
    public static final String CUT_HANDLER = "org.eclipse.ui.internal.handlers.WidgetMethodHandler:cut";
    public static final String SELECT_ALL_HANDLER = "org.eclipse.ui.internal.handlers.SelectAllHandler";

    public void addFocusTracker(Control var1, String var2);

    public void removeFocusTracker(Control var1);
}

