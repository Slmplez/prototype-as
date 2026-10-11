/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import java.util.ResourceBundle;
import org.eclipse.ui.internal.keys.AbstractKeyFormatter;
import org.eclipse.ui.internal.keys.AbstractModifierKeyComparator;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.ModifierKey;

public final class KdeKeyFormatter
extends AbstractKeyFormatter {
    private static final Comparator MODIFIER_KEY_COMPARATOR = new KdeModifierKeyComparator();
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.KdeKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    protected String getKeyDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "+", false, false);
    }

    protected String getKeyStrokeDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ", false, false);
    }

    protected Comparator getModifierKeyComparator() {
        return MODIFIER_KEY_COMPARATOR;
    }

    private static final class KdeModifierKeyComparator
    extends AbstractModifierKeyComparator {
        private KdeModifierKeyComparator() {
        }

        protected int rank(ModifierKey modifierKey) {
            if (ModifierKey.ALT.equals(modifierKey)) {
                return 0;
            }
            if (ModifierKey.CTRL.equals(modifierKey)) {
                return 1;
            }
            if (ModifierKey.SHIFT.equals(modifierKey)) {
                return 2;
            }
            return Integer.MAX_VALUE;
        }
    }
}

