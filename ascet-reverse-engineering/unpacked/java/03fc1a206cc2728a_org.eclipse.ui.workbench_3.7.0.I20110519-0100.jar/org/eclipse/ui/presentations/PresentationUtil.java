/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.presentations;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.internal.dnd.DragUtil;

public class PresentationUtil {
    private static Point anchor;
    private static final int HYSTERESIS = 16;
    private static int initialMouseButton;
    private static final String LISTENER_ID;
    private static Event dragEvent;
    private static Listener currentListener;
    private static Control dragSource;
    private static Listener dragListener;
    private static Listener moveListener;
    private static Listener clickListener;
    private static Listener mouseDownListener;
    static /* synthetic */ Class class$0;

    static {
        initialMouseButton = 0;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.presentations.PresentationUtil");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        LISTENER_ID = String.valueOf(clazz.getName()) + ".dragListener";
        currentListener = null;
        dragListener = new Listener(){

            public void handleEvent(Event event) {
                dragEvent = event;
                if (dragSource != event.widget) {
                    dragSource = null;
                    currentListener = null;
                }
            }
        };
        moveListener = new Listener(){

            public void handleEvent(Event event) {
                PresentationUtil.handleMouseMove(event);
            }
        };
        clickListener = new Listener(){

            public void handleEvent(Event e) {
                PresentationUtil.handleMouseClick(e);
            }
        };
        mouseDownListener = new Listener(){

            public void handleEvent(Event event) {
                if (event.widget instanceof Control) {
                    initialMouseButton = event.button;
                    dragSource = (Control)event.widget;
                    currentListener = (Listener)dragSource.getData(LISTENER_ID);
                    anchor = DragUtil.getEventLoc(event);
                    if (dragEvent != null && dragEvent.widget != dragSource) {
                        dragEvent = null;
                    }
                }
            }
        };
    }

    private static boolean hasMovedEnough(Event event) {
        return Geometry.distanceSquared((Point)DragUtil.getEventLoc(event), (Point)anchor) >= 256;
    }

    private static void handleMouseClick(Event event) {
        PresentationUtil.cancelDrag();
    }

    private static void handleMouseMove(Event e) {
        if (currentListener != null && dragEvent != null && PresentationUtil.hasMovedEnough(e)) {
            if (dragSource != null && !dragSource.isDisposed() && dragSource == e.widget) {
                Event de = dragEvent;
                int originalMouseButton = de.button;
                de.button = initialMouseButton;
                Listener l = currentListener;
                PresentationUtil.cancelDrag();
                l.handleEvent(de);
                de.button = originalMouseButton;
            } else {
                PresentationUtil.cancelDrag();
            }
        }
    }

    private static void cancelDrag() {
        currentListener = null;
        dragEvent = null;
        dragSource = null;
        initialMouseButton = 0;
    }

    public static void addDragListener(Control control, Listener externalDragListener) {
        control.addListener(29, dragListener);
        control.addListener(4, clickListener);
        control.addListener(8, clickListener);
        control.addListener(3, mouseDownListener);
        control.addListener(5, moveListener);
        control.setData(LISTENER_ID, (Object)externalDragListener);
    }

    public static void removeDragListener(Control control, Listener externalDragListener) {
        control.removeListener(29, dragListener);
        control.removeListener(4, clickListener);
        control.removeListener(8, clickListener);
        control.removeListener(3, mouseDownListener);
        control.removeListener(5, moveListener);
        control.setData(LISTENER_ID, null);
        if (externalDragListener == currentListener) {
            PresentationUtil.cancelDrag();
        }
    }
}

