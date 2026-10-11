/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface ShellListener
extends SWTEventListener {
    public void shellActivated(ShellEvent var1);

    public void shellClosed(ShellEvent var1);

    public void shellDeactivated(ShellEvent var1);

    public void shellDeiconified(ShellEvent var1);

    public void shellIconified(ShellEvent var1);
}

