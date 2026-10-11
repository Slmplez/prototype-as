/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.browser;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.browser.AbstractWorkbenchBrowserSupport;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.browser.DefaultWorkbenchBrowserSupport;

public class WorkbenchBrowserSupport
extends AbstractWorkbenchBrowserSupport {
    private static WorkbenchBrowserSupport instance;
    private IWorkbenchBrowserSupport activeSupport;
    private boolean initialized;
    private String desiredBrowserSupportId;
    private IExtensionChangeHandler handler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
        }

        public void removeExtension(IExtension source, Object[] objects) {
            int i = 0;
            while (i < objects.length) {
                if (objects[i] == WorkbenchBrowserSupport.this.activeSupport) {
                    WorkbenchBrowserSupport.this.dispose();
                    PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler(WorkbenchBrowserSupport.this.handler);
                }
                ++i;
            }
        }
    };

    private WorkbenchBrowserSupport() {
    }

    public static IWorkbenchBrowserSupport getInstance() {
        if (instance == null) {
            instance = new WorkbenchBrowserSupport();
        }
        return instance;
    }

    public IWebBrowser createBrowser(int style, String browserId, String name, String tooltip) throws PartInitException {
        return this.getActiveSupport().createBrowser(style, browserId, name, tooltip);
    }

    public IWebBrowser createBrowser(String browserId) throws PartInitException {
        return this.getActiveSupport().createBrowser(browserId);
    }

    public boolean isInternalWebBrowserAvailable() {
        return this.getActiveSupport().isInternalWebBrowserAvailable();
    }

    private IWorkbenchBrowserSupport getActiveSupport() {
        if (!this.initialized) {
            this.loadActiveSupport();
        }
        if (this.activeSupport == null) {
            this.activeSupport = new DefaultWorkbenchBrowserSupport();
        }
        return this.activeSupport;
    }

    public boolean hasNonDefaultBrowser() {
        return !(this.getActiveSupport() instanceof DefaultWorkbenchBrowserSupport);
    }

    private void loadActiveSupport() {
        BusyIndicator.showWhile((Display)Display.getCurrent(), (Runnable)new Runnable(){

            public void run() {
                IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui", "browserSupport");
                IConfigurationElement elementToUse = null;
                elementToUse = WorkbenchBrowserSupport.this.desiredBrowserSupportId != null ? this.findDesiredElement(elements) : this.getElementToUse(elements);
                if (elementToUse != null) {
                    WorkbenchBrowserSupport.this.initialized = this.initializePluggableBrowserSupport(elementToUse);
                }
            }

            private IConfigurationElement findDesiredElement(IConfigurationElement[] elements) {
                int i = 0;
                while (i < elements.length) {
                    if (WorkbenchBrowserSupport.this.desiredBrowserSupportId.equals(elements[i].getDeclaringExtension().getUniqueIdentifier())) {
                        return elements[i];
                    }
                    ++i;
                }
                return null;
            }

            private IExtensionPoint getExtensionPoint() {
                return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "browserSupport");
            }

            private IConfigurationElement getElementToUse(IConfigurationElement[] elements) {
                if (elements.length == 0) {
                    return null;
                }
                IConfigurationElement defaultElement = null;
                IConfigurationElement choice = null;
                int i = 0;
                while (i < elements.length) {
                    IConfigurationElement element = elements[i];
                    if (element.getName().equals("support")) {
                        String def = element.getAttribute("default");
                        if (def != null && Boolean.valueOf(def).booleanValue()) {
                            if (defaultElement == null) {
                                defaultElement = element;
                            }
                        } else if (choice == null) {
                            choice = element;
                        }
                    }
                    ++i;
                }
                if (choice == null) {
                    choice = defaultElement;
                }
                return choice;
            }

            private boolean initializePluggableBrowserSupport(IConfigurationElement element) {
                try {
                    WorkbenchBrowserSupport.this.activeSupport = (AbstractWorkbenchBrowserSupport)WorkbenchPlugin.createExtension(element, "class");
                    IExtensionTracker extensionTracker = PlatformUI.getWorkbench().getExtensionTracker();
                    extensionTracker.registerHandler(WorkbenchBrowserSupport.this.handler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPoint()));
                    extensionTracker.registerObject(element.getDeclaringExtension(), (Object)WorkbenchBrowserSupport.this.activeSupport, 2);
                    return true;
                }
                catch (CoreException e) {
                    WorkbenchPlugin.log("Unable to instantiate browser support" + e.getStatus(), e);
                    return false;
                }
            }
        });
    }

    public void setDesiredBrowserSupportId(String desiredBrowserSupportId) {
        this.dispose();
        this.desiredBrowserSupportId = desiredBrowserSupportId;
    }

    protected void dispose() {
        this.activeSupport = null;
        this.initialized = false;
    }
}

