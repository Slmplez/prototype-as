/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Monitor
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.ui.internal.presentations.BasicPartList;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.internal.presentations.util.PresentablePartFolder;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class DefaultPartList
implements ISystemMenu {
    private IStackPresentationSite site;
    private PresentablePartFolder folder;

    public DefaultPartList(IStackPresentationSite site, PresentablePartFolder folder) {
        this.site = site;
        this.folder = folder;
    }

    public void show(Control control, Point displayCoordinates, IPresentablePart currentSelection) {
        int shellStyle = 16408;
        int tableStyle = 768;
        final BasicPartList editorList = new BasicPartList(control.getShell(), shellStyle, tableStyle, this.site, this.folder);
        editorList.setInput(this.folder);
        Point size = editorList.computeSizeHint();
        int x = displayCoordinates.x;
        int y = displayCoordinates.y;
        Monitor mon = this.folder.getTabFolder().getControl().getMonitor();
        Rectangle bounds = mon.getClientArea();
        if (x + size.x > bounds.x + bounds.width) {
            x = bounds.x + bounds.width - size.x;
        }
        if (y + size.y > bounds.y + bounds.height) {
            y = bounds.y + bounds.height - size.y;
        }
        editorList.setLocation(new Point(x, y));
        editorList.setVisible(true);
        editorList.setFocus();
        editorList.getTableViewer().getTable().getShell().addListener(27, new Listener(){

            public void handleEvent(Event event) {
                editorList.setVisible(false);
            }
        });
    }

    public void dispose() {
    }
}

