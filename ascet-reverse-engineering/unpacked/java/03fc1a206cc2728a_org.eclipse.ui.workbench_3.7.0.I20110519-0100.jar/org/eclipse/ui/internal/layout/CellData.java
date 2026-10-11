/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.ui.internal.layout.SizeCache;

public final class CellData {
    public static final int NONE = 0;
    public static final int OVERRIDE = 1;
    public static final int MINIMUM = 2;
    public static final int MAXIMUM = 3;
    public int hintType = 1;
    public int widthHint = -1;
    public int heightHint = -1;
    public int verticalSpan = 1;
    public int horizontalSpan = 1;
    public int horizontalAlignment = 4;
    public int verticalAlignment = 4;
    public int horizontalIndent = 0;
    public int verticalIndent = 0;

    public CellData() {
    }

    public CellData(GridData data) {
        this.verticalSpan = data.verticalSpan;
        this.horizontalSpan = data.horizontalSpan;
        switch (data.horizontalAlignment) {
            case 1: {
                this.horizontalAlignment = 16384;
                break;
            }
            case 2: {
                this.horizontalAlignment = 0x1000000;
                break;
            }
            case 3: {
                this.horizontalAlignment = 131072;
                break;
            }
            case 4: {
                this.horizontalAlignment = 4;
            }
        }
        switch (data.verticalAlignment) {
            case 1: {
                this.verticalAlignment = 16384;
                break;
            }
            case 2: {
                this.verticalAlignment = 0x1000000;
                break;
            }
            case 3: {
                this.verticalAlignment = 131072;
                break;
            }
            case 4: {
                this.verticalAlignment = 4;
            }
        }
        this.widthHint = data.widthHint;
        this.heightHint = data.heightHint;
        this.horizontalIndent = data.horizontalIndent;
        this.hintType = 1;
    }

    public CellData(CellData newData) {
        this.hintType = newData.hintType;
        this.widthHint = newData.widthHint;
        this.heightHint = newData.heightHint;
        this.horizontalAlignment = newData.horizontalAlignment;
        this.verticalAlignment = newData.verticalAlignment;
        this.horizontalSpan = newData.horizontalSpan;
        this.verticalSpan = newData.verticalSpan;
    }

    public CellData setHint(int hintType, Point hint) {
        return this.setHint(hintType, hint.x, hint.y);
    }

    public CellData setHint(int hintType, int horizontal, int vertical) {
        this.hintType = hintType;
        this.heightHint = vertical;
        this.widthHint = horizontal;
        return this;
    }

    public CellData align(int horizontalAlignment, int verticalAlignment) {
        this.horizontalAlignment = horizontalAlignment;
        this.verticalAlignment = verticalAlignment;
        return this;
    }

    public CellData span(int horizontalSpan, int verticalSpan) {
        this.horizontalSpan = horizontalSpan;
        this.verticalSpan = verticalSpan;
        return this;
    }

    public CellData indent(Point indent) {
        return this.indent(indent.x, indent.y);
    }

    public CellData indent(int horizontalIndent, int verticalIndent) {
        this.horizontalIndent = horizontalIndent;
        this.verticalIndent = verticalIndent;
        return this;
    }

    public Point computeSize(SizeCache toCompute, int cellWidth, int cellHeight) {
        int absHorizontalIndent = Math.abs(this.horizontalIndent);
        int absVerticalIndent = Math.abs(this.verticalIndent);
        if (cellWidth != -1) {
            cellWidth -= absHorizontalIndent;
        }
        if (cellHeight != -1) {
            cellHeight -= absVerticalIndent;
        }
        int controlWidth = this.horizontalAlignment == 4 ? cellWidth : -1;
        int controlHeight = this.verticalAlignment == 4 ? cellHeight : -1;
        Point controlSize = this.computeControlSize(toCompute, controlWidth, controlHeight);
        if (cellWidth != -1 && controlSize.x > cellWidth) {
            controlSize = this.computeControlSize(toCompute, cellWidth, controlHeight);
            if (cellHeight != -1 && controlSize.y > cellHeight) {
                controlSize.y = cellHeight;
            }
        } else if (cellHeight != -1 && controlSize.y > cellHeight) {
            controlSize = this.computeControlSize(toCompute, controlWidth, cellHeight);
            if (cellWidth != -1 && controlSize.x > cellWidth) {
                controlSize.x = cellWidth;
            }
        }
        controlSize.x += absHorizontalIndent;
        controlSize.y += absVerticalIndent;
        return controlSize;
    }

    public void positionControl(SizeCache cache, Rectangle cellBounds) {
        int startx = cellBounds.x;
        int starty = cellBounds.y;
        int availableWidth = cellBounds.width - this.horizontalIndent;
        int availableHeight = cellBounds.height - this.verticalIndent;
        Point size = this.computeSize(cache, availableWidth, availableHeight);
        switch (this.horizontalAlignment) {
            case 131072: {
                startx = cellBounds.x + availableWidth - size.x;
                break;
            }
            case 0x1000000: {
                startx = cellBounds.x + (availableWidth - size.x) / 2;
            }
        }
        switch (this.verticalAlignment) {
            case 1024: {
                starty = cellBounds.y + availableHeight - size.y;
                break;
            }
            case 0x1000000: {
                starty = cellBounds.y + (availableHeight - size.y) / 2;
            }
        }
        cache.getControl().setBounds(startx + this.horizontalIndent, starty + this.verticalIndent, size.x, size.y);
    }

    private Point computeControlSize(SizeCache toCompute, int controlWidth, int controlHeight) {
        switch (this.hintType) {
            case 1: {
                return CellData.computeOverrideSize(toCompute, controlWidth, controlHeight, this.widthHint, this.heightHint);
            }
            case 2: {
                return CellData.computeMinimumBoundedSize(toCompute, controlWidth, controlHeight, this.widthHint, this.heightHint);
            }
            case 3: {
                return CellData.computeMaximumBoundedSize(toCompute, controlWidth, controlHeight, this.widthHint, this.heightHint);
            }
        }
        return CellData.computeRawSize(toCompute, controlWidth, controlHeight);
    }

    private static Point computeRawSize(SizeCache toCompute, int controlWidth, int controlHeight) {
        if (controlWidth != -1 && controlHeight != -1) {
            return new Point(controlWidth, controlHeight);
        }
        Point result = toCompute.computeSize(controlWidth, controlHeight);
        if (controlWidth != -1) {
            result.x = controlWidth;
        } else if (controlHeight != -1) {
            result.y = controlHeight;
        }
        return result;
    }

    private static Point computeOverrideSize(SizeCache control, int wHint, int hHint, int overrideW, int overrideH) {
        int resultWidth = overrideW;
        int resultHeight = overrideH;
        if (wHint != -1) {
            resultWidth = wHint;
        }
        if (hHint != -1) {
            resultHeight = hHint;
        }
        if (resultWidth == -1 || resultHeight == -1) {
            Point result = CellData.computeRawSize(control, resultWidth, resultHeight);
            return result;
        }
        return new Point(resultWidth, resultHeight);
    }

    private static Point computeMaximumBoundedSize(SizeCache control, int wHint, int hHint, int boundedWidth, int boundedHeight) {
        Point controlSize = CellData.computeRawSize(control, wHint, hHint);
        if (wHint == -1 && boundedWidth != -1 && controlSize.x > boundedWidth) {
            return CellData.computeMaximumBoundedSize(control, boundedWidth, hHint, boundedWidth, boundedHeight);
        }
        if (hHint == -1 && boundedHeight != -1 && controlSize.y > boundedHeight) {
            return CellData.computeMaximumBoundedSize(control, wHint, boundedHeight, boundedWidth, boundedHeight);
        }
        return controlSize;
    }

    private static Point computeMinimumBoundedSize(SizeCache control, int wHint, int hHint, int minimumWidth, int minimumHeight) {
        Point controlSize = CellData.computeRawSize(control, wHint, hHint);
        if (minimumWidth != -1 && wHint == -1 && controlSize.x < minimumWidth) {
            return CellData.computeMinimumBoundedSize(control, minimumWidth, hHint, minimumWidth, minimumHeight);
        }
        if (minimumHeight != -1 && hHint == -1 && controlSize.y < minimumHeight) {
            return CellData.computeMinimumBoundedSize(control, wHint, minimumHeight, minimumWidth, minimumHeight);
        }
        return controlSize;
    }
}

