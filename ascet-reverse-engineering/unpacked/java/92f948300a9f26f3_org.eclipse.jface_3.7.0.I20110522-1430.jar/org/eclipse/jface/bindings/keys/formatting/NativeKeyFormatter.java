/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import java.util.HashMap;
import java.util.ResourceBundle;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.formatting.AbstractKeyFormatter;
import org.eclipse.jface.util.Util;

public final class NativeKeyFormatter
extends AbstractKeyFormatter {
    private static final String CARBON_KEY_DELIMITER_KEY = "CARBON_KEY_DELIMITER";
    private static final HashMap CARBON_KEY_LOOK_UP = new HashMap();
    private static final ResourceBundle RESOURCE_BUNDLE;
    private static final String WIN32_KEY_STROKE_DELIMITER_KEY = "WIN32_KEY_STROKE_DELIMITER";
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.keys.formatting.NativeKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        CARBON_KEY_LOOK_UP.put("BS", "\u232b");
        CARBON_KEY_LOOK_UP.put("BACKSPACE", "\u232b");
        CARBON_KEY_LOOK_UP.put("CR", "\u21a9");
        CARBON_KEY_LOOK_UP.put("DEL", "\u2326");
        CARBON_KEY_LOOK_UP.put("DELETE", "\u2326");
        CARBON_KEY_LOOK_UP.put("ALT", "\u2325");
        CARBON_KEY_LOOK_UP.put("COMMAND", "\u2318");
        CARBON_KEY_LOOK_UP.put("CTRL", "\u2303");
        CARBON_KEY_LOOK_UP.put("SHIFT", "\u21e7");
        CARBON_KEY_LOOK_UP.put("ARROW_DOWN", "\u2193");
        CARBON_KEY_LOOK_UP.put("ARROW_LEFT", "\u2190");
        CARBON_KEY_LOOK_UP.put("ARROW_RIGHT", "\u2192");
        CARBON_KEY_LOOK_UP.put("ARROW_UP", "\u2191");
        CARBON_KEY_LOOK_UP.put("END", "\u2198");
        CARBON_KEY_LOOK_UP.put("NUMPAD_ENTER", "\u2324");
        CARBON_KEY_LOOK_UP.put("HOME", "\u2196");
        CARBON_KEY_LOOK_UP.put("PAGE_DOWN", "\u21df");
        CARBON_KEY_LOOK_UP.put("PAGE_UP", "\u21de");
    }

    public final String format(int key) {
        String formattedName;
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        String name = lookup.formalNameLookup(key);
        if (Util.isMac() && (formattedName = (String)CARBON_KEY_LOOK_UP.get(name)) != null) {
            return formattedName;
        }
        return super.format(key);
    }

    protected String getKeyDelimiter() {
        if (Util.isMac()) {
            return Util.translateString(RESOURCE_BUNDLE, CARBON_KEY_DELIMITER_KEY, "");
        }
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "+");
    }

    protected String getKeyStrokeDelimiter() {
        if (Util.isWindows()) {
            return Util.translateString(RESOURCE_BUNDLE, WIN32_KEY_STROKE_DELIMITER_KEY, " ");
        }
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ");
    }

    protected int[] sortModifierKeys(int modifierKeys) {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        int[] sortedKeys = new int[4];
        int index = 0;
        if (Util.isWindows()) {
            if ((modifierKeys & lookup.getCtrl()) != 0) {
                sortedKeys[index++] = lookup.getCtrl();
            }
            if ((modifierKeys & lookup.getAlt()) != 0) {
                sortedKeys[index++] = lookup.getAlt();
            }
            if ((modifierKeys & lookup.getShift()) != 0) {
                sortedKeys[index++] = lookup.getShift();
            }
        } else if (Util.isGtk() || Util.isMotif()) {
            if ((modifierKeys & lookup.getShift()) != 0) {
                sortedKeys[index++] = lookup.getShift();
            }
            if ((modifierKeys & lookup.getCtrl()) != 0) {
                sortedKeys[index++] = lookup.getCtrl();
            }
            if ((modifierKeys & lookup.getAlt()) != 0) {
                sortedKeys[index++] = lookup.getAlt();
            }
        } else if (Util.isMac()) {
            if ((modifierKeys & lookup.getShift()) != 0) {
                sortedKeys[index++] = lookup.getShift();
            }
            if ((modifierKeys & lookup.getCtrl()) != 0) {
                sortedKeys[index++] = lookup.getCtrl();
            }
            if ((modifierKeys & lookup.getAlt()) != 0) {
                sortedKeys[index++] = lookup.getAlt();
            }
            if ((modifierKeys & lookup.getCommand()) != 0) {
                sortedKeys[index++] = lookup.getCommand();
            }
        }
        return sortedKeys;
    }
}

