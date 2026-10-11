/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface KeyListener
extends SWTEventListener {
    public void keyPressed(KeyEvent var1);

    public void keyReleased(KeyEvent var1);
}

