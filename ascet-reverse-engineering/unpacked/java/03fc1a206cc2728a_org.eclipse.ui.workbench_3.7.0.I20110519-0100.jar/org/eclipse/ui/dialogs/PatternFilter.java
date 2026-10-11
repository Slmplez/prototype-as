/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.BreakIterator
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 */
package org.eclipse.ui.dialogs;

import com.ibm.icu.text.BreakIterator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.ui.internal.misc.StringMatcher;

public class PatternFilter
extends ViewerFilter {
    private Map cache = new HashMap();
    private Map foundAnyCache = new HashMap();
    private boolean useCache = false;
    private boolean includeLeadingWildcard = false;
    private StringMatcher matcher;
    private boolean useEarlyReturnIfMatcherIsNull = true;
    private static Object[] EMPTY = new Object[0];

    public final Object[] filter(Viewer viewer, Object parent, Object[] elements) {
        if (this.matcher == null && this.useEarlyReturnIfMatcherIsNull) {
            return elements;
        }
        if (!this.useCache) {
            return super.filter(viewer, parent, elements);
        }
        Object[] filtered = (Object[])this.cache.get(parent);
        if (filtered == null) {
            Boolean foundAny = (Boolean)this.foundAnyCache.get(parent);
            filtered = foundAny != null && foundAny == false ? EMPTY : super.filter(viewer, parent, elements);
            this.cache.put(parent, filtered);
        }
        return filtered;
    }

    private boolean isAnyVisible(Viewer viewer, Object parent, Object[] elements) {
        if (this.matcher == null) {
            return true;
        }
        if (!this.useCache) {
            return this.computeAnyVisible(viewer, elements);
        }
        Object[] filtered = (Object[])this.cache.get(parent);
        if (filtered != null) {
            return filtered.length > 0;
        }
        Boolean foundAny = (Boolean)this.foundAnyCache.get(parent);
        if (foundAny == null) {
            foundAny = this.computeAnyVisible(viewer, elements) ? Boolean.TRUE : Boolean.FALSE;
            this.foundAnyCache.put(parent, foundAny);
        }
        return foundAny;
    }

    private boolean computeAnyVisible(Viewer viewer, Object[] elements) {
        boolean elementFound = false;
        int i = 0;
        while (i < elements.length && !elementFound) {
            Object element = elements[i];
            elementFound = this.isElementVisible(viewer, element);
            ++i;
        }
        return elementFound;
    }

    public final boolean select(Viewer viewer, Object parentElement, Object element) {
        return this.isElementVisible(viewer, element);
    }

    public final void setIncludeLeadingWildcard(boolean includeLeadingWildcard) {
        this.includeLeadingWildcard = includeLeadingWildcard;
    }

    public void setPattern(String patternString) {
        if ("org.eclipse.ui.keys.optimization.true".equals(patternString)) {
            this.useEarlyReturnIfMatcherIsNull = true;
            return;
        }
        if ("org.eclipse.ui.keys.optimization.false".equals(patternString)) {
            this.useEarlyReturnIfMatcherIsNull = false;
            return;
        }
        this.clearCaches();
        if (patternString == null || patternString.equals("")) {
            this.matcher = null;
        } else {
            String pattern = String.valueOf(patternString) + "*";
            if (this.includeLeadingWildcard) {
                pattern = "*" + pattern;
            }
            this.matcher = new StringMatcher(pattern, true, false);
        }
    }

    void clearCaches() {
        this.cache.clear();
        this.foundAnyCache.clear();
    }

    private boolean match(String string) {
        if (this.matcher == null) {
            return true;
        }
        return this.matcher.match(string);
    }

    public boolean isElementSelectable(Object element) {
        return element != null;
    }

    public boolean isElementVisible(Viewer viewer, Object element) {
        return this.isParentMatch(viewer, element) || this.isLeafMatch(viewer, element);
    }

    protected boolean isParentMatch(Viewer viewer, Object element) {
        Object[] children = ((ITreeContentProvider)((AbstractTreeViewer)viewer).getContentProvider()).getChildren(element);
        if (children != null && children.length > 0) {
            return this.isAnyVisible(viewer, element, children);
        }
        return false;
    }

    protected boolean isLeafMatch(Viewer viewer, Object element) {
        String labelText = ((ILabelProvider)((StructuredViewer)viewer).getLabelProvider()).getText(element);
        if (labelText == null) {
            return false;
        }
        return this.wordMatches(labelText);
    }

    private String[] getWords(String text) {
        ArrayList<String> words = new ArrayList<String>();
        BreakIterator iter = BreakIterator.getWordInstance();
        iter.setText(text);
        int i = iter.first();
        while (i != -1 && i < text.length()) {
            int j = iter.following(i);
            if (j == -1) {
                j = text.length();
            }
            if (Character.isLetterOrDigit(text.charAt(i))) {
                String word = text.substring(i, j);
                words.add(word);
            }
            i = j;
        }
        return words.toArray(new String[words.size()]);
    }

    protected boolean wordMatches(String text) {
        if (text == null) {
            return false;
        }
        if (this.match(text)) {
            return true;
        }
        String[] words = this.getWords(text);
        int i = 0;
        while (i < words.length) {
            String word = words[i];
            if (this.match(word)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void setUseCache(boolean useCache) {
        this.useCache = useCache;
    }
}

