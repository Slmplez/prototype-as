/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 */
package org.eclipse.ui.internal.provisional.application;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.ui.application.IActionBarConfigurer;

public interface IActionBarConfigurer2
extends IActionBarConfigurer {
    public IToolBarManager createToolBarManager();

    public IToolBarContributionItem createToolBarContributionItem(IToolBarManager var1, String var2);
}

