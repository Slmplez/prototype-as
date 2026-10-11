/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.util.SafeRunnable
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.menus.AbstractMenuAdditionCacheEntry;
import org.eclipse.ui.menus.AbstractContributionFactory;
import org.eclipse.ui.menus.IContributionRoot;
import org.eclipse.ui.services.IServiceLocator;

public class ProxyMenuAdditionCacheEntry
extends AbstractMenuAdditionCacheEntry {
    private AbstractContributionFactory factory;
    private boolean createFactory = true;

    public ProxyMenuAdditionCacheEntry(String location, String namespace, IConfigurationElement element) {
        super(location, namespace, element);
    }

    public void createContributionItems(IServiceLocator serviceLocator, IContributionRoot additions) {
        AbstractContributionFactory factory = this.getFactory();
        if (factory != null) {
            factory.createContributionItems(serviceLocator, additions);
        }
    }

    private AbstractContributionFactory getFactory() {
        if (this.createFactory) {
            this.factory = this.createFactory();
        }
        return this.factory;
    }

    private AbstractContributionFactory createFactory() {
        final AbstractContributionFactory[] factory = new AbstractContributionFactory[1];
        SafeRunner.run((ISafeRunnable)new SafeRunnable(){

            public void run() throws Exception {
                factory[0] = (AbstractContributionFactory)WorkbenchPlugin.createExtension(ProxyMenuAdditionCacheEntry.this.getConfigElement(), "class");
            }
        });
        this.createFactory = false;
        return factory[0];
    }
}

