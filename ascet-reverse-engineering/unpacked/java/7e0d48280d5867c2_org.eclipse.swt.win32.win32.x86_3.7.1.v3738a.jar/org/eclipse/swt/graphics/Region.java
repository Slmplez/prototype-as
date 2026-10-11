/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;

public final class Region
extends Resource {
    public int handle;

    public Region() {
        this(null);
    }

    public Region(Device device) {
        super(device);
        this.handle = OS.CreateRectRgn(0, 0, 0, 0);
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    Region(Device device, int handle) {
        super(device);
        this.handle = handle;
    }

    public void add(int[] pointArray) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        int polyRgn = OS.CreatePolygonRgn(pointArray, pointArray.length / 2, 1);
        OS.CombineRgn(this.handle, this.handle, polyRgn, 2);
        OS.DeleteObject(polyRgn);
    }

    public void add(Rectangle rect) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (rect == null) {
            SWT.error(4);
        }
        this.add(rect.x, rect.y, rect.width, rect.height);
    }

    public void add(int x, int y, int width, int height) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (width < 0 || height < 0) {
            SWT.error(5);
        }
        int rectRgn = OS.CreateRectRgn(x, y, x + width, y + height);
        OS.CombineRgn(this.handle, this.handle, rectRgn, 2);
        OS.DeleteObject(rectRgn);
    }

    public void add(Region region) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (region == null) {
            SWT.error(4);
        }
        if (region.isDisposed()) {
            SWT.error(5);
        }
        OS.CombineRgn(this.handle, this.handle, region.handle, 2);
    }

    public boolean contains(int x, int y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return OS.PtInRegion(this.handle, x, y);
    }

    public boolean contains(Point pt) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (pt == null) {
            SWT.error(4);
        }
        return this.contains(pt.x, pt.y);
    }

    void destroy() {
        OS.DeleteObject(this.handle);
        this.handle = 0;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Region)) {
            return false;
        }
        Region rgn = (Region)object;
        return this.handle == rgn.handle;
    }

    public Rectangle getBounds() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        RECT rect = new RECT();
        OS.GetRgnBox(this.handle, rect);
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    public int hashCode() {
        return this.handle;
    }

    public void intersect(Rectangle rect) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (rect == null) {
            SWT.error(4);
        }
        this.intersect(rect.x, rect.y, rect.width, rect.height);
    }

    public void intersect(int x, int y, int width, int height) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (width < 0 || height < 0) {
            SWT.error(5);
        }
        int rectRgn = OS.CreateRectRgn(x, y, x + width, y + height);
        OS.CombineRgn(this.handle, this.handle, rectRgn, 1);
        OS.DeleteObject(rectRgn);
    }

    public void intersect(Region region) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (region == null) {
            SWT.error(4);
        }
        if (region.isDisposed()) {
            SWT.error(5);
        }
        OS.CombineRgn(this.handle, this.handle, region.handle, 1);
    }

    public boolean intersects(int x, int y, int width, int height) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        RECT r = new RECT();
        OS.SetRect(r, x, y, x + width, y + height);
        return OS.RectInRegion(this.handle, r);
    }

    public boolean intersects(Rectangle rect) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (rect == null) {
            SWT.error(4);
        }
        return this.intersects(rect.x, rect.y, rect.width, rect.height);
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public boolean isEmpty() {
        RECT rect;
        int result;
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if ((result = OS.GetRgnBox(this.handle, rect = new RECT())) == 1) {
            return true;
        }
        return rect.right - rect.left <= 0 || rect.bottom - rect.top <= 0;
    }

    public void subtract(int[] pointArray) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        if (OS.IsWinCE) {
            SWT.error(20);
        }
        int polyRgn = OS.CreatePolygonRgn(pointArray, pointArray.length / 2, 1);
        OS.CombineRgn(this.handle, this.handle, polyRgn, 4);
        OS.DeleteObject(polyRgn);
    }

    public void subtract(Rectangle rect) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (rect == null) {
            SWT.error(4);
        }
        this.subtract(rect.x, rect.y, rect.width, rect.height);
    }

    public void subtract(int x, int y, int width, int height) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (width < 0 || height < 0) {
            SWT.error(5);
        }
        int rectRgn = OS.CreateRectRgn(x, y, x + width, y + height);
        OS.CombineRgn(this.handle, this.handle, rectRgn, 4);
        OS.DeleteObject(rectRgn);
    }

    public void subtract(Region region) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (region == null) {
            SWT.error(4);
        }
        if (region.isDisposed()) {
            SWT.error(5);
        }
        OS.CombineRgn(this.handle, this.handle, region.handle, 4);
    }

    public void translate(int x, int y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        OS.OffsetRgn(this.handle, x, y);
    }

    public void translate(Point pt) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (pt == null) {
            SWT.error(4);
        }
        this.translate(pt.x, pt.y);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Region {*DISPOSED*}";
        }
        return "Region {" + this.handle + "}";
    }

    public static Region win32_new(Device device, int handle) {
        return new Region(device, handle);
    }
}

