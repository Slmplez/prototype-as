/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys.formatting;

import java.util.Enumeration;
import java.util.HashSet;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.formatting.IKeyFormatter;
import org.eclipse.jface.util.Util;

public abstract class AbstractKeyFormatter
implements IKeyFormatter {
    protected static final String KEY_DELIMITER_KEY = "KEY_DELIMITER";
    protected static final String KEY_STROKE_DELIMITER_KEY = "KEY_STROKE_DELIMITER";
    protected static final int[] NO_MODIFIER_KEYS = new int[0];
    private static final ResourceBundle RESOURCE_BUNDLE;
    private static final Set resourceBundleKeys;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.keys.formatting.AbstractKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        resourceBundleKeys = new HashSet();
        Enumeration<String> keyEnumeration = RESOURCE_BUNDLE.getKeys();
        while (keyEnumeration.hasMoreElements()) {
            String element = keyEnumeration.nextElement();
            resourceBundleKeys.add(element);
        }
    }

    public String format(int key) {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        String name = lookup.formalNameLookup(key);
        if (resourceBundleKeys.contains(name)) {
            return Util.translateString(RESOURCE_BUNDLE, name, name);
        }
        return name;
    }

    public String format(KeySequence keySequence) {
        StringBuffer stringBuffer = new StringBuffer();
        KeyStroke[] keyStrokes = keySequence.getKeyStrokes();
        int keyStrokesLength = keyStrokes.length;
        int i = 0;
        while (i < keyStrokesLength) {
            stringBuffer.append(this.format(keyStrokes[i]));
            if (i + 1 < keyStrokesLength) {
                stringBuffer.append(this.getKeyStrokeDelimiter());
            }
            ++i;
        }
        return stringBuffer.toString();
    }

    public String format(KeyStroke keyStroke) {
        int naturalKey;
        String keyDelimiter = this.getKeyDelimiter();
        int modifierKeys = keyStroke.getModifierKeys();
        int[] sortedModifierKeys = this.sortModifierKeys(modifierKeys);
        StringBuffer stringBuffer = new StringBuffer();
        if (sortedModifierKeys != null) {
            int i = 0;
            while (i < sortedModifierKeys.length) {
                int modifierKey = sortedModifierKeys[i];
                if (modifierKey != 0) {
                    stringBuffer.append(this.format(modifierKey));
                    stringBuffer.append(keyDelimiter);
                }
                ++i;
            }
        }
        if ((naturalKey = keyStroke.getNaturalKey()) != 0) {
            stringBuffer.append(this.format(naturalKey));
        }
        return stringBuffer.toString();
    }

    protected abstract String getKeyDelimiter();

    protected abstract String getKeyStrokeDelimiter();

    protected abstract int[] sortModifierKeys(int var1);
}

