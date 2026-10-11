/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import java.text.Collator;
import org.eclipse.jface.viewers.ViewerComparator;

public class ViewerSorter
extends ViewerComparator {
    protected Collator collator;

    public ViewerSorter() {
        this(Collator.getInstance());
    }

    public ViewerSorter(Collator collator) {
        super(collator);
        this.collator = collator;
    }

    public Collator getCollator() {
        return this.collator;
    }
}

