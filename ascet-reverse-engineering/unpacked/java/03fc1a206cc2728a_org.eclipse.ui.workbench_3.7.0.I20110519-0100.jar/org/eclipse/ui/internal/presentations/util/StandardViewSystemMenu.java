/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.SystemMenuClose;
import org.eclipse.ui.internal.presentations.SystemMenuMaximize;
import org.eclipse.ui.internal.presentations.SystemMenuMinimize;
import org.eclipse.ui.internal.presentations.SystemMenuMove;
import org.eclipse.ui.internal.presentations.SystemMenuRestore;
import org.eclipse.ui.internal.presentations.UpdatingActionContributionItem;
import org.eclipse.ui.internal.presentations.util.ISystemMenu;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class StandardViewSystemMenu
implements ISystemMenu {
    MenuManager menuManager = new MenuManager();
    private SystemMenuRestore restore;
    private SystemMenuMove move;
    private SystemMenuMinimize minimize;
    private SystemMenuMaximize maximize;
    private SystemMenuClose close;

    public StandardViewSystemMenu(IStackPresentationSite site) {
        this.restore = new SystemMenuRestore(site);
        this.move = new SystemMenuMove(site, this.getMoveMenuText(), false);
        this.minimize = new SystemMenuMinimize(site);
        this.maximize = new SystemMenuMaximize(site);
        this.close = new SystemMenuClose(site);
        this.menuManager.add((IContributionItem)new GroupMarker("misc"));
        this.menuManager.add((IContributionItem)new GroupMarker("restore"));
        this.menuManager.add((IContributionItem)new UpdatingActionContributionItem(this.restore));
        this.menuManager.add((IContributionItem)this.move);
        this.menuManager.add((IContributionItem)new GroupMarker("size"));
        this.menuManager.add((IContributionItem)new GroupMarker("state"));
        this.menuManager.add((IContributionItem)new UpdatingActionContributionItem(this.minimize));
        this.menuManager.add((IContributionItem)new UpdatingActionContributionItem(this.maximize));
        this.menuManager.add((IContributionItem)new Separator("close"));
        this.menuManager.add((IAction)this.close);
        site.addSystemActions((IMenuManager)this.menuManager);
    }

    String getMoveMenuText() {
        return WorkbenchMessages.ViewPane_moveView;
    }

    public void show(Control parent, Point displayCoordinates, IPresentablePart currentSelection) {
        this.restore.update();
        this.move.setTarget(currentSelection);
        this.move.update();
        this.minimize.update();
        this.maximize.update();
        this.close.setTarget(currentSelection);
        Menu aMenu = this.menuManager.createContextMenu(parent);
        this.menuManager.update(true);
        aMenu.setLocation(displayCoordinates.x, displayCoordinates.y);
        aMenu.setVisible(true);
    }

    public void dispose() {
        this.menuManager.dispose();
        this.menuManager.removeAll();
    }
}

