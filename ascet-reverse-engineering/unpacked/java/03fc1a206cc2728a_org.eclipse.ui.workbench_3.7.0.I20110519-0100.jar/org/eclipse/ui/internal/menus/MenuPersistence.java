/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.menus.AbstractMenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.MenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.menus.ProxyMenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.TrimAdditionCacheEntry;
import org.eclipse.ui.internal.menus.WorkbenchMenuService;
import org.eclipse.ui.internal.services.RegistryPersistence;

final class MenuPersistence
extends RegistryPersistence {
    private final WorkbenchMenuService menuService;

    MenuPersistence(WorkbenchMenuService workbenchMenuService) {
        if (workbenchMenuService == null) {
            throw new NullPointerException("The menu service cannot be null");
        }
        this.menuService = workbenchMenuService;
    }

    public final void dispose() {
        super.dispose();
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        return false;
    }

    public boolean menusNeedUpdating(IRegistryChangeEvent event) {
        IExtensionDelta[] menuDeltas = event.getExtensionDeltas("org.eclipse.ui", "menus");
        return menuDeltas.length != 0;
    }

    protected final void read() {
        super.read();
        this.readTrimAdditions();
        this.readAdditions();
    }

    public void readTrimAdditions() {
        if (this.menuService == null) {
            return;
        }
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] configElements = registry.getConfigurationElementsFor("org.eclipse.ui.menus");
        int i = 0;
        while (i < configElements.length) {
            if ("group".equals(configElements[i].getName())) {
                String id = configElements[i].getAttribute("id");
                String uriSpec = "toolbar:" + id;
                if (configElements[i].getChildren("location").length > 0) {
                    IConfigurationElement location = configElements[i].getChildren("location")[0];
                    if (location.getChildren("order").length > 0) {
                        IConfigurationElement order = location.getChildren("order")[0];
                        String pos = order.getAttribute("position");
                        String relTo = order.getAttribute("relativeTo");
                        uriSpec = String.valueOf(uriSpec) + "?" + pos + "=" + relTo;
                        MenuLocationURI uri = new MenuLocationURI("toolbar:" + relTo);
                        List trimAdditions = this.menuService.getAdditionsForURI(uri);
                        uri = new MenuLocationURI(uriSpec);
                        trimAdditions.add(new TrimAdditionCacheEntry(configElements[i], uri, this.menuService));
                    } else {
                        MenuLocationURI uri = new MenuLocationURI(uriSpec);
                        this.menuService.getAdditionsForURI(uri);
                    }
                }
            }
            ++i;
        }
    }

    public void readAdditions() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        ArrayList<IConfigurationElement> configElements = new ArrayList<IConfigurationElement>();
        IConfigurationElement[] menusExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.menus");
        int i = 0;
        while (i < menusExtensionPoint.length) {
            if ("menuContribution".equals(menusExtensionPoint[i].getName())) {
                configElements.add(menusExtensionPoint[i]);
            }
            ++i;
        }
        Comparator comparer = new Comparator(){

            public int compare(Object o1, Object o2) {
                IConfigurationElement c1 = (IConfigurationElement)o1;
                IConfigurationElement c2 = (IConfigurationElement)o2;
                return c1.getNamespaceIdentifier().compareToIgnoreCase(c2.getNamespaceIdentifier());
            }
        };
        Collections.sort(configElements, comparer);
        Iterator i2 = configElements.iterator();
        while (i2.hasNext()) {
            IConfigurationElement configElement = (IConfigurationElement)i2.next();
            AbstractMenuAdditionCacheEntry newFactory = null;
            newFactory = this.isProgramaticContribution(configElement) ? new ProxyMenuAdditionCacheEntry(configElement.getAttribute("locationURI"), configElement.getNamespaceIdentifier(), configElement) : new MenuAdditionCacheEntry(this.menuService, configElement, configElement.getAttribute("locationURI"), configElement.getNamespaceIdentifier());
            if (newFactory == null) continue;
            this.menuService.addContributionFactory(newFactory);
        }
    }

    private boolean isProgramaticContribution(IConfigurationElement menuAddition) {
        return menuAddition.getAttribute("class") != null;
    }
}

