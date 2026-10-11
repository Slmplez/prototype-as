/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.ui.internal.services.IEvaluationResultCache;

public interface IMenuActivation
extends IEvaluationResultCache {
    public IContributionItem getContribution();
}

