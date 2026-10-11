/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.SubContributionItem
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.quickaccess.ActionElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class ActionProvider
extends QuickAccessProvider {
    private Map idToElement;

    public String getId() {
        return "org.eclipse.ui.actions";
    }

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (ActionElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.idToElement == null) {
            this.idToElement = new HashMap();
            IWorkbenchWindow window = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
            if (window instanceof WorkbenchWindow) {
                MenuManager menu = ((WorkbenchWindow)window).getMenuManager();
                HashSet result = new HashSet();
                this.collectContributions(menu, result);
                ActionContributionItem[] actions = result.toArray(new ActionContributionItem[result.size()]);
                int i = 0;
                while (i < actions.length) {
                    ActionElement actionElement = new ActionElement(actions[i], this);
                    this.idToElement.put(actionElement.getId(), actionElement);
                    ++i;
                }
            }
        }
        return this.idToElement.values().toArray(new ActionElement[this.idToElement.values().size()]);
    }

    private void collectContributions(MenuManager menu, Set result) {
        IContributionItem[] items = menu.getItems();
        int i = 0;
        while (i < items.length) {
            IContributionItem item = items[i];
            if (item instanceof SubContributionItem) {
                item = ((SubContributionItem)item).getInnerItem();
            }
            if (item instanceof MenuManager) {
                this.collectContributions((MenuManager)item, result);
            } else if (item instanceof ActionContributionItem && item.isEnabled()) {
                result.add(item);
            }
            ++i;
        }
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Menus;
    }
}

