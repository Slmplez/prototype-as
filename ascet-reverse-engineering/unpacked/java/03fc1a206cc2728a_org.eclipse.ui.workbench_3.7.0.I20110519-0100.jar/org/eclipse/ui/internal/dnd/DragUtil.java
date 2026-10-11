/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tracker
 */
package org.eclipse.ui.internal.dnd;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tracker;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.dnd.IDropTarget2;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.dnd.TestDropLocation;

public class DragUtil {
    private static final String DROP_TARGET_ID = "org.eclipse.ui.internal.dnd.dropTarget";
    private static TestDropLocation forcedDropTarget = null;
    private static List defaultTargets = new ArrayList();

    public static void addDragTarget(Control control, IDragOverListener target) {
        if (control == null) {
            defaultTargets.add(target);
        } else {
            ArrayList<IDragOverListener> targetList = DragUtil.getTargetList(control);
            if (targetList == null) {
                targetList = new ArrayList<IDragOverListener>(1);
            }
            targetList.add(target);
            control.setData(DROP_TARGET_ID, targetList);
        }
    }

    private static List getTargetList(Control control) {
        List result = (List)control.getData(DROP_TARGET_ID);
        return result;
    }

    public static void removeDragTarget(Control control, IDragOverListener target) {
        if (control == null) {
            defaultTargets.remove(target);
        } else {
            List targetList = DragUtil.getTargetList(control);
            if (targetList != null) {
                targetList.remove(target);
                if (targetList.isEmpty()) {
                    control.setData(DROP_TARGET_ID, null);
                }
            }
        }
    }

    public static Rectangle getDisplayBounds(Control boundsControl) {
        Composite parent = boundsControl.getParent();
        if (parent == null || boundsControl instanceof Shell) {
            return boundsControl.getBounds();
        }
        return Geometry.toDisplay((Control)parent, (Rectangle)boundsControl.getBounds());
    }

    public static boolean performDrag(Object draggedItem, Rectangle sourceBounds, Point initialLocation, boolean allowSnapping) {
        IDropTarget target = DragUtil.dragToTarget(draggedItem, sourceBounds, initialLocation, allowSnapping);
        if (target == null) {
            return false;
        }
        target.drop();
        if (target != null && target instanceof IDropTarget2) {
            ((IDropTarget2)target).dragFinished(true);
        }
        return true;
    }

    public static boolean dragTo(Display display, Object draggedItem, Point finalLocation, Rectangle dragRectangle) {
        Control currentControl = SwtUtil.findControl(display, finalLocation);
        IDropTarget target = DragUtil.getDropTarget(currentControl, draggedItem, finalLocation, dragRectangle);
        if (target == null) {
            return false;
        }
        target.drop();
        return true;
    }

    public static void forceDropLocation(TestDropLocation forcedLocation) {
        forcedDropTarget = forcedLocation;
    }

    static IDropTarget dragToTarget(final Object draggedItem, final Rectangle sourceBounds, final Point initialLocation, final boolean allowSnapping) {
        Shell shell;
        final Display display = Display.getCurrent();
        if (forcedDropTarget != null) {
            Point location = forcedDropTarget.getLocation();
            Control currentControl = SwtUtil.findControl((Control[])forcedDropTarget.getShells(), location);
            return DragUtil.getDropTarget(currentControl, draggedItem, location, sourceBounds);
        }
        final Tracker tracker = new Tracker(display, 0);
        tracker.setStippled(true);
        tracker.addListener(10, new Listener(){

            public void handleEvent(Event event) {
                display.syncExec(new Runnable(this, event, display, draggedItem, tracker, allowSnapping, sourceBounds, initialLocation){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ Event val$event;
                    private final /* synthetic */ Display val$display;
                    private final /* synthetic */ Object val$draggedItem;
                    private final /* synthetic */ Tracker val$tracker;
                    private final /* synthetic */ boolean val$allowSnapping;
                    private final /* synthetic */ Rectangle val$sourceBounds;
                    private final /* synthetic */ Point val$initialLocation;
                    {
                        this.this$1 = var1_1;
                        this.val$event = event;
                        this.val$display = display;
                        this.val$draggedItem = object;
                        this.val$tracker = tracker;
                        this.val$allowSnapping = bl;
                        this.val$sourceBounds = rectangle;
                        this.val$initialLocation = point;
                    }

                    public void run() {
                        Point location = new Point(this.val$event.x, this.val$event.y);
                        IDropTarget target = null;
                        Control targetControl = this.val$display.getCursorControl();
                        target = DragUtil.getDropTarget(targetControl, this.val$draggedItem, location, this.val$tracker.getRectangles()[0]);
                        Rectangle snapTarget = null;
                        if (target != null) {
                            snapTarget = target.getSnapRectangle();
                            this.val$tracker.setCursor(target.getCursor());
                        } else {
                            this.val$tracker.setCursor(DragCursors.getCursor(0));
                        }
                        if (this.val$allowSnapping) {
                            Rectangle[] currentRectangles;
                            if (snapTarget == null) {
                                snapTarget = new Rectangle(this.val$sourceBounds.x + location.x - this.val$initialLocation.x, this.val$sourceBounds.y + location.y - this.val$initialLocation.y, this.val$sourceBounds.width, this.val$sourceBounds.height);
                            }
                            if ((currentRectangles = this.val$tracker.getRectangles()).length != 1 || !currentRectangles[0].equals((Object)snapTarget)) {
                                this.val$tracker.setRectangles(new Rectangle[]{snapTarget});
                            }
                        }
                    }
                });
            }
        });
        IDropTarget target = null;
        Control startControl = display.getCursorControl();
        if (startControl != null && allowSnapping) {
            target = DragUtil.getDropTarget(startControl, draggedItem, initialLocation, sourceBounds);
        }
        Rectangle startRect = sourceBounds;
        if (target != null) {
            Rectangle rect = target.getSnapRectangle();
            if (rect != null) {
                startRect = rect;
            }
            tracker.setCursor(target.getCursor());
        }
        if (startRect != null) {
            tracker.setRectangles(new Rectangle[]{Geometry.copy((Rectangle)startRect)});
        }
        if ((shell = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getShell()) != null) {
            shell.setCapture(true);
        }
        boolean trackingOk = tracker.open();
        if (shell != null) {
            shell.setCapture(false);
        }
        IDropTarget dropTarget = null;
        Point finalLocation = display.getCursorLocation();
        Control targetControl = display.getCursorControl();
        dropTarget = DragUtil.getDropTarget(targetControl, draggedItem, finalLocation, tracker.getRectangles()[0]);
        tracker.dispose();
        if (trackingOk) {
            return dropTarget;
        }
        if (dropTarget != null && dropTarget instanceof IDropTarget2) {
            ((IDropTarget2)dropTarget).dragFinished(false);
        }
        return null;
    }

    private static IDropTarget getDropTarget(List toSearch, Control mostSpecificControl, Object draggedObject, Point position, Rectangle dragRectangle) {
        if (toSearch == null) {
            return null;
        }
        Iterator iter = toSearch.iterator();
        while (iter.hasNext()) {
            IDragOverListener next = (IDragOverListener)iter.next();
            IDropTarget dropTarget = next.drag(mostSpecificControl, draggedObject, position, dragRectangle);
            if (dropTarget == null) continue;
            return dropTarget;
        }
        return null;
    }

    public static IDropTarget getDropTarget(Control toSearch, Object draggedObject, Point position, Rectangle dragRectangle) {
        Control current = toSearch;
        while (current != null) {
            IDropTarget dropTarget = DragUtil.getDropTarget(DragUtil.getTargetList(current), toSearch, draggedObject, position, dragRectangle);
            if (dropTarget != null) {
                return dropTarget;
            }
            if (current instanceof Shell) break;
            current = current.getParent();
        }
        return DragUtil.getDropTarget(defaultTargets, toSearch, draggedObject, position, dragRectangle);
    }

    public static Point getEventLoc(Event event) {
        Control ctrl = (Control)event.widget;
        return ctrl.toDisplay(new Point(event.x, event.y));
    }
}

