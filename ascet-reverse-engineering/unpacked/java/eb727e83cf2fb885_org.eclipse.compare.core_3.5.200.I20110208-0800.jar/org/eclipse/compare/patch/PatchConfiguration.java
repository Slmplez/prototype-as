/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.compare.patch;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.eclipse.compare.patch.IHunkFilter;

public class PatchConfiguration {
    private int fStripPrefixSegments;
    private int fFuzz;
    private boolean fIgnoreWhitespace = false;
    private boolean fReverse = false;
    private HashMap properties = new HashMap();
    private List hunkFilters = new ArrayList();

    public boolean isReversed() {
        return this.fReverse;
    }

    public void setReversed(boolean reversed) {
        this.fReverse = reversed;
    }

    public int getPrefixSegmentStripCount() {
        return this.fStripPrefixSegments;
    }

    public void setPrefixSegmentStripCount(int stripCount) {
        this.fStripPrefixSegments = stripCount;
    }

    public int getFuzz() {
        return this.fFuzz;
    }

    public void setFuzz(int fuzz) {
        this.fFuzz = fuzz;
    }

    public boolean isIgnoreWhitespace() {
        return this.fIgnoreWhitespace;
    }

    public void setIgnoreWhitespace(boolean ignoreWhitespace) {
        this.fIgnoreWhitespace = ignoreWhitespace;
    }

    public Object getProperty(String key) {
        return this.properties.get(key);
    }

    public void setProperty(String key, Object value) {
        this.properties.put(key, value);
    }

    public void addHunkFilter(IHunkFilter filter) {
        this.hunkFilters.add(filter);
    }

    public void removeHunkFilter(IHunkFilter filter) {
        this.hunkFilters.remove(filter);
    }

    public IHunkFilter[] getHunkFilters() {
        return this.hunkFilters.toArray(new IHunkFilter[this.hunkFilters.size()]);
    }
}

