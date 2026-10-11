/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.model;

import org.eclipse.ui.model.ContributionComparator;

public interface IContributionService {
    public static final String TYPE_PROPERTY = "property";
    public static final String TYPE_PREFERENCE = "preference";

    public ContributionComparator getComparatorFor(String var1);
}

