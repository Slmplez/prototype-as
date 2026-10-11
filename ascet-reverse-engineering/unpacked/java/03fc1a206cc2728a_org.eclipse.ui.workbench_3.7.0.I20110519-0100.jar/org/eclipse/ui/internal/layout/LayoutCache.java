/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.layout.SizeCache;

public class LayoutCache {
    private SizeCache[] caches = new SizeCache[0];

    public LayoutCache() {
    }

    public LayoutCache(Control[] controls) {
        this.rebuildCache(controls);
    }

    public SizeCache getCache(int idx) {
        return this.caches[idx];
    }

    public void setControls(Control[] controls) {
        if (controls.length != this.caches.length) {
            this.rebuildCache(controls);
            return;
        }
        int idx = 0;
        while (idx < controls.length) {
            this.caches[idx].setControl(controls[idx]);
            ++idx;
        }
    }

    private void rebuildCache(Control[] controls) {
        SizeCache[] newCache = new SizeCache[controls.length];
        int idx = 0;
        while (idx < controls.length) {
            if (idx < this.caches.length) {
                newCache[idx] = this.caches[idx];
                newCache[idx].setControl(controls[idx]);
            } else {
                newCache[idx] = new SizeCache(controls[idx]);
            }
            ++idx;
        }
        this.caches = newCache;
    }

    public Point computeSize(int controlIndex, int widthHint, int heightHint) {
        return this.caches[controlIndex].computeSize(widthHint, heightHint);
    }

    public void flush(int controlIndex) {
        this.caches[controlIndex].flush();
    }

    public void flush() {
        int idx = 0;
        while (idx < this.caches.length) {
            this.caches[idx].flush();
            ++idx;
        }
    }
}

