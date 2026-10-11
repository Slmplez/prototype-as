/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.ArrayList;

public class Locator
implements Cloneable {
    public int indent;
    public int x;
    public int y;
    public int width;
    public int leading;
    public int rowHeight;
    public int marginWidth;
    public int marginHeight;
    public int rowCounter;
    public ArrayList heights;

    public void newLine() {
        this.resetCaret();
        this.y += this.rowHeight;
        this.rowHeight = 0;
    }

    public Locator create() {
        try {
            return (Locator)this.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public void collectHeights() {
        this.heights.add(new int[]{this.rowHeight, this.leading});
        ++this.rowCounter;
    }

    public int getBaseline(int segmentHeight) {
        return this.getBaseline(segmentHeight, true);
    }

    public int getMiddle(int segmentHeight, boolean text) {
        if (this.heights != null && this.heights.size() > this.rowCounter) {
            int[] rdata = (int[])this.heights.get(this.rowCounter);
            int rheight = rdata[0];
            int rleading = rdata[1];
            if (text) {
                return this.y + rheight / 2 - segmentHeight / 2 - rleading;
            }
            return this.y + rheight / 2 - segmentHeight / 2;
        }
        return this.y;
    }

    public int getBaseline(int segmentHeight, boolean text) {
        if (this.heights != null && this.heights.size() > this.rowCounter) {
            int[] rdata = (int[])this.heights.get(this.rowCounter);
            int rheight = rdata[0];
            int rleading = rdata[1];
            if (text) {
                return this.y + rheight - segmentHeight - rleading;
            }
            return this.y + rheight - segmentHeight;
        }
        return this.y;
    }

    public void resetCaret() {
        this.x = this.getStartX();
    }

    public int getStartX() {
        return this.marginWidth + this.indent;
    }
}

