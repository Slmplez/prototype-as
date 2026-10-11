/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.ui.internal.expressions.AlwaysEnabledExpression;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.menus.AbstractContributionFactory;
import org.eclipse.ui.menus.IContributionRoot;

final class ContributionRoot
implements IContributionRoot {
    private List topLevelItems = new ArrayList();
    private List itemsToExpressions = new ArrayList();
    private InternalMenuService menuService;
    Set restriction;
    private ContributionManager mgr;
    private AbstractContributionFactory factory;

    public ContributionRoot(InternalMenuService menuService, Set restriction, ContributionManager mgr, AbstractContributionFactory factory) {
        this.menuService = menuService;
        this.restriction = restriction;
        this.mgr = mgr;
        this.factory = factory;
    }

    public void addContributionItem(IContributionItem item, Expression visibleWhen) {
        if (item == null) {
            throw new IllegalArgumentException();
        }
        this.topLevelItems.add(item);
        if (visibleWhen == null) {
            visibleWhen = AlwaysEnabledExpression.INSTANCE;
        }
        this.menuService.registerVisibleWhen(item, visibleWhen, this.restriction, this.createIdentifierId(item));
        this.itemsToExpressions.add(item);
    }

    private String createIdentifierId(IContributionItem item) {
        String namespace = this.factory.getNamespace();
        String identifierID = namespace != null ? String.valueOf(namespace) + '/' + item.getId() : null;
        return identifierID;
    }

    public List getItems() {
        return this.topLevelItems;
    }

    public void release() {
        Iterator itemIter = this.itemsToExpressions.iterator();
        while (itemIter.hasNext()) {
            IContributionItem item = (IContributionItem)itemIter.next();
            this.menuService.unregisterVisibleWhen(item, this.restriction);
            item.dispose();
        }
    }

    public void registerVisibilityForChild(IContributionItem item, Expression visibleWhen) {
        if (item == null) {
            throw new IllegalArgumentException();
        }
        if (visibleWhen == null) {
            visibleWhen = AlwaysEnabledExpression.INSTANCE;
        }
        this.menuService.registerVisibleWhen(item, visibleWhen, this.restriction, this.createIdentifierId(item));
        this.itemsToExpressions.add(item);
    }

    public ContributionManager getManager() {
        return this.mgr;
    }
}

