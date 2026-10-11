/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.CycleBaseHandler;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.part.PageSwitcher;
import org.eclipse.ui.part.WorkbenchPart;

public class CyclePageHandler
extends CycleBaseHandler {
    private static final int TEXT_LIMIT = 65;
    private PageSwitcher pageSwitcher;
    private LocalResourceManager lrm;
    static /* synthetic */ Class class$0;

    public CyclePageHandler(PageSwitcher pageSwitcher) {
        this.pageSwitcher = pageSwitcher;
    }

    protected void addItems(Table table, WorkbenchPage page) {
        Object[] pages = this.pageSwitcher.getPages();
        int i = 0;
        while (i < pages.length) {
            TableItem item = null;
            item = new TableItem(table, 0);
            ImageDescriptor imageDescriptor = this.pageSwitcher.getImageDescriptor(pages[i]);
            if (imageDescriptor != null) {
                if (this.lrm == null) {
                    this.lrm = new LocalResourceManager(JFaceResources.getResources());
                }
                item.setImage(this.lrm.createImage(imageDescriptor));
            }
            item.setData(pages[i]);
            String name = this.pageSwitcher.getName(pages[i]);
            if (name.length() > 65) {
                name = String.valueOf(name.substring(0, 65)) + "...";
            }
            item.setText(name);
            ++i;
        }
    }

    protected int getCurrentItemIndex() {
        return this.pageSwitcher.getCurrentPageIndex();
    }

    protected ParameterizedCommand getBackwardCommand() {
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbench.getService(clazz);
        Command command = commandService.getCommand("org.eclipse.ui.part.previousPage");
        ParameterizedCommand commandF = new ParameterizedCommand(command, null);
        return commandF;
    }

    protected ParameterizedCommand getForwardCommand() {
        IWorkbench iWorkbench = this.window.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService commandService = (ICommandService)iWorkbench.getService(clazz);
        Command command = commandService.getCommand("org.eclipse.ui.part.nextPage");
        ParameterizedCommand commandF = new ParameterizedCommand(command, null);
        return commandF;
    }

    protected String getTableHeader(IWorkbenchPart activePart) {
        if (activePart instanceof WorkbenchPart) {
            return ((WorkbenchPart)activePart).getPartName();
        }
        return activePart.getTitle();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        this.gotoDirection = event.getCommand().getId().equals("org.eclipse.ui.part.nextPage");
        super.execute(event);
        if (this.lrm != null) {
            this.lrm.dispose();
            this.lrm = null;
        }
        return null;
    }

    protected void setDialogLocation(Shell dialog, IWorkbenchPart activePart) {
        if (dialog == null) {
            return;
        }
        Point dlgAnchor = Geometry.centerPoint((Rectangle)dialog.getDisplay().getBounds());
        if (activePart != null) {
            WorkbenchPart wbPart = (WorkbenchPart)activePart;
            PartSite site = (PartSite)wbPart.getSite();
            Control paneCtrl = site.getPane().getControl();
            Rectangle viewBounds = paneCtrl.getBounds();
            Point vCenter = Geometry.centerPoint((Rectangle)viewBounds);
            dlgAnchor = paneCtrl.getParent().toDisplay(vCenter);
        }
        Rectangle dialogBounds = dialog.getBounds();
        dlgAnchor.x -= dialogBounds.width / 2;
        dlgAnchor.y -= dialogBounds.height / 2;
        dialog.setLocation(dlgAnchor);
    }

    public void dispose() {
        super.dispose();
        this.pageSwitcher = null;
    }

    protected void activate(IWorkbenchPage page, Object selectedItem) {
        if (selectedItem == null) {
            return;
        }
        this.pageSwitcher.activatePage(selectedItem);
    }
}

