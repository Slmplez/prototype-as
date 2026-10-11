/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import java.util.ResourceBundle;
import org.eclipse.ui.internal.keys.AbstractKeyFormatter;
import org.eclipse.ui.internal.keys.AlphabeticModifierKeyComparator;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.Key;
import org.eclipse.ui.keys.ModifierKey;

public class EmacsKeyFormatter
extends AbstractKeyFormatter {
    private static final Comparator EMACS_MODIFIER_KEY_COMPARATOR = new AlphabeticModifierKeyComparator();
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.EmacsKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public String format(Key key) {
        String formattedName;
        if (key instanceof ModifierKey && (formattedName = Util.translateString(RESOURCE_BUNDLE, key.toString(), null, false, false)) != null) {
            return formattedName;
        }
        return super.format(key).toLowerCase();
    }

    protected String getKeyDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "+", false, false);
    }

    protected String getKeyStrokeDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ", false, false);
    }

    protected Comparator getModifierKeyComparator() {
        return EMACS_MODIFIER_KEY_COMPARATOR;
    }
}

