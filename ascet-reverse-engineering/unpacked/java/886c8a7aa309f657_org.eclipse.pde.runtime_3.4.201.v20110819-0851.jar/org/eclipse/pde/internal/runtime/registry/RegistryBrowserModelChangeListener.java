/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry;

import org.eclipse.pde.internal.runtime.registry.RegistryBrowser;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.ModelChangeDelta;
import org.eclipse.pde.internal.runtime.registry.model.ModelChangeListener;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;

public class RegistryBrowserModelChangeListener
implements ModelChangeListener {
    private RegistryBrowser fRegistryBrowser;

    public RegistryBrowserModelChangeListener(RegistryBrowser registryBrowser) {
        this.fRegistryBrowser = registryBrowser;
    }

    public void modelChanged(final ModelChangeDelta[] delta) {
        this.fRegistryBrowser.getSite().getWorkbenchWindow().getWorkbench().getDisplay().asyncExec(new Runnable(){

            public void run() {
                RegistryBrowserModelChangeListener.this.update(delta);
            }
        });
    }

    private boolean topLevelElement(Object object) {
        switch (this.fRegistryBrowser.getGroupBy()) {
            case 0: {
                return object instanceof Bundle;
            }
            case 1: {
                return object instanceof ExtensionPoint;
            }
            case 2: {
                return object instanceof ServiceName;
            }
        }
        return false;
    }

    private Object getTopLevelElement(Object object) {
        if (this.fRegistryBrowser.getGroupBy() == 0) {
            if (object instanceof Bundle) {
                return object;
            }
            if (object instanceof ExtensionPoint) {
                ExtensionPoint ext = (ExtensionPoint)object;
                return ext.getContributor();
            }
            if (object instanceof Extension) {
                Extension ext = (Extension)object;
                return ext.getContributor();
            }
            if (object instanceof ServiceRegistration) {
                ServiceRegistration reg = (ServiceRegistration)object;
                Bundle[] bundles = reg.getUsingBundles();
                if (bundles.length == 0) {
                    return reg.getBundle();
                }
                Object[] result = new Object[bundles.length + 1];
                result[0] = reg.getBundle();
                System.arraycopy(bundles, 0, result, 1, bundles.length);
                return result;
            }
        } else if (this.fRegistryBrowser.getGroupBy() == 1) {
            if (object instanceof ExtensionPoint) {
                return object;
            }
            if (object instanceof Extension) {
                Extension ext = (Extension)object;
                return ext.getExtensionPoint();
            }
        } else if (this.fRegistryBrowser.getGroupBy() == 2) {
            if (object instanceof ServiceRegistration) {
                ServiceRegistration service = (ServiceRegistration)object;
                return service.getName();
            }
            if (object instanceof Bundle) {
                ServiceRegistration[] services = ((Bundle)object).getServicesInUse();
                int i = 0;
                while (i < services.length) {
                    ServiceRegistration service = services[i];
                    services[i] = service.getName();
                    ++i;
                }
                return services;
            }
        }
        return null;
    }

    private void refreshTopLevelElements(Object object) {
        Object topLevelElement = this.getTopLevelElement(object);
        if (topLevelElement == null) {
            return;
        }
        if (topLevelElement.getClass().isArray()) {
            Object[] array = (Object[])topLevelElement;
            this.fRegistryBrowser.refresh(array);
        } else {
            this.fRegistryBrowser.refresh(topLevelElement);
        }
    }

    protected void update(ModelChangeDelta[] deltas) {
        int i = 0;
        while (i < deltas.length) {
            ModelObject object = deltas[i].getModelObject();
            int flag = deltas[i].getFlag();
            switch (flag) {
                case 0: {
                    if (this.topLevelElement(object)) {
                        this.fRegistryBrowser.add(object);
                        break;
                    }
                    this.refreshTopLevelElements(object);
                    break;
                }
                case 2: {
                    if (this.topLevelElement(object)) {
                        this.fRegistryBrowser.remove(object);
                        break;
                    }
                    this.refreshTopLevelElements(object);
                    break;
                }
                case 1: 
                case 4: 
                case 6: 
                case 7: 
                case 8: {
                    if (this.topLevelElement(object)) {
                        this.fRegistryBrowser.refresh(object);
                        break;
                    }
                    this.refreshTopLevelElements(object);
                }
            }
            ++i;
        }
    }
}

