/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import org.eclipse.ui.internal.keys.AbstractKeyFormatter;
import org.eclipse.ui.internal.keys.AlphabeticModifierKeyComparator;
import org.eclipse.ui.keys.Key;

public class FormalKeyFormatter
extends AbstractKeyFormatter {
    private static final Comparator FORMAL_MODIFIER_KEY_COMPARATOR = new AlphabeticModifierKeyComparator();

    public String format(Key key) {
        return key.toString();
    }

    protected String getKeyDelimiter() {
        return "+";
    }

    protected String getKeyStrokeDelimiter() {
        return " ";
    }

    protected Comparator getModifierKeyComparator() {
        return FORMAL_MODIFIER_KEY_COMPARATOR;
    }
}

