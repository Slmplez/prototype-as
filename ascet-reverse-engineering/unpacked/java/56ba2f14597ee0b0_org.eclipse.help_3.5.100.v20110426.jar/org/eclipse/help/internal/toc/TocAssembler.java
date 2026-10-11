/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.help.ICriteria;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.Anchor;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.criteria.CriteriaProviderRegistry;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.ExtensionHandler;
import org.eclipse.help.internal.dynamic.IncludeHandler;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.eclipse.help.internal.dynamic.ValidationHandler;
import org.eclipse.help.internal.toc.HrefUtil;
import org.eclipse.help.internal.toc.Link;
import org.eclipse.help.internal.toc.Toc;
import org.eclipse.help.internal.toc.TocContribution;

public class TocAssembler {
    private DocumentProcessor processor;
    private ProcessorHandler[] handlers;
    private Map anchorsByContributionId;
    private List contributions;
    private Map contributionsById;
    private Map contributionsByLinkTo;
    private Set processedContributions;
    private Map requiredAttributes;
    private Set tocsToFilter;

    public TocAssembler() {
        this.tocsToFilter = new HashSet();
    }

    public TocAssembler(Set tocsToFilter) {
        this.tocsToFilter = tocsToFilter;
    }

    public List assemble(List contributions) {
        this.contributions = contributions;
        this.anchorsByContributionId = null;
        this.contributionsById = null;
        this.contributionsByLinkTo = null;
        this.processedContributions = null;
        List books = this.getBooks();
        Iterator iter = books.iterator();
        while (iter.hasNext()) {
            TocContribution book = (TocContribution)iter.next();
            this.process(book);
        }
        return books;
    }

    private List getBooks() {
        Map linkedContributionIds = this.getLinkedContributionIds(this.contributions);
        ArrayList<TocContribution> books = new ArrayList<TocContribution>();
        Iterator iter = this.contributions.iterator();
        while (iter.hasNext()) {
            String msg;
            TocContribution contrib = (TocContribution)iter.next();
            boolean isValidLinkTo = this.hasValidLinkTo(contrib);
            boolean isLinkedId = linkedContributionIds.containsKey(contrib.getId());
            if (!isValidLinkTo && !isLinkedId) {
                if (contrib.isPrimary()) {
                    books.add(contrib);
                    if (!HelpPlugin.DEBUG_TOC) continue;
                    msg = "Primary Toc Found: " + contrib.getId();
                    String linkTo = contrib.getLinkTo();
                    if (linkTo != null) {
                        msg = String.valueOf(msg) + " - cannot find link to: ";
                        msg = String.valueOf(msg) + linkTo;
                    }
                    System.out.println(msg);
                    continue;
                }
                if (!HelpPlugin.DEBUG_TOC) continue;
                msg = "Table of contents is not primary and not linked to another TOC " + contrib.getId() + " (skipping)";
                System.out.println(msg);
                continue;
            }
            contrib.setSubToc(true);
            if (!HelpPlugin.DEBUG_TOC) continue;
            msg = "Toc " + contrib.getId();
            if (isValidLinkTo) {
                msg = String.valueOf(msg) + " has a valid link to " + contrib.getLinkTo();
            }
            if (isLinkedId) {
                msg = String.valueOf(msg) + " is linked from " + linkedContributionIds.get(contrib.getId());
            }
            System.out.println(msg);
        }
        return books;
    }

    private Map getLinkedContributionIds(List contributions) {
        if (this.processor == null) {
            this.processor = new DocumentProcessor();
        }
        final HashMap linkedContributionIds = new HashMap();
        ProcessorHandler[] linkFinder = new ProcessorHandler[]{new ValidationHandler(this.getRequiredAttributes()), new ProcessorHandler(){

            public short handle(UAElement element, String id) {
                Link link;
                String toc;
                if (element instanceof Link && (toc = (link = (Link)element).getToc()) != null) {
                    TocContribution srcContribution = TocAssembler.this.getContribution(id);
                    linkedContributionIds.put(HrefUtil.normalizeHref(srcContribution.getContributorId(), toc), id);
                }
                return 0;
            }
        }};
        this.processor.setHandlers(linkFinder);
        ListIterator iter = contributions.listIterator();
        while (iter.hasNext()) {
            TocContribution contrib = (TocContribution)iter.next();
            try {
                String id = contrib.getId();
                if (this.tocsToFilter.contains(id)) continue;
                this.processor.process((Toc)contrib.getToc(), id);
            }
            catch (Throwable t) {
                iter.remove();
                String msg = "Error processing help table of contents: " + contrib.getId() + " (skipping)";
                HelpPlugin.logError(msg, t);
            }
        }
        return linkedContributionIds;
    }

    private boolean hasAnchor(String tocContributionId, String anchorId) {
        TocContribution contrib = this.getContribution(tocContributionId);
        if (contrib != null) {
            Set anchors;
            this.process(contrib);
            if (this.anchorsByContributionId != null && (anchors = (Set)this.anchorsByContributionId.get(tocContributionId)) != null) {
                return anchors.contains(anchorId);
            }
        }
        return false;
    }

    private boolean hasValidLinkTo(TocContribution contrib) {
        String normalized;
        int index;
        String linkTo = contrib.getLinkTo();
        if (linkTo != null && (index = (normalized = HrefUtil.normalizeHref(contrib.getContributorId(), linkTo)).indexOf(35)) != -1) {
            String id = normalized.substring(0, index);
            String anchorId = normalized.substring(index + 1);
            return this.hasAnchor(id, anchorId);
        }
        return false;
    }

    private void process(ITocContribution contribution) {
        if (this.processedContributions == null) {
            this.processedContributions = new HashSet();
        }
        if (!this.processedContributions.contains(contribution)) {
            if (this.processor == null) {
                this.processor = new DocumentProcessor();
            }
            if (this.handlers == null) {
                DocumentReader reader = new DocumentReader();
                this.handlers = new ProcessorHandler[]{new NormalizeHandler(), new LinkHandler(), new AnchorHandler(), new IncludeHandler(reader, contribution.getLocale()), new ExtensionHandler(reader, contribution.getLocale())};
            }
            this.processor.setHandlers(this.handlers);
            this.processor.process((Toc)contribution.getToc(), contribution.getId());
            this.processedContributions.add(contribution);
        }
    }

    private TocContribution getContribution(String id) {
        if (this.contributionsById == null) {
            this.contributionsById = new HashMap();
            Iterator iter = this.contributions.iterator();
            while (iter.hasNext()) {
                TocContribution contribution = (TocContribution)iter.next();
                this.contributionsById.put(contribution.getId(), contribution);
            }
        }
        return (TocContribution)this.contributionsById.get(id);
    }

    private TocContribution[] getAnchorContributions(String anchorPath) {
        TocContribution[] contributions;
        if (this.contributionsByLinkTo == null) {
            this.contributionsByLinkTo = new HashMap();
            Iterator iter = this.contributions.iterator();
            while (iter.hasNext()) {
                TocContribution srcContribution = (TocContribution)iter.next();
                String linkTo = srcContribution.getLinkTo();
                if (linkTo == null) continue;
                String destAnchorPath = HrefUtil.normalizeHref(srcContribution.getContributorId(), linkTo);
                ITocContribution[] array = (ITocContribution[])this.contributionsByLinkTo.get(destAnchorPath);
                if (array == null) {
                    array = new TocContribution[]{srcContribution};
                } else {
                    boolean isAlreadyIncluded = false;
                    int i = 0;
                    while (i < array.length) {
                        if (srcContribution.getId().equals(array[i].getId())) {
                            isAlreadyIncluded = true;
                        }
                        ++i;
                    }
                    if (!isAlreadyIncluded) {
                        TocContribution[] temp = new TocContribution[array.length + 1];
                        System.arraycopy(array, 0, temp, 0, array.length);
                        temp[array.length] = srcContribution;
                        array = temp;
                    }
                }
                this.contributionsByLinkTo.put(destAnchorPath, array);
            }
        }
        if ((contributions = (TocContribution[])this.contributionsByLinkTo.get(anchorPath)) == null) {
            contributions = new TocContribution[]{};
        }
        return contributions;
    }

    private Map getRequiredAttributes() {
        if (this.requiredAttributes == null) {
            this.requiredAttributes = new HashMap();
            this.requiredAttributes.put("toc", new String[]{"label"});
            this.requiredAttributes.put("topic", new String[]{"label"});
            this.requiredAttributes.put("anchor", new String[]{"id"});
            this.requiredAttributes.put("include", new String[]{"path"});
            this.requiredAttributes.put("link", new String[]{"toc"});
        }
        return this.requiredAttributes;
    }

    private void addExtraDocuments(TocContribution contribution, String[] extraDocuments) {
        if (extraDocuments.length > 0) {
            String[] combinedExtraDocuments;
            String[] destExtraDocuments = contribution.getExtraDocuments();
            if (destExtraDocuments.length == 0) {
                combinedExtraDocuments = extraDocuments;
            } else {
                HashSet<String> set = new HashSet<String>();
                set.addAll(Arrays.asList(destExtraDocuments));
                set.addAll(Arrays.asList(extraDocuments));
                combinedExtraDocuments = set.toArray(new String[set.size()]);
            }
            contribution.setExtraDocuments(combinedExtraDocuments);
        }
    }

    private class AnchorHandler
    extends ProcessorHandler {
        private AnchorHandler() {
        }

        public short handle(UAElement element, String id) {
            if (element instanceof Anchor) {
                String anchorId;
                if (TocAssembler.this.tocsToFilter.contains(id)) {
                    return 0;
                }
                Anchor anchor = (Anchor)element;
                UAElement parent = anchor.getParentElement();
                if (parent != null && (anchorId = anchor.getId()) != null) {
                    HashSet<String> set;
                    if (TocAssembler.this.anchorsByContributionId == null) {
                        TocAssembler.this.anchorsByContributionId = new HashMap();
                    }
                    if ((set = (HashSet<String>)TocAssembler.this.anchorsByContributionId.get(id)) == null) {
                        set = new HashSet<String>();
                        TocAssembler.this.anchorsByContributionId.put(id, set);
                    }
                    set.add(anchorId);
                    TocContribution destContribution = TocAssembler.this.getContribution(id);
                    if (destContribution != null) {
                        TocContribution[] srcContributions = TocAssembler.this.getAnchorContributions(String.valueOf(destContribution.getId()) + '#' + anchorId);
                        int i = 0;
                        while (i < srcContributions.length) {
                            TocAssembler.this.process(srcContributions[i]);
                            IUAElement[] children = srcContributions[i].getToc().getChildren();
                            int j = 0;
                            while (j < children.length) {
                                parent.insertBefore((UAElement)children[j], anchor);
                                ++j;
                            }
                            TocAssembler.this.addExtraDocuments(destContribution, srcContributions[i].getExtraDocuments());
                            ++i;
                        }
                    }
                }
            }
            return 0;
        }
    }

    private class LinkHandler
    extends ProcessorHandler {
        private LinkHandler() {
        }

        public short handle(UAElement element, String id) {
            if (element instanceof Link) {
                String toc;
                Link link = (Link)element;
                UAElement parent = link.getParentElement();
                if (parent != null && (toc = link.getToc()) != null) {
                    TocContribution destContribution = TocAssembler.this.getContribution(id);
                    TocContribution srcContribution = TocAssembler.this.getContribution(HrefUtil.normalizeHref(destContribution.getContributorId(), toc));
                    if (srcContribution != null) {
                        TocAssembler.this.process(srcContribution);
                        IUAElement[] children = srcContribution.getToc().getChildren();
                        int i = 0;
                        while (i < children.length) {
                            parent.insertBefore((UAElement)children[i], link);
                            ++i;
                        }
                        TocAssembler.this.addExtraDocuments(destContribution, srcContribution.getExtraDocuments());
                    }
                    parent.removeChild(link);
                }
                return 2;
            }
            return 0;
        }
    }

    private class NormalizeHandler
    extends ProcessorHandler {
        private NormalizeHandler() {
        }

        public short handle(UAElement element, String id) {
            if (element instanceof Topic) {
                Topic topic = (Topic)element;
                String href = topic.getHref();
                if (href != null) {
                    topic.setHref(this.normalize(href, id));
                }
                this.processCriteria(element, id);
                return 1;
            }
            if (element instanceof Toc) {
                Toc toc = (Toc)element;
                toc.setHref(id);
                String topic = toc.getTopic();
                if (topic != null) {
                    toc.setTopic(this.normalize(topic, id));
                }
                this.processCriteria(element, id);
                return 1;
            }
            return 0;
        }

        private String normalize(String href, String id) {
            TocContribution contribution = TocAssembler.this.getContribution(id);
            if (contribution != null) {
                String pluginId = contribution.getContributorId();
                return HrefUtil.normalizeHref(pluginId, href);
            }
            int index = id.indexOf(47, 1);
            if (index != -1) {
                String pluginId = id.substring(1, index);
                return HrefUtil.normalizeHref(pluginId, href);
            }
            return href;
        }

        private void processCriteria(UAElement element, String id) {
            if (HelpPlugin.getCriteriaManager().isCriteriaEnabled()) {
                TocContribution contribution = TocAssembler.this.getContribution(id);
                String locale = contribution.getLocale();
                ICriteria[] criteria = new ICriteria[]{};
                if (element instanceof Topic) {
                    Topic topic = (Topic)element;
                    criteria = CriteriaProviderRegistry.getInstance().getAllCriteria(topic);
                } else if (element instanceof Toc) {
                    Toc toc = (Toc)element;
                    criteria = CriteriaProviderRegistry.getInstance().getAllCriteria(toc);
                }
                HelpPlugin.getCriteriaManager().addCriteriaValues(criteria, locale);
            }
        }
    }
}

