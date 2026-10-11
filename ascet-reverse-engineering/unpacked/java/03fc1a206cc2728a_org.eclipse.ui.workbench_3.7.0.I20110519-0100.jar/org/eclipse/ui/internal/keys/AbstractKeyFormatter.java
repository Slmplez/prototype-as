/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import java.util.Iterator;
import java.util.ResourceBundle;
import java.util.TreeSet;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.IKeyFormatter;
import org.eclipse.ui.keys.Key;
import org.eclipse.ui.keys.KeySequence;
import org.eclipse.ui.keys.KeyStroke;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.NaturalKey;

public abstract class AbstractKeyFormatter
implements IKeyFormatter {
    protected static final String KEY_DELIMITER_KEY = "KEY_DELIMITER";
    protected static final String KEY_STROKE_DELIMITER_KEY = "KEY_STROKE_DELIMITER";
    private static final ResourceBundle RESOURCE_BUNDLE;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.keys.AbstractKeyFormatter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public String format(Key key) {
        String name = key.toString();
        return Util.translateString(RESOURCE_BUNDLE, name, name, false, false);
    }

    public String format(KeySequence keySequence) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator keyStrokeItr = keySequence.getKeyStrokes().iterator();
        while (keyStrokeItr.hasNext()) {
            stringBuffer.append(this.format((KeyStroke)keyStrokeItr.next()));
            if (!keyStrokeItr.hasNext()) continue;
            stringBuffer.append(this.getKeyStrokeDelimiter());
        }
        return stringBuffer.toString();
    }

    public String format(KeyStroke keyStroke) {
        String keyDelimiter = this.getKeyDelimiter();
        TreeSet modifierKeys = new TreeSet(this.getModifierKeyComparator());
        modifierKeys.addAll(keyStroke.getModifierKeys());
        StringBuffer stringBuffer = new StringBuffer();
        Iterator modifierKeyItr = modifierKeys.iterator();
        while (modifierKeyItr.hasNext()) {
            stringBuffer.append(this.format((ModifierKey)modifierKeyItr.next()));
            stringBuffer.append(keyDelimiter);
        }
        NaturalKey naturalKey = keyStroke.getNaturalKey();
        if (naturalKey != null) {
            stringBuffer.append(this.format(naturalKey));
        }
        return stringBuffer.toString();
    }

    protected abstract String getKeyDelimiter();

    protected abstract String getKeyStrokeDelimiter();

    protected abstract Comparator getModifierKeyComparator();
}

