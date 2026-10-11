/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import java.util.ResourceBundle;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.formatting.AbstractKeyFormatter;
import org.eclipse.jface.util.Util;

public final class EmacsKeyFormatter
extends AbstractKeyFormatter {
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.keys.formatting.EmacsKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public String format(int key) {
        String formattedName;
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        if (lookup.isModifierKey(key) && (formattedName = Util.translateString(RESOURCE_BUNDLE, lookup.formalNameLookup(key), null)) != null) {
            return formattedName;
        }
        return super.format(key).toLowerCase();
    }

    protected String getKeyDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_DELIMITER", "+");
    }

    protected String getKeyStrokeDelimiter() {
        return Util.translateString(RESOURCE_BUNDLE, "KEY_STROKE_DELIMITER", " ");
    }

    protected int[] sortModifierKeys(int modifierKeys) {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        int[] sortedKeys = new int[4];
        int index = 0;
        if ((modifierKeys & lookup.getAlt()) != 0) {
            sortedKeys[index++] = lookup.getAlt();
        }
        if ((modifierKeys & lookup.getCommand()) != 0) {
            sortedKeys[index++] = lookup.getCommand();
        }
        if ((modifierKeys & lookup.getCtrl()) != 0) {
            sortedKeys[index++] = lookup.getCtrl();
        }
        if ((modifierKeys & lookup.getShift()) != 0) {
            sortedKeys[index++] = lookup.getShift();
        }
        return sortedKeys;
    }
}

