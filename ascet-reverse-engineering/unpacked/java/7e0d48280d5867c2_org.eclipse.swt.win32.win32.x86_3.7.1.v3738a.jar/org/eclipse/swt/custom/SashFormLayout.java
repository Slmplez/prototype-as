/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.custom.SashFormData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Sash;

class SashFormLayout
extends Layout {
    SashFormLayout() {
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        SashForm sashForm = (SashForm)composite;
        Control[] cArray = sashForm.getControls(true);
        int width = 0;
        int height = 0;
        if (cArray.length == 0) {
            if (wHint != -1) {
                width = wHint;
            }
            if (hHint != -1) {
                height = hHint;
            }
            return new Point(width, height);
        }
        boolean vertical = sashForm.getOrientation() == 512;
        int maxIndex = 0;
        int maxValue = 0;
        int i = 0;
        while (i < cArray.length) {
            Point size;
            if (vertical) {
                size = cArray[i].computeSize(wHint, -1, flushCache);
                if (size.y > maxValue) {
                    maxIndex = i;
                    maxValue = size.y;
                }
                width = Math.max(width, size.x);
            } else {
                size = cArray[i].computeSize(-1, hHint, flushCache);
                if (size.x > maxValue) {
                    maxIndex = i;
                    maxValue = size.x;
                }
                height = Math.max(height, size.y);
            }
            ++i;
        }
        long[] ratios = new long[cArray.length];
        long total = 0L;
        int i2 = 0;
        while (i2 < cArray.length) {
            Object data = cArray[i2].getLayoutData();
            if (data != null && data instanceof SashFormData) {
                ratios[i2] = ((SashFormData)data).weight;
            } else {
                data = new SashFormData();
                cArray[i2].setLayoutData(data);
                ratios[i2] = 13108L;
                ((SashFormData)data).weight = 13108L;
            }
            total += ratios[i2];
            ++i2;
        }
        if (ratios[maxIndex] > 0L) {
            int sashwidth;
            int n = sashwidth = sashForm.sashes.length > 0 ? sashForm.SASH_WIDTH + sashForm.sashes[0].getBorderWidth() * 2 : sashForm.SASH_WIDTH;
            if (vertical) {
                height += (int)(total * (long)maxValue / ratios[maxIndex]) + (cArray.length - 1) * sashwidth;
            } else {
                width += (int)(total * (long)maxValue / ratios[maxIndex]) + (cArray.length - 1) * sashwidth;
            }
        }
        width += sashForm.getBorderWidth() * 2;
        height += sashForm.getBorderWidth() * 2;
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width, height);
    }

    protected boolean flushCache(Control control) {
        return true;
    }

    protected void layout(Composite composite, boolean flushCache) {
        int sashwidth;
        int i;
        Sash[] newSashes;
        SashForm sashForm = (SashForm)composite;
        Rectangle area = sashForm.getClientArea();
        if (area.width <= 1 || area.height <= 1) {
            return;
        }
        Control[] newControls = sashForm.getControls(true);
        if (sashForm.controls.length == 0 && newControls.length == 0) {
            return;
        }
        Control[] controls = sashForm.controls = newControls;
        if (sashForm.maxControl != null && !sashForm.maxControl.isDisposed()) {
            int i2 = 0;
            while (i2 < controls.length) {
                if (controls[i2] != sashForm.maxControl) {
                    controls[i2].setBounds(-200, -200, 0, 0);
                } else {
                    controls[i2].setBounds(area);
                }
                ++i2;
            }
            return;
        }
        if (sashForm.sashes.length < controls.length - 1) {
            newSashes = new Sash[controls.length - 1];
            System.arraycopy(sashForm.sashes, 0, newSashes, 0, sashForm.sashes.length);
            i = sashForm.sashes.length;
            while (i < newSashes.length) {
                newSashes[i] = sashForm.createSash();
                ++i;
            }
            sashForm.sashes = newSashes;
        }
        if (sashForm.sashes.length > controls.length - 1) {
            if (controls.length == 0) {
                int i3 = 0;
                while (i3 < sashForm.sashes.length) {
                    sashForm.sashes[i3].dispose();
                    ++i3;
                }
                sashForm.sashes = new Sash[0];
            } else {
                newSashes = new Sash[controls.length - 1];
                System.arraycopy(sashForm.sashes, 0, newSashes, 0, newSashes.length);
                i = controls.length - 1;
                while (i < sashForm.sashes.length) {
                    sashForm.sashes[i].dispose();
                    ++i;
                }
                sashForm.sashes = newSashes;
            }
        }
        if (controls.length == 0) {
            return;
        }
        Sash[] sashes = sashForm.sashes;
        long[] ratios = new long[controls.length];
        long total = 0L;
        int i4 = 0;
        while (i4 < controls.length) {
            Object data = controls[i4].getLayoutData();
            if (data != null && data instanceof SashFormData) {
                ratios[i4] = ((SashFormData)data).weight;
            } else {
                data = new SashFormData();
                controls[i4].setLayoutData(data);
                ratios[i4] = 13108L;
                ((SashFormData)data).weight = 13108L;
            }
            total += ratios[i4];
            ++i4;
        }
        int n = sashwidth = sashes.length > 0 ? sashForm.SASH_WIDTH + sashes[0].getBorderWidth() * 2 : sashForm.SASH_WIDTH;
        if (sashForm.getOrientation() == 256) {
            int width = (int)(ratios[0] * (long)(area.width - sashes.length * sashwidth) / total);
            int x = area.x;
            controls[0].setBounds(x, area.y, width, area.height);
            x += width;
            int i5 = 1;
            while (i5 < controls.length - 1) {
                sashes[i5 - 1].setBounds(x, area.y, sashwidth, area.height);
                width = (int)(ratios[i5] * (long)(area.width - sashes.length * sashwidth) / total);
                controls[i5].setBounds(x += sashwidth, area.y, width, area.height);
                x += width;
                ++i5;
            }
            if (controls.length > 1) {
                sashes[sashes.length - 1].setBounds(x, area.y, sashwidth, area.height);
                width = area.width - (x += sashwidth);
                controls[controls.length - 1].setBounds(x, area.y, width, area.height);
            }
        } else {
            int height = (int)(ratios[0] * (long)(area.height - sashes.length * sashwidth) / total);
            int y = area.y;
            controls[0].setBounds(area.x, y, area.width, height);
            y += height;
            int i6 = 1;
            while (i6 < controls.length - 1) {
                sashes[i6 - 1].setBounds(area.x, y, area.width, sashwidth);
                height = (int)(ratios[i6] * (long)(area.height - sashes.length * sashwidth) / total);
                controls[i6].setBounds(area.x, y += sashwidth, area.width, height);
                y += height;
                ++i6;
            }
            if (controls.length > 1) {
                sashes[sashes.length - 1].setBounds(area.x, y, area.width, sashwidth);
                height = area.height - (y += sashwidth);
                controls[controls.length - 1].setBounds(area.x, y, area.width, height);
            }
        }
    }
}

