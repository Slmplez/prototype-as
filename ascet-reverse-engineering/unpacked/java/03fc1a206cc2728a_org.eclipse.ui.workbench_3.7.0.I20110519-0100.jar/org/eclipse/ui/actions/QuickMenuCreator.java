/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.ui.actions;

import java.util.ArrayList;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;

public abstract class QuickMenuCreator {
    private static final int CHAR_INDENT = 3;

    public void createMenu() {
        final Display display = Display.getCurrent();
        if (display == null) {
            return;
        }
        Control focus = display.getFocusControl();
        if (focus == null || focus.isDisposed()) {
            return;
        }
        MenuManager menu = new MenuManager();
        this.fillMenu((IMenuManager)menu);
        final Menu quickMenu = menu.createContextMenu((Control)focus.getShell());
        Point location = this.computeMenuLocation(focus);
        if (location == null) {
            return;
        }
        quickMenu.setLocation(location);
        quickMenu.addListener(23, new Listener(){

            public void handleEvent(Event event) {
                if (!display.isDisposed()) {
                    display.asyncExec(new Runnable(this, quickMenu){
                        final /* synthetic */ 1 this$1;
                        private final /* synthetic */ Menu val$quickMenu;
                        {
                            this.this$1 = var1_1;
                            this.val$quickMenu = menu;
                        }

                        public void run() {
                            if (!this.val$quickMenu.isDisposed()) {
                                this.val$quickMenu.dispose();
                            }
                        }
                    });
                }
            }
        });
        quickMenu.setVisible(true);
    }

    protected abstract void fillMenu(IMenuManager var1);

    protected Point computeMenuLocation(Control focus) {
        Rectangle shellArea;
        Point cursorLocation = focus.getDisplay().getCursorLocation();
        Rectangle clientArea = null;
        Point result = null;
        if (focus instanceof StyledText) {
            StyledText styledText = (StyledText)focus;
            clientArea = styledText.getClientArea();
            result = this.computeMenuLocation(styledText);
        } else if (focus instanceof Tree) {
            Tree tree = (Tree)focus;
            clientArea = tree.getClientArea();
            result = this.computeMenuLocation(tree);
        } else if (focus instanceof Table) {
            Table table = (Table)focus;
            clientArea = table.getClientArea();
            result = this.computeMenuLocation(table);
        }
        if (result == null) {
            result = focus.toControl(cursorLocation);
        }
        if (clientArea != null && !clientArea.contains(result)) {
            result = new Point(clientArea.x + clientArea.width / 2, clientArea.y + clientArea.height / 2);
        }
        if (!(shellArea = focus.getShell().getClientArea()).contains(focus.getShell().toControl(focus.toDisplay(result)))) {
            result = new Point(shellArea.x + shellArea.width / 2, shellArea.y + shellArea.height / 2);
        }
        return focus.toDisplay(result);
    }

    protected Point computeMenuLocation(StyledText text) {
        Point result = text.getLocationAtOffset(text.getCaretOffset());
        result.y += text.getLineHeight(text.getCaretOffset());
        if (!text.getClientArea().contains(result)) {
            return null;
        }
        return result;
    }

    protected Point computeMenuLocation(Tree tree) {
        TreeItem[] items = tree.getSelection();
        Rectangle clientArea = tree.getClientArea();
        switch (items.length) {
            case 0: {
                return null;
            }
            case 1: {
                Rectangle bounds = items[0].getBounds();
                Rectangle intersect = clientArea.intersection(bounds);
                if (intersect != null && intersect.height == bounds.height) {
                    return new Point(Math.max(0, bounds.x + this.getAvarageCharWith((Control)tree) * 3), bounds.y + bounds.height);
                }
                return null;
            }
        }
        Rectangle[] rectangles = new Rectangle[items.length];
        int i = 0;
        while (i < rectangles.length) {
            rectangles[i] = items[i].getBounds();
            ++i;
        }
        Point cursorLocation = tree.getDisplay().getCursorLocation();
        Point result = this.findBestLocation(this.getIncludedPositions(rectangles, clientArea), tree.toControl(cursorLocation));
        if (result != null) {
            result.x += this.getAvarageCharWith((Control)tree) * 3;
        }
        return result;
    }

    protected Point computeMenuLocation(Table table) {
        TableItem[] items = table.getSelection();
        Rectangle clientArea = table.getClientArea();
        switch (items.length) {
            case 0: {
                return null;
            }
            case 1: {
                Rectangle bounds = items[0].getBounds(0);
                Rectangle iBounds = items[0].getImageBounds(0);
                Rectangle intersect = clientArea.intersection(bounds);
                if (intersect != null && intersect.height == bounds.height) {
                    return new Point(Math.max(0, bounds.x + iBounds.width + this.getAvarageCharWith((Control)table) * 3), bounds.y + bounds.height);
                }
                return null;
            }
        }
        Rectangle[] rectangles = new Rectangle[items.length];
        int i = 0;
        while (i < rectangles.length) {
            rectangles[i] = items[i].getBounds(0);
            ++i;
        }
        Rectangle iBounds = items[0].getImageBounds(0);
        Point cursorLocation = table.getDisplay().getCursorLocation();
        Point result = this.findBestLocation(this.getIncludedPositions(rectangles, clientArea), table.toControl(cursorLocation));
        if (result != null) {
            result.x = result.x + iBounds.width + this.getAvarageCharWith((Control)table) * 3;
        }
        return result;
    }

    private Point[] getIncludedPositions(Rectangle[] rectangles, Rectangle widgetBounds) {
        ArrayList<Point> result = new ArrayList<Point>();
        int i = 0;
        while (i < rectangles.length) {
            Rectangle rectangle = rectangles[i];
            Rectangle intersect = widgetBounds.intersection(rectangle);
            if (intersect != null && intersect.height == rectangle.height) {
                result.add(new Point(intersect.x, intersect.y + intersect.height));
            }
            ++i;
        }
        return result.toArray(new Point[result.size()]);
    }

    private Point findBestLocation(Point[] points, Point relativeCursor) {
        Point result = null;
        double bestDist = Double.MAX_VALUE;
        int i = 0;
        while (i < points.length) {
            Point point = points[i];
            int a = 0;
            int b = 0;
            a = point.x > relativeCursor.x ? point.x - relativeCursor.x : relativeCursor.x - point.x;
            double dist = Math.sqrt(a * a + (b = point.y > relativeCursor.y ? point.y - relativeCursor.y : relativeCursor.y - point.y) * b);
            if (dist < bestDist) {
                result = point;
                bestDist = dist;
            }
            ++i;
        }
        return result;
    }

    private int getAvarageCharWith(Control control) {
        GC gc = null;
        try {
            gc = new GC((Drawable)control);
            int n = gc.getFontMetrics().getAverageCharWidth();
            return n;
        }
        finally {
            if (gc != null) {
                gc.dispose();
            }
        }
    }

    public void dispose() {
    }
}

