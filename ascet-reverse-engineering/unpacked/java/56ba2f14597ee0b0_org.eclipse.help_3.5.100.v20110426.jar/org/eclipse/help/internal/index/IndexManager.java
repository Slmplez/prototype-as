/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.index;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractIndexProvider;
import org.eclipse.help.IIndex;
import org.eclipse.help.IIndexContribution;
import org.eclipse.help.internal.HelpData;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.index.Index;
import org.eclipse.help.internal.index.IndexAssembler;
import org.eclipse.help.internal.index.IndexContribution;

public class IndexManager {
    private static final String EXTENSION_POINT_ID_INDEX = "org.eclipse.help.index";
    private static final String ELEMENT_NAME_INDEX_PROVIDER = "indexProvider";
    private static final String ATTRIBUTE_NAME_CLASS = "class";
    private Map indexContributionsByLocale = new HashMap();
    private Map indexesByLocale = new HashMap();
    private AbstractIndexProvider[] indexProviders;

    public synchronized IIndex getIndex(String locale) {
        Index index = (Index)this.indexesByLocale.get(locale);
        if (index == null) {
            HelpPlugin.getTocManager().getTocs(locale);
            long start = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_INDEX) {
                System.out.println("Start to update keyword index for locale " + locale);
            }
            ArrayList<IndexContribution> contributions = new ArrayList<IndexContribution>(Arrays.asList(this.readIndexContributions(locale)));
            this.filterIndexContributions(contributions);
            IndexAssembler assembler = new IndexAssembler();
            index = assembler.assemble(contributions, locale);
            this.indexesByLocale.put(locale, index);
            long stop = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_INDEX) {
                System.out.println("Milliseconds to update keyword index for locale " + locale + " = " + (stop - start));
            }
        }
        return index;
    }

    public synchronized IndexContribution[] getIndexContributions(String locale) {
        IndexContribution[] contributions = (IndexContribution[])this.indexContributionsByLocale.get(locale);
        if (contributions == null) {
            contributions = this.readIndexContributions(locale);
            this.indexContributionsByLocale.put(locale, contributions);
        }
        return contributions;
    }

    private IndexContribution[] readIndexContributions(String locale) {
        ArrayList<IndexContribution> contributions = new ArrayList<IndexContribution>();
        AbstractIndexProvider[] providers = this.getIndexProviders();
        int i = 0;
        while (i < providers.length) {
            String msg;
            try {
                IIndexContribution[] contrib = providers[i].getIndexContributions(locale);
                int j = 0;
                while (j < contrib.length) {
                    if (contrib[j] == null) {
                        msg = "Help keyword index provider \"" + providers[i].getClass().getName() + "\" returned a null contribution (skipping)";
                        HelpPlugin.logError(msg);
                    } else if (contrib[j].getIndex() == null) {
                        msg = "Help keyword index provider \"" + providers[i].getClass().getName() + "\" returned a contribution with a null root element (expected a \"" + "index" + "\" element; skipping)";
                        HelpPlugin.logError(msg);
                    } else {
                        IndexContribution contribution = new IndexContribution();
                        contribution.setId(contrib[j].getId());
                        contribution.setLocale(contrib[j].getLocale());
                        IIndex index = contrib[j].getIndex();
                        contribution.setIndex(index instanceof Index ? (Index)index : (Index)UAElementFactory.newElement(index));
                        contributions.add(contribution);
                    }
                    ++j;
                }
            }
            catch (Throwable t) {
                msg = "Error getting help keyword index data from provider: " + providers[i].getClass().getName() + " (skipping provider)";
                HelpPlugin.logError(msg, t);
            }
            ++i;
        }
        IndexContribution[] cached = contributions.toArray(new IndexContribution[contributions.size()]);
        return cached;
    }

    public void clearCache() {
        this.indexContributionsByLocale.clear();
        this.indexesByLocale.clear();
    }

    public AbstractIndexProvider[] getIndexProviders() {
        if (this.indexProviders == null) {
            ArrayList<AbstractIndexProvider> providers = new ArrayList<AbstractIndexProvider>();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_INDEX);
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement elem = elements[i];
                if (elem.getName().equals(ELEMENT_NAME_INDEX_PROVIDER)) {
                    try {
                        AbstractIndexProvider provider = (AbstractIndexProvider)elem.createExecutableExtension(ATTRIBUTE_NAME_CLASS);
                        providers.add(provider);
                    }
                    catch (CoreException e) {
                        String msg = "Error instantiating help keyword index provider class \"" + elem.getAttribute(ATTRIBUTE_NAME_CLASS) + '\"';
                        HelpPlugin.logError(msg, e);
                    }
                }
                ++i;
            }
            this.indexProviders = providers.toArray(new AbstractIndexProvider[providers.size()]);
        }
        return this.indexProviders;
    }

    public boolean isIndexLoaded(String locale) {
        return this.indexesByLocale.get(locale) != null;
    }

    public void setIndexProviders(AbstractIndexProvider[] indexProviders) {
        this.indexProviders = indexProviders;
    }

    private void filterIndexContributions(List unfiltered) {
        Set indexesToFilter = this.getIgnoredIndexContributions();
        ListIterator iter = unfiltered.listIterator();
        while (iter.hasNext()) {
            IIndexContribution contribution = (IIndexContribution)iter.next();
            if (!indexesToFilter.contains(contribution.getId())) continue;
            iter.remove();
        }
    }

    private Set getIgnoredIndexContributions() {
        HelpData helpData = HelpData.getProductHelpData();
        if (helpData != null) {
            return helpData.getHiddenIndexes();
        }
        HashSet<String> ignored = new HashSet<String>();
        String preferredIndexes = Platform.getPreferencesService().getString("org.eclipse.help", "ignoredIndexes", "", null);
        if (preferredIndexes.length() > 0) {
            StringTokenizer suggestdOrderedInfosets = new StringTokenizer(preferredIndexes, " ;,");
            while (suggestdOrderedInfosets.hasMoreTokens()) {
                ignored.add(suggestdOrderedInfosets.nextToken());
            }
        }
        return ignored;
    }
}

