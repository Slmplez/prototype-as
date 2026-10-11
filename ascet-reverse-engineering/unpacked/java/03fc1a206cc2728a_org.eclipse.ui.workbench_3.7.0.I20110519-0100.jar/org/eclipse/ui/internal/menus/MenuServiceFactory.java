/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.internal.menus.SlaveMenuService;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IServiceLocator;

public class MenuServiceFactory
extends AbstractServiceFactory {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Object create(Class serviceInterface, IServiceLocator parentLocator, IServiceLocator locator) {
        IWorkbenchLocationService wls;
        IWorkbench wb;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!clazz.equals(serviceInterface)) {
            return null;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((wb = (wls = (IWorkbenchLocationService)locator.getService(clazz2)).getWorkbench()) == null) {
            return null;
        }
        Object parent = parentLocator.getService(serviceInterface);
        if (parent == null) {
            return null;
        }
        IWorkbenchWindow window = wls.getWorkbenchWindow();
        return new SlaveMenuService((InternalMenuService)parent, locator, ((WorkbenchWindow)window).getMenuRestrictions());
    }
}

