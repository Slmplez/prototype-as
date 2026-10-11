/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.keys.IKeyLookup
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 */
package org.eclipse.ui.keys;

import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.ui.keys.NaturalKey;

public final class CharacterKey
extends NaturalKey {
    static SortedMap characterKeysByName = new TreeMap();
    public static final CharacterKey BS;
    public static final CharacterKey CR;
    public static final CharacterKey DEL;
    public static final CharacterKey ESC;
    public static final CharacterKey FF;
    public static final CharacterKey LF;
    public static final CharacterKey NUL;
    public static final CharacterKey SPACE;
    public static final CharacterKey TAB;
    public static final CharacterKey VT;

    static {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        BS = new CharacterKey(lookup.formalKeyLookup("BS"));
        CR = new CharacterKey(lookup.formalKeyLookup("CR"));
        DEL = new CharacterKey(lookup.formalKeyLookup("DEL"));
        ESC = new CharacterKey(lookup.formalKeyLookup("ESC"));
        FF = new CharacterKey(lookup.formalKeyLookup("FF"));
        LF = new CharacterKey(lookup.formalKeyLookup("LF"));
        NUL = new CharacterKey(lookup.formalKeyLookup("NUL"));
        SPACE = new CharacterKey(lookup.formalKeyLookup("SPACE"));
        TAB = new CharacterKey(lookup.formalKeyLookup("TAB"));
        VT = new CharacterKey(lookup.formalKeyLookup("VT"));
        characterKeysByName.put("BS", BS);
        characterKeysByName.put("BACKSPACE", BS);
        characterKeysByName.put("CR", CR);
        characterKeysByName.put("ENTER", CR);
        characterKeysByName.put("RETURN", CR);
        characterKeysByName.put("DEL", DEL);
        characterKeysByName.put("DELETE", DEL);
        characterKeysByName.put("ESC", ESC);
        characterKeysByName.put("ESCAPE", ESC);
        characterKeysByName.put("FF", FF);
        characterKeysByName.put("LF", LF);
        characterKeysByName.put("NUL", NUL);
        characterKeysByName.put("SPACE", SPACE);
        characterKeysByName.put("TAB", TAB);
        characterKeysByName.put("VT", VT);
    }

    public static final CharacterKey getInstance(char character) {
        return new CharacterKey(character);
    }

    private CharacterKey(int key) {
        super(key);
    }

    public final char getCharacter() {
        return (char)this.key;
    }
}

