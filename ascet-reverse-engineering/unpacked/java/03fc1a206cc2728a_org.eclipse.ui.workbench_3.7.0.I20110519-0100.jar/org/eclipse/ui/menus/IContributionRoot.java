/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.menus;

import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.action.IContributionItem;

public interface IContributionRoot {
    public void addContributionItem(IContributionItem var1, Expression var2);

    public void registerVisibilityForChild(IContributionItem var1, Expression var2);
}

