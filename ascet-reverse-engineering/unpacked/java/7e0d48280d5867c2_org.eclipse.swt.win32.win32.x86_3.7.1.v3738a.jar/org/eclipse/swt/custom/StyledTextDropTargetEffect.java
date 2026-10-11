/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class StyledTextDropTargetEffect
extends DropTargetEffect {
    static final int CARET_WIDTH = 2;
    static final int SCROLL_HYSTERESIS = 100;
    static final int SCROLL_TOLERANCE = 20;
    int currentOffset = -1;
    long scrollBeginTime;
    int scrollX = -1;
    int scrollY = -1;
    Listener paintListener = new Listener(){

        public void handleEvent(Event event) {
            if (StyledTextDropTargetEffect.this.currentOffset != -1) {
                StyledText text = (StyledText)StyledTextDropTargetEffect.this.getControl();
                Point position = text.getLocationAtOffset(StyledTextDropTargetEffect.this.currentOffset);
                int height = text.getLineHeight(StyledTextDropTargetEffect.this.currentOffset);
                event.gc.setBackground(event.display.getSystemColor(2));
                event.gc.fillRectangle(position.x, position.y, 2, height);
            }
        }
    };

    public StyledTextDropTargetEffect(StyledText styledText) {
        super(styledText);
    }

    public void dragEnter(DropTargetEvent event) {
        this.currentOffset = -1;
        this.scrollBeginTime = 0L;
        this.scrollX = -1;
        this.scrollY = -1;
        this.getControl().removeListener(9, this.paintListener);
        this.getControl().addListener(9, this.paintListener);
    }

    public void dragLeave(DropTargetEvent event) {
        StyledText text = (StyledText)this.getControl();
        if (this.currentOffset != -1) {
            this.refreshCaret(text, this.currentOffset, -1);
        }
        text.removeListener(9, this.paintListener);
        this.scrollBeginTime = 0L;
        this.scrollX = -1;
        this.scrollY = -1;
    }

    public void dragOver(DropTargetEvent event) {
        int effect = event.feedback;
        StyledText text = (StyledText)this.getControl();
        Point pt = text.getDisplay().map(null, text, event.x, event.y);
        if ((effect & 8) == 0) {
            this.scrollBeginTime = 0L;
            this.scrollY = -1;
            this.scrollX = -1;
        } else if (text.getCharCount() == 0) {
            this.scrollBeginTime = 0L;
            this.scrollY = -1;
            this.scrollX = -1;
        } else if (this.scrollX != -1 && this.scrollY != -1 && this.scrollBeginTime != 0L && (pt.x >= this.scrollX && pt.x <= this.scrollX + 20 || pt.y >= this.scrollY && pt.y <= this.scrollY + 20)) {
            if (System.currentTimeMillis() >= this.scrollBeginTime) {
                int topPixel;
                int lineHeight;
                int leftPixel;
                Rectangle area = text.getClientArea();
                GC gc = new GC(text);
                FontMetrics fm = gc.getFontMetrics();
                gc.dispose();
                int charWidth = fm.getAverageCharWidth();
                int scrollAmount = 10 * charWidth;
                if (pt.x < area.x + 3 * charWidth) {
                    leftPixel = text.getHorizontalPixel();
                    text.setHorizontalPixel(leftPixel - scrollAmount);
                }
                if (pt.x > area.width - 3 * charWidth) {
                    leftPixel = text.getHorizontalPixel();
                    text.setHorizontalPixel(leftPixel + scrollAmount);
                }
                if (pt.y < area.y + (lineHeight = text.getLineHeight())) {
                    topPixel = text.getTopPixel();
                    text.setTopPixel(topPixel - lineHeight);
                }
                if (pt.y > area.height - lineHeight) {
                    topPixel = text.getTopPixel();
                    text.setTopPixel(topPixel + lineHeight);
                }
                this.scrollBeginTime = 0L;
                this.scrollY = -1;
                this.scrollX = -1;
            }
        } else {
            this.scrollBeginTime = System.currentTimeMillis() + 100L;
            this.scrollX = pt.x;
            this.scrollY = pt.y;
        }
        if ((effect & 1) != 0) {
            int[] trailing = new int[1];
            int newOffset = text.getOffsetAtPoint(pt.x, pt.y, trailing, false);
            if ((newOffset += trailing[0]) != this.currentOffset) {
                this.refreshCaret(text, this.currentOffset, newOffset);
                this.currentOffset = newOffset;
            }
        }
    }

    void refreshCaret(StyledText text, int oldOffset, int newOffset) {
        if (oldOffset != newOffset) {
            if (oldOffset != -1) {
                Point oldPos = text.getLocationAtOffset(oldOffset);
                int oldHeight = text.getLineHeight(oldOffset);
                text.redraw(oldPos.x, oldPos.y, 2, oldHeight, false);
            }
            if (newOffset != -1) {
                Point newPos = text.getLocationAtOffset(newOffset);
                int newHeight = text.getLineHeight(newOffset);
                text.redraw(newPos.x, newPos.y, 2, newHeight, false);
            }
        }
    }

    public void dropAccept(DropTargetEvent event) {
        if (this.currentOffset != -1) {
            StyledText text = (StyledText)this.getControl();
            text.setSelection(this.currentOffset);
            this.currentOffset = -1;
        }
    }
}

