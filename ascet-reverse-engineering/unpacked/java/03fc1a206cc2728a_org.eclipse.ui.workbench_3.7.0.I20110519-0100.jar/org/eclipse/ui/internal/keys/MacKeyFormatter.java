/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import java.util.HashMap;
import java.util.ResourceBundle;
import org.eclipse.ui.internal.keys.AbstractKeyFormatter;
import org.eclipse.ui.internal.keys.AbstractModifierKeyComparator;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.CharacterKey;
import org.eclipse.ui.keys.Key;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.SpecialKey;

public final class MacKeyFormatter
extends AbstractKeyFormatter {
    private static final HashMap KEY_LOOKUP = new HashMap();
    private static final Comparator MODIFIER_KEY_COMPARATOR = new MacModifierKeyComparator();
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.MacKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        KEY_LOOKUP.put(CharacterKey.BS.toString(), "\u232b");
        KEY_LOOKUP.put(CharacterKey.CR.toString(), "\u21a9");
        KEY_LOOKUP.put(CharacterKey.DEL.toString(), "\u2326");
        KEY_LOOKUP.put(ModifierKey.ALT.toString(), "\u2325");
        KEY_LOOKUP.put(ModifierKey.COMMAND.toString(), "\u2318");
        KEY_LOOKUP.put(ModifierKey.CTRL.toString(), "\u2303");
        KEY_LOOKUP.put(ModifierKey.SHIFT.toString(), "\u21e7");
        KEY_LOOKUP.put(SpecialKey.ARROW_DOWN.toString(), "\u2193");
        KEY_LOOKUP.put(SpecialKey.ARROW_LEFT.toString(), "\u2190");
        KEY_LOOKUP.put(SpecialKey.ARROW_RIGHT.toString(), "\u2192");
        KEY_LOOKUP.put(SpecialKey.ARROW_UP.toString(), "\u2191");
        KEY_LOOKUP.put(SpecialKey.END.toString(), "\u2198");
        KEY_LOOKUP.put(SpecialKey.NUMPAD_ENTER.toString(), "\u2324");
        KEY_LOOKUP.put(SpecialKey.HOME.toString(), "\u2196");
        KEY_LOOKUP.put(SpecialKey.PAGE_DOWN.toString(), "\u21df");
        KEY_LOOKUP.put(SpecialKey.PAGE_UP.toString(), "\u21de");
    }

    public String format(Key key) {
        String string = (String)KEY_LOOKUP.get(key.toString());
        return string != null ? string : super.format(key);
    }

    protected String getKeyDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "", false, false);
    }

    protected String getKeyStrokeDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ", false, false);
    }

    protected Comparator getModifierKeyComparator() {
        return MODIFIER_KEY_COMPARATOR;
    }

    private static final class MacModifierKeyComparator
    extends AbstractModifierKeyComparator {
        private MacModifierKeyComparator() {
        }

        protected int rank(ModifierKey modifierKey) {
            if (ModifierKey.SHIFT.equals(modifierKey)) {
                return 0;
            }
            if (ModifierKey.CTRL.equals(modifierKey)) {
                return 1;
            }
            if (ModifierKey.ALT.equals(modifierKey)) {
                return 2;
            }
            if (ModifierKey.COMMAND.equals(modifierKey)) {
                return 3;
            }
            return Integer.MAX_VALUE;
        }
    }
}

