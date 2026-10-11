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
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.util.QueryDelegate;

class QueryDelegateFactoryRegistryReader
extends RegistryReader {
    static final String TAG_FACTORY = "factory";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";

    public QueryDelegateFactoryRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "query_delegate");
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
                    QueryDelegateFactoryDescriptor previous = QueryDelegate.Factory.Registry.INSTANCE.put(uri, new QueryDelegateFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof QueryDelegateFactoryDescriptor) {
                        QueryDelegateFactoryDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a query delegate factory for '" + uri + "'");
                    }
                    return true;
                }
                QueryDelegate.Factory.Registry.INSTANCE.remove(uri);
                return true;
            }
        }
        return false;
    }

    static class QueryDelegateFactoryDescriptor
    extends RegistryReader.PluginClassDescriptor
    implements QueryDelegate.Factory.Descriptor {
        protected QueryDelegate.Factory factory;

        public QueryDelegateFactoryDescriptor(IConfigurationElement e, String attrName) {
            super(e, attrName);
        }

        public QueryDelegate.Factory getFactory() {
            if (this.factory == null) {
                this.factory = (QueryDelegate.Factory)this.createInstance();
            }
            return this.factory;
        }
    }
}

