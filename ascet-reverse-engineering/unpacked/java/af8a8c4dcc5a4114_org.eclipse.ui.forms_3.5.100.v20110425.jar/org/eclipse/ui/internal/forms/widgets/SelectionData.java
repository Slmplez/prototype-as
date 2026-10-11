/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.ArrayList;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.forms.widgets.Locator;

public class SelectionData {
    public Display display;
    public Color bg;
    public Color fg;
    private Point start;
    private Point stop;
    private ArrayList segments;
    private boolean newLineNeeded;

    public SelectionData(MouseEvent e) {
        this.display = e.display;
        this.segments = new ArrayList();
        this.start = new Point(e.x, e.y);
        this.stop = new Point(e.x, e.y);
        this.bg = e.display.getSystemColor(26);
        this.fg = e.display.getSystemColor(27);
    }

    public void markNewLine() {
        this.newLineNeeded = true;
    }

    public void addSegment(String text) {
        if (this.newLineNeeded) {
            this.segments.add(System.getProperty("line.separator"));
            this.newLineNeeded = false;
        }
        this.segments.add(text);
    }

    public void update(MouseEvent e) {
        this.stop.x = e.x;
        this.stop.y = e.y;
    }

    public void reset() {
        this.segments.clear();
    }

    public String getSelectionText() {
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < this.segments.size()) {
            buf.append((String)this.segments.get(i));
            ++i;
        }
        return buf.toString();
    }

    public boolean canCopy() {
        return this.segments.size() > 0;
    }

    private int getTopOffset() {
        return this.start.y < this.stop.y ? this.start.y : this.stop.y;
    }

    private int getBottomOffset() {
        return this.start.y > this.stop.y ? this.start.y : this.stop.y;
    }

    public int getLeftOffset(Locator locator) {
        return this.isInverted(locator) ? this.stop.x : this.start.x;
    }

    public int getLeftOffset(int rowHeight) {
        return this.isInverted(rowHeight) ? this.stop.x : this.start.x;
    }

    public int getRightOffset(Locator locator) {
        return this.isInverted(locator) ? this.start.x : this.stop.x;
    }

    public int getRightOffset(int rowHeight) {
        return this.isInverted(rowHeight) ? this.start.x : this.stop.x;
    }

    private boolean isInverted(Locator locator) {
        int rowHeight = ((int[])locator.heights.get(locator.rowCounter))[0];
        return this.isInverted(rowHeight);
    }

    private boolean isInverted(int rowHeight) {
        int deltaY = this.start.y - this.stop.y;
        if (Math.abs(deltaY) > rowHeight) {
            return deltaY > 0;
        }
        return this.start.x > this.stop.x;
    }

    public boolean isEnclosed() {
        return !this.start.equals((Object)this.stop);
    }

    public boolean isSelectedRow(Locator locator) {
        if (!this.isEnclosed()) {
            return false;
        }
        int rowHeight = ((int[])locator.heights.get(locator.rowCounter))[0];
        return this.isSelectedRow(locator.y, rowHeight);
    }

    public boolean isSelectedRow(int y, int rowHeight) {
        if (!this.isEnclosed()) {
            return false;
        }
        return y + rowHeight >= this.getTopOffset() && y <= this.getBottomOffset();
    }

    public boolean isFirstSelectionRow(Locator locator) {
        if (!this.isEnclosed()) {
            return false;
        }
        int rowHeight = ((int[])locator.heights.get(locator.rowCounter))[0];
        return locator.y + rowHeight >= this.getTopOffset() && locator.y <= this.getTopOffset();
    }

    public boolean isFirstSelectionRow(int y, int rowHeight) {
        if (!this.isEnclosed()) {
            return false;
        }
        return y + rowHeight >= this.getTopOffset() && y <= this.getTopOffset();
    }

    public boolean isLastSelectionRow(Locator locator) {
        if (!this.isEnclosed()) {
            return false;
        }
        int rowHeight = ((int[])locator.heights.get(locator.rowCounter))[0];
        return locator.y + rowHeight >= this.getBottomOffset() && locator.y <= this.getBottomOffset();
    }

    public boolean isLastSelectionRow(int y, int rowHeight) {
        if (!this.isEnclosed()) {
            return false;
        }
        return y + rowHeight >= this.getBottomOffset() && y <= this.getBottomOffset();
    }
}

