/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewSite
extends PartSite
implements IViewSite {
    static /* synthetic */ Class class$0;

    public ViewSite(IViewReference ref, IViewPart view, WorkbenchPage page, String id, String pluginId, String registeredName) {
        super(ref, view, page);
        this.setId(id);
        this.setRegisteredName(registeredName);
        this.setPluginId(pluginId);
    }

    public ViewSite(IViewReference ref, IViewPart view, WorkbenchPage page, IViewDescriptor desc) {
        super(ref, view, page);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.IConfigurationElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.setConfigurationElement((IConfigurationElement)Util.getAdapter(desc, clazz));
    }

    public String getSecondaryId() {
        return ((IViewReference)this.getPartReference()).getSecondaryId();
    }

    public IViewPart getViewPart() {
        return (IViewPart)this.getPart();
    }
}

