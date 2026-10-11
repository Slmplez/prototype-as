/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface ProgressListener
extends SWTEventListener {
    public void changed(ProgressEvent var1);

    public void completed(ProgressEvent var1);
}

