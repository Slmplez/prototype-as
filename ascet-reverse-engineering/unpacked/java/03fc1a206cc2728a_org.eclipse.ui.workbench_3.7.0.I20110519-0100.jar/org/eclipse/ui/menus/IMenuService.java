/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.action.ContributionManager
 */
package org.eclipse.ui.menus;

import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.ui.menus.AbstractContributionFactory;
import org.eclipse.ui.services.IServiceWithSources;

public interface IMenuService
extends IServiceWithSources {
    public void addContributionFactory(AbstractContributionFactory var1);

    public void removeContributionFactory(AbstractContributionFactory var1);

    public void populateContributionManager(ContributionManager var1, String var2);

    public void releaseContributions(ContributionManager var1);

    public IEvaluationContext getCurrentState();
}

