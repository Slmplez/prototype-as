/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IIdentifierListener;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.activities.IdentifierEvent;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.PluginAction;

public class PluginActionContributionItem
extends ActionContributionItem
implements IIdentifierListener,
IActivityManagerListener {
    private IIdentifier identifier = null;

    public PluginActionContributionItem(PluginAction action) {
        super((IAction)action);
    }

    private void hookListeners() {
        PlatformUI.getWorkbench().getActivitySupport().getActivityManager().addActivityManagerListener(this);
        IIdentifier id = this.getIdentifier();
        if (id != null) {
            id.addIdentifierListener(this);
        }
    }

    private void unhookListeners() {
        PlatformUI.getWorkbench().getActivitySupport().getActivityManager().removeActivityManagerListener(this);
        IIdentifier id = this.getIdentifier();
        if (id != null) {
            id.removeIdentifierListener(this);
        }
    }

    public void setParent(IContributionManager parent) {
        IContributionManager oldParent = this.getParent();
        super.setParent(parent);
        if (oldParent == parent) {
            return;
        }
        if (parent == null) {
            this.unhookListeners();
        } else {
            this.hookListeners();
        }
    }

    private IIdentifier getIdentifier() {
        if (!WorkbenchActivityHelper.isFiltering()) {
            return null;
        }
        if (this.identifier == null) {
            IWorkbenchActivitySupport workbenchActivitySupport = PlatformUI.getWorkbench().getActivitySupport();
            IPluginContribution contribution = (IPluginContribution)this.getAction();
            this.identifier = workbenchActivitySupport.getActivityManager().getIdentifier(WorkbenchActivityHelper.createUnifiedId(contribution));
        }
        return this.identifier;
    }

    private void disposeIdentifier() {
        this.identifier = null;
    }

    public void dispose() {
        this.unhookListeners();
        this.disposeIdentifier();
    }

    public boolean isVisible() {
        if (this.identifier != null && !this.identifier.isEnabled()) {
            return false;
        }
        return super.isVisible();
    }

    public void identifierChanged(IdentifierEvent identifierEvent) {
        this.invalidateParent();
    }

    private void invalidateParent() {
        IContributionManager parent = this.getParent();
        if (parent != null) {
            parent.markDirty();
        }
    }

    public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
        if (WorkbenchActivityHelper.isFiltering() && this.identifier == null) {
            this.hookListeners();
            this.invalidateParent();
        } else if (!WorkbenchActivityHelper.isFiltering() && this.identifier != null) {
            this.unhookListeners();
            this.disposeIdentifier();
            this.invalidateParent();
        }
    }

    public ISelection getSelection() {
        return ((PluginAction)this.getAction()).getSelection();
    }
}

