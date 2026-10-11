/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ContributionItemFactory;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;

public class PerspectiveBarNewContributionItem
extends ContributionItem {
    private MenuManager menuManager;
    private Image image;
    private ToolItem toolItem;
    static /* synthetic */ Class class$0;

    public PerspectiveBarNewContributionItem(IWorkbenchWindow workbenchWindow) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.PerspectiveBarNewContributionItem");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz.getName());
        this.menuManager = null;
        this.toolItem = null;
        this.menuManager = new MenuManager();
        this.menuManager.add(ContributionItemFactory.PERSPECTIVES_SHORTLIST.create(workbenchWindow));
    }

    public void dispose() {
        super.dispose();
        if (this.image != null && !this.image.isDisposed()) {
            this.image.dispose();
            this.image = null;
        }
    }

    public void fill(final ToolBar parent, int index) {
        if (this.toolItem == null && parent != null) {
            parent.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    PerspectiveBarNewContributionItem.this.toolItem.dispose();
                    PerspectiveBarNewContributionItem.this.toolItem = null;
                }
            });
            this.toolItem = new ToolItem(parent, 8);
            if (this.image == null || this.image.isDisposed()) {
                this.image = WorkbenchImages.getImageDescriptor("IMG_ETOOL_NEW_PAGE").createImage();
            }
            this.toolItem.setImage(this.image);
            this.toolItem.setText("");
            this.toolItem.setToolTipText(WorkbenchMessages.PerspectiveBarNewContributionItem_toolTip);
            this.toolItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent event) {
                    PerspectiveBarNewContributionItem.this.menuManager.update(true);
                    Point point = new Point(event.x, event.y);
                    if (event.widget instanceof ToolItem) {
                        ToolItem toolItem = (ToolItem)event.widget;
                        Rectangle rectangle = toolItem.getBounds();
                        point = new Point(rectangle.x, rectangle.y + rectangle.height);
                    }
                    Menu menu = PerspectiveBarNewContributionItem.this.menuManager.createContextMenu((Control)parent);
                    point = parent.toDisplay(point);
                    menu.setLocation(point.x, point.y);
                    menu.setVisible(true);
                }
            });
        }
    }
}

