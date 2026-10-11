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
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;

class InvocationDelegateFactoryRegistryReader
extends RegistryReader {
    static final String TAG_FACTORY = "factory";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";

    public InvocationDelegateFactoryRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "invocation_delegate");
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
                    InvocationDelegateFactoryDescriptor previous = EOperation.Internal.InvocationDelegate.Factory.Registry.INSTANCE.put(uri, new InvocationDelegateFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof InvocationDelegateFactoryDescriptor) {
                        InvocationDelegateFactoryDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register an invocation delegate factory for '" + uri + "'");
                    }
                    return true;
                }
                EOperation.Internal.InvocationDelegate.Factory.Registry.INSTANCE.remove(uri);
                return true;
            }
        }
        return false;
    }

    static class InvocationDelegateFactoryDescriptor
    extends RegistryReader.PluginClassDescriptor
    implements EOperation.Internal.InvocationDelegate.Factory.Descriptor {
        protected EOperation.Internal.InvocationDelegate.Factory factory;

        public InvocationDelegateFactoryDescriptor(IConfigurationElement e, String attrName) {
            super(e, attrName);
        }

        public EOperation.Internal.InvocationDelegate.Factory getFactory() {
            if (this.factory == null) {
                this.factory = (EOperation.Internal.InvocationDelegate.Factory)this.createInstance();
            }
            return this.factory;
        }
    }
}

