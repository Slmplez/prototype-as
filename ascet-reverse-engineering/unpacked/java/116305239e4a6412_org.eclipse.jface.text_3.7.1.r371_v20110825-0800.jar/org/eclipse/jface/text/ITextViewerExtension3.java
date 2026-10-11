/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRegion;

public interface ITextViewerExtension3 {
    public IRegion getModelCoverage();

    public int modelLine2WidgetLine(int var1);

    public int modelOffset2WidgetOffset(int var1);

    public IRegion modelRange2WidgetRange(IRegion var1);

    public int widgetOffset2ModelOffset(int var1);

    public IRegion widgetRange2ModelRange(IRegion var1);

    public int widgetlLine2ModelLine(int var1);

    public int widgetLineOfWidgetOffset(int var1);
}

