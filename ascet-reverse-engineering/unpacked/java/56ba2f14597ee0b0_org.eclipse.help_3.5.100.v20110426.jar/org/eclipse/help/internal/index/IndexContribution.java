/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import org.eclipse.help.IIndex;
import org.eclipse.help.IIndexContribution;

public class IndexContribution
implements IIndexContribution {
    private String id;
    private IIndex index;
    private String locale;

    public String getId() {
        return this.id;
    }

    public IIndex getIndex() {
        return this.index;
    }

    public String getLocale() {
        return this.locale;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setIndex(IIndex index) {
        this.index = index;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }
}

