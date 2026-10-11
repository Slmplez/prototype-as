/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.ProgressBar
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.Scale
 *  org.eclipse.swt.widgets.Slider
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.ui.internal.layout;

import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.ProgressBar;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.Scale;
import org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.Tree;

public class SizeCache {
    private Control control;
    private Point preferredSize;
    private Point cachedWidth;
    private Point cachedHeight;
    private boolean flushChildren;
    private boolean independentDimensions = false;
    private boolean preferredWidthOrLargerIsMinimumHeight = false;
    private int widthAdjustment = 0;
    private int heightAdjustment = 0;

    public SizeCache() {
        this(null);
    }

    public SizeCache(Control control) {
        this.setControl(control);
    }

    public void setControl(Control newControl) {
        if (newControl != this.control) {
            this.control = newControl;
            if (this.control == null) {
                this.independentDimensions = true;
                this.preferredWidthOrLargerIsMinimumHeight = false;
                this.widthAdjustment = 0;
                this.heightAdjustment = 0;
            } else {
                this.independentDimensions = SizeCache.independentLengthAndWidth(this.control);
                this.preferredWidthOrLargerIsMinimumHeight = SizeCache.isPreferredWidthMaximum(this.control);
                this.computeHintOffset(this.control);
                this.flush();
            }
        }
    }

    public Control getControl() {
        return this.control;
    }

    public void flush() {
        this.flush(true);
    }

    public void flush(boolean recursive) {
        this.preferredSize = null;
        this.cachedWidth = null;
        this.cachedHeight = null;
        this.flushChildren = recursive;
    }

    private Point getPreferredSize() {
        if (this.preferredSize == null) {
            this.preferredSize = this.computeSize(this.control, -1, -1);
        }
        return this.preferredSize;
    }

    public Point computeSize(int widthHint, int heightHint) {
        if (this.control == null) {
            return new Point(0, 0);
        }
        if (widthHint != -1 && heightHint != -1) {
            return new Point(widthHint, heightHint);
        }
        if (widthHint == -1 && heightHint == -1) {
            return Geometry.copy((Point)this.getPreferredSize());
        }
        if (this.independentDimensions) {
            Point result = Geometry.copy((Point)this.getPreferredSize());
            if (widthHint != -1) {
                result.x = widthHint;
            }
            if (heightHint != -1) {
                result.y = heightHint;
            }
            return result;
        }
        if (heightHint == -1) {
            if (this.preferredSize != null && widthHint == this.preferredSize.x) {
                return Geometry.copy((Point)this.preferredSize);
            }
            if (this.cachedHeight != null && this.cachedHeight.x == widthHint) {
                return Geometry.copy((Point)this.cachedHeight);
            }
            if (this.preferredWidthOrLargerIsMinimumHeight) {
                this.getPreferredSize();
                if (widthHint >= this.preferredSize.x) {
                    Point result = Geometry.copy((Point)this.preferredSize);
                    result.x = widthHint;
                    return result;
                }
            }
            this.cachedHeight = this.computeSize(this.control, widthHint, heightHint);
            return Geometry.copy((Point)this.cachedHeight);
        }
        if (widthHint == -1) {
            if (this.preferredSize != null && heightHint == this.preferredSize.y) {
                return Geometry.copy((Point)this.preferredSize);
            }
            if (this.cachedWidth != null && this.cachedWidth.y == heightHint) {
                return Geometry.copy((Point)this.cachedWidth);
            }
            this.cachedWidth = this.computeSize(this.control, widthHint, heightHint);
            return Geometry.copy((Point)this.cachedWidth);
        }
        return this.computeSize(this.control, widthHint, heightHint);
    }

    private Point computeSize(Control control, int widthHint, int heightHint) {
        int adjustedWidthHint = widthHint == -1 ? -1 : Math.max(0, widthHint - this.widthAdjustment);
        int adjustedHeightHint = heightHint == -1 ? -1 : Math.max(0, heightHint - this.heightAdjustment);
        Point result = control.computeSize(adjustedWidthHint, adjustedHeightHint, this.flushChildren);
        this.flushChildren = false;
        if (widthHint != -1) {
            result.x = widthHint;
        }
        if (heightHint != -1) {
            result.y = heightHint;
        }
        return result;
    }

    static boolean independentLengthAndWidth(Control control) {
        if (control == null) {
            return true;
        }
        if (control instanceof Button || control instanceof ProgressBar || control instanceof Sash || control instanceof Scale || control instanceof Slider || control instanceof List || control instanceof Combo || control instanceof Tree) {
            return true;
        }
        if (control instanceof Label || control instanceof Text) {
            return (control.getStyle() & 0x40) == 0;
        }
        return false;
    }

    private void computeHintOffset(Control control) {
        if (control instanceof Composite) {
            Composite composite = (Composite)control;
            Rectangle trim = composite.computeTrim(0, 0, 0, 0);
            this.widthAdjustment = trim.width;
            this.heightAdjustment = trim.height;
        } else {
            this.heightAdjustment = this.widthAdjustment = control.getBorderWidth() * 2;
        }
    }

    private static boolean isPreferredWidthMaximum(Control control) {
        return control instanceof ToolBar || control instanceof Label;
    }
}

