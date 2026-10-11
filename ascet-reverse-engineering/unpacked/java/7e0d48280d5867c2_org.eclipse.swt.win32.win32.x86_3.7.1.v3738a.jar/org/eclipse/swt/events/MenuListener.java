/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface MenuListener
extends SWTEventListener {
    public void menuHidden(MenuEvent var1);

    public void menuShown(MenuEvent var1);
}

