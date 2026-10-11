/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.PathData;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.PointF;
import org.eclipse.swt.internal.gdip.RectF;
import org.eclipse.swt.internal.win32.OS;

public class Path
extends Resource {
    public int handle;
    PointF currentPoint = new PointF();
    PointF startPoint = new PointF();

    public Path(Device device) {
        super(device);
        this.device.checkGDIP();
        this.handle = Gdip.GraphicsPath_new(0);
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    public Path(Device device, Path path, float flatness) {
        super(device);
        if (path == null) {
            SWT.error(4);
        }
        if (path.isDisposed()) {
            SWT.error(5);
        }
        flatness = Math.max(0.0f, flatness);
        this.handle = Gdip.GraphicsPath_Clone(path.handle);
        if (flatness != 0.0f) {
            Gdip.GraphicsPath_Flatten(this.handle, 0, flatness);
        }
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    public Path(Device device, PathData data) {
        this(device);
        if (data == null) {
            SWT.error(4);
        }
        this.init(data);
    }

    public void addArc(float x, float y, float width, float height, float startAngle, float arcAngle) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (width < 0.0f) {
            x += width;
            width = -width;
        }
        if (height < 0.0f) {
            y += height;
            height = -height;
        }
        if (width == 0.0f || height == 0.0f || arcAngle == 0.0f) {
            return;
        }
        if (width == height) {
            Gdip.GraphicsPath_AddArc(this.handle, x, y, width, height, -startAngle, -arcAngle);
        } else {
            int matrix;
            int path = Gdip.GraphicsPath_new(0);
            if (path == 0) {
                SWT.error(2);
            }
            if ((matrix = Gdip.Matrix_new(width, 0.0f, 0.0f, height, x, y)) == 0) {
                SWT.error(2);
            }
            Gdip.GraphicsPath_AddArc(path, 0.0f, 0.0f, 1.0f, 1.0f, -startAngle, -arcAngle);
            Gdip.GraphicsPath_Transform(path, matrix);
            Gdip.GraphicsPath_AddPath(this.handle, path, true);
            Gdip.Matrix_delete(matrix);
            Gdip.GraphicsPath_delete(path);
        }
        Gdip.GraphicsPath_GetLastPoint(this.handle, this.currentPoint);
    }

    public void addPath(Path path) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (path == null) {
            SWT.error(4);
        }
        if (path.isDisposed()) {
            SWT.error(5);
        }
        Gdip.GraphicsPath_AddPath(this.handle, path.handle, false);
        this.currentPoint.X = path.currentPoint.X;
        this.currentPoint.Y = path.currentPoint.Y;
    }

    public void addRectangle(float x, float y, float width, float height) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        RectF rect = new RectF();
        rect.X = x;
        rect.Y = y;
        rect.Width = width;
        rect.Height = height;
        Gdip.GraphicsPath_AddRectangle(this.handle, rect);
        this.currentPoint.X = x;
        this.currentPoint.Y = y;
    }

    public void addString(String string, float x, float y, Font font) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (font == null) {
            SWT.error(4);
        }
        if (font.isDisposed()) {
            SWT.error(5);
        }
        int length = string.length();
        char[] buffer = new char[length];
        string.getChars(0, length, buffer, 0);
        int hDC = this.device.internal_new_GC(null);
        int[] family = new int[1];
        int gdipFont = GC.createGdipFont(hDC, font.handle, 0, this.device.fontCollection, family, null);
        PointF point = new PointF();
        point.X = x - Gdip.Font_GetSize(gdipFont) / 6.0f;
        point.Y = y;
        int style = Gdip.Font_GetStyle(gdipFont);
        float size = Gdip.Font_GetSize(gdipFont);
        Gdip.GraphicsPath_AddString(this.handle, buffer, length, family[0], style, size, point, 0);
        Gdip.GraphicsPath_GetLastPoint(this.handle, this.currentPoint);
        Gdip.FontFamily_delete(family[0]);
        Gdip.Font_delete(gdipFont);
        this.device.internal_dispose_GC(hDC, null);
    }

    public void close() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.GraphicsPath_CloseFigure(this.handle);
        this.currentPoint.X = this.startPoint.X;
        this.currentPoint.Y = this.startPoint.Y;
    }

    public boolean contains(float x, float y, GC gc, boolean outline) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (gc == null) {
            SWT.error(4);
        }
        if (gc.isDisposed()) {
            SWT.error(5);
        }
        gc.initGdip();
        gc.checkGC(120);
        int mode = OS.GetPolyFillMode(gc.handle) == 2 ? 1 : 0;
        Gdip.GraphicsPath_SetFillMode(this.handle, mode);
        if (outline) {
            return Gdip.GraphicsPath_IsOutlineVisible(this.handle, x, y, gc.data.gdipPen, gc.data.gdipGraphics);
        }
        return Gdip.GraphicsPath_IsVisible(this.handle, x, y, gc.data.gdipGraphics);
    }

    public void cubicTo(float cx1, float cy1, float cx2, float cy2, float x, float y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.GraphicsPath_AddBezier(this.handle, this.currentPoint.X, this.currentPoint.Y, cx1, cy1, cx2, cy2, x, y);
        Gdip.GraphicsPath_GetLastPoint(this.handle, this.currentPoint);
    }

    void destroy() {
        Gdip.GraphicsPath_delete(this.handle);
        this.handle = 0;
    }

    public void getBounds(float[] bounds) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (bounds == null) {
            SWT.error(4);
        }
        if (bounds.length < 4) {
            SWT.error(5);
        }
        RectF rect = new RectF();
        Gdip.GraphicsPath_GetBounds(this.handle, rect, 0, 0);
        bounds[0] = rect.X;
        bounds[1] = rect.Y;
        bounds[2] = rect.Width;
        bounds[3] = rect.Height;
    }

    public void getCurrentPoint(float[] point) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (point == null) {
            SWT.error(4);
        }
        if (point.length < 2) {
            SWT.error(5);
        }
        point[0] = this.currentPoint.X;
        point[1] = this.currentPoint.Y;
    }

    public PathData getPathData() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        int count = Gdip.GraphicsPath_GetPointCount(this.handle);
        byte[] gdipTypes = new byte[count];
        float[] points = new float[count * 2];
        Gdip.GraphicsPath_GetPathTypes(this.handle, gdipTypes, count);
        Gdip.GraphicsPath_GetPathPoints(this.handle, points, count);
        byte[] types = new byte[count * 2];
        int index = 0;
        int typesIndex = 0;
        while (index < count) {
            byte type = gdipTypes[index];
            boolean close = false;
            switch (type & 7) {
                case 0: {
                    types[typesIndex++] = 1;
                    close = (type & 0x80) != 0;
                    ++index;
                    break;
                }
                case 1: {
                    types[typesIndex++] = 2;
                    close = (type & 0x80) != 0;
                    ++index;
                    break;
                }
                case 3: {
                    types[typesIndex++] = 4;
                    close = (gdipTypes[index + 2] & 0x80) != 0;
                    index += 3;
                    break;
                }
                default: {
                    ++index;
                }
            }
            if (!close) continue;
            types[typesIndex++] = 5;
        }
        if (typesIndex != types.length) {
            byte[] newTypes = new byte[typesIndex];
            System.arraycopy(types, 0, newTypes, 0, typesIndex);
            types = newTypes;
        }
        PathData result = new PathData();
        result.types = types;
        result.points = points;
        return result;
    }

    public void lineTo(float x, float y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.GraphicsPath_AddLine(this.handle, this.currentPoint.X, this.currentPoint.Y, x, y);
        Gdip.GraphicsPath_GetLastPoint(this.handle, this.currentPoint);
    }

    void init(PathData data) {
        byte[] types = data.types;
        float[] points = data.points;
        int i = 0;
        int j = 0;
        while (i < types.length) {
            switch (types[i]) {
                case 1: {
                    this.moveTo(points[j++], points[j++]);
                    break;
                }
                case 2: {
                    this.lineTo(points[j++], points[j++]);
                    break;
                }
                case 4: {
                    this.cubicTo(points[j++], points[j++], points[j++], points[j++], points[j++], points[j++]);
                    break;
                }
                case 3: {
                    this.quadTo(points[j++], points[j++], points[j++], points[j++]);
                    break;
                }
                case 5: {
                    this.close();
                    break;
                }
                default: {
                    this.dispose();
                    SWT.error(5);
                }
            }
            ++i;
        }
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public void moveTo(float x, float y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.GraphicsPath_StartFigure(this.handle);
        this.currentPoint.X = this.startPoint.X = x;
        this.currentPoint.Y = this.startPoint.Y = y;
    }

    public void quadTo(float cx, float cy, float x, float y) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        float cx1 = this.currentPoint.X + 2.0f * (cx - this.currentPoint.X) / 3.0f;
        float cy1 = this.currentPoint.Y + 2.0f * (cy - this.currentPoint.Y) / 3.0f;
        float cx2 = cx1 + (x - this.currentPoint.X) / 3.0f;
        float cy2 = cy1 + (y - this.currentPoint.Y) / 3.0f;
        Gdip.GraphicsPath_AddBezier(this.handle, this.currentPoint.X, this.currentPoint.Y, cx1, cy1, cx2, cy2, x, y);
        Gdip.GraphicsPath_GetLastPoint(this.handle, this.currentPoint);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Path {*DISPOSED*}";
        }
        return "Path {" + this.handle + "}";
    }
}

