/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.IWorkbenchContribution;
import org.eclipse.ui.services.IServiceLocator;

public class DynamicMenuContributionItem
extends ContributionItem {
    private final IConfigurationElement dynamicAddition;
    private final IServiceLocator locator;
    private boolean alreadyFailed;
    private ContributionItem loadedDynamicContribution;
    static /* synthetic */ Class class$0;

    public DynamicMenuContributionItem(String id, IServiceLocator locator, IConfigurationElement dynamicAddition) {
        super(id);
        this.locator = locator;
        this.dynamicAddition = dynamicAddition;
    }

    public boolean isDynamic() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isDynamic();
        }
        return true;
    }

    public boolean isDirty() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isDirty();
        }
        return super.isDirty();
    }

    public boolean isEnabled() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isEnabled();
        }
        return super.isEnabled();
    }

    public boolean isGroupMarker() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isGroupMarker();
        }
        return super.isGroupMarker();
    }

    public boolean isSeparator() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isSeparator();
        }
        return super.isSeparator();
    }

    public boolean isVisible() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isVisible();
        }
        return super.isVisible();
    }

    public void saveWidgetState() {
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.saveWidgetState();
        }
        super.saveWidgetState();
    }

    public void setVisible(boolean visible) {
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.setVisible(visible);
        }
        super.setVisible(visible);
    }

    public void fill(Composite parent) {
        IContributionItem contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            contributionItem.fill(parent);
        }
    }

    public void fill(CoolBar parent, int index) {
        IContributionItem contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            contributionItem.fill(parent, index);
        }
    }

    public void fill(Menu menu, int index) {
        IContributionItem contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            contributionItem.fill(menu, index);
        }
    }

    public void fill(ToolBar parent, int index) {
        IContributionItem contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            contributionItem.fill(parent, index);
        }
    }

    private IContributionItem getContributionItem() {
        if (this.loadedDynamicContribution == null && !this.alreadyFailed) {
            this.createContributionItem();
        }
        return this.loadedDynamicContribution;
    }

    private void createContributionItem() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.action.ContributionItem");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.loadedDynamicContribution = (ContributionItem)Util.safeLoadExecutableExtension(this.dynamicAddition, "class", clazz);
        if (this.loadedDynamicContribution == null) {
            this.alreadyFailed = true;
            return;
        }
        this.loadedDynamicContribution.setId(this.getId());
        this.loadedDynamicContribution.setParent(this.getParent());
        if (this.loadedDynamicContribution instanceof IWorkbenchContribution) {
            ((IWorkbenchContribution)this.loadedDynamicContribution).initialize(this.locator);
        }
    }

    public void dispose() {
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.dispose();
            this.loadedDynamicContribution = null;
        }
        super.dispose();
    }

    public void update() {
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.update();
        }
    }

    public void update(String id) {
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.update(id);
        }
    }

    public void setParent(IContributionManager parent) {
        super.setParent(parent);
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.setParent(parent);
        }
    }
}

