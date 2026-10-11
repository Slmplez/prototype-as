/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Rectangle;

public final class Monitor {
    int handle;
    int x;
    int y;
    int width;
    int height;
    int clientX;
    int clientY;
    int clientWidth;
    int clientHeight;

    Monitor() {
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Monitor)) {
            return false;
        }
        Monitor monitor = (Monitor)object;
        return this.handle == monitor.handle;
    }

    public Rectangle getBounds() {
        return new Rectangle(this.x, this.y, this.width, this.height);
    }

    public Rectangle getClientArea() {
        return new Rectangle(this.clientX, this.clientY, this.clientWidth, this.clientHeight);
    }

    public int hashCode() {
        return this.handle;
    }
}

