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
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;

class SettingDelegateFactoryRegistryReader
extends RegistryReader {
    static final String TAG_FACTORY = "factory";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";

    public SettingDelegateFactoryRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "setting_delegate");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_FACTORY)) {
            String uri = element.getAttribute(ATT_URI);
            if (uri == null) {
                this.logMissingAttribute(element, ATT_URI);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    SettingDelegateFactoryDescriptor previous = EStructuralFeature.Internal.SettingDelegate.Factory.Registry.INSTANCE.put(uri, new SettingDelegateFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof SettingDelegateFactoryDescriptor) {
                        SettingDelegateFactoryDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a setting delegate factory for '" + uri + "'");
                    }
                    return true;
                }
                EStructuralFeature.Internal.SettingDelegate.Factory.Registry.INSTANCE.remove(uri);
                return true;
            }
        }
        return false;
    }

    static class SettingDelegateFactoryDescriptor
    extends RegistryReader.PluginClassDescriptor
    implements EStructuralFeature.Internal.SettingDelegate.Factory.Descriptor {
        protected EStructuralFeature.Internal.SettingDelegate.Factory factory;

        public SettingDelegateFactoryDescriptor(IConfigurationElement e, String attrName) {
            super(e, attrName);
        }

        public EStructuralFeature.Internal.SettingDelegate.Factory getFactory() {
            if (this.factory == null) {
                this.factory = (EStructuralFeature.Internal.SettingDelegate.Factory)this.createInstance();
            }
            return this.factory;
        }
    }
}

