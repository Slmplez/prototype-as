/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.util.ProductPreferences;

public class TocSorter {
    static /* synthetic */ Class class$0;

    public ITocContribution[] orderTocContributions(ITocContribution[] unorderedTocs) {
        ArrayList itemsToOrder = new ArrayList();
        Map categorized = this.categorizeTocs(Arrays.asList(unorderedTocs), itemsToOrder);
        Map nameIdMap = this.createNameIdMap(categorized);
        List orderedItems = ProductPreferences.getTocOrder(itemsToOrder, nameIdMap);
        orderedItems = TocSorter.substituteValues(orderedItems, categorized);
        orderedItems = this.expandCategories(orderedItems);
        return orderedItems.toArray(new ITocContribution[orderedItems.size()]);
    }

    private Map createNameIdMap(Map categorized) {
        HashMap<String, String> map = new HashMap<String, String>();
        Iterator iter = categorized.keySet().iterator();
        while (iter.hasNext()) {
            ITocContribution toc;
            String key = (String)iter.next();
            Object value = categorized.get(key);
            if (value instanceof TocCategory) {
                TocCategory category = (TocCategory)value;
                toc = (ITocContribution)category.get(0);
            } else {
                toc = (ITocContribution)value;
            }
            map.put(key, toc.getToc().getLabel());
        }
        return map;
    }

    private Map categorizeTocs(List tocs, List tocOrder) {
        HashMap<String, Object> categorized = new HashMap<String, Object>();
        Iterator iter = tocs.iterator();
        while (iter.hasNext()) {
            String id;
            String categoryId;
            ITocContribution toc = (ITocContribution)iter.next();
            try {
                categoryId = toc.getCategoryId();
            }
            catch (Throwable t) {
                StringBuffer stringBuffer = new StringBuffer("Error retrieving categoryId from ");
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.help.ITocContribution");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                String msg = stringBuffer.append(clazz.getName()).append(": ").append(toc.getClass().getName()).toString();
                HelpPlugin.logError(msg, t);
                continue;
            }
            if (categoryId != null && categoryId.length() > 0) {
                TocCategory category = (TocCategory)categorized.get(categoryId);
                if (category == null) {
                    category = new TocCategory(categoryId);
                    categorized.put(categoryId, category);
                    tocOrder.add(categoryId);
                    category.add(toc);
                    continue;
                }
                String tocLabel = toc.getToc().getLabel();
                boolean done = false;
                int next = 0;
                while (next < category.size() && !done) {
                    String nextName = ((ITocContribution)category.get(next)).getToc().getLabel();
                    if (tocLabel.compareToIgnoreCase(nextName) < 0) {
                        done = true;
                        category.add(next, toc);
                    }
                    ++next;
                }
                if (done) continue;
                category.add(toc);
                continue;
            }
            try {
                id = toc.getId();
            }
            catch (Throwable t) {
                StringBuffer stringBuffer = new StringBuffer("Error retrieving id from ");
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.help.ITocContribution");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                String msg = stringBuffer.append(clazz.getName()).append(": ").append(toc.getClass().getName()).toString();
                HelpPlugin.logError(msg, t);
                continue;
            }
            categorized.put(id, toc);
            tocOrder.add(id);
        }
        return categorized;
    }

    private List expandCategories(List entries) {
        ArrayList expanded = new ArrayList();
        Iterator iter = entries.iterator();
        while (iter.hasNext()) {
            Object entry = iter.next();
            if (entry instanceof ITocContribution) {
                expanded.add(entry);
                continue;
            }
            if (!(entry instanceof TocCategory)) continue;
            expanded.addAll((TocCategory)entry);
        }
        return expanded;
    }

    private static List substituteValues(List items, Map map) {
        if (items != null && map != null) {
            ArrayList result = new ArrayList(items.size());
            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                Object key = iter.next();
                Object value = map.get(key);
                if (value == null) continue;
                result.add(value);
            }
            return result;
        }
        return null;
    }

    private static class TocCategory
    extends ArrayList {
        private static final long serialVersionUID = 1L;

        public TocCategory(String id) {
        }
    }
}

