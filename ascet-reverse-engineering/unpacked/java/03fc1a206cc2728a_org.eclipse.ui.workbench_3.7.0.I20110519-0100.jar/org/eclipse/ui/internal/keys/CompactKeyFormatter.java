/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.eclipse.ui.internal.keys.NativeKeyFormatter;
import org.eclipse.ui.keys.KeySequence;
import org.eclipse.ui.keys.KeyStroke;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.NaturalKey;

public class CompactKeyFormatter
extends NativeKeyFormatter {
    public String format(KeySequence keySequence) {
        StringBuffer stringBuffer = new StringBuffer();
        List keyStrokes = keySequence.getKeyStrokes();
        KeyStroke[] keyStrokeArray = keyStrokes.toArray(new KeyStroke[keyStrokes.size()]);
        Set previousModifierKeys = Collections.EMPTY_SET;
        ArrayList<NaturalKey> naturalKeys = new ArrayList<NaturalKey>();
        int i = 0;
        while (i < keyStrokeArray.length) {
            KeyStroke keyStroke = keyStrokeArray[i];
            Set currentModifierKeys = keyStroke.getModifierKeys();
            if (!previousModifierKeys.equals(currentModifierKeys)) {
                if (i > 0) {
                    stringBuffer.append(this.formatKeyStrokes(previousModifierKeys, naturalKeys));
                    stringBuffer.append(this.getKeyStrokeDelimiter());
                }
                previousModifierKeys = currentModifierKeys;
                naturalKeys.clear();
            }
            naturalKeys.add(keyStroke.getNaturalKey());
            ++i;
        }
        stringBuffer.append(this.formatKeyStrokes(previousModifierKeys, naturalKeys));
        return stringBuffer.toString();
    }

    public String formatKeyStrokes(Set modifierKeys, List naturalKeys) {
        StringBuffer stringBuffer = new StringBuffer();
        String keyDelimiter = this.getKeyDelimiter();
        TreeSet sortedModifierKeys = new TreeSet(this.getModifierKeyComparator());
        sortedModifierKeys.addAll(modifierKeys);
        Iterator sortedModifierKeyItr = sortedModifierKeys.iterator();
        while (sortedModifierKeyItr.hasNext()) {
            stringBuffer.append(this.format((ModifierKey)sortedModifierKeyItr.next()));
            stringBuffer.append(keyDelimiter);
        }
        Iterator naturalKeyItr = naturalKeys.iterator();
        while (naturalKeyItr.hasNext()) {
            Object naturalKey = naturalKeyItr.next();
            if (!(naturalKey instanceof NaturalKey)) continue;
            stringBuffer.append(this.format((NaturalKey)naturalKey));
            if (!naturalKeyItr.hasNext()) continue;
            stringBuffer.append(keyDelimiter);
        }
        return stringBuffer.toString();
    }
}

