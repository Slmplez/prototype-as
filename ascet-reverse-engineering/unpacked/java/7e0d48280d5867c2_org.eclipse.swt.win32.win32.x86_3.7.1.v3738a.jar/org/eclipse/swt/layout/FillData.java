/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;

class FillData {
    int defaultWidth = -1;
    int defaultHeight = -1;
    int currentWhint;
    int currentHhint;
    int currentWidth = -1;
    int currentHeight = -1;

    FillData() {
    }

    Point computeSize(Control control, int wHint, int hHint, boolean flushCache) {
        if (flushCache) {
            this.flushCache();
        }
        if (wHint == -1 && hHint == -1) {
            if (this.defaultWidth == -1 || this.defaultHeight == -1) {
                Point size = control.computeSize(wHint, hHint, flushCache);
                this.defaultWidth = size.x;
                this.defaultHeight = size.y;
            }
            return new Point(this.defaultWidth, this.defaultHeight);
        }
        if (this.currentWidth == -1 || this.currentHeight == -1 || wHint != this.currentWhint || hHint != this.currentHhint) {
            Point size = control.computeSize(wHint, hHint, flushCache);
            this.currentWhint = wHint;
            this.currentHhint = hHint;
            this.currentWidth = size.x;
            this.currentHeight = size.y;
        }
        return new Point(this.currentWidth, this.currentHeight);
    }

    void flushCache() {
        this.defaultHeight = -1;
        this.defaultWidth = -1;
        this.currentHeight = -1;
        this.currentWidth = -1;
    }
}

