/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 */
package org.eclipse.help.internal.toc;

import com.ibm.icu.text.Collator;
import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.help.ITopic;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.toc.Toc;

public class TopicSorter {
    private Comparator comparator;

    public void sortChildren(Toc toc) {
        if (this.comparator == null) {
            this.comparator = new TopicComparator();
        }
        if (toc.isSorted()) {
            this.sort(toc, toc.getTopics());
        }
        ITopic[] childTopics = toc.getTopics();
        int i = 0;
        while (i < childTopics.length) {
            this.sortChildren((Topic)childTopics[i]);
            ++i;
        }
    }

    private void sortChildren(Topic topic) {
        if (topic.isSorted()) {
            this.sort(topic, topic.getSubtopics());
        }
        ITopic[] childTopics = topic.getSubtopics();
        int i = 0;
        while (i < childTopics.length) {
            this.sortChildren((Topic)childTopics[i]);
            ++i;
        }
    }

    private void sort(UAElement element, ITopic[] children) {
        if (children.length > 1) {
            int i = 0;
            while (i < children.length) {
                element.removeChild((UAElement)((Object)children[i]));
                ++i;
            }
            Arrays.sort(children, this.comparator);
            i = 0;
            while (i < children.length) {
                element.appendChild((UAElement)((Object)children[i]));
                ++i;
            }
        }
    }

    private class TopicComparator
    implements Comparator {
        Collator collator = Collator.getInstance();

        private TopicComparator() {
        }

        public int compare(Object o1, Object o2) {
            String label1 = ((ITopic)o1).getLabel();
            String label2 = ((ITopic)o2).getLabel();
            return this.collator.compare(label1, label2);
        }
    }
}

