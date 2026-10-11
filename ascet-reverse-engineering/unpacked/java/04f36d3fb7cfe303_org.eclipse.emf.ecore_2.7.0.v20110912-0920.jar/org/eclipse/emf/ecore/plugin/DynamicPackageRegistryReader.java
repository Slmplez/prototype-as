/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.ecore.plugin;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;

class DynamicPackageRegistryReader
extends RegistryReader {
    static final String TAG_RESOURCE = "resource";
    static final String ATT_URI = "uri";
    static final String ATT_LOCATION = "location";

    public DynamicPackageRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "dynamic_package");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_RESOURCE)) {
            String packageURI = element.getAttribute(ATT_URI);
            if (packageURI == null) {
                this.logMissingAttribute(element, ATT_URI);
            } else if (element.getAttribute(ATT_LOCATION) == null) {
                this.logMissingAttribute(element, ATT_LOCATION);
            } else {
                if (add) {
                    RegistryReader.EPackageDescriptor.Dynamic previous = EPackage.Registry.INSTANCE.put(packageURI, new RegistryReader.EPackageDescriptor.Dynamic(element, ATT_LOCATION));
                    if (previous instanceof RegistryReader.PluginClassDescriptor) {
                        RegistryReader.PluginClassDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a package for '" + packageURI + "'");
                    }
                    return true;
                }
                EPackage.Registry.INSTANCE.remove(packageURI);
                return true;
            }
        }
        return false;
    }
}

