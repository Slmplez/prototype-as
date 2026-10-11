/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExtensionNode;

public class PreferencePatternFilter
extends PatternFilter {
    private Map keywordCache = new HashMap();

    private String[] getKeywords(Object element) {
        ArrayList keywordList = new ArrayList();
        if (element instanceof WorkbenchPreferenceExtensionNode) {
            WorkbenchPreferenceExtensionNode workbenchNode = (WorkbenchPreferenceExtensionNode)element;
            Collection keywordCollection = (Collection)this.keywordCache.get(element);
            if (keywordCollection == null) {
                keywordCollection = workbenchNode.getKeywordLabels();
                this.keywordCache.put(element, keywordCollection);
            }
            if (!keywordCollection.isEmpty()) {
                Iterator keywords = keywordCollection.iterator();
                while (keywords.hasNext()) {
                    keywordList.add(keywords.next());
                }
            }
        }
        return keywordList.toArray(new String[keywordList.size()]);
    }

    public boolean isElementSelectable(Object element) {
        return element instanceof WorkbenchPreferenceExtensionNode;
    }

    public boolean isElementVisible(Viewer viewer, Object element) {
        IPreferenceNode node;
        if (WorkbenchActivityHelper.restrictUseOf(element)) {
            return false;
        }
        if (this.isLeafMatch(viewer, element)) {
            return true;
        }
        ITreeContentProvider contentProvider = (ITreeContentProvider)((TreeViewer)viewer).getContentProvider();
        Object[] children = contentProvider.getChildren((Object)(node = (IPreferenceNode)element));
        return this.filter(viewer, element, children).length > 0;
    }

    protected boolean isLeafMatch(Viewer viewer, Object element) {
        IPreferenceNode node = (IPreferenceNode)element;
        String text = node.getLabelText();
        if (this.wordMatches(text)) {
            return true;
        }
        String[] keywords = this.getKeywords(node);
        int i = 0;
        while (i < keywords.length) {
            if (this.wordMatches(keywords[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

