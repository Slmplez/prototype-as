/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.SashFormData;
import org.eclipse.swt.custom.SashFormLayout;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;

public class SashForm
extends Composite {
    public int SASH_WIDTH = 3;
    int sashStyle;
    Sash[] sashes = new Sash[0];
    Color background = null;
    Color foreground = null;
    Control[] controls = new Control[0];
    Control maxControl = null;
    Listener sashListener;
    static final int DRAG_MINIMUM = 20;

    public SashForm(Composite parent, int style) {
        super(parent, SashForm.checkStyle(style));
        super.setLayout(new SashFormLayout());
        int n = this.sashStyle = (style & 0x200) != 0 ? 256 : 512;
        if ((style & 0x800) != 0) {
            this.sashStyle |= 0x800;
        }
        if ((style & 0x10000) != 0) {
            this.sashStyle |= 0x10000;
        }
        this.sashListener = new Listener(){

            public void handleEvent(Event e) {
                SashForm.this.onDragSash(e);
            }
        };
    }

    static int checkStyle(int style) {
        int mask = 0x6000800;
        return style & mask;
    }

    Sash createSash() {
        Sash sash = new Sash(this, this.sashStyle);
        sash.setBackground(this.background);
        sash.setForeground(this.foreground);
        sash.setToolTipText(this.getToolTipText());
        sash.addListener(13, this.sashListener);
        return sash;
    }

    public int getOrientation() {
        return (this.sashStyle & 0x200) != 0 ? 256 : 512;
    }

    public int getSashWidth() {
        this.checkWidget();
        return this.SASH_WIDTH;
    }

    public int getStyle() {
        int style = super.getStyle();
        style |= this.getOrientation() == 512 ? 512 : 256;
        if ((this.sashStyle & 0x10000) != 0) {
            style |= 0x10000;
        }
        return style;
    }

    public Control getMaximizedControl() {
        return this.maxControl;
    }

    public int[] getWeights() {
        this.checkWidget();
        Control[] cArray = this.getControls(false);
        int[] ratios = new int[cArray.length];
        int i = 0;
        while (i < cArray.length) {
            Object data = cArray[i].getLayoutData();
            ratios[i] = data != null && data instanceof SashFormData ? (int)(((SashFormData)data).weight * 1000L >> 16) : 200;
            ++i;
        }
        return ratios;
    }

    Control[] getControls(boolean onlyVisible) {
        Control[] children = this.getChildren();
        Control[] result = new Control[]{};
        int i = 0;
        while (i < children.length) {
            if (!(children[i] instanceof Sash || onlyVisible && !children[i].getVisible())) {
                Control[] newResult = new Control[result.length + 1];
                System.arraycopy(result, 0, newResult, 0, result.length);
                newResult[result.length] = children[i];
                result = newResult;
            }
            ++i;
        }
        return result;
    }

    void onDragSash(Event event) {
        Sash sash = (Sash)event.widget;
        int sashIndex = -1;
        int i = 0;
        while (i < this.sashes.length) {
            if (this.sashes[i] == sash) {
                sashIndex = i;
                break;
            }
            ++i;
        }
        if (sashIndex == -1) {
            return;
        }
        Control c1 = this.controls[sashIndex];
        Control c2 = this.controls[sashIndex + 1];
        Rectangle b1 = c1.getBounds();
        Rectangle b2 = c2.getBounds();
        Rectangle sashBounds = sash.getBounds();
        Rectangle area = this.getClientArea();
        boolean correction = false;
        if (this.getOrientation() == 256) {
            Object data2;
            Object data1;
            correction = b1.width < 20 || b2.width < 20;
            int totalWidth = b2.x + b2.width - b1.x;
            int shift = event.x - sashBounds.x;
            b1.width += shift;
            b2.x += shift;
            b2.width -= shift;
            if (b1.width < 20) {
                b1.width = 20;
                b2.x = b1.x + b1.width + sashBounds.width;
                b2.width = totalWidth - b2.x;
                event.x = b1.x + b1.width;
                event.doit = false;
            }
            if (b2.width < 20) {
                b1.width = totalWidth - 20 - sashBounds.width;
                b2.x = b1.x + b1.width + sashBounds.width;
                b2.width = 20;
                event.x = b1.x + b1.width;
                event.doit = false;
            }
            if ((data1 = c1.getLayoutData()) == null || !(data1 instanceof SashFormData)) {
                data1 = new SashFormData();
                c1.setLayoutData(data1);
            }
            if ((data2 = c2.getLayoutData()) == null || !(data2 instanceof SashFormData)) {
                data2 = new SashFormData();
                c2.setLayoutData(data2);
            }
            ((SashFormData)data1).weight = (((long)b1.width << 16) + (long)area.width - 1L) / (long)area.width;
            ((SashFormData)data2).weight = (((long)b2.width << 16) + (long)area.width - 1L) / (long)area.width;
        } else {
            Object data2;
            Object data1;
            correction = b1.height < 20 || b2.height < 20;
            int totalHeight = b2.y + b2.height - b1.y;
            int shift = event.y - sashBounds.y;
            b1.height += shift;
            b2.y += shift;
            b2.height -= shift;
            if (b1.height < 20) {
                b1.height = 20;
                b2.y = b1.y + b1.height + sashBounds.height;
                b2.height = totalHeight - b2.y;
                event.y = b1.y + b1.height;
                event.doit = false;
            }
            if (b2.height < 20) {
                b1.height = totalHeight - 20 - sashBounds.height;
                b2.y = b1.y + b1.height + sashBounds.height;
                b2.height = 20;
                event.y = b1.y + b1.height;
                event.doit = false;
            }
            if ((data1 = c1.getLayoutData()) == null || !(data1 instanceof SashFormData)) {
                data1 = new SashFormData();
                c1.setLayoutData(data1);
            }
            if ((data2 = c2.getLayoutData()) == null || !(data2 instanceof SashFormData)) {
                data2 = new SashFormData();
                c2.setLayoutData(data2);
            }
            ((SashFormData)data1).weight = (((long)b1.height << 16) + (long)area.height - 1L) / (long)area.height;
            ((SashFormData)data2).weight = (((long)b2.height << 16) + (long)area.height - 1L) / (long)area.height;
        }
        if (correction || event.doit && event.detail != 1) {
            c1.setBounds(b1);
            sash.setBounds(event.x, event.y, event.width, event.height);
            c2.setBounds(b2);
        }
    }

    public void setOrientation(int orientation) {
        this.checkWidget();
        if (orientation == 0x4000000 || orientation == 0x2000000) {
            super.setOrientation(orientation);
            return;
        }
        if (this.getOrientation() == orientation) {
            return;
        }
        if (orientation != 256 && orientation != 512) {
            SWT.error(5);
        }
        this.sashStyle &= 0xFFFFFCFF;
        this.sashStyle |= orientation == 512 ? 256 : 512;
        int i = 0;
        while (i < this.sashes.length) {
            this.sashes[i].dispose();
            this.sashes[i] = this.createSash();
            ++i;
        }
        this.layout(false);
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        this.background = color;
        int i = 0;
        while (i < this.sashes.length) {
            this.sashes[i].setBackground(this.background);
            ++i;
        }
    }

    public void setForeground(Color color) {
        super.setForeground(color);
        this.foreground = color;
        int i = 0;
        while (i < this.sashes.length) {
            this.sashes[i].setForeground(this.foreground);
            ++i;
        }
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    public void setMaximizedControl(Control control) {
        this.checkWidget();
        if (control == null) {
            if (this.maxControl != null) {
                this.maxControl = null;
                this.layout(false);
                int i = 0;
                while (i < this.sashes.length) {
                    this.sashes[i].setVisible(true);
                    ++i;
                }
            }
            return;
        }
        int i = 0;
        while (i < this.sashes.length) {
            this.sashes[i].setVisible(false);
            ++i;
        }
        this.maxControl = control;
        this.layout(false);
    }

    public void setSashWidth(int width) {
        this.checkWidget();
        if (this.SASH_WIDTH == width) {
            return;
        }
        this.SASH_WIDTH = width;
        this.layout(false);
    }

    public void setToolTipText(String string) {
        super.setToolTipText(string);
        int i = 0;
        while (i < this.sashes.length) {
            this.sashes[i].setToolTipText(string);
            ++i;
        }
    }

    public void setWeights(int[] weights) {
        this.checkWidget();
        Control[] cArray = this.getControls(false);
        if (weights == null || weights.length != cArray.length) {
            SWT.error(5);
        }
        int total = 0;
        int i = 0;
        while (i < weights.length) {
            if (weights[i] < 0) {
                SWT.error(5);
            }
            total += weights[i];
            ++i;
        }
        if (total == 0) {
            SWT.error(5);
        }
        i = 0;
        while (i < cArray.length) {
            Object data = cArray[i].getLayoutData();
            if (data == null || !(data instanceof SashFormData)) {
                data = new SashFormData();
                cArray[i].setLayoutData(data);
            }
            ((SashFormData)data).weight = (((long)weights[i] << 16) + (long)total - 1L) / (long)total;
            ++i;
        }
        this.layout(false);
    }
}

