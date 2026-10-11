/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface ControlListener
extends SWTEventListener {
    public void controlMoved(ControlEvent var1);

    public void controlResized(ControlEvent var1);
}

