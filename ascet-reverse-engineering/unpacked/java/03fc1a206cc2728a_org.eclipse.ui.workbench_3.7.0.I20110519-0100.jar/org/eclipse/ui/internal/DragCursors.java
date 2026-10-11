/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.WorkbenchImages;

public class DragCursors {
    public static final int INVALID = 0;
    public static final int LEFT = 1;
    public static final int RIGHT = 2;
    public static final int TOP = 3;
    public static final int BOTTOM = 4;
    public static final int CENTER = 5;
    public static final int OFFSCREEN = 6;
    public static final int FASTVIEW = 7;
    private static final Cursor[] cursors = new Cursor[8];

    public static int positionToDragCursor(int swtPositionConstant) {
        switch (swtPositionConstant) {
            case 16384: {
                return 1;
            }
            case 131072: {
                return 2;
            }
            case 128: {
                return 3;
            }
            case 1024: {
                return 4;
            }
            case 0x1000000: {
                return 5;
            }
        }
        return 0;
    }

    public static int dragCursorToSwtConstant(int dragCursorId) {
        switch (dragCursorId) {
            case 1: {
                return 16384;
            }
            case 2: {
                return 131072;
            }
            case 3: {
                return 128;
            }
            case 4: {
                return 1024;
            }
            case 5: {
                return 0x1000000;
            }
        }
        return -1;
    }

    public static Cursor getCursor(int code) {
        Display display = Display.getCurrent();
        if (cursors[code] == null) {
            ImageDescriptor source = null;
            ImageDescriptor mask = null;
            switch (code) {
                case 1: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_LEFT_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_LEFT_MASK");
                    DragCursors.cursors[1] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 2: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_RIGHT_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_RIGHT_MASK");
                    DragCursors.cursors[2] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 3: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_TOP_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_TOP_MASK");
                    DragCursors.cursors[3] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 4: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_BOTTOM_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_BOTTOM_MASK");
                    DragCursors.cursors[4] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 5: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_STACK_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_STACK_MASK");
                    DragCursors.cursors[5] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 6: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_OFFSCREEN_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_OFFSCREEN_MASK");
                    DragCursors.cursors[6] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                case 7: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_TOFASTVIEW_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_TOFASTVIEW_MASK");
                    DragCursors.cursors[7] = new Cursor((Device)Display.getCurrent(), source.getImageData(), mask.getImageData(), 16, 16);
                    break;
                }
                default: {
                    source = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_INVALID_SOURCE");
                    mask = WorkbenchImages.getImageDescriptor("IMG_OBJS_DND_INVALID_MASK");
                    DragCursors.cursors[0] = new Cursor((Device)display, source.getImageData(), mask.getImageData(), 16, 16);
                }
            }
        }
        return cursors[code];
    }

    public static void dispose() {
        int idx = 0;
        while (idx < cursors.length) {
            Cursor cursor = cursors[idx];
            if (cursor != null) {
                cursor.dispose();
                DragCursors.cursors[idx] = null;
            }
            ++idx;
        }
    }
}

