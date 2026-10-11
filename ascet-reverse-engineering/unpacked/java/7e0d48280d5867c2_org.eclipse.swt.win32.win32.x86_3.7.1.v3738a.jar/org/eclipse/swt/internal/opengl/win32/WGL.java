/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.opengl.win32;

import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;
import org.eclipse.swt.internal.opengl.win32.LAYERPLANEDESCRIPTOR;
import org.eclipse.swt.internal.opengl.win32.PIXELFORMATDESCRIPTOR;

public class WGL
extends Platform {
    public static final int WGL_FONT_LINES = 0;
    public static final int WGL_FONT_POLYGONS = 1;
    public static final int LPD_DOUBLEBUFFER = 1;
    public static final int LPD_STEREO = 2;
    public static final int LPD_SUPPORT_GDI = 16;
    public static final int LPD_SUPPORT_OPENGL = 32;
    public static final int LPD_SHARE_DEPTH = 64;
    public static final int LPD_SHARE_STENCIL = 128;
    public static final int LPD_SHARE_ACCUM = 256;
    public static final int LPD_SWAP_EXCHANGE = 512;
    public static final int LPD_SWAP_COPY = 1024;
    public static final int LPD_TRANSPARENT = 4096;
    public static final int LPD_TYPE_RGBA = 0;
    public static final int LPD_TYPE_COLORINDEX = 1;
    public static final int WGL_SWAP_MAIN_PLANE = 1;
    public static final int WGL_SWAP_OVERLAY1 = 2;
    public static final int WGL_SWAP_OVERLAY2 = 4;
    public static final int WGL_SWAP_OVERLAY3 = 8;
    public static final int WGL_SWAP_OVERLAY4 = 16;
    public static final int WGL_SWAP_OVERLAY5 = 32;
    public static final int WGL_SWAP_OVERLAY6 = 64;
    public static final int WGL_SWAP_OVERLAY7 = 128;
    public static final int WGL_SWAP_OVERLAY8 = 256;
    public static final int WGL_SWAP_OVERLAY9 = 512;
    public static final int WGL_SWAP_OVERLAY10 = 1024;
    public static final int WGL_SWAP_OVERLAY11 = 2048;
    public static final int WGL_SWAP_OVERLAY12 = 4096;
    public static final int WGL_SWAP_OVERLAY13 = 8192;
    public static final int WGL_SWAP_OVERLAY14 = 16384;
    public static final int WGL_SWAP_OVERLAY15 = 32768;
    public static final int WGL_SWAP_UNDERLAY1 = 65536;
    public static final int WGL_SWAP_UNDERLAY2 = 131072;
    public static final int WGL_SWAP_UNDERLAY3 = 262144;
    public static final int WGL_SWAP_UNDERLAY4 = 524288;
    public static final int WGL_SWAP_UNDERLAY5 = 0x100000;
    public static final int WGL_SWAP_UNDERLAY6 = 0x200000;
    public static final int WGL_SWAP_UNDERLAY7 = 0x400000;
    public static final int WGL_SWAP_UNDERLAY8 = 0x800000;
    public static final int WGL_SWAP_UNDERLAY9 = 0x1000000;
    public static final int WGL_SWAP_UNDERLAY10 = 0x2000000;
    public static final int WGL_SWAP_UNDERLAY11 = 0x4000000;
    public static final int WGL_SWAP_UNDERLAY12 = 0x8000000;
    public static final int WGL_SWAP_UNDERLAY13 = 0x10000000;
    public static final int WGL_SWAP_UNDERLAY14 = 0x20000000;
    public static final int WGL_SWAP_UNDERLAY15 = 0x40000000;
    public static final int PFD_TYPE_RGBA = 0;
    public static final int PFD_TYPE_COLORINDEX = 1;
    public static final int PFD_MAIN_PLANE = 0;
    public static final int PFD_OVERLAY_PLANE = 1;
    public static final int PFD_UNDERLAY_PLANE = -1;
    public static final int PFD_DOUBLEBUFFER = 1;
    public static final int PFD_STEREO = 2;
    public static final int PFD_DRAW_TO_WINDOW = 4;
    public static final int PFD_DRAW_TO_BITMAP = 8;
    public static final int PFD_SUPPORT_GDI = 16;
    public static final int PFD_SUPPORT_OPENGL = 32;
    public static final int PFD_GENERIC_FORMAT = 64;
    public static final int PFD_NEED_PALETTE = 128;
    public static final int PFD_NEED_SYSTEM_PALETTE = 256;
    public static final int PFD_SWAP_EXCHANGE = 512;
    public static final int PFD_SWAP_COPY = 1024;
    public static final int PFD_SWAP_LAYER_BUFFERS = 2048;
    public static final int PFD_GENERIC_ACCELERATED = 4096;
    public static final int PFD_SUPPORT_DIRECTDRAW = 8192;
    public static final int PFD_DEPTH_DONTCARE = 0x20000000;
    public static final int PFD_DOUBLEBUFFER_DONTCARE = 0x40000000;
    public static final int PFD_STEREO_DONTCARE = Integer.MIN_VALUE;

    static {
        Library.loadLibrary("swt-wgl");
    }

    public static final native int ChoosePixelFormat(int var0, PIXELFORMATDESCRIPTOR var1);

    public static final native int DescribePixelFormat(int var0, int var1, int var2, PIXELFORMATDESCRIPTOR var3);

    public static final native int GetPixelFormat(int var0);

    public static final native boolean SetPixelFormat(int var0, int var1, PIXELFORMATDESCRIPTOR var2);

    public static final native boolean SwapBuffers(int var0);

    public static final native boolean wglCopyContext(int var0, int var1, int var2);

    public static final native int wglCreateContext(int var0);

    public static final native int wglCreateLayerContext(int var0, int var1);

    public static final native boolean wglDeleteContext(int var0);

    public static final native int wglGetCurrentContext();

    public static final native int wglGetCurrentDC();

    public static final native int wglGetProcAddress(byte[] var0);

    public static final native boolean wglMakeCurrent(int var0, int var1);

    public static final native boolean wglShareLists(int var0, int var1);

    public static final native boolean wglDescribeLayerPlane(int var0, int var1, int var2, int var3, LAYERPLANEDESCRIPTOR var4);

    public static final native int wglSetLayerPaletteEntries(int var0, int var1, int var2, int var3, int[] var4);

    public static final native int wglGetLayerPaletteEntries(int var0, int var1, int var2, int var3, int[] var4);

    public static final native boolean wglRealizeLayerPalette(int var0, int var1, boolean var2);

    public static final native boolean wglSwapLayerBuffers(int var0, int var1);
}

