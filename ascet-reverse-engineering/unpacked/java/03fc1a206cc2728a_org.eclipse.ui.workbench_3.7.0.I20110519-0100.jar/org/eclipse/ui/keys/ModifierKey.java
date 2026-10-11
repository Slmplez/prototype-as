/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.keys.IKeyLookup
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 *  org.eclipse.jface.util.Util
 */
package org.eclipse.ui.keys;

import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.util.Util;
import org.eclipse.ui.keys.Key;

public final class ModifierKey
extends Key {
    static SortedMap modifierKeysByName = new TreeMap();
    public static final ModifierKey ALT;
    public static final ModifierKey COMMAND;
    public static final ModifierKey CTRL;
    private static final String M1_NAME = "M1";
    private static final String M2_NAME = "M2";
    private static final String M3_NAME = "M3";
    private static final String M4_NAME = "M4";
    public static final ModifierKey SHIFT;

    static {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        ALT = new ModifierKey(lookup.getAlt());
        COMMAND = new ModifierKey(lookup.getCommand());
        CTRL = new ModifierKey(lookup.getCtrl());
        SHIFT = new ModifierKey(lookup.getShift());
        modifierKeysByName.put(ALT.toString(), ALT);
        modifierKeysByName.put(COMMAND.toString(), COMMAND);
        modifierKeysByName.put(CTRL.toString(), CTRL);
        modifierKeysByName.put(SHIFT.toString(), SHIFT);
        modifierKeysByName.put(M1_NAME, Util.isMac() ? COMMAND : CTRL);
        modifierKeysByName.put(M2_NAME, SHIFT);
        modifierKeysByName.put(M3_NAME, ALT);
        modifierKeysByName.put(M4_NAME, Util.isMac() ? CTRL : COMMAND);
    }

    private ModifierKey(int key) {
        super(key);
    }
}

