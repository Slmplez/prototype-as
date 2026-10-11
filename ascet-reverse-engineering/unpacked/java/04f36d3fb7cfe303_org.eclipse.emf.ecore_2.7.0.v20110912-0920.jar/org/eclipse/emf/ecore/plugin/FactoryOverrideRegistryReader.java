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

class FactoryOverrideRegistryReader
extends RegistryReader {
    static final String TAG_FACTORY = "factory";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";

    public FactoryOverrideRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "factory_override");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_FACTORY)) {
            String packageURI = element.getAttribute(ATT_URI);
            if (packageURI == null) {
                this.logMissingAttribute(element, ATT_URI);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    Object ePackageDescriptor = EPackage.Registry.INSTANCE.get(packageURI);
                    if (ePackageDescriptor instanceof EPackage.Descriptor) {
                        EPackage.Registry.INSTANCE.put(packageURI, new RegistryReader.EFactoryDescriptor(element, ATT_CLASS, (EPackage.Descriptor)ePackageDescriptor));
                        if (ePackageDescriptor instanceof RegistryReader.EFactoryDescriptor) {
                            RegistryReader.EFactoryDescriptor descriptor = (RegistryReader.EFactoryDescriptor)ePackageDescriptor;
                            EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a factory override for '" + packageURI + "'");
                        }
                    }
                    return true;
                }
                Object ePackageDescriptor = EPackage.Registry.INSTANCE.get(packageURI);
                if (ePackageDescriptor instanceof RegistryReader.EFactoryDescriptor) {
                    EPackage.Registry.INSTANCE.put(packageURI, ((RegistryReader.EFactoryDescriptor)ePackageDescriptor).getOverridenDescriptor());
                }
                return true;
            }
        }
        return false;
    }
}

