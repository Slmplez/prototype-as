/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.quickaccess.ActionProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;

public class ActionElement
extends QuickAccessElement {
    private ActionContributionItem item;

    ActionElement(ActionContributionItem item, ActionProvider actionProvider) {
        super(actionProvider);
        this.item = item;
    }

    public void execute() {
        this.item.getAction().run();
    }

    public String getId() {
        return this.item.getId();
    }

    public ImageDescriptor getImageDescriptor() {
        return this.item.getAction().getImageDescriptor();
    }

    public String getLabel() {
        IAction action = this.item.getAction();
        if (action.getToolTipText() != null && action.getToolTipText().length() != 0) {
            return LegacyActionTools.removeMnemonics((String)(String.valueOf(action.getText()) + " - " + action.getToolTipText()));
        }
        return LegacyActionTools.removeMnemonics((String)action.getText());
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.item == null ? 0 : this.item.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ActionElement other = (ActionElement)obj;
        return !(this.item == null ? other.item != null : !this.item.equals((Object)other.item));
    }
}

