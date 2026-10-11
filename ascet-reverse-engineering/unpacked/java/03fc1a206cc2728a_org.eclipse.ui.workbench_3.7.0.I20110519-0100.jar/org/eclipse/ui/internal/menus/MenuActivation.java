/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.ui.internal.menus.IMenuActivation;
import org.eclipse.ui.internal.services.EvaluationResultCache;

public class MenuActivation
extends EvaluationResultCache
implements IMenuActivation {
    private IContributionItem fItem;

    public MenuActivation(IContributionItem item, Expression visibleWhen) {
        super(visibleWhen);
        this.fItem = item;
    }

    public IContributionItem getContribution() {
        return this.fItem;
    }
}

