/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface VisibilityWindowListener
extends SWTEventListener {
    public void hide(WindowEvent var1);

    public void show(WindowEvent var1);
}

