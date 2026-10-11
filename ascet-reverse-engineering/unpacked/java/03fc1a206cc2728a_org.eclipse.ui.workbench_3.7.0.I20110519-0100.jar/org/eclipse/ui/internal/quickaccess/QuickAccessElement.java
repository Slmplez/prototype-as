/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.quickaccess.CamelUtil;
import org.eclipse.ui.internal.quickaccess.QuickAccessEntry;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public abstract class QuickAccessElement {
    static final String separator = " - ";
    private static final int[][] EMPTY_INDICES = new int[0][0];
    private QuickAccessProvider provider;

    public QuickAccessElement(QuickAccessProvider provider) {
        this.provider = provider;
    }

    public abstract String getLabel();

    public abstract ImageDescriptor getImageDescriptor();

    public abstract String getId();

    public abstract void execute();

    public String getSortLabel() {
        return this.getLabel();
    }

    public QuickAccessProvider getProvider() {
        return this.provider;
    }

    public QuickAccessEntry match(String filter, QuickAccessProvider providerForMatching) {
        String sortLabel = this.getLabel();
        int index = sortLabel.toLowerCase().indexOf(filter);
        if (index != -1) {
            return new QuickAccessEntry(this, providerForMatching, new int[][]{{index, index + filter.length() - 1}}, EMPTY_INDICES);
        }
        String combinedLabel = String.valueOf(providerForMatching.getName()) + " " + this.getLabel();
        index = combinedLabel.toLowerCase().indexOf(filter);
        if (index != -1) {
            int lengthOfElementMatch = index + filter.length() - providerForMatching.getName().length() - 1;
            if (lengthOfElementMatch > 0) {
                int[][] nArrayArray = new int[1][];
                int[] nArray = new int[2];
                nArray[1] = lengthOfElementMatch - 1;
                nArrayArray[0] = nArray;
                return new QuickAccessEntry(this, providerForMatching, nArrayArray, new int[][]{{index, index + filter.length() - 1}});
            }
            return new QuickAccessEntry(this, providerForMatching, EMPTY_INDICES, new int[][]{{index, index + filter.length() - 1}});
        }
        String camelCase = CamelUtil.getCamelCase(sortLabel);
        index = camelCase.indexOf(filter);
        if (index != -1) {
            int[][] indices = CamelUtil.getCamelCaseIndices(sortLabel, index, filter.length());
            return new QuickAccessEntry(this, providerForMatching, indices, EMPTY_INDICES);
        }
        String combinedCamelCase = CamelUtil.getCamelCase(combinedLabel);
        index = combinedCamelCase.indexOf(filter);
        if (index != -1) {
            String providerCamelCase = CamelUtil.getCamelCase(providerForMatching.getName());
            int lengthOfElementMatch = index + filter.length() - providerCamelCase.length();
            if (lengthOfElementMatch > 0) {
                return new QuickAccessEntry(this, providerForMatching, CamelUtil.getCamelCaseIndices(sortLabel, 0, lengthOfElementMatch), CamelUtil.getCamelCaseIndices(providerForMatching.getName(), index, filter.length() - lengthOfElementMatch));
            }
            return new QuickAccessEntry(this, providerForMatching, EMPTY_INDICES, CamelUtil.getCamelCaseIndices(providerForMatching.getName(), index, filter.length()));
        }
        return null;
    }
}

