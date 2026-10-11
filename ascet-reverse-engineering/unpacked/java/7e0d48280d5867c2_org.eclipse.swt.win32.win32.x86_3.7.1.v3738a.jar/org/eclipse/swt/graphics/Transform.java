/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.gdip.Gdip;

public class Transform
extends Resource {
    public int handle;

    public Transform(Device device) {
        this(device, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    }

    public Transform(Device device, float[] elements) {
        this(device, Transform.checkTransform(elements)[0], elements[1], elements[2], elements[3], elements[4], elements[5]);
    }

    public Transform(Device device, float m11, float m12, float m21, float m22, float dx, float dy) {
        super(device);
        this.device.checkGDIP();
        this.handle = Gdip.Matrix_new(m11, m12, m21, m22, dx, dy);
        if (this.handle == 0) {
            SWT.error(2);
        }
        this.init();
    }

    static float[] checkTransform(float[] elements) {
        if (elements == null) {
            SWT.error(4);
        }
        if (elements.length < 6) {
            SWT.error(5);
        }
        return elements;
    }

    void destroy() {
        Gdip.Matrix_delete(this.handle);
        this.handle = 0;
    }

    public void getElements(float[] elements) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (elements == null) {
            SWT.error(4);
        }
        if (elements.length < 6) {
            SWT.error(5);
        }
        Gdip.Matrix_GetElements(this.handle, elements);
    }

    public void identity() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_SetElements(this.handle, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
    }

    public void invert() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (Gdip.Matrix_Invert(this.handle) != 0) {
            SWT.error(10);
        }
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public boolean isIdentity() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        return Gdip.Matrix_IsIdentity(this.handle);
    }

    public void multiply(Transform matrix) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (matrix == null) {
            SWT.error(4);
        }
        if (matrix.isDisposed()) {
            SWT.error(5);
        }
        Gdip.Matrix_Multiply(this.handle, matrix.handle, 0);
    }

    public void rotate(float angle) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_Rotate(this.handle, angle, 0);
    }

    public void scale(float scaleX, float scaleY) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_Scale(this.handle, scaleX, scaleY, 0);
    }

    public void setElements(float m11, float m12, float m21, float m22, float dx, float dy) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_SetElements(this.handle, m11, m12, m21, m22, dx, dy);
    }

    public void shear(float shearX, float shearY) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_Shear(this.handle, shearX, shearY, 0);
    }

    public void transform(float[] pointArray) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        if (pointArray == null) {
            SWT.error(4);
        }
        Gdip.Matrix_TransformPoints(this.handle, pointArray, pointArray.length / 2);
    }

    public void translate(float offsetX, float offsetY) {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        Gdip.Matrix_Translate(this.handle, offsetX, offsetY, 0);
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Transform {*DISPOSED*}";
        }
        float[] elements = new float[6];
        this.getElements(elements);
        return "Transform {" + elements[0] + "," + elements[1] + "," + elements[2] + "," + elements[3] + "," + elements[4] + "," + elements[5] + "}";
    }
}

