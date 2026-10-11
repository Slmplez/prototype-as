/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.part;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.WorkbenchPart;

public abstract class ViewPart
extends WorkbenchPart
implements IViewPart {
    private IPropertyListener compatibilityTitleListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 1) {
                ViewPart.this.setDefaultContentDescription();
            }
        }
    };

    protected ViewPart() {
        this.addPropertyListener(this.compatibilityTitleListener);
    }

    public IViewSite getViewSite() {
        return (IViewSite)this.getSite();
    }

    public void init(IViewSite site) throws PartInitException {
        this.setSite(site);
        this.setDefaultContentDescription();
    }

    public void init(IViewSite site, IMemento memento) throws PartInitException {
        this.init(site);
    }

    public void saveState(IMemento memento) {
    }

    protected void setPartName(String partName) {
        if (this.compatibilityTitleListener != null) {
            this.removePropertyListener(this.compatibilityTitleListener);
            this.compatibilityTitleListener = null;
        }
        super.setPartName(partName);
    }

    protected void setContentDescription(String description) {
        if (this.compatibilityTitleListener != null) {
            this.removePropertyListener(this.compatibilityTitleListener);
            this.compatibilityTitleListener = null;
        }
        super.setContentDescription(description);
    }

    public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
        super.setInitializationData(cfig, propertyName, data);
        this.setDefaultContentDescription();
    }

    private void setDefaultContentDescription() {
        String title;
        if (this.compatibilityTitleListener == null) {
            return;
        }
        String partName = this.getPartName();
        if (Util.equals(partName, title = this.getTitle())) {
            this.internalSetContentDescription("");
        } else {
            this.internalSetContentDescription(title);
        }
    }

    protected final void checkSite(IWorkbenchPartSite site) {
        super.checkSite(site);
        Assert.isTrue((boolean)(site instanceof IViewSite), (String)"The site for a view must be an IViewSite");
    }
}

