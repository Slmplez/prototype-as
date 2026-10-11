/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.graphics.Image;

public class DragSourceEvent
extends TypedEvent {
    public int detail;
    public boolean doit;
    public int x;
    public int y;
    public TransferData dataType;
    public Image image;
    public int offsetX;
    public int offsetY;
    static final long serialVersionUID = 3257002142513770808L;

    public DragSourceEvent(DNDEvent e) {
        super(e);
        this.data = e.data;
        this.detail = e.detail;
        this.doit = e.doit;
        this.dataType = e.dataType;
        this.x = e.x;
        this.y = e.y;
        this.image = e.image;
        this.offsetX = e.offsetX;
        this.offsetY = e.offsetY;
    }

    void updateEvent(DNDEvent e) {
        e.widget = this.widget;
        e.time = this.time;
        e.data = this.data;
        e.detail = this.detail;
        e.doit = this.doit;
        e.dataType = this.dataType;
        e.x = this.x;
        e.y = this.y;
        e.image = this.image;
        e.offsetX = this.offsetX;
        e.offsetY = this.offsetY;
    }

    public String toString() {
        String string = super.toString();
        return String.valueOf(string.substring(0, string.length() - 1)) + " operation=" + this.detail + " type=" + (this.dataType != null ? this.dataType.type : 0) + " doit=" + this.doit + "}";
    }
}

