/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.internal.provisional.action.IToolBarManager2
 */
package org.eclipse.ui.internal.provisional.presentations;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;

public interface IActionBarPresentationFactory {
    public ICoolBarManager2 createCoolBarManager();

    public IToolBarManager2 createToolBarManager();

    public IToolBarManager2 createViewToolBarManager();

    public IToolBarContributionItem createToolBarContributionItem(IToolBarManager var1, String var2);
}

