/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.Separator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.SystemMenuCloseAll;
import org.eclipse.ui.internal.presentations.SystemMenuCloseOthers;
import org.eclipse.ui.internal.presentations.util.StandardViewSystemMenu;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class StandardEditorSystemMenu
extends StandardViewSystemMenu {
    private SystemMenuCloseOthers closeOthers;
    private SystemMenuCloseAll closeAll;
    private ActionFactory.IWorkbenchAction openAgain;

    public StandardEditorSystemMenu(IStackPresentationSite site) {
        super(site);
        this.closeOthers = new SystemMenuCloseOthers(site);
        this.closeAll = new SystemMenuCloseAll(site);
        this.openAgain = ActionFactory.NEW_EDITOR.create(PlatformUI.getWorkbench().getActiveWorkbenchWindow());
        this.menuManager.add((IAction)this.closeOthers);
        this.menuManager.add((IAction)this.closeAll);
        this.menuManager.add((IContributionItem)new Separator());
        this.menuManager.add((IAction)this.openAgain);
    }

    String getMoveMenuText() {
        return WorkbenchMessages.EditorPane_moveEditor;
    }

    public void show(Control parent, Point displayCoordinates, IPresentablePart currentSelection) {
        this.closeOthers.setTarget(currentSelection);
        this.closeAll.update();
        super.show(parent, displayCoordinates, currentSelection);
    }

    public void dispose() {
        this.openAgain.dispose();
        super.dispose();
    }
}

