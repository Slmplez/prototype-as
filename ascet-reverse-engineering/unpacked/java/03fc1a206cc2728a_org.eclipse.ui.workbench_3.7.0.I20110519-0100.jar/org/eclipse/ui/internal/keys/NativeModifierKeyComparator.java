/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Util
 */
package org.eclipse.ui.internal.keys;

import java.util.Comparator;
import org.eclipse.jface.util.Util;
import org.eclipse.ui.keys.ModifierKey;

class NativeModifierKeyComparator
implements Comparator {
    private static final int UNKNOWN_KEY = Integer.MAX_VALUE;

    NativeModifierKeyComparator() {
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

    private int rank(ModifierKey modifierKey) {
        if (Util.isWindows()) {
            return this.rankWindows(modifierKey);
        }
        if (Util.isGtk()) {
            return this.rankGNOME(modifierKey);
        }
        if (Util.isMac()) {
            return this.rankMacOSX(modifierKey);
        }
        if (Util.isMotif()) {
            return this.rankGNOME(modifierKey);
        }
        return Integer.MAX_VALUE;
    }

    private final int rankGNOME(ModifierKey modifierKey) {
        if (ModifierKey.SHIFT.equals(modifierKey)) {
            return 0;
        }
        if (ModifierKey.CTRL.equals(modifierKey)) {
            return 1;
        }
        if (ModifierKey.ALT.equals(modifierKey)) {
            return 2;
        }
        return Integer.MAX_VALUE;
    }

    private final int rankMacOSX(ModifierKey modifierKey) {
        if (ModifierKey.SHIFT.equals(modifierKey)) {
            return 0;
        }
        if (ModifierKey.CTRL.equals(modifierKey)) {
            return 1;
        }
        if (ModifierKey.ALT.equals(modifierKey)) {
            return 2;
        }
        if (ModifierKey.COMMAND.equals(modifierKey)) {
            return 3;
        }
        return Integer.MAX_VALUE;
    }

    private final int rankWindows(ModifierKey modifierKey) {
        if (ModifierKey.CTRL.equals(modifierKey)) {
            return 0;
        }
        if (ModifierKey.ALT.equals(modifierKey)) {
            return 1;
        }
        if (ModifierKey.SHIFT.equals(modifierKey)) {
            return 2;
        }
        return Integer.MAX_VALUE;
    }
}

