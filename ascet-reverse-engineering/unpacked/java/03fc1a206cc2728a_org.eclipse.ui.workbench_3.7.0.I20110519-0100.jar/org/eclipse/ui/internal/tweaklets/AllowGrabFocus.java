/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.tweaklets.GrabFocus;

public class AllowGrabFocus
extends GrabFocus {
    public boolean grabFocusAllowed(IWorkbenchPart part) {
        return true;
    }

    public void init(Display display) {
    }

    public void dispose() {
    }
}

