/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.ContributionItemFactory;
import org.eclipse.ui.internal.PerspectiveTracker;
import org.eclipse.ui.internal.WorkbenchMessages;

public class NewWizardDropDownAction
extends Action
implements ActionFactory.IWorkbenchAction {
    private IWorkbenchWindow workbenchWindow;
    private PerspectiveTracker tracker;
    private ActionFactory.IWorkbenchAction showDlgAction;
    private IContributionItem newWizardMenu;
    private IMenuCreator menuCreator = new IMenuCreator(){
        private MenuManager dropDownMenuMgr;

        private void createDropDownMenuMgr() {
            if (this.dropDownMenuMgr == null) {
                this.dropDownMenuMgr = new MenuManager();
                this.dropDownMenuMgr.add(NewWizardDropDownAction.this.newWizardMenu);
            }
        }

        public Menu getMenu(Control parent) {
            this.createDropDownMenuMgr();
            return this.dropDownMenuMgr.createContextMenu(parent);
        }

        public Menu getMenu(Menu parent) {
            this.createDropDownMenuMgr();
            Menu menu = new Menu(parent);
            IContributionItem[] items = this.dropDownMenuMgr.getItems();
            int i = 0;
            while (i < items.length) {
                IContributionItem item;
                IContributionItem newItem = item = items[i];
                if (item instanceof ActionContributionItem) {
                    newItem = new ActionContributionItem(((ActionContributionItem)item).getAction());
                }
                newItem.fill(menu, -1);
                ++i;
            }
            return menu;
        }

        public void dispose() {
            if (this.dropDownMenuMgr != null) {
                this.dropDownMenuMgr.remove(NewWizardDropDownAction.this.newWizardMenu);
                this.dropDownMenuMgr.dispose();
                this.dropDownMenuMgr = null;
            }
        }
    };

    public NewWizardDropDownAction(IWorkbenchWindow window) {
        this(window, ActionFactory.NEW.create(window), ContributionItemFactory.NEW_WIZARD_SHORTLIST.create(window));
    }

    public NewWizardDropDownAction(IWorkbenchWindow window, ActionFactory.IWorkbenchAction showDlgAction, IContributionItem newWizardMenu) {
        super(WorkbenchMessages.NewWizardDropDown_text);
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        this.showDlgAction = showDlgAction;
        this.newWizardMenu = newWizardMenu;
        this.tracker = new PerspectiveTracker(window, this);
        this.setToolTipText(showDlgAction.getToolTipText());
        ISharedImages sharedImages = window.getWorkbench().getSharedImages();
        this.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_NEW_WIZARD"));
        this.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_NEW_WIZARD_DISABLED"));
        this.setMenuCreator(this.menuCreator);
    }

    public void dispose() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.tracker.dispose();
        this.showDlgAction.dispose();
        this.newWizardMenu.dispose();
        this.menuCreator.dispose();
        this.workbenchWindow = null;
    }

    public void run() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.showDlgAction.run();
    }
}

