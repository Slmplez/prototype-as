/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.formatter;

import java.util.LinkedList;
import java.util.Map;
import org.eclipse.jface.text.formatter.IFormattingContext;
import org.eclipse.jface.text.formatter.IFormattingStrategy;
import org.eclipse.jface.text.formatter.IFormattingStrategyExtension;

public abstract class ContextBasedFormattingStrategy
implements IFormattingStrategy,
IFormattingStrategyExtension {
    private Map fCurrentPreferences = null;
    private final LinkedList fPreferences = new LinkedList();

    public void format() {
        this.fCurrentPreferences = (Map)this.fPreferences.removeFirst();
    }

    public String format(String content, boolean start, String indentation, int[] positions) {
        return null;
    }

    public void formatterStarts(IFormattingContext context) {
        this.fPreferences.addLast(context.getProperty("formatting.context.preferences"));
    }

    public void formatterStarts(String indentation) {
    }

    public void formatterStops() {
        this.fPreferences.clear();
        this.fCurrentPreferences = null;
    }

    public final Map getPreferences() {
        return this.fCurrentPreferences;
    }
}

