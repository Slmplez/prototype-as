/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.internal.FastViewBar;
import org.eclipse.ui.internal.IChangeListener;
import org.eclipse.ui.internal.IntModel;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.RadioMenu;
import org.eclipse.ui.internal.ViewStackTrimToolBar;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;

public class SystemMenuFastViewOrientation
extends ContributionItem {
    private PartPane viewPane;
    private IntModel currentOrientation = new IntModel(512);
    private ViewStackTrimToolBar minimizedStack = null;

    public SystemMenuFastViewOrientation(PartPane newViewPane) {
        this(newViewPane, null);
    }

    public SystemMenuFastViewOrientation(PartPane newViewPane, final ViewStackTrimToolBar vstt) {
        this.viewPane = newViewPane;
        this.minimizedStack = vstt;
        this.currentOrientation.addChangeListener(new IChangeListener(){

            public void update(boolean changed) {
                if (changed) {
                    WorkbenchWindow workbenchWindow = (WorkbenchWindow)SystemMenuFastViewOrientation.this.viewPane.getPage().getWorkbenchWindow();
                    if (vstt == null) {
                        IWorkbenchPartReference ref;
                        FastViewBar bar = workbenchWindow.getFastViewBar();
                        if (bar != null && SystemMenuFastViewOrientation.this.viewPane != null && (ref = SystemMenuFastViewOrientation.this.viewPane.getPartReference()) instanceof IViewReference) {
                            bar.setOrientation((IViewReference)ref, SystemMenuFastViewOrientation.this.currentOrientation.get());
                        }
                    } else {
                        vstt.setOrientation(SystemMenuFastViewOrientation.this.currentOrientation.get(), workbenchWindow);
                    }
                }
            }
        });
    }

    public void dispose() {
        this.viewPane = null;
    }

    public void fill(Menu menu, int index) {
        WorkbenchWindow workbenchWindow = (WorkbenchWindow)this.viewPane.getPage().getWorkbenchWindow();
        IWorkbenchPartReference ref = this.viewPane.getPartReference();
        if (!(ref instanceof IViewReference)) {
            return;
        }
        if (this.minimizedStack == null) {
            FastViewBar bar = workbenchWindow.getFastViewBar();
            if (bar != null && this.viewPane != null) {
                this.currentOrientation.set(bar.getOrientation((IViewReference)ref));
            }
        } else {
            this.currentOrientation.set(this.minimizedStack.getPaneOrientation());
        }
        MenuItem orientationItem = new MenuItem(menu, 64, index);
        orientationItem.setText(WorkbenchMessages.FastViewBar_view_orientation);
        Menu orientationSwtMenu = new Menu(orientationItem);
        RadioMenu orientationMenu = new RadioMenu(orientationSwtMenu, this.currentOrientation);
        orientationMenu.addMenuItem(WorkbenchMessages.FastViewBar_horizontal, new Integer(256));
        orientationMenu.addMenuItem(WorkbenchMessages.FastViewBar_vertical, new Integer(512));
        orientationItem.setMenu(orientationSwtMenu);
    }

    public boolean isDynamic() {
        return true;
    }
}

