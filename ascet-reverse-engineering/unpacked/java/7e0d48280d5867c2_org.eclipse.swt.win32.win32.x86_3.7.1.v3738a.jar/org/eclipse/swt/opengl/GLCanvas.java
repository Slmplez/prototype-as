/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.opengl;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.opengl.win32.PIXELFORMATDESCRIPTOR;
import org.eclipse.swt.internal.opengl.win32.WGL;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.opengl.GLData;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class GLCanvas
extends Canvas {
    int context;
    int pixelFormat;
    static final String USE_OWNDC_KEY = "org.eclipse.swt.internal.win32.useOwnDC";

    public GLCanvas(Composite parent, int style, GLData data) {
        super(parent, GLCanvas.checkStyle(parent, style));
        parent.getDisplay().setData(USE_OWNDC_KEY, new Boolean(false));
        if (data == null) {
            SWT.error(4);
        }
        PIXELFORMATDESCRIPTOR pfd = new PIXELFORMATDESCRIPTOR();
        pfd.nSize = (short)40;
        pfd.nVersion = 1;
        pfd.dwFlags = 36;
        pfd.dwLayerMask = 0;
        pfd.iPixelType = 0;
        if (data.doubleBuffer) {
            pfd.dwFlags |= 1;
        }
        if (data.stereo) {
            pfd.dwFlags |= 2;
        }
        pfd.cRedBits = (byte)data.redSize;
        pfd.cGreenBits = (byte)data.greenSize;
        pfd.cBlueBits = (byte)data.blueSize;
        pfd.cAlphaBits = (byte)data.alphaSize;
        pfd.cDepthBits = (byte)data.depthSize;
        pfd.cStencilBits = (byte)data.stencilSize;
        pfd.cAccumRedBits = (byte)data.accumRedSize;
        pfd.cAccumGreenBits = (byte)data.accumGreenSize;
        pfd.cAccumBlueBits = (byte)data.accumBlueSize;
        pfd.cAccumAlphaBits = (byte)data.accumAlphaSize;
        pfd.cAccumBits = (byte)(pfd.cAccumRedBits + pfd.cAccumGreenBits + pfd.cAccumBlueBits + pfd.cAccumAlphaBits);
        int hDC = OS.GetDC(this.handle);
        this.pixelFormat = WGL.ChoosePixelFormat(hDC, pfd);
        if (this.pixelFormat == 0 || !WGL.SetPixelFormat(hDC, this.pixelFormat, pfd)) {
            OS.ReleaseDC(this.handle, hDC);
            this.dispose();
            SWT.error(38);
        }
        this.context = WGL.wglCreateContext(hDC);
        if (this.context == 0) {
            OS.ReleaseDC(this.handle, hDC);
            SWT.error(2);
        }
        OS.ReleaseDC(this.handle, hDC);
        if (data.shareContext != null) {
            WGL.wglShareLists(data.shareContext.context, this.context);
        }
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        WGL.wglDeleteContext(GLCanvas.this.context);
                    }
                }
            }
        };
        this.addListener(12, listener);
    }

    static int checkStyle(Composite parent, int style) {
        if (parent != null && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
            parent.getDisplay().setData(USE_OWNDC_KEY, new Boolean(true));
        }
        return style;
    }

    public GLData getGLData() {
        this.checkWidget();
        GLData data = new GLData();
        PIXELFORMATDESCRIPTOR pfd = new PIXELFORMATDESCRIPTOR();
        pfd.nSize = (short)40;
        int hDC = OS.GetDC(this.handle);
        WGL.DescribePixelFormat(hDC, this.pixelFormat, 40, pfd);
        OS.ReleaseDC(this.handle, hDC);
        data.doubleBuffer = (pfd.dwFlags & 1) != 0;
        data.stereo = (pfd.dwFlags & 2) != 0;
        data.redSize = pfd.cRedBits;
        data.greenSize = pfd.cGreenBits;
        data.blueSize = pfd.cBlueBits;
        data.alphaSize = pfd.cAlphaBits;
        data.depthSize = pfd.cDepthBits;
        data.stencilSize = pfd.cStencilBits;
        data.accumRedSize = pfd.cAccumRedBits;
        data.accumGreenSize = pfd.cAccumGreenBits;
        data.accumBlueSize = pfd.cAccumBlueBits;
        data.accumAlphaSize = pfd.cAccumAlphaBits;
        return data;
    }

    public boolean isCurrent() {
        this.checkWidget();
        return WGL.wglGetCurrentContext() == this.context;
    }

    public void setCurrent() {
        this.checkWidget();
        if (WGL.wglGetCurrentContext() == this.context) {
            return;
        }
        int hDC = OS.GetDC(this.handle);
        WGL.wglMakeCurrent(hDC, this.context);
        OS.ReleaseDC(this.handle, hDC);
    }

    public void swapBuffers() {
        this.checkWidget();
        int hDC = OS.GetDC(this.handle);
        WGL.SwapBuffers(hDC);
        OS.ReleaseDC(this.handle, hDC);
    }
}

