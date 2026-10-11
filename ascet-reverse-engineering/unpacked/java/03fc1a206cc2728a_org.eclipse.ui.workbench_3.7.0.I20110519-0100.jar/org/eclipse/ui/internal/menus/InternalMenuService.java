/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.internal.menus;

import java.util.List;
import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.services.IServiceLocator;

public abstract class InternalMenuService
implements IMenuService {
    public abstract void registerVisibleWhen(IContributionItem var1, Expression var2, Set var3, String var4);

    public abstract void unregisterVisibleWhen(IContributionItem var1, Set var2);

    public abstract List getAdditionsForURI(MenuLocationURI var1);

    public abstract void populateContributionManager(IServiceLocator var1, Set var2, ContributionManager var3, String var4, boolean var5);

    public abstract void populateContributionManager(ContributionManager var1, String var2, boolean var3);
}

