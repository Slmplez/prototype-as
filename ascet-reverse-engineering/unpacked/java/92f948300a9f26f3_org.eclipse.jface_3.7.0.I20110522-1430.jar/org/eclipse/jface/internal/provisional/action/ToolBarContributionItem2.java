/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;

public class ToolBarContributionItem2
extends ToolBarContributionItem
implements IToolBarContributionItem {
    public ToolBarContributionItem2() {
    }

    public ToolBarContributionItem2(IToolBarManager toolBarManager) {
        super(toolBarManager);
    }

    public ToolBarContributionItem2(IToolBarManager toolBarManager, String id) {
        super(toolBarManager, id);
    }
}

