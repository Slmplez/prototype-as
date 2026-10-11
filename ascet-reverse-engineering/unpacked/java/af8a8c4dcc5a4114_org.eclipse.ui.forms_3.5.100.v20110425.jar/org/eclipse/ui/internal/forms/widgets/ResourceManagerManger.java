/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.forms.widgets;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.swt.widgets.Display;

public class ResourceManagerManger {
    private HashMap resourceManagers;

    public LocalResourceManager getResourceManager(Display display) {
        LocalResourceManager resources;
        if (this.resourceManagers == null) {
            this.resourceManagers = new HashMap();
        }
        if ((resources = (LocalResourceManager)this.resourceManagers.get(display)) == null) {
            this.pruneResourceManagers();
            resources = new LocalResourceManager(JFaceResources.getResources((Display)display));
            this.resourceManagers.put(display, resources);
        }
        return resources;
    }

    private void pruneResourceManagers() {
        Set displays = this.resourceManagers.keySet();
        Iterator iter = displays.iterator();
        while (iter.hasNext()) {
            Display display = (Display)iter.next();
            if (!display.isDisposed()) continue;
            this.resourceManagers.remove(display);
            iter = displays.iterator();
        }
    }
}

