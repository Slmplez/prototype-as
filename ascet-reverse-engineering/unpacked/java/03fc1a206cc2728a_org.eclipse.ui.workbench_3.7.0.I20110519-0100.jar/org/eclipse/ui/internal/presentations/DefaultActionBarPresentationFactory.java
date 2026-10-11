/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.internal.provisional.action.CoolBarManager2
 *  org.eclipse.jface.internal.provisional.action.ICoolBarManager2
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.internal.provisional.action.IToolBarManager2
 *  org.eclipse.jface.internal.provisional.action.ToolBarContributionItem2
 *  org.eclipse.jface.internal.provisional.action.ToolBarManager2
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.internal.provisional.action.CoolBarManager2;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.internal.provisional.action.ToolBarContributionItem2;
import org.eclipse.jface.internal.provisional.action.ToolBarManager2;
import org.eclipse.ui.internal.provisional.presentations.IActionBarPresentationFactory;

public class DefaultActionBarPresentationFactory
implements IActionBarPresentationFactory {
    public ICoolBarManager2 createCoolBarManager() {
        return new CoolBarManager2(0x800000);
    }

    public IToolBarManager2 createToolBarManager() {
        return new ToolBarManager2(0x820000);
    }

    public IToolBarManager2 createViewToolBarManager() {
        return new ToolBarManager2(8519744);
    }

    public IToolBarContributionItem createToolBarContributionItem(IToolBarManager toolBarManager, String id) {
        return new ToolBarContributionItem2(toolBarManager, id);
    }
}

