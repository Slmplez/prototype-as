/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.ExpandEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface ExpandListener
extends SWTEventListener {
    public void itemCollapsed(ExpandEvent var1);

    public void itemExpanded(ExpandEvent var1);
}

