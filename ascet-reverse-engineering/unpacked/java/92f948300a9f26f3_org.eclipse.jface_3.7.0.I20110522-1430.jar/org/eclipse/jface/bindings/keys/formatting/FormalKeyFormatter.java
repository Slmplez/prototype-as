/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.formatting.AbstractKeyFormatter;

public final class FormalKeyFormatter
extends AbstractKeyFormatter {
    public String format(int key) {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        return lookup.formalNameLookup(key);
    }

    protected String getKeyDelimiter() {
        return "+";
    }

    protected String getKeyStrokeDelimiter() {
        return " ";
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

