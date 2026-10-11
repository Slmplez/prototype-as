/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IPageService;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.SlavePageService;
import org.eclipse.ui.internal.SlavePartService;
import org.eclipse.ui.internal.SlaveSelectionService;
import org.eclipse.ui.internal.WindowSelectionService;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.services.AbstractServiceFactory;
import org.eclipse.ui.services.IServiceLocator;

public class WorkbenchSupportFactory
extends AbstractServiceFactory {
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public Object create(Class serviceInterface, IServiceLocator parentLocator, IServiceLocator locator) {
        IWorkbenchLocationService wls;
        IWorkbench wb;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((wb = (wls = (IWorkbenchLocationService)locator.getService(clazz)).getWorkbench()) == null) {
            return null;
        }
        IWorkbenchWindow window = wls.getWorkbenchWindow();
        IWorkbenchPartSite site = wls.getPartSite();
        Object parent = parentLocator.getService(serviceInterface);
        if (parent == null) {
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.eclipse.ui.progress.IProgressService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz2.equals(serviceInterface)) {
                return wb.getProgressService();
            }
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.eclipse.ui.progress.IWorkbenchSiteProgressService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz3.equals(serviceInterface) && site instanceof PartSite) {
                return ((PartSite)site).getSiteProgressService();
            }
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("org.eclipse.ui.IPartService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz4.equals(serviceInterface) && window != null) {
                return window.getPartService();
            }
            Class<?> clazz5 = class$4;
            if (clazz5 == null) {
                try {
                    clazz5 = class$4 = Class.forName("org.eclipse.ui.IPageService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz5.equals(serviceInterface) && window != null) {
                return window;
            }
            Class<?> clazz6 = class$5;
            if (clazz6 == null) {
                try {
                    clazz6 = class$5 = Class.forName("org.eclipse.ui.ISelectionService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz6.equals(serviceInterface) && window != null) {
                return window.getSelectionService();
            }
            return null;
        }
        Class<?> clazz7 = class$5;
        if (clazz7 == null) {
            try {
                clazz7 = class$5 = Class.forName("org.eclipse.ui.ISelectionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz7.equals(serviceInterface)) {
            if (parent instanceof WindowSelectionService && window != null && window.getActivePage() != null) {
                return new SlaveSelectionService(window.getActivePage());
            }
            return new SlaveSelectionService((ISelectionService)parent);
        }
        Class<?> clazz8 = class$1;
        if (clazz8 == null) {
            try {
                clazz8 = class$1 = Class.forName("org.eclipse.ui.progress.IProgressService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz8.equals(serviceInterface) && site instanceof PartSite) {
            return ((PartSite)site).getSiteProgressService();
        }
        Class<?> clazz9 = class$3;
        if (clazz9 == null) {
            try {
                clazz9 = class$3 = Class.forName("org.eclipse.ui.IPartService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz9.equals(serviceInterface)) {
            return new SlavePartService((IPartService)parent);
        }
        Class<?> clazz10 = class$4;
        if (clazz10 == null) {
            try {
                clazz10 = class$4 = Class.forName("org.eclipse.ui.IPageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz10.equals(serviceInterface)) {
            return new SlavePageService((IPageService)parent);
        }
        return null;
    }
}

