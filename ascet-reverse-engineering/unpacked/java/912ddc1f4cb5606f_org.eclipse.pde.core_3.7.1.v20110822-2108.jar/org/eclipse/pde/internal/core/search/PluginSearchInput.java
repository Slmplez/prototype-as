/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.search;

import org.eclipse.pde.internal.core.search.PluginSearchScope;

public class PluginSearchInput {
    public static final int ELEMENT_PLUGIN = 1;
    public static final int ELEMENT_FRAGMENT = 2;
    public static final int ELEMENT_EXTENSION_POINT = 3;
    public static final int LIMIT_DECLARATIONS = 1;
    public static final int LIMIT_REFERENCES = 2;
    public static final int LIMIT_ALL = 3;
    private String searchString = null;
    private boolean caseSensitive = true;
    private int searchElement = 0;
    private int searchLimit = 0;
    private PluginSearchScope searchScope;

    public String getSearchString() {
        return this.searchString;
    }

    public boolean isCaseSensitive() {
        return this.caseSensitive;
    }

    public void setCaseSensitive(boolean value) {
        this.caseSensitive = value;
    }

    public void setSearchString(String name) {
        this.searchString = name;
    }

    public int getSearchElement() {
        return this.searchElement;
    }

    public void setSearchElement(int element) {
        this.searchElement = element;
    }

    public int getSearchLimit() {
        return this.searchLimit;
    }

    public void setSearchLimit(int limit) {
        this.searchLimit = limit;
    }

    public PluginSearchScope getSearchScope() {
        return this.searchScope;
    }

    public void setSearchScope(PluginSearchScope scope) {
        this.searchScope = scope;
    }
}

