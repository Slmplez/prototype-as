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
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.List
 *  org.eclipse.swt.widgets.ProgressBar
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.Scale
 *  org.eclipse.swt.widgets.Scrollable
 *  org.eclipse.swt.widgets.Slider
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.Tree
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.ProgressBar;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.Scale;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class SizeCache {
    private Control control;
    private Point preferredSize;
    private int cachedWidthQuery;
    private int cachedWidthResult;
    private int cachedHeightQuery;
    private int cachedHeightResult;
    private int minimumWidth;
    private int heightAtMinimumWidth = -1;
    private int maximumWidth;
    private boolean flushChildren;
    private boolean independentDimensions = false;
    private boolean preferredWidthOrLargerIsMinimumHeight = false;
    private int widthAdjustment = 0;
    private int heightAdjustment = 0;
    private int minimumHeight;
    private int widthAtMinimumHeight = -1;
    private Point dirtySize = null;

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
        this.cachedWidthQuery = -1;
        this.cachedWidthResult = -1;
        this.cachedHeightQuery = -1;
        this.cachedHeightResult = -1;
        this.minimumWidth = -1;
        this.maximumWidth = -1;
        this.minimumHeight = -1;
        this.heightAtMinimumWidth = -1;
        this.widthAtMinimumHeight = -1;
        if (recursive || this.dirtySize != null) {
            if (this.control == null || this.control.isDisposed()) {
                this.dirtySize = new Point(0, 0);
                this.control = null;
            } else {
                this.dirtySize = this.control.getSize();
            }
        }
        this.flushChildren = this.flushChildren || recursive;
    }

    private Point getPreferredSize() {
        if (this.preferredSize == null) {
            this.preferredSize = this.controlComputeSize(-1, -1);
        }
        return this.preferredSize;
    }

    public Point computeSize(int widthHint, int heightHint) {
        if (this.control == null || this.control.isDisposed()) {
            return new Point(0, 0);
        }
        int minWidth = this.computeMinimumWidth();
        if (widthHint != -1 && widthHint + this.widthAdjustment < minWidth) {
            if (heightHint == -1) {
                return new Point(minWidth, this.computeHeightAtMinimumWidth());
            }
            widthHint = minWidth - this.widthAdjustment;
        }
        int minHeight = this.computeMinimumHeight();
        if (heightHint != -1 && heightHint + this.heightAdjustment < minHeight) {
            if (widthHint == -1) {
                return new Point(this.computeWidthAtMinimumHeight(), minHeight);
            }
            heightHint = minHeight - this.heightAdjustment;
        }
        if (widthHint != -1 && heightHint != -1) {
            return new Point(widthHint + this.widthAdjustment, heightHint + this.heightAdjustment);
        }
        if (widthHint == -1 && heightHint == -1) {
            return Geometry.copy((Point)this.getPreferredSize());
        }
        if (this.independentDimensions) {
            Point result = Geometry.copy((Point)this.getPreferredSize());
            if (widthHint != -1) {
                result.x = widthHint + this.widthAdjustment;
            }
            if (heightHint != -1) {
                result.y = heightHint + this.heightAdjustment;
            }
            return result;
        }
        if (heightHint == -1) {
            if (this.preferredSize != null && widthHint + this.widthAdjustment == this.preferredSize.x) {
                return Geometry.copy((Point)this.preferredSize);
            }
            if (this.cachedHeightQuery != -1 && this.cachedHeightQuery == widthHint) {
                return new Point(widthHint + this.widthAdjustment, this.cachedHeightResult);
            }
            if (this.preferredWidthOrLargerIsMinimumHeight) {
                this.getPreferredSize();
                if (widthHint + this.widthAdjustment >= this.preferredSize.x) {
                    return new Point(widthHint + this.widthAdjustment, this.preferredSize.y);
                }
            }
            Point newHeight = this.controlComputeSize(widthHint - this.widthAdjustment, -1);
            this.cachedHeightQuery = heightHint;
            this.cachedHeightResult = newHeight.y;
            return newHeight;
        }
        if (widthHint == -1) {
            if (this.preferredSize != null && heightHint + this.heightAdjustment == this.preferredSize.y) {
                return Geometry.copy((Point)this.preferredSize);
            }
            if (this.cachedWidthQuery == heightHint) {
                return new Point(this.cachedWidthResult, heightHint + this.heightAdjustment);
            }
            Point widthResult = this.controlComputeSize(-1, heightHint - this.heightAdjustment);
            this.cachedWidthQuery = heightHint;
            this.cachedWidthResult = widthResult.x;
            return widthResult;
        }
        return this.controlComputeSize(widthHint, heightHint);
    }

    public Point computeAdjustedSize(int widthHint, int heightHint) {
        int adjustedWidthHint = widthHint == -1 ? -1 : Math.max(0, widthHint - this.widthAdjustment);
        int adjustedHeightHint = heightHint == -1 ? -1 : Math.max(0, heightHint - this.heightAdjustment);
        Point result = this.computeSize(adjustedWidthHint, adjustedHeightHint);
        return result;
    }

    static boolean independentLengthAndWidth(Control control) {
        if (control == null || control.isDisposed()) {
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
        if (control instanceof Scrollable) {
            Scrollable scrollable = (Scrollable)control;
            Rectangle trim = scrollable.computeTrim(0, 0, 0, 0);
            this.widthAdjustment = trim.width;
            this.heightAdjustment = trim.height;
        } else {
            this.heightAdjustment = this.widthAdjustment = control.getBorderWidth() * 2;
        }
    }

    private Point controlComputeSize(int widthHint, int heightHint) {
        Point result = this.control.computeSize(widthHint, heightHint, this.flushChildren);
        this.flushChildren = false;
        return result;
    }

    private static boolean isPreferredWidthMaximum(Control control) {
        return control instanceof ToolBar || control instanceof Label;
    }

    public int computeMinimumWidth() {
        Layout layout;
        if (this.minimumWidth == -1 && this.control instanceof Composite && (layout = ((Composite)this.control).getLayout()) instanceof ILayoutExtension) {
            this.minimumWidth = ((ILayoutExtension)layout).computeMinimumWidth((Composite)this.control, this.flushChildren);
            this.flushChildren = false;
        }
        if (this.minimumWidth == -1) {
            Point minWidth = this.controlComputeSize(FormUtil.getWidthHint(5, this.control), -1);
            this.minimumWidth = minWidth.x;
            this.heightAtMinimumWidth = minWidth.y;
        }
        return this.minimumWidth;
    }

    public int computeMaximumWidth() {
        Layout layout;
        if (this.maximumWidth == -1 && this.control instanceof Composite && (layout = ((Composite)this.control).getLayout()) instanceof ILayoutExtension) {
            this.maximumWidth = ((ILayoutExtension)layout).computeMaximumWidth((Composite)this.control, this.flushChildren);
            this.flushChildren = false;
        }
        if (this.maximumWidth == -1) {
            this.maximumWidth = this.getPreferredSize().x;
        }
        return this.maximumWidth;
    }

    private int computeHeightAtMinimumWidth() {
        int minimumWidth = this.computeMinimumWidth();
        if (this.heightAtMinimumWidth == -1) {
            this.heightAtMinimumWidth = this.controlComputeSize((int)(minimumWidth - this.widthAdjustment), (int)-1).y;
        }
        return this.heightAtMinimumWidth;
    }

    private int computeWidthAtMinimumHeight() {
        int minimumHeight = this.computeMinimumHeight();
        if (this.widthAtMinimumHeight == -1) {
            this.widthAtMinimumHeight = this.controlComputeSize((int)-1, (int)(minimumHeight - this.heightAdjustment)).x;
        }
        return this.widthAtMinimumHeight;
    }

    private int computeMinimumHeight() {
        if (this.minimumHeight == -1) {
            Point sizeAtMinHeight = this.controlComputeSize(-1, 0);
            this.minimumHeight = sizeAtMinHeight.y;
            this.widthAtMinimumHeight = sizeAtMinHeight.x;
        }
        return this.minimumHeight;
    }

    public Point computeMinimumSize() {
        return new Point(this.computeMinimumWidth(), this.computeMinimumHeight());
    }

    public void setSize(Point newSize) {
        if (this.control != null) {
            this.control.setSize(newSize);
        }
        this.layoutIfNecessary();
    }

    public void setSize(int width, int height) {
        if (this.control != null) {
            this.control.setSize(width, height);
        }
        this.layoutIfNecessary();
    }

    public void setBounds(int x, int y, int width, int height) {
        if (this.control != null) {
            this.control.setBounds(x, y, width, height);
        }
        this.layoutIfNecessary();
    }

    public void setBounds(Rectangle bounds) {
        if (this.control != null) {
            this.control.setBounds(bounds);
        }
        this.layoutIfNecessary();
    }

    public void layoutIfNecessary() {
        if (this.dirtySize != null && this.control != null && this.control instanceof Composite && this.control.getSize().equals((Object)this.dirtySize)) {
            ((Composite)this.control).layout(this.flushChildren);
            this.flushChildren = false;
        }
        this.dirtySize = null;
    }
}

