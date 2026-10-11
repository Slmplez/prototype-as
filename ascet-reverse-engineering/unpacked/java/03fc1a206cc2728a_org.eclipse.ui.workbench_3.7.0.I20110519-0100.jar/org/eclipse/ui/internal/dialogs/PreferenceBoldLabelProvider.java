/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.PreferenceLabelProvider
 *  org.eclipse.jface.viewers.IFontProvider
 *  org.eclipse.swt.graphics.Font
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.preference.PreferenceLabelProvider;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.swt.graphics.Font;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;

public class PreferenceBoldLabelProvider
extends PreferenceLabelProvider
implements IFontProvider {
    private FilteredTree filterTree;
    private PatternFilter filterForBoldElements;

    PreferenceBoldLabelProvider(FilteredTree filterTree) {
        this.filterTree = filterTree;
        this.filterForBoldElements = filterTree.getPatternFilter();
    }

    public Font getFont(Object element) {
        return FilteredTree.getBoldFont(element, this.filterTree, this.filterForBoldElements);
    }
}

