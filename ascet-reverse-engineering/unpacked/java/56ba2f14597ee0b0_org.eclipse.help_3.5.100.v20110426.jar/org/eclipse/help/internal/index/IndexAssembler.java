/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 */
package org.eclipse.help.internal.index;

import com.ibm.icu.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.help.IIndexEntry;
import org.eclipse.help.ITopic;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.ExtensionHandler;
import org.eclipse.help.internal.dynamic.IncludeHandler;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.eclipse.help.internal.index.Index;
import org.eclipse.help.internal.index.IndexContribution;
import org.eclipse.help.internal.index.IndexEntry;
import org.eclipse.help.internal.index.IndexSee;
import org.eclipse.help.internal.toc.HrefUtil;

public class IndexAssembler {
    private DocumentProcessor processor;
    private Comparator comparator;
    private String locale;

    public Index assemble(List contributions, String locale) {
        this.locale = locale;
        this.process(contributions);
        Index index = this.merge(contributions);
        this.sortAndPrune(index);
        return index;
    }

    private Index merge(List contributions) {
        Index index = new Index();
        Iterator iter = contributions.iterator();
        while (iter.hasNext()) {
            IndexContribution contribution = (IndexContribution)iter.next();
            this.mergeChildren(index, (Index)contribution.getIndex());
            contribution.setIndex(null);
        }
        return index;
    }

    private void mergeChildren(UAElement a, UAElement b) {
        HashMap<String, UAElement> entriesByKeyword = new HashMap<String, UAElement>();
        HashSet<String> topicHrefs = new HashSet<String>();
        HashSet<UAElement> seeTargets = new HashSet<UAElement>();
        IUAElement[] childrenA = a.getChildren();
        int i = 0;
        while (i < childrenA.length) {
            UAElement childA = (UAElement)childrenA[i];
            if (childA instanceof IndexEntry) {
                entriesByKeyword.put(childA.getAttribute("keyword"), childA);
            } else if (childA instanceof Topic) {
                topicHrefs.add(childA.getAttribute("href"));
            } else if (childA instanceof IndexSee) {
                seeTargets.add((IndexSee)childA);
            }
            ++i;
        }
        IUAElement[] childrenB = b.getChildren();
        int i2 = 0;
        while (i2 < childrenB.length) {
            UAElement childB = (UAElement)childrenB[i2];
            if (childB instanceof IndexEntry) {
                String keyword = childB.getAttribute("keyword");
                if (entriesByKeyword.containsKey(keyword)) {
                    this.mergeChildren((IndexEntry)entriesByKeyword.get(keyword), childB);
                } else {
                    a.appendChild(childB);
                    entriesByKeyword.put(keyword, childB);
                }
            } else if (childB instanceof Topic) {
                String href = childB.getAttribute("href");
                if (!topicHrefs.contains(href)) {
                    a.appendChild(childB);
                    topicHrefs.add(href);
                }
            } else if (childB instanceof IndexSee && !seeTargets.contains((IndexSee)childB)) {
                a.appendChild(childB);
                seeTargets.add(childB);
            }
            ++i2;
        }
    }

    private void process(List contributions) {
        if (this.processor == null) {
            DocumentReader reader = new DocumentReader();
            this.processor = new DocumentProcessor(new ProcessorHandler[]{new NormalizeHandler(), new IncludeHandler(reader, this.locale), new ExtensionHandler(reader, this.locale)});
        }
        Iterator iter = contributions.iterator();
        while (iter.hasNext()) {
            IndexContribution contribution = (IndexContribution)iter.next();
            this.processor.process((Index)contribution.getIndex(), contribution.getId());
        }
    }

    private void sortAndPrune(UAElement element) {
        if (this.comparator == null) {
            this.comparator = new IndexComparator();
        }
        this.sortAndPrune(element, this.comparator);
    }

    private boolean sortAndPrune(UAElement element, Comparator comparator) {
        IUAElement[] children = element.getChildren();
        if (children.length > 1) {
            int i = 0;
            while (i < children.length) {
                element.removeChild((UAElement)children[i]);
                ++i;
            }
            Arrays.sort(children, comparator);
            i = 0;
            while (i < children.length) {
                element.appendChild((UAElement)children[i]);
                ++i;
            }
        }
        boolean hasChildren = false;
        int i = 0;
        while (i < children.length) {
            hasChildren |= this.sortAndPrune((UAElement)children[i], comparator);
            ++i;
        }
        if (element instanceof IIndexEntry && !hasChildren) {
            element.getParentElement().removeChild(element);
            return false;
        }
        if (element instanceof IndexSee && !this.isValidSeeReference((IndexSee)element)) {
            element.getParentElement().removeChild(element);
            return false;
        }
        return true;
    }

    boolean isValidSeeReference(IndexSee see) {
        UAElement ancestor = see.getParentElement();
        while (!(ancestor instanceof Index)) {
            if (ancestor == null) {
                return true;
            }
            ancestor = ancestor.getParentElement();
        }
        return ((Index)ancestor).getSeeTarget(see) != null;
    }

    private class IndexComparator
    implements Comparator {
        Collator collator = Collator.getInstance();

        private IndexComparator() {
        }

        public int compare(Object o1, Object o2) {
            int c2;
            int c1 = this.getCategory((UAElement)o1);
            if (c1 == (c2 = this.getCategory((UAElement)o2))) {
                if (o1 instanceof IndexSee) {
                    return ((IndexSee)o1).compareTo(o2);
                }
                String s1 = this.getLabel((UAElement)o1);
                String s2 = this.getLabel((UAElement)o2);
                return this.collator.compare(s1, s2);
            }
            return c1 - c2;
        }

        private int getCategory(UAElement element) {
            if (element instanceof Topic) {
                return 0;
            }
            if (element instanceof IndexEntry) {
                String keyword = ((IndexEntry)element).getKeyword();
                if (keyword != null && keyword.length() > 0) {
                    char c = keyword.charAt(0);
                    if (Character.isDigit(c)) {
                        return 2;
                    }
                    if (Character.isLetter(c)) {
                        return 3;
                    }
                    return 1;
                }
                return 4;
            }
            if (element instanceof IndexSee) {
                return 5;
            }
            return 6;
        }

        private String getLabel(UAElement element) {
            if (element instanceof Topic) {
                Topic topic = (Topic)element;
                if (topic.getLabel() == null) {
                    ITopic topic2 = HelpPlugin.getTocManager().getTopic(topic.getHref(), IndexAssembler.this.locale);
                    if (topic2 != null) {
                        topic.setLabel(topic2.getLabel());
                    } else {
                        String msg = "Unable to look up label for help keyword index topic \"" + topic.getHref() + "\" with missing \"" + "label" + "\" attribute (topic does not exist in table of contents; using href as label)";
                        HelpPlugin.logError(msg);
                        topic.setLabel(topic.getHref());
                    }
                }
                return topic.getLabel();
            }
            if (element instanceof IndexEntry) {
                return ((IndexEntry)element).getKeyword();
            }
            return null;
        }
    }

    private class NormalizeHandler
    extends ProcessorHandler {
        private NormalizeHandler() {
        }

        public short handle(UAElement element, String id) {
            if (element instanceof Topic) {
                String title;
                int index;
                Topic topic = (Topic)element;
                String href = topic.getHref();
                if (href != null && (index = id.indexOf(47, 1)) != -1) {
                    String pluginId = id.substring(1, index);
                    topic.setHref(HrefUtil.normalizeHref(pluginId, href));
                }
                if ((title = element.getAttribute("title")) != null) {
                    topic.setLabel(title);
                }
            }
            return 0;
        }
    }
}

