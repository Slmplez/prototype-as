/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface FocusListener
extends SWTEventListener {
    public void focusGained(FocusEvent var1);

    public void focusLost(FocusEvent var1);
}

