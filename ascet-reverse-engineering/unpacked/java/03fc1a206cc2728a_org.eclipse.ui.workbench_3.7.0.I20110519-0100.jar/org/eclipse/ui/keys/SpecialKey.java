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

public final class SpecialKey
extends NaturalKey {
    static SortedMap specialKeysByName = new TreeMap();
    public static final SpecialKey ARROW_DOWN;
    public static final SpecialKey ARROW_LEFT;
    public static final SpecialKey ARROW_RIGHT;
    public static final SpecialKey ARROW_UP;
    public static final SpecialKey BREAK;
    public static final SpecialKey CAPS_LOCK;
    public static final SpecialKey END;
    public static final SpecialKey F1;
    public static final SpecialKey F10;
    public static final SpecialKey F11;
    public static final SpecialKey F12;
    public static final SpecialKey F13;
    public static final SpecialKey F14;
    public static final SpecialKey F15;
    public static final SpecialKey F2;
    public static final SpecialKey F3;
    public static final SpecialKey F4;
    public static final SpecialKey F5;
    public static final SpecialKey F6;
    public static final SpecialKey F7;
    public static final SpecialKey F8;
    public static final SpecialKey F9;
    public static final SpecialKey HOME;
    public static final SpecialKey INSERT;
    public static final SpecialKey NUM_LOCK;
    public static final SpecialKey NUMPAD_0;
    public static final SpecialKey NUMPAD_1;
    public static final SpecialKey NUMPAD_2;
    public static final SpecialKey NUMPAD_3;
    public static final SpecialKey NUMPAD_4;
    public static final SpecialKey NUMPAD_5;
    public static final SpecialKey NUMPAD_6;
    public static final SpecialKey NUMPAD_7;
    public static final SpecialKey NUMPAD_8;
    public static final SpecialKey NUMPAD_9;
    public static final SpecialKey NUMPAD_ADD;
    public static final SpecialKey NUMPAD_DECIMAL;
    public static final SpecialKey NUMPAD_DIVIDE;
    public static final SpecialKey NUMPAD_ENTER;
    public static final SpecialKey NUMPAD_EQUAL;
    public static final SpecialKey NUMPAD_MULTIPLY;
    public static final SpecialKey NUMPAD_SUBTRACT;
    public static final SpecialKey PAGE_DOWN;
    public static final SpecialKey PAGE_UP;
    public static final SpecialKey PAUSE;
    public static final SpecialKey PRINT_SCREEN;
    public static final SpecialKey SCROLL_LOCK;

    static {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        ARROW_DOWN = new SpecialKey(lookup.formalKeyLookup("ARROW_DOWN"));
        ARROW_LEFT = new SpecialKey(lookup.formalKeyLookup("ARROW_LEFT"));
        ARROW_RIGHT = new SpecialKey(lookup.formalKeyLookup("ARROW_RIGHT"));
        ARROW_UP = new SpecialKey(lookup.formalKeyLookup("ARROW_UP"));
        BREAK = new SpecialKey(lookup.formalKeyLookup("BREAK"));
        CAPS_LOCK = new SpecialKey(lookup.formalKeyLookup("CAPS_LOCK"));
        END = new SpecialKey(lookup.formalKeyLookup("END"));
        F1 = new SpecialKey(lookup.formalKeyLookup("F1"));
        F2 = new SpecialKey(lookup.formalKeyLookup("F2"));
        F3 = new SpecialKey(lookup.formalKeyLookup("F3"));
        F4 = new SpecialKey(lookup.formalKeyLookup("F4"));
        F5 = new SpecialKey(lookup.formalKeyLookup("F5"));
        F6 = new SpecialKey(lookup.formalKeyLookup("F6"));
        F7 = new SpecialKey(lookup.formalKeyLookup("F7"));
        F8 = new SpecialKey(lookup.formalKeyLookup("F8"));
        F9 = new SpecialKey(lookup.formalKeyLookup("F9"));
        F10 = new SpecialKey(lookup.formalKeyLookup("F10"));
        F11 = new SpecialKey(lookup.formalKeyLookup("F11"));
        F12 = new SpecialKey(lookup.formalKeyLookup("F12"));
        F13 = new SpecialKey(lookup.formalKeyLookup("F13"));
        F14 = new SpecialKey(lookup.formalKeyLookup("F14"));
        F15 = new SpecialKey(lookup.formalKeyLookup("F15"));
        HOME = new SpecialKey(lookup.formalKeyLookup("HOME"));
        INSERT = new SpecialKey(lookup.formalKeyLookup("INSERT"));
        NUM_LOCK = new SpecialKey(lookup.formalKeyLookup("NUM_LOCK"));
        NUMPAD_0 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_0"));
        NUMPAD_1 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_1"));
        NUMPAD_2 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_2"));
        NUMPAD_3 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_3"));
        NUMPAD_4 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_4"));
        NUMPAD_5 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_5"));
        NUMPAD_6 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_6"));
        NUMPAD_7 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_7"));
        NUMPAD_8 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_8"));
        NUMPAD_9 = new SpecialKey(lookup.formalKeyLookup("NUMPAD_9"));
        NUMPAD_ADD = new SpecialKey(lookup.formalKeyLookup("NUMPAD_ADD"));
        NUMPAD_DECIMAL = new SpecialKey(lookup.formalKeyLookup("NUMPAD_DECIMAL"));
        NUMPAD_DIVIDE = new SpecialKey(lookup.formalKeyLookup("NUMPAD_DIVIDE"));
        NUMPAD_ENTER = new SpecialKey(lookup.formalKeyLookup("NUMPAD_ENTER"));
        NUMPAD_EQUAL = new SpecialKey(lookup.formalKeyLookup("NUMPAD_EQUAL"));
        NUMPAD_MULTIPLY = new SpecialKey(lookup.formalKeyLookup("NUMPAD_MULTIPLY"));
        NUMPAD_SUBTRACT = new SpecialKey(lookup.formalKeyLookup("NUMPAD_SUBTRACT"));
        PAGE_DOWN = new SpecialKey(lookup.formalKeyLookup("PAGE_DOWN"));
        PAGE_UP = new SpecialKey(lookup.formalKeyLookup("PAGE_UP"));
        PAUSE = new SpecialKey(lookup.formalKeyLookup("PAUSE"));
        PRINT_SCREEN = new SpecialKey(lookup.formalKeyLookup("PRINT_SCREEN"));
        SCROLL_LOCK = new SpecialKey(lookup.formalKeyLookup("SCROLL_LOCK"));
        specialKeysByName.put(ARROW_DOWN.toString(), ARROW_DOWN);
        specialKeysByName.put(ARROW_LEFT.toString(), ARROW_LEFT);
        specialKeysByName.put(ARROW_RIGHT.toString(), ARROW_RIGHT);
        specialKeysByName.put(ARROW_UP.toString(), ARROW_UP);
        specialKeysByName.put(BREAK.toString(), BREAK);
        specialKeysByName.put(CAPS_LOCK.toString(), CAPS_LOCK);
        specialKeysByName.put(END.toString(), END);
        specialKeysByName.put(F1.toString(), F1);
        specialKeysByName.put(F10.toString(), F10);
        specialKeysByName.put(F11.toString(), F11);
        specialKeysByName.put(F12.toString(), F12);
        specialKeysByName.put(F13.toString(), F13);
        specialKeysByName.put(F14.toString(), F14);
        specialKeysByName.put(F15.toString(), F15);
        specialKeysByName.put(F2.toString(), F2);
        specialKeysByName.put(F3.toString(), F3);
        specialKeysByName.put(F4.toString(), F4);
        specialKeysByName.put(F5.toString(), F5);
        specialKeysByName.put(F6.toString(), F6);
        specialKeysByName.put(F7.toString(), F7);
        specialKeysByName.put(F8.toString(), F8);
        specialKeysByName.put(F9.toString(), F9);
        specialKeysByName.put(NUM_LOCK.toString(), NUM_LOCK);
        specialKeysByName.put(NUMPAD_0.toString(), NUMPAD_0);
        specialKeysByName.put(NUMPAD_1.toString(), NUMPAD_1);
        specialKeysByName.put(NUMPAD_2.toString(), NUMPAD_2);
        specialKeysByName.put(NUMPAD_3.toString(), NUMPAD_3);
        specialKeysByName.put(NUMPAD_4.toString(), NUMPAD_4);
        specialKeysByName.put(NUMPAD_5.toString(), NUMPAD_5);
        specialKeysByName.put(NUMPAD_6.toString(), NUMPAD_6);
        specialKeysByName.put(NUMPAD_7.toString(), NUMPAD_7);
        specialKeysByName.put(NUMPAD_8.toString(), NUMPAD_8);
        specialKeysByName.put(NUMPAD_9.toString(), NUMPAD_9);
        specialKeysByName.put(NUMPAD_ADD.toString(), NUMPAD_ADD);
        specialKeysByName.put(NUMPAD_DECIMAL.toString(), NUMPAD_DECIMAL);
        specialKeysByName.put(NUMPAD_DIVIDE.toString(), NUMPAD_DIVIDE);
        specialKeysByName.put(NUMPAD_ENTER.toString(), NUMPAD_ENTER);
        specialKeysByName.put(NUMPAD_EQUAL.toString(), NUMPAD_EQUAL);
        specialKeysByName.put(NUMPAD_MULTIPLY.toString(), NUMPAD_MULTIPLY);
        specialKeysByName.put(NUMPAD_SUBTRACT.toString(), NUMPAD_SUBTRACT);
        specialKeysByName.put(HOME.toString(), HOME);
        specialKeysByName.put(INSERT.toString(), INSERT);
        specialKeysByName.put(PAGE_DOWN.toString(), PAGE_DOWN);
        specialKeysByName.put(PAGE_UP.toString(), PAGE_UP);
        specialKeysByName.put(PAUSE.toString(), PAUSE);
        specialKeysByName.put(PRINT_SCREEN.toString(), PRINT_SCREEN);
        specialKeysByName.put(SCROLL_LOCK.toString(), SCROLL_LOCK);
    }

    private SpecialKey(int key) {
        super(key);
    }
}

