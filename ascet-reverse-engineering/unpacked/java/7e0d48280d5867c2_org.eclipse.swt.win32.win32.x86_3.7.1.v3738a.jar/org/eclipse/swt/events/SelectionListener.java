/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.events;

import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface SelectionListener
extends SWTEventListener {
    public void widgetSelected(SelectionEvent var1);

    public void widgetDefaultSelected(SelectionEvent var1);
}

