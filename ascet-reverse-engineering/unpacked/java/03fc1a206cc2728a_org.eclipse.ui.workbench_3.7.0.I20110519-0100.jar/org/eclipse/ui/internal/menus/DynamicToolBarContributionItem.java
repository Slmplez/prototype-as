/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.IWorkbenchContribution;
import org.eclipse.ui.menus.WorkbenchWindowControlContribution;
import org.eclipse.ui.services.IServiceLocator;

public class DynamicToolBarContributionItem
extends WorkbenchWindowControlContribution {
    private final IConfigurationElement dynamicAddition;
    private final IServiceLocator locator;
    private boolean alreadyFailed;
    private WorkbenchWindowControlContribution loadedDynamicContribution;
    static /* synthetic */ Class class$0;

    public DynamicToolBarContributionItem(String id, IServiceLocator locator, IConfigurationElement dynamicAddition) {
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

    public boolean isVisible() {
        if (this.loadedDynamicContribution != null) {
            return this.loadedDynamicContribution.isVisible();
        }
        return super.isVisible();
    }

    public void fill(CoolBar parent, int index) {
        WorkbenchWindowControlContribution contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            contributionItem.fill(parent, index);
        }
    }

    private WorkbenchWindowControlContribution getContributionItem() {
        if (this.loadedDynamicContribution == null && !this.alreadyFailed) {
            this.createContributionItem();
        }
        return this.loadedDynamicContribution;
    }

    private void createContributionItem() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.WorkbenchWindowControlContribution");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.loadedDynamicContribution = (WorkbenchWindowControlContribution)((Object)Util.safeLoadExecutableExtension(this.dynamicAddition, "class", clazz));
        if (this.loadedDynamicContribution == null) {
            this.alreadyFailed = true;
            return;
        }
        this.loadedDynamicContribution.setId(this.getId());
        this.loadedDynamicContribution.setParent(this.getParent());
        this.loadedDynamicContribution.setWorkbenchWindow(this.getWorkbenchWindow());
        this.loadedDynamicContribution.setCurSide(this.getCurSide());
        if (this.loadedDynamicContribution instanceof IWorkbenchContribution) {
            ((IWorkbenchContribution)((Object)this.loadedDynamicContribution)).initialize(this.locator);
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

    public void setWorkbenchWindow(IWorkbenchWindow wbw) {
        super.setWorkbenchWindow(wbw);
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.setWorkbenchWindow(wbw);
        }
    }

    public void setCurSide(int curSide) {
        super.setCurSide(curSide);
        if (this.loadedDynamicContribution != null) {
            this.loadedDynamicContribution.setCurSide(curSide);
        }
    }

    public Control createControl(Composite parent) {
        WorkbenchWindowControlContribution contributionItem = this.getContributionItem();
        if (contributionItem != null) {
            return contributionItem.delegateCreateControl(parent);
        }
        return null;
    }
}

