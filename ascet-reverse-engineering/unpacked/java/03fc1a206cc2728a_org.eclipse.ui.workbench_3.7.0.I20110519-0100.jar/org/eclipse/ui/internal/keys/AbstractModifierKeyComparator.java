/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import org.eclipse.ui.keys.ModifierKey;

abstract class AbstractModifierKeyComparator
implements Comparator {
    AbstractModifierKeyComparator() {
    }

    public int compare(Object left, Object right) {
        int modifierKeyRightRank;
        ModifierKey modifierKeyLeft = (ModifierKey)left;
        ModifierKey modifierKeyRight = (ModifierKey)right;
        int modifierKeyLeftRank = this.rank(modifierKeyLeft);
        if (modifierKeyLeftRank != (modifierKeyRightRank = this.rank(modifierKeyRight))) {
            return modifierKeyLeftRank - modifierKeyRightRank;
        }
        return modifierKeyLeft.compareTo(modifierKeyRight);
    }

    protected abstract int rank(ModifierKey var1);
}

