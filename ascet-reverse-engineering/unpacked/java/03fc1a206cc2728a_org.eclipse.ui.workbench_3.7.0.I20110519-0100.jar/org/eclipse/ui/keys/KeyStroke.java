/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.keys;

import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TreeSet;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.CharacterKey;
import org.eclipse.ui.keys.KeyFormatterFactory;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.NaturalKey;
import org.eclipse.ui.keys.ParseException;
import org.eclipse.ui.keys.SpecialKey;

public final class KeyStroke
implements Comparable {
    public static final String KEY_DELIMITER = "+";
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    public static final String KEY_DELIMITERS = "+";
    private transient int hashCode;
    private transient boolean hashCodeComputed;
    private SortedSet modifierKeys;
    private transient ModifierKey[] modifierKeysAsArray;
    private NaturalKey naturalKey;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.KeyStroke");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public static KeyStroke getInstance(ModifierKey modifierKey, NaturalKey naturalKey) {
        if (modifierKey == null) {
            throw new NullPointerException();
        }
        return new KeyStroke(new TreeSet<ModifierKey>(Collections.singletonList(modifierKey)), naturalKey);
    }

    public static KeyStroke getInstance(ModifierKey[] modifierKeys, NaturalKey naturalKey) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.ModifierKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Util.assertInstance(modifierKeys, clazz);
        return new KeyStroke(new TreeSet<ModifierKey>(Arrays.asList(modifierKeys)), naturalKey);
    }

    public static KeyStroke getInstance(NaturalKey naturalKey) {
        return new KeyStroke(Util.EMPTY_SORTED_SET, naturalKey);
    }

    public static KeyStroke getInstance(SortedSet modifierKeys, NaturalKey naturalKey) {
        return new KeyStroke(modifierKeys, naturalKey);
    }

    public static KeyStroke getInstance(String string) throws ParseException {
        if (string == null) {
            throw new NullPointerException();
        }
        TreeSet<ModifierKey> modifierKeys = new TreeSet<ModifierKey>();
        NaturalKey naturalKey = null;
        StringTokenizer stringTokenizer = new StringTokenizer(string, "+", true);
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String token = stringTokenizer.nextToken();
            if (i % 2 == 0) {
                if (stringTokenizer.hasMoreTokens()) {
                    ModifierKey modifierKey = (ModifierKey)ModifierKey.modifierKeysByName.get(token = token.toUpperCase());
                    if (modifierKey == null || !modifierKeys.add(modifierKey)) {
                        throw new ParseException("Cannot create key stroke with duplicate or non-existent modifier key: " + token);
                    }
                } else {
                    if (token.length() == 1) {
                        naturalKey = CharacterKey.getInstance(token.charAt(0));
                        break;
                    }
                    naturalKey = (NaturalKey)CharacterKey.characterKeysByName.get(token = token.toUpperCase());
                    if (naturalKey == null) {
                        naturalKey = (NaturalKey)SpecialKey.specialKeysByName.get(token);
                    }
                    if (naturalKey == null) {
                        throw new ParseException("Cannot create key stroke with invalid natural key: " + token);
                    }
                }
            }
            ++i;
        }
        try {
            return new KeyStroke(modifierKeys, naturalKey);
        }
        catch (Throwable throwable) {
            throw new ParseException("Cannot create key stroke with " + modifierKeys + " and " + naturalKey);
        }
    }

    private KeyStroke(SortedSet modifierKeys, NaturalKey naturalKey) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.ModifierKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.modifierKeys = Util.safeCopy(modifierKeys, (Class)clazz);
        this.naturalKey = naturalKey;
        this.modifierKeysAsArray = this.modifierKeys.toArray(new ModifierKey[this.modifierKeys.size()]);
    }

    public int compareTo(Object object) {
        KeyStroke castedObject = (KeyStroke)object;
        int compareTo = Util.compare(this.modifierKeysAsArray, castedObject.modifierKeysAsArray);
        if (compareTo == 0) {
            compareTo = Util.compare(this.naturalKey, castedObject.naturalKey);
        }
        return compareTo;
    }

    public boolean equals(Object object) {
        if (!(object instanceof KeyStroke)) {
            return false;
        }
        KeyStroke castedObject = (KeyStroke)object;
        if (!this.modifierKeys.equals(castedObject.modifierKeys)) {
            return false;
        }
        return Util.equals(this.naturalKey, castedObject.naturalKey);
    }

    public String format() {
        return KeyFormatterFactory.getDefault().format(this);
    }

    public Set getModifierKeys() {
        return Collections.unmodifiableSet(this.modifierKeys);
    }

    public NaturalKey getNaturalKey() {
        return this.naturalKey;
    }

    public int hashCode() {
        if (!this.hashCodeComputed) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + this.modifierKeys.hashCode();
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.naturalKey);
            this.hashCodeComputed = true;
        }
        return this.hashCode;
    }

    public boolean isComplete() {
        return this.naturalKey != null;
    }

    public String toString() {
        return KeyFormatterFactory.getFormalKeyFormatter().format(this);
    }
}

