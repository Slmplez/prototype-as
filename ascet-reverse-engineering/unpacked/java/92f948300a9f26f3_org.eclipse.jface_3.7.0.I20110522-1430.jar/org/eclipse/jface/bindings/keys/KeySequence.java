/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.bindings.keys.formatting.KeyFormatterFactory;
import org.eclipse.jface.util.Util;

public final class KeySequence
extends TriggerSequence
implements Comparable {
    private static final KeySequence EMPTY_KEY_SEQUENCE = new KeySequence(new KeyStroke[0]);
    public static final String KEY_STROKE_DELIMITER = " ";
    public static final String KEY_STROKE_DELIMITERS = " \b\r\u007f\u001b\f\n\u0000\t\u000b";

    public static final KeySequence getInstance() {
        return EMPTY_KEY_SEQUENCE;
    }

    public static final KeySequence getInstance(KeySequence keySequence, KeyStroke keyStroke) {
        if (keySequence == null || keyStroke == null) {
            throw new NullPointerException();
        }
        KeyStroke[] oldKeyStrokes = keySequence.getKeyStrokes();
        int oldKeyStrokeLength = oldKeyStrokes.length;
        KeyStroke[] newKeyStrokes = new KeyStroke[oldKeyStrokeLength + 1];
        System.arraycopy(oldKeyStrokes, 0, newKeyStrokes, 0, oldKeyStrokeLength);
        newKeyStrokes[oldKeyStrokeLength] = keyStroke;
        return new KeySequence(newKeyStrokes);
    }

    public static final KeySequence getInstance(KeyStroke keyStroke) {
        return new KeySequence(new KeyStroke[]{keyStroke});
    }

    public static final KeySequence getInstance(KeyStroke[] keyStrokes) {
        return new KeySequence(keyStrokes);
    }

    public static final KeySequence getInstance(List keyStrokes) {
        return new KeySequence(keyStrokes.toArray(new KeyStroke[keyStrokes.size()]));
    }

    public static final KeySequence getInstance(String string) throws ParseException {
        if (string == null) {
            throw new NullPointerException();
        }
        ArrayList<KeyStroke> keyStrokes = new ArrayList<KeyStroke>();
        StringTokenizer stringTokenizer = new StringTokenizer(string, KEY_STROKE_DELIMITERS);
        try {
            while (stringTokenizer.hasMoreTokens()) {
                keyStrokes.add(KeyStroke.getInstance(stringTokenizer.nextToken()));
            }
            KeyStroke[] keyStrokeArray = keyStrokes.toArray(new KeyStroke[keyStrokes.size()]);
            return new KeySequence(keyStrokeArray);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            throw new ParseException("Could not construct key sequence with these key strokes: " + keyStrokes);
        }
        catch (NullPointerException nullPointerException) {
            throw new ParseException("Could not construct key sequence with these key strokes: " + keyStrokes);
        }
    }

    protected KeySequence(KeyStroke[] keyStrokes) {
        super(keyStrokes);
        int i = 0;
        while (i < this.triggers.length - 1) {
            KeyStroke keyStroke = (KeyStroke)this.triggers[i];
            if (!keyStroke.isComplete()) {
                throw new IllegalArgumentException();
            }
            ++i;
        }
    }

    public final int compareTo(Object object) {
        KeySequence castedObject = (KeySequence)object;
        return Util.compare(this.triggers, castedObject.triggers);
    }

    public final String format() {
        return KeyFormatterFactory.getDefault().format(this);
    }

    public final KeyStroke[] getKeyStrokes() {
        int triggerLength = this.triggers.length;
        KeyStroke[] keyStrokes = new KeyStroke[triggerLength];
        System.arraycopy(this.triggers, 0, keyStrokes, 0, triggerLength);
        return keyStrokes;
    }

    public final TriggerSequence[] getPrefixes() {
        int numberOfPrefixes = this.triggers.length;
        TriggerSequence[] prefixes = new TriggerSequence[numberOfPrefixes];
        prefixes[0] = KeySequence.getInstance();
        int i = 0;
        while (i < numberOfPrefixes - 1) {
            KeyStroke[] prefixKeyStrokes = new KeyStroke[i + 1];
            System.arraycopy(this.triggers, 0, prefixKeyStrokes, 0, i + 1);
            prefixes[i + 1] = KeySequence.getInstance(prefixKeyStrokes);
            ++i;
        }
        return prefixes;
    }

    public final boolean isComplete() {
        int triggersLength = this.triggers.length;
        int i = 0;
        while (i < triggersLength) {
            if (!((KeyStroke)this.triggers[i]).isComplete()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public final String toString() {
        return KeyFormatterFactory.getFormalKeyFormatter().format(this);
    }
}

