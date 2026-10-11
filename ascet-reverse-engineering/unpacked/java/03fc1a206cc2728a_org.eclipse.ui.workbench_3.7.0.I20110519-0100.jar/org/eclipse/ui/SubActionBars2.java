/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.SubCoolBarManager
 */
package org.eclipse.ui;

import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.SubCoolBarManager;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.services.IServiceLocator;

public class SubActionBars2
extends SubActionBars
implements IActionBars2 {
    private SubCoolBarManager coolBarMgr = null;

    public SubActionBars2(IActionBars2 parent) {
        this(parent, parent.getServiceLocator());
    }

    public SubActionBars2(IActionBars2 parent, IServiceLocator serviceLocator) {
        super(parent, serviceLocator);
    }

    protected IActionBars2 getCastedParent() {
        return (IActionBars2)this.getParent();
    }

    protected SubCoolBarManager createSubCoolBarManager(ICoolBarManager parent) {
        return new SubCoolBarManager(parent);
    }

    public ICoolBarManager getCoolBarManager() {
        if (this.coolBarMgr == null) {
            this.coolBarMgr = this.createSubCoolBarManager(this.getCastedParent().getCoolBarManager());
            this.coolBarMgr.setVisible(this.getActive());
        }
        return this.coolBarMgr;
    }

    protected void setActive(boolean value) {
        super.setActive(value);
        if (this.coolBarMgr != null) {
            this.coolBarMgr.setVisible(value);
        }
    }

    public void dispose() {
        super.dispose();
        if (this.coolBarMgr != null) {
            this.coolBarMgr.removeAll();
        }
    }
}

