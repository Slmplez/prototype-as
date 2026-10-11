/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.formatter;

import org.eclipse.jface.text.formatter.IFormattingContext;

public interface IFormattingStrategyExtension {
    public void format();

    public void formatterStarts(IFormattingContext var1);

    public void formatterStops();
}

