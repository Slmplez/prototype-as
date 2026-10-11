/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface MouseTrackListener
extends SWTEventListener {
    public void mouseEnter(MouseEvent var1);

    public void mouseExit(MouseEvent var1);

    public void mouseHover(MouseEvent var1);
}

