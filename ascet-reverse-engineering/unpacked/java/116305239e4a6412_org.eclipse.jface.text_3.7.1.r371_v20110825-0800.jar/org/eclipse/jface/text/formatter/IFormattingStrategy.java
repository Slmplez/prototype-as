/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.formatter;

public interface IFormattingStrategy {
    public void formatterStarts(String var1);

    public String format(String var1, boolean var2, String var3, int[] var4);

    public void formatterStops();
}

