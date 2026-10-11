/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Touch;
import org.eclipse.swt.widgets.Widget;

public class Event {
    public Display display;
    public Widget widget;
    public int type;
    public int detail;
    public Widget item;
    public int index;
    public GC gc;
    public int x;
    public int y;
    public int width;
    public int height;
    public int count;
    public int time;
    public int button;
    public char character;
    public int keyCode;
    public int keyLocation;
    public int stateMask;
    public int start;
    public int end;
    public String text;
    public boolean doit = true;
    public Object data;
    public Touch[] touches;
    public int xDirection;
    public int yDirection;
    public double magnification;
    public double rotation;

    public Rectangle getBounds() {
        return new Rectangle(this.x, this.y, this.width, this.height);
    }

    public void setBounds(Rectangle rect) {
        this.x = rect.x;
        this.y = rect.y;
        this.width = rect.width;
        this.height = rect.height;
    }

    public String toString() {
        return "Event {type=" + this.type + " " + this.widget + " time=" + this.time + " data=" + this.data + " x=" + this.x + " y=" + this.y + " width=" + this.width + " height=" + this.height + " detail=" + this.detail + "}";
    }
}

