/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface AccessibleListener
extends SWTEventListener {
    public void getName(AccessibleEvent var1);

    public void getHelp(AccessibleEvent var1);

    public void getKeyboardShortcut(AccessibleEvent var1);

    public void getDescription(AccessibleEvent var1);
}

