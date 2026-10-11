/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys;

import java.util.StringTokenizer;
import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.bindings.keys.formatting.KeyFormatterFactory;
import org.eclipse.jface.util.Util;

public final class KeyStroke
extends Trigger
implements Comparable {
    public static final String KEY_DELIMITER = "+";
    public static final String KEY_DELIMITERS = "+";
    public static final int NO_KEY = 0;
    private final int modifierKeys;
    private final int naturalKey;

    public static final KeyStroke getInstance(int naturalKey) {
        return new KeyStroke(0, naturalKey);
    }

    public static final KeyStroke getInstance(int modifierKeys, int naturalKey) {
        return new KeyStroke(modifierKeys, naturalKey);
    }

    public static final KeyStroke getInstance(String string) throws ParseException {
        if (string == null) {
            throw new NullPointerException("Cannot parse a null string");
        }
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        int modifierKeys = 0;
        int naturalKey = 0;
        StringTokenizer stringTokenizer = new StringTokenizer(string, "+", true);
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String token = stringTokenizer.nextToken();
            if (i % 2 == 0) {
                if (stringTokenizer.hasMoreTokens()) {
                    int modifierKey = lookup.formalModifierLookup(token = token.toUpperCase());
                    if (modifierKey == 0) {
                        throw new ParseException("Cannot create key stroke with duplicate or non-existent modifier key: " + token);
                    }
                    modifierKeys |= modifierKey;
                } else if (token.length() == 1) {
                    naturalKey = token.charAt(0);
                } else {
                    token = token.toUpperCase();
                    naturalKey = lookup.formalKeyLookup(token);
                }
            }
            ++i;
        }
        return new KeyStroke(modifierKeys, naturalKey);
    }

    private KeyStroke(int modifierKeys, int naturalKey) {
        this.modifierKeys = modifierKeys;
        this.naturalKey = naturalKey;
    }

    public final int compareTo(Object object) {
        KeyStroke keyStroke = (KeyStroke)object;
        int compareTo = Util.compare(this.modifierKeys, keyStroke.modifierKeys);
        if (compareTo == 0) {
            compareTo = Util.compare(this.naturalKey, keyStroke.naturalKey);
        }
        return compareTo;
    }

    public final boolean equals(Object object) {
        if (!(object instanceof KeyStroke)) {
            return false;
        }
        KeyStroke keyStroke = (KeyStroke)object;
        if (this.modifierKeys != keyStroke.modifierKeys) {
            return false;
        }
        return this.naturalKey == keyStroke.naturalKey;
    }

    public final String format() {
        return KeyFormatterFactory.getDefault().format(this);
    }

    public final int getModifierKeys() {
        return this.modifierKeys;
    }

    public final int getNaturalKey() {
        return this.naturalKey;
    }

    public final int hashCode() {
        return this.modifierKeys << 4 + this.naturalKey;
    }

    public final boolean isComplete() {
        return this.naturalKey != 0;
    }

    public final String toString() {
        return KeyFormatterFactory.getFormalKeyFormatter().format(this);
    }
}

