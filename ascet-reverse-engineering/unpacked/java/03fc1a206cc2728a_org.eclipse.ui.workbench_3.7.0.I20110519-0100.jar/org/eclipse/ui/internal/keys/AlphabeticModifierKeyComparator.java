/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import org.eclipse.ui.keys.ModifierKey;

public class AlphabeticModifierKeyComparator
implements Comparator {
    public int compare(Object left, Object right) {
        ModifierKey modifierKeyLeft = (ModifierKey)left;
        ModifierKey modifierKeyRight = (ModifierKey)right;
        return modifierKeyLeft.toString().compareTo(modifierKeyRight.toString());
    }
}

