/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.part;

import org.eclipse.core.commands.IHandler;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.handlers.CyclePageHandler;

public abstract class PageSwitcher {
    static /* synthetic */ Class class$0;

    public PageSwitcher(IWorkbenchPart part) {
        IWorkbenchPartSite iWorkbenchPartSite = part.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)iWorkbenchPartSite.getService(clazz);
        service.activateHandler("org.eclipse.ui.part.nextPage", (IHandler)new CyclePageHandler(this));
        service.activateHandler("org.eclipse.ui.part.previousPage", (IHandler)new CyclePageHandler(this));
    }

    public abstract void activatePage(Object var1);

    public abstract ImageDescriptor getImageDescriptor(Object var1);

    public abstract String getName(Object var1);

    public abstract Object[] getPages();

    public int getCurrentPageIndex() {
        return 0;
    }
}

