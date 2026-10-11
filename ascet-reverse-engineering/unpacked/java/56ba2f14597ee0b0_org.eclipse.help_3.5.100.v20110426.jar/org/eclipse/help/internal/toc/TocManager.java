/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.toc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractTocProvider;
import org.eclipse.help.IToc;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.ITopic;
import org.eclipse.help.internal.HelpData;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.toc.Toc;
import org.eclipse.help.internal.toc.TocAssembler;
import org.eclipse.help.internal.toc.TocContribution;
import org.eclipse.help.internal.toc.TocProviderComparator;
import org.eclipse.help.internal.toc.TocSorter;
import org.eclipse.help.internal.toc.TopicSorter;

public class TocManager {
    private static final String EXTENSION_POINT_ID_TOC = "org.eclipse.help.toc";
    private static final String ELEMENT_NAME_TOC_PROVIDER = "tocProvider";
    private static final String ATTRIBUTE_NAME_CLASS = "class";
    private AbstractTocProvider[] tocProviders;
    private Map tocContributionsByLocale = new HashMap();
    private Map tocContributionsForTocByLocale = new HashMap();
    private Map tocsByLocale = new HashMap();
    private Map tocsById = new HashMap();
    private Map tocsByTopic;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public synchronized Toc[] getTocs(String locale) {
        Toc[] tocs = (Toc[])this.tocsByLocale.get(locale);
        if (tocs == null) {
            long start = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_TOC) {
                System.out.println("Start to build toc for locale " + locale);
            }
            Set tocsToFilter = this.getIgnoredTocContributions();
            TocContribution[] raw = this.getRootTocContributions(locale, tocsToFilter);
            ITocContribution[] filtered = this.filterTocContributions(raw, tocsToFilter);
            ITocContribution[] ordered = new TocSorter().orderTocContributions(filtered);
            ArrayList<Toc> orderedTocs = new ArrayList<Toc>(ordered.length);
            int i = 0;
            while (i < ordered.length) {
                try {
                    Toc toc = (Toc)ordered[i].getToc();
                    orderedTocs.add(toc);
                    this.tocsById.put(ordered[i].getId(), toc);
                }
                catch (Throwable t) {
                    StringBuffer stringBuffer = new StringBuffer("Error getting ");
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = Class.forName("org.eclipse.help.internal.toc.Toc");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    StringBuffer stringBuffer2 = stringBuffer.append(clazz.getName()).append(" from ");
                    Class<?> clazz2 = class$1;
                    if (clazz2 == null) {
                        try {
                            clazz2 = Class.forName("org.eclipse.help.ITocContribution");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    String msg = stringBuffer2.append(clazz2.getName()).append(": ").append(ordered[i]).toString();
                    HelpPlugin.logError(msg, t);
                }
                ++i;
            }
            tocs = orderedTocs.toArray(new Toc[orderedTocs.size()]);
            TopicSorter topicSorter = new TopicSorter();
            int i2 = 0;
            while (i2 < tocs.length) {
                topicSorter.sortChildren(tocs[i2]);
                ++i2;
            }
            this.tocsByLocale.put(locale, tocs);
            long stop = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_TOC) {
                System.out.println("Milliseconds to update toc for locale " + locale + " = " + (stop - start));
            }
        }
        return tocs;
    }

    public synchronized Toc getToc(String id, String locale) {
        this.getTocs(locale);
        return (Toc)this.tocsById.get(id);
    }

    public synchronized Toc getOwningToc(String href) {
        if (this.tocsByTopic == null) {
            this.tocsByTopic = new HashMap();
            Toc[] tocs = HelpPlugin.getTocManager().getTocs(Platform.getNL());
            int i = 0;
            while (i < tocs.length) {
                ITocContribution contribution = tocs[i].getTocContribution();
                String[] extraDocuments = contribution.getExtraDocuments();
                int j = 0;
                while (j < extraDocuments.length) {
                    this.tocsByTopic.put(extraDocuments[j], tocs[i]);
                    ++j;
                }
                ++i;
            }
        }
        return (Toc)this.tocsByTopic.get(href);
    }

    public synchronized ITopic getTopic(String href, String locale) {
        Toc[] tocs = HelpPlugin.getTocManager().getTocs(locale);
        int i = 0;
        while (i < tocs.length) {
            ITopic topic = tocs[i].getTopic(href);
            if (topic != null) {
                return topic;
            }
            ++i;
        }
        int index = href.indexOf(35);
        if (index != -1) {
            return this.getTopic(href.substring(0, index), locale);
        }
        return null;
    }

    public synchronized int[] getTopicPath(String href, String locale) {
        ITopic topic = this.getTopic(href, locale);
        try {
            if (topic != null && topic instanceof UAElement) {
                ArrayList<Integer> path = new ArrayList<Integer>();
                UAElement element = (UAElement)((Object)topic);
                while (!(element instanceof Toc)) {
                    UAElement parent = element.getParentElement();
                    path.add(new Integer(this.indexOf(parent, (Topic)element)));
                    element = parent;
                }
                Toc[] tocs = this.getTocs(locale);
                int i = 0;
                while (i < tocs.length) {
                    if (tocs[i] == element) {
                        path.add(new Integer(i));
                        int[] array = new int[path.size()];
                        int j = 0;
                        while (j < array.length) {
                            array[j] = (Integer)path.get(array.length - 1 - j);
                            ++j;
                        }
                        return array;
                    }
                    ++i;
                }
            }
        }
        catch (Exception exception) {
            return null;
        }
        return null;
    }

    private int indexOf(UAElement parent, Topic child) {
        ITopic[] children;
        if (parent instanceof Topic) {
            children = ((Topic)parent).getSubtopics();
        } else if (parent instanceof Toc) {
            children = ((Toc)parent).getTopics();
        } else {
            return -1;
        }
        int i = 0;
        while (i < children.length) {
            if (children[i] == child) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public TocContribution[] getTocContributions(String locale) {
        return this.getAndCacheTocContributions(locale, this.tocContributionsByLocale);
    }

    private TocContribution[] getTocContributionsForToc(String locale) {
        return this.getAndCacheTocContributions(locale, this.tocContributionsForTocByLocale);
    }

    private synchronized TocContribution[] getAndCacheTocContributions(String locale, Map contributionsByLocale) {
        TocContribution[] cached = (TocContribution[])contributionsByLocale.get(locale);
        if (cached == null) {
            HashMap<String, TocContribution> contributions = new HashMap<String, TocContribution>();
            AbstractTocProvider[] providers = this.getTocProviders();
            int i = 0;
            while (i < providers.length) {
                try {
                    ITocContribution[] contrib = providers[i].getTocContributions(locale);
                    int j = 0;
                    while (j < contrib.length) {
                        TocContribution contribution = new TocContribution();
                        contribution.setCategoryId(contrib[j].getCategoryId());
                        contribution.setContributorId(contrib[j].getContributorId());
                        contribution.setExtraDocuments(contrib[j].getExtraDocuments());
                        contribution.setId(contrib[j].getId());
                        contribution.setLocale(contrib[j].getLocale());
                        contribution.setPrimary(contrib[j].isPrimary());
                        IToc toc = contrib[j].getToc();
                        Toc t = toc instanceof Toc ? (Toc)toc : (Toc)UAElementFactory.newElement(toc);
                        t.setLinkTo(contrib[j].getLinkTo());
                        contribution.setToc(t);
                        if (!contributions.containsKey(contrib[j].getId())) {
                            contributions.put(contrib[j].getId(), contribution);
                        }
                        ++j;
                    }
                }
                catch (Throwable t) {
                    String msg = "Error getting help table of contents data from provider: " + providers[i].getClass().getName() + " (skipping provider)";
                    HelpPlugin.logError(msg, t);
                }
                ++i;
            }
            cached = contributions.values().toArray(new TocContribution[contributions.size()]);
            contributionsByLocale.put(locale, cached);
        }
        return cached;
    }

    public void clearCache() {
        this.tocContributionsByLocale.clear();
        this.tocContributionsForTocByLocale.clear();
        this.tocsByLocale.clear();
        this.tocsById.clear();
        this.tocsByTopic = null;
        this.tocProviders = null;
    }

    public AbstractTocProvider[] getTocProviders() {
        if (this.tocProviders == null) {
            ArrayList<AbstractTocProvider> providers = new ArrayList<AbstractTocProvider>();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_TOC);
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement elem = elements[i];
                if (elem.getName().equals(ELEMENT_NAME_TOC_PROVIDER)) {
                    try {
                        AbstractTocProvider provider = (AbstractTocProvider)elem.createExecutableExtension(ATTRIBUTE_NAME_CLASS);
                        providers.add(provider);
                    }
                    catch (CoreException e) {
                        String msg = "Error instantiating help table of contents provider class \"" + elem.getAttribute(ATTRIBUTE_NAME_CLASS) + '\"';
                        HelpPlugin.logError(msg, e);
                    }
                }
                ++i;
            }
            Collections.sort(providers, new TocProviderComparator());
            this.tocProviders = providers.toArray(new AbstractTocProvider[providers.size()]);
        }
        return this.tocProviders;
    }

    public void setTocProviders(AbstractTocProvider[] tocProviders) {
        this.tocProviders = tocProviders;
    }

    private TocContribution[] filterTocContributions(TocContribution[] unfiltered, Set tocsToFilter) {
        ArrayList<TocContribution> filtered = new ArrayList<TocContribution>();
        int i = 0;
        while (i < unfiltered.length) {
            if (!tocsToFilter.contains(unfiltered[i].getId()) && !tocsToFilter.contains(unfiltered[i].getCategoryId())) {
                filtered.add(unfiltered[i]);
            }
            ++i;
        }
        return filtered.toArray(new TocContribution[filtered.size()]);
    }

    private TocContribution[] getRootTocContributions(String locale, Set tocsToFilter) {
        TocContribution[] contributions = this.getTocContributionsForToc(locale);
        ArrayList<TocContribution> unassembled = new ArrayList<TocContribution>(Arrays.asList(contributions));
        TocAssembler assembler = new TocAssembler(tocsToFilter);
        List assembled = assembler.assemble(unassembled);
        return assembled.toArray(new TocContribution[assembled.size()]);
    }

    private Set getIgnoredTocContributions() {
        HelpData helpData = HelpData.getProductHelpData();
        if (helpData != null) {
            return helpData.getHiddenTocs();
        }
        HashSet<String> ignored = new HashSet<String>();
        String preferredTocs = Platform.getPreferencesService().getString("org.eclipse.help", "ignoredTOCS", "", null);
        if (preferredTocs.length() > 0) {
            StringTokenizer suggestdOrderedInfosets = new StringTokenizer(preferredTocs, " ;,");
            while (suggestdOrderedInfosets.hasMoreTokens()) {
                ignored.add(suggestdOrderedInfosets.nextToken());
            }
        }
        return ignored;
    }

    public boolean isTocLoaded(String locale) {
        return this.tocsByLocale.get(locale) != null;
    }
}

