/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.criteria;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractCriteriaProvider;
import org.eclipse.help.ICriteria;
import org.eclipse.help.IToc;
import org.eclipse.help.IToc2;
import org.eclipse.help.ITopic;
import org.eclipse.help.ITopic2;
import org.eclipse.help.internal.HelpPlugin;

public class CriteriaProviderRegistry {
    public static final String PROVIDER_XP_NAME = "org.eclipse.help.criteriaProvider";
    private static List providers = null;
    private static CriteriaProviderRegistry instance;
    private boolean initialized = false;

    private CriteriaProviderRegistry() {
    }

    public static CriteriaProviderRegistry getInstance() {
        if (instance == null) {
            instance = new CriteriaProviderRegistry();
        }
        return instance;
    }

    private synchronized void readProviders() {
        if (this.initialized) {
            return;
        }
        providers = new ArrayList();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(PROVIDER_XP_NAME);
        int i = 0;
        while (i < elements.length) {
            Object obj = null;
            try {
                obj = elements[i].createExecutableExtension("class");
            }
            catch (CoreException e) {
                HelpPlugin.logError("Create extension failed:[org.eclipse.help.criteriaProvider].", e);
            }
            if (obj instanceof AbstractCriteriaProvider) {
                providers.add(obj);
            }
            ++i;
        }
        this.initialized = true;
    }

    public AbstractCriteriaProvider[] getScopes() {
        this.readProviders();
        return providers.toArray(new AbstractCriteriaProvider[providers.size()]);
    }

    public ICriteria[] getAllCriteria(ITopic topic) {
        this.readProviders();
        ICriteria[] criteria = topic instanceof ITopic2 ? ((ITopic2)topic).getCriteria() : new ICriteria[]{};
        Iterator iter = providers.iterator();
        while (iter.hasNext()) {
            AbstractCriteriaProvider provider = (AbstractCriteriaProvider)iter.next();
            ICriteria[] newCriteria = provider.getCriteria(topic);
            if (newCriteria.length <= 0) continue;
            if (criteria.length == 0) {
                criteria = newCriteria;
                continue;
            }
            ICriteria[] union = new ICriteria[criteria.length + newCriteria.length];
            System.arraycopy(criteria, 0, union, 0, criteria.length);
            System.arraycopy(newCriteria, 0, union, criteria.length, newCriteria.length);
            criteria = union;
        }
        return criteria;
    }

    public ICriteria[] getAllCriteria(IToc toc) {
        this.readProviders();
        ICriteria[] criteria = toc instanceof IToc2 ? ((IToc2)toc).getCriteria() : new ICriteria[]{};
        Iterator iter = providers.iterator();
        while (iter.hasNext()) {
            AbstractCriteriaProvider provider = (AbstractCriteriaProvider)iter.next();
            ICriteria[] newCriteria = provider.getCriteria(toc);
            if (newCriteria.length <= 0) continue;
            if (criteria.length == 0) {
                criteria = newCriteria;
                continue;
            }
            ICriteria[] union = new ICriteria[criteria.length + newCriteria.length];
            System.arraycopy(criteria, 0, union, 0, criteria.length);
            System.arraycopy(newCriteria, 0, union, criteria.length, newCriteria.length);
            criteria = union;
        }
        return criteria;
    }
}

