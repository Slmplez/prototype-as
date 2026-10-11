/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 */
package org.eclipse.ui.keys;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.KeyFormatterFactory;
import org.eclipse.ui.keys.KeyStroke;
import org.eclipse.ui.keys.ParseException;
import org.eclipse.ui.keys.SWTKeySupport;

public final class KeySequence
implements Comparable {
    public static final String KEY_STROKE_DELIMITER = " ";
    private static final KeySequence EMPTY_KEY_SEQUENCE = new KeySequence(Collections.EMPTY_LIST);
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    public static final String KEY_STROKE_DELIMITERS = " \b\r\u007f\u001b\f\n\u0000\t\u000b";
    private transient int hashCode;
    private transient boolean hashCodeComputed;
    private List keyStrokes;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.KeySequence");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public static KeySequence getInstance() {
        return EMPTY_KEY_SEQUENCE;
    }

    public static KeySequence getInstance(KeySequence keySequence, KeyStroke keyStroke) {
        if (keySequence == null || keyStroke == null) {
            throw new NullPointerException();
        }
        ArrayList<KeyStroke> keyStrokes = new ArrayList<KeyStroke>(keySequence.getKeyStrokes());
        keyStrokes.add(keyStroke);
        return new KeySequence(keyStrokes);
    }

    public static KeySequence getInstance(KeyStroke keyStroke) {
        return new KeySequence(Collections.singletonList(keyStroke));
    }

    public static KeySequence getInstance(KeyStroke[] keyStrokes) {
        return new KeySequence(Arrays.asList(keyStrokes));
    }

    public static KeySequence getInstance(List keyStrokes) {
        return new KeySequence(keyStrokes);
    }

    public static final KeySequence getInstance(org.eclipse.jface.bindings.keys.KeySequence newKeySequence) {
        org.eclipse.jface.bindings.keys.KeyStroke[] newKeyStrokes = newKeySequence.getKeyStrokes();
        int newKeyStrokesCount = newKeyStrokes.length;
        ArrayList<KeyStroke> legacyKeyStrokes = new ArrayList<KeyStroke>(newKeyStrokesCount);
        int i = 0;
        while (i < newKeyStrokesCount) {
            org.eclipse.jface.bindings.keys.KeyStroke newKeyStroke = newKeyStrokes[i];
            legacyKeyStrokes.add(SWTKeySupport.convertAcceleratorToKeyStroke(newKeyStroke.getModifierKeys() | newKeyStroke.getNaturalKey()));
            ++i;
        }
        return new KeySequence(legacyKeyStrokes);
    }

    public static KeySequence getInstance(String string) throws ParseException {
        if (string == null) {
            throw new NullPointerException();
        }
        ArrayList<KeyStroke> keyStrokes = new ArrayList<KeyStroke>();
        StringTokenizer stringTokenizer = new StringTokenizer(string, KEY_STROKE_DELIMITERS);
        while (stringTokenizer.hasMoreTokens()) {
            keyStrokes.add(KeyStroke.getInstance(stringTokenizer.nextToken()));
        }
        try {
            return new KeySequence(keyStrokes);
        }
        catch (Throwable throwable) {
            throw new ParseException("Could not construct key sequence with these key strokes: " + keyStrokes);
        }
    }

    private KeySequence(List keyStrokes) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.KeyStroke");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.keyStrokes = Util.safeCopy(keyStrokes, (Class)clazz);
        int i = 0;
        while (i < this.keyStrokes.size() - 1) {
            KeyStroke keyStroke = (KeyStroke)this.keyStrokes.get(i);
            if (!keyStroke.isComplete()) {
                throw new IllegalArgumentException();
            }
            ++i;
        }
    }

    public int compareTo(Object object) {
        KeySequence castedObject = (KeySequence)object;
        int compareTo = Util.compare(this.keyStrokes, castedObject.keyStrokes);
        return compareTo;
    }

    public boolean endsWith(KeySequence keySequence, boolean equals) {
        if (keySequence == null) {
            throw new NullPointerException();
        }
        return Util.endsWith(this.keyStrokes, keySequence.keyStrokes, equals);
    }

    public boolean equals(Object object) {
        if (!(object instanceof KeySequence)) {
            return false;
        }
        return this.keyStrokes.equals(((KeySequence)object).keyStrokes);
    }

    public String format() {
        return KeyFormatterFactory.getDefault().format(this);
    }

    public List getKeyStrokes() {
        return this.keyStrokes;
    }

    public int hashCode() {
        if (!this.hashCodeComputed) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + this.keyStrokes.hashCode();
            this.hashCodeComputed = true;
        }
        return this.hashCode;
    }

    public boolean isComplete() {
        return this.keyStrokes.isEmpty() || ((KeyStroke)this.keyStrokes.get(this.keyStrokes.size() - 1)).isComplete();
    }

    public boolean isEmpty() {
        return this.keyStrokes.isEmpty();
    }

    public boolean startsWith(KeySequence keySequence, boolean equals) {
        if (keySequence == null) {
            throw new NullPointerException();
        }
        return Util.startsWith(this.keyStrokes, keySequence.keyStrokes, equals);
    }

    public String toString() {
        return KeyFormatterFactory.getFormalKeyFormatter().format(this);
    }
}

