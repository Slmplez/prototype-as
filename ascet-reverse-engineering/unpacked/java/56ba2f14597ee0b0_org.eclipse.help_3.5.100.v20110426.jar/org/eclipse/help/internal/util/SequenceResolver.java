/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

public class SequenceResolver {
    private List primaryList;
    private List[] secondaryLists;
    private ListIterator primaryIter;
    private ListIterator[] secondaryIters;
    private Set processedItems;

    public List getSequence(List primary, List[] secondary) {
        Object item;
        this.primaryList = primary;
        this.secondaryLists = secondary;
        this.prepareDataStructures();
        ArrayList<Object> order = new ArrayList<Object>();
        while ((item = this.getNextItem()) != null) {
            this.processedItems.add(item);
            this.advanceIterator(this.primaryIter);
            int i = 0;
            while (i < this.secondaryIters.length) {
                this.advanceIterator(this.secondaryIters[i]);
                ++i;
            }
            order.add(item);
        }
        return order;
    }

    private void prepareDataStructures() {
        this.primaryIter = this.primaryList.listIterator();
        this.secondaryIters = new ListIterator[this.secondaryLists.length];
        int i = 0;
        while (i < this.secondaryLists.length) {
            this.secondaryIters[i] = this.secondaryLists[i].listIterator();
            ++i;
        }
        this.processedItems = new HashSet();
    }

    private Object getNextItem() {
        Candidate[] candidates = this.getTopCandidates();
        switch (candidates.length) {
            case 0: {
                return null;
            }
            case 1: {
                return candidates[0].item;
            }
        }
        int i = 0;
        while (i < candidates.length) {
            if (candidates[i].isPrimary) {
                return candidates[i].item;
            }
            ++i;
        }
        return candidates[0].item;
    }

    private Candidate[] getTopCandidates() {
        Candidate[] candidates = this.getEligibleCandidates();
        this.rankCandidates(candidates);
        if (candidates.length > 0) {
            int topRank = candidates[0].rank;
            int i = 1;
            while (i < candidates.length) {
                if (candidates[i].rank < topRank) {
                    topRank = candidates[i].rank;
                }
                ++i;
            }
            ArrayList<Candidate> topCandidates = new ArrayList<Candidate>();
            int i2 = 0;
            while (i2 < candidates.length) {
                if (candidates[i2].rank == topRank) {
                    topCandidates.add(candidates[i2]);
                }
                ++i2;
            }
            return topCandidates.toArray(new Candidate[topCandidates.size()]);
        }
        return candidates;
    }

    private Candidate[] getEligibleCandidates() {
        Candidate[] allCandidates = this.getAllCandidates();
        Candidate primary = null;
        int i = 0;
        while (i < allCandidates.length) {
            if (allCandidates[i].isPrimary) {
                primary = allCandidates[i];
                break;
            }
            ++i;
        }
        if (primary != null) {
            ArrayList<Candidate> eligibleCandidates = new ArrayList<Candidate>(allCandidates.length);
            eligibleCandidates.add(primary);
            Set<Object> primarySet = Collections.singleton(primary.item);
            int i2 = 0;
            while (i2 < allCandidates.length) {
                Candidate c = allCandidates[i2];
                if (c != primary && this.countPrecedingItems(c.item, primary.src, primarySet) == 0) {
                    eligibleCandidates.add(c);
                }
                ++i2;
            }
            return eligibleCandidates.toArray(new Candidate[eligibleCandidates.size()]);
        }
        return allCandidates;
    }

    private Candidate[] getAllCandidates() {
        ArrayList<Candidate> candidates = new ArrayList<Candidate>();
        Object item = this.getNextItem(this.primaryIter);
        if (item != null) {
            Candidate c = new Candidate();
            c.item = item;
            c.isPrimary = true;
            c.src = this.primaryList;
            candidates.add(c);
        }
        int i = 0;
        while (i < this.secondaryIters.length) {
            item = this.getNextItem(this.secondaryIters[i]);
            if (item != null) {
                Candidate c = new Candidate();
                c.item = item;
                c.isPrimary = false;
                c.src = this.secondaryLists[i];
                if (!candidates.contains(c)) {
                    candidates.add(c);
                }
            }
            ++i;
        }
        return candidates.toArray(new Candidate[candidates.size()]);
    }

    private void rankCandidates(Candidate[] candidates) {
        HashSet<Object> candidateItems = new HashSet<Object>();
        int i = 0;
        while (i < candidates.length) {
            candidateItems.add(candidates[i].item);
            ++i;
        }
        i = 0;
        while (i < candidates.length) {
            Candidate c = candidates[i];
            int j = 0;
            while (j < candidates.length) {
                c.rank += this.countPrecedingItems(c.item, candidates[j].src, candidateItems);
                ++j;
            }
            ++i;
        }
    }

    private int countPrecedingItems(Object item, List list, Set set) {
        int count = 0;
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            Object next = iter.next();
            if (next.equals(item)) {
                return count;
            }
            if (!set.contains(next)) continue;
            ++count;
        }
        return 0;
    }

    private Object getNextItem(ListIterator iter) {
        if (iter.hasNext()) {
            Object next = iter.next();
            iter.previous();
            return next;
        }
        return null;
    }

    private void advanceIterator(ListIterator iter) {
        while (iter.hasNext()) {
            Object item = iter.next();
            if (this.processedItems.contains(item)) continue;
            iter.previous();
            break;
        }
    }

    private static class Candidate {
        public Object item;
        public boolean isPrimary;
        public int rank;
        public List src;

        private Candidate() {
        }

        public boolean equals(Object obj) {
            return this.item.equals(obj);
        }

        public int hashCode() {
            return this.item.hashCode();
        }
    }
}

