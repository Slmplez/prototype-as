/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import java.util.HashMap;
import java.util.ResourceBundle;
import org.eclipse.ui.internal.keys.AbstractKeyFormatter;
import org.eclipse.ui.internal.keys.NativeModifierKeyComparator;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.CharacterKey;
import org.eclipse.ui.keys.Key;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.SpecialKey;

public class NativeKeyFormatter
extends AbstractKeyFormatter {
    private static final String CARBON_KEY_DELIMITER_KEY = "CARBON_KEY_DELIMITER";
    private static final HashMap CARBON_KEY_LOOK_UP = new HashMap();
    private static final Comparator MODIFIER_KEY_COMPARATOR = new NativeModifierKeyComparator();
    private static final ResourceBundle RESOURCE_BUNDLE;
    private static final String WIN32_KEY_STROKE_DELIMITER_KEY = "WIN32_KEY_STROKE_DELIMITER";
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.NativeKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        CARBON_KEY_LOOK_UP.put(CharacterKey.BS.toString(), "\u232b");
        CARBON_KEY_LOOK_UP.put(CharacterKey.CR.toString(), "\u21a9");
        CARBON_KEY_LOOK_UP.put(CharacterKey.DEL.toString(), "\u2326");
        CARBON_KEY_LOOK_UP.put(ModifierKey.ALT.toString(), "\u2325");
        CARBON_KEY_LOOK_UP.put(ModifierKey.COMMAND.toString(), "\u2318");
        CARBON_KEY_LOOK_UP.put(ModifierKey.CTRL.toString(), "\u2303");
        CARBON_KEY_LOOK_UP.put(ModifierKey.SHIFT.toString(), "\u21e7");
        CARBON_KEY_LOOK_UP.put(SpecialKey.ARROW_DOWN.toString(), "\u2193");
        CARBON_KEY_LOOK_UP.put(SpecialKey.ARROW_LEFT.toString(), "\u2190");
        CARBON_KEY_LOOK_UP.put(SpecialKey.ARROW_RIGHT.toString(), "\u2192");
        CARBON_KEY_LOOK_UP.put(SpecialKey.ARROW_UP.toString(), "\u2191");
        CARBON_KEY_LOOK_UP.put(SpecialKey.END.toString(), "\u2198");
        CARBON_KEY_LOOK_UP.put(SpecialKey.NUMPAD_ENTER.toString(), "\u2324");
        CARBON_KEY_LOOK_UP.put(SpecialKey.HOME.toString(), "\u2196");
        CARBON_KEY_LOOK_UP.put(SpecialKey.PAGE_DOWN.toString(), "\u21df");
        CARBON_KEY_LOOK_UP.put(SpecialKey.PAGE_UP.toString(), "\u21de");
    }

    public String format(Key key) {
        String formattedName;
        String name = key.toString();
        if (org.eclipse.jface.util.Util.isMac() && (formattedName = (String)CARBON_KEY_LOOK_UP.get(name)) != null) {
            return formattedName;
        }
        return super.format(key);
    }

    protected String getKeyDelimiter() {
        if (org.eclipse.jface.util.Util.isMac()) {
            return Util.translateString(RESOURCE_BUNDLE, CARBON_KEY_DELIMITER_KEY, "", false, false);
        }
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "+", false, false);
    }

    protected String getKeyStrokeDelimiter() {
        if (org.eclipse.jface.util.Util.isWindows()) {
            return Util.translateString(RESOURCE_BUNDLE, WIN32_KEY_STROKE_DELIMITER_KEY, " ", false, false);
        }
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ", false, false);
    }

    protected Comparator getModifierKeyComparator() {
        return MODIFIER_KEY_COMPARATOR;
    }
}

