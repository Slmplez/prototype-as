/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 */
package org.eclipse.jface.bindings.keys;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.SWT;

public final class SWTKeyLookup
implements IKeyLookup {
    private final Map modifierKeyTable = new HashMap();
    private final Map nameTable = new HashMap();
    private final Map naturalKeyTable = new HashMap();

    SWTKeyLookup() {
        Integer alt = new Integer(65536);
        Integer command = new Integer(0x400000);
        Integer ctrl = new Integer(262144);
        Integer shift = new Integer(131072);
        this.modifierKeyTable.put("ALT", alt);
        this.nameTable.put(alt, "ALT");
        this.modifierKeyTable.put("COMMAND", command);
        this.nameTable.put(command, "COMMAND");
        this.modifierKeyTable.put("CTRL", ctrl);
        this.nameTable.put(ctrl, "CTRL");
        this.modifierKeyTable.put("SHIFT", shift);
        this.nameTable.put(shift, "SHIFT");
        this.modifierKeyTable.put("M1", Util.isMac() ? command : ctrl);
        this.modifierKeyTable.put("M2", shift);
        this.modifierKeyTable.put("M3", alt);
        this.modifierKeyTable.put("M4", Util.isMac() ? ctrl : command);
        Integer arrowDown = new Integer(0x1000002);
        this.naturalKeyTable.put("ARROW_DOWN", arrowDown);
        this.nameTable.put(arrowDown, "ARROW_DOWN");
        Integer arrowLeft = new Integer(0x1000003);
        this.naturalKeyTable.put("ARROW_LEFT", arrowLeft);
        this.nameTable.put(arrowLeft, "ARROW_LEFT");
        Integer arrowRight = new Integer(0x1000004);
        this.naturalKeyTable.put("ARROW_RIGHT", arrowRight);
        this.nameTable.put(arrowRight, "ARROW_RIGHT");
        Integer arrowUp = new Integer(0x1000001);
        this.naturalKeyTable.put("ARROW_UP", arrowUp);
        this.nameTable.put(arrowUp, "ARROW_UP");
        Integer breakKey = new Integer(16777302);
        this.naturalKeyTable.put("BREAK", breakKey);
        this.nameTable.put(breakKey, "BREAK");
        Integer bs = new Integer(8);
        this.naturalKeyTable.put("BS", bs);
        this.nameTable.put(bs, "BS");
        this.naturalKeyTable.put("BACKSPACE", bs);
        Integer capsLock = new Integer(16777298);
        this.naturalKeyTable.put("CAPS_LOCK", capsLock);
        this.nameTable.put(capsLock, "CAPS_LOCK");
        Integer cr = new Integer(13);
        this.naturalKeyTable.put("CR", cr);
        this.nameTable.put(cr, "CR");
        this.naturalKeyTable.put("ENTER", cr);
        this.naturalKeyTable.put("RETURN", cr);
        Integer del = new Integer(127);
        this.naturalKeyTable.put("DEL", del);
        this.nameTable.put(del, "DEL");
        this.naturalKeyTable.put("DELETE", del);
        Integer end = new Integer(0x1000008);
        this.naturalKeyTable.put("END", end);
        this.nameTable.put(end, "END");
        Integer esc = new Integer(27);
        this.naturalKeyTable.put("ESC", esc);
        this.nameTable.put(esc, "ESC");
        this.naturalKeyTable.put("ESCAPE", esc);
        Integer f1 = new Integer(0x100000A);
        this.naturalKeyTable.put("F1", f1);
        this.nameTable.put(f1, "F1");
        Integer f2 = new Integer(0x100000B);
        this.naturalKeyTable.put("F2", new Integer(0x100000B));
        this.nameTable.put(f2, "F2");
        Integer f3 = new Integer(0x100000C);
        this.naturalKeyTable.put("F3", new Integer(0x100000C));
        this.nameTable.put(f3, "F3");
        Integer f4 = new Integer(0x100000D);
        this.naturalKeyTable.put("F4", new Integer(0x100000D));
        this.nameTable.put(f4, "F4");
        Integer f5 = new Integer(0x100000E);
        this.naturalKeyTable.put("F5", new Integer(0x100000E));
        this.nameTable.put(f5, "F5");
        Integer f6 = new Integer(0x100000F);
        this.naturalKeyTable.put("F6", new Integer(0x100000F));
        this.nameTable.put(f6, "F6");
        Integer f7 = new Integer(0x1000010);
        this.naturalKeyTable.put("F7", new Integer(0x1000010));
        this.nameTable.put(f7, "F7");
        Integer f8 = new Integer(0x1000011);
        this.naturalKeyTable.put("F8", new Integer(0x1000011));
        this.nameTable.put(f8, "F8");
        Integer f9 = new Integer(0x1000012);
        this.naturalKeyTable.put("F9", new Integer(0x1000012));
        this.nameTable.put(f9, "F9");
        Integer f10 = new Integer(0x1000013);
        this.naturalKeyTable.put("F10", new Integer(0x1000013));
        this.nameTable.put(f10, "F10");
        Integer f11 = new Integer(0x1000014);
        this.naturalKeyTable.put("F11", new Integer(0x1000014));
        this.nameTable.put(f11, "F11");
        Integer f12 = new Integer(0x1000015);
        this.naturalKeyTable.put("F12", new Integer(0x1000015));
        this.nameTable.put(f12, "F12");
        Integer f13 = new Integer(0x1000016);
        this.naturalKeyTable.put("F13", new Integer(0x1000016));
        this.nameTable.put(f13, "F13");
        Integer f14 = new Integer(0x1000017);
        this.naturalKeyTable.put("F14", new Integer(0x1000017));
        this.nameTable.put(f14, "F14");
        Integer f15 = new Integer(0x1000018);
        this.naturalKeyTable.put("F15", new Integer(0x1000018));
        this.nameTable.put(f15, "F15");
        Integer f16 = new Integer(0x1000019);
        this.naturalKeyTable.put("F16", new Integer(0x1000019));
        this.nameTable.put(f16, "F16");
        Integer f17 = new Integer(0x100001A);
        this.naturalKeyTable.put("F17", new Integer(0x100001A));
        this.nameTable.put(f17, "F17");
        Integer f18 = new Integer(0x100001B);
        this.naturalKeyTable.put("F18", new Integer(0x100001B));
        this.nameTable.put(f18, "F18");
        Integer f19 = new Integer(0x100001C);
        this.naturalKeyTable.put("F19", new Integer(0x100001C));
        this.nameTable.put(f19, "F19");
        Integer f20 = new Integer(0x100001D);
        this.naturalKeyTable.put("F20", new Integer(0x100001D));
        this.nameTable.put(f20, "F20");
        Integer ff = new Integer(12);
        this.naturalKeyTable.put("FF", ff);
        this.nameTable.put(ff, "FF");
        Integer home = new Integer(0x1000007);
        this.naturalKeyTable.put("HOME", home);
        this.nameTable.put(home, "HOME");
        Integer insert = new Integer(0x1000009);
        this.naturalKeyTable.put("INSERT", insert);
        this.nameTable.put(insert, "INSERT");
        Integer lf = new Integer(10);
        this.naturalKeyTable.put("LF", lf);
        this.nameTable.put(lf, "LF");
        Integer nul = new Integer(0);
        this.naturalKeyTable.put("NUL", nul);
        this.nameTable.put(nul, "NUL");
        Integer numLock = new Integer(16777299);
        this.naturalKeyTable.put("NUM_LOCK", numLock);
        this.nameTable.put(numLock, "NUM_LOCK");
        Integer keypad0 = new Integer(0x1000030);
        this.naturalKeyTable.put("NUMPAD_0", keypad0);
        this.nameTable.put(keypad0, "NUMPAD_0");
        Integer keypad1 = new Integer(0x1000031);
        this.naturalKeyTable.put("NUMPAD_1", keypad1);
        this.nameTable.put(keypad1, "NUMPAD_1");
        Integer keypad2 = new Integer(16777266);
        this.naturalKeyTable.put("NUMPAD_2", keypad2);
        this.nameTable.put(keypad2, "NUMPAD_2");
        Integer keypad3 = new Integer(0x1000033);
        this.naturalKeyTable.put("NUMPAD_3", keypad3);
        this.nameTable.put(keypad3, "NUMPAD_3");
        Integer keypad4 = new Integer(16777268);
        this.naturalKeyTable.put("NUMPAD_4", keypad4);
        this.nameTable.put(keypad4, "NUMPAD_4");
        Integer keypad5 = new Integer(16777269);
        this.naturalKeyTable.put("NUMPAD_5", keypad5);
        this.nameTable.put(keypad5, "NUMPAD_5");
        Integer keypad6 = new Integer(16777270);
        this.naturalKeyTable.put("NUMPAD_6", keypad6);
        this.nameTable.put(keypad6, "NUMPAD_6");
        Integer keypad7 = new Integer(16777271);
        this.naturalKeyTable.put("NUMPAD_7", keypad7);
        this.nameTable.put(keypad7, "NUMPAD_7");
        Integer keypad8 = new Integer(16777272);
        this.naturalKeyTable.put("NUMPAD_8", keypad8);
        this.nameTable.put(keypad8, "NUMPAD_8");
        Integer keypad9 = new Integer(16777273);
        this.naturalKeyTable.put("NUMPAD_9", keypad9);
        this.nameTable.put(keypad9, "NUMPAD_9");
        Integer keypadAdd = new Integer(16777259);
        this.naturalKeyTable.put("NUMPAD_ADD", keypadAdd);
        this.nameTable.put(keypadAdd, "NUMPAD_ADD");
        Integer keypadDecimal = new Integer(16777262);
        this.naturalKeyTable.put("NUMPAD_DECIMAL", keypadDecimal);
        this.nameTable.put(keypadDecimal, "NUMPAD_DECIMAL");
        Integer keypadDivide = new Integer(16777263);
        this.naturalKeyTable.put("NUMPAD_DIVIDE", keypadDivide);
        this.nameTable.put(keypadDivide, "NUMPAD_DIVIDE");
        Integer keypadCr = new Integer(0x1000050);
        this.naturalKeyTable.put("NUMPAD_ENTER", keypadCr);
        this.nameTable.put(keypadCr, "NUMPAD_ENTER");
        Integer keypadEqual = new Integer(16777277);
        this.naturalKeyTable.put("NUMPAD_EQUAL", keypadEqual);
        this.nameTable.put(keypadEqual, "NUMPAD_EQUAL");
        Integer keypadMultiply = new Integer(16777258);
        this.naturalKeyTable.put("NUMPAD_MULTIPLY", keypadMultiply);
        this.nameTable.put(keypadMultiply, "NUMPAD_MULTIPLY");
        Integer keypadSubtract = new Integer(16777261);
        this.naturalKeyTable.put("NUMPAD_SUBTRACT", keypadSubtract);
        this.nameTable.put(keypadSubtract, "NUMPAD_SUBTRACT");
        Integer pageDown = new Integer(0x1000006);
        this.naturalKeyTable.put("PAGE_DOWN", pageDown);
        this.nameTable.put(pageDown, "PAGE_DOWN");
        Integer pageUp = new Integer(0x1000005);
        this.naturalKeyTable.put("PAGE_UP", pageUp);
        this.nameTable.put(pageUp, "PAGE_UP");
        Integer pause = new Integer(0x1000055);
        this.naturalKeyTable.put("PAUSE", pause);
        this.nameTable.put(pause, "PAUSE");
        Integer printScreen = new Integer(16777303);
        this.naturalKeyTable.put("PRINT_SCREEN", printScreen);
        this.nameTable.put(printScreen, "PRINT_SCREEN");
        Integer scrollLock = new Integer(16777300);
        this.naturalKeyTable.put("SCROLL_LOCK", scrollLock);
        this.nameTable.put(scrollLock, "SCROLL_LOCK");
        Integer space = new Integer(32);
        this.naturalKeyTable.put("SPACE", space);
        this.nameTable.put(space, "SPACE");
        Integer tab = new Integer(9);
        this.naturalKeyTable.put("TAB", tab);
        this.nameTable.put(tab, "TAB");
        Integer vt = new Integer(11);
        this.naturalKeyTable.put("VT", vt);
        this.nameTable.put(vt, "VT");
    }

    public final int formalKeyLookup(String name) {
        Object value = this.naturalKeyTable.get(name);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        if (name.length() > 0) {
            throw new IllegalArgumentException("Unrecognized formal key name: " + name);
        }
        return name.charAt(0);
    }

    public final Integer formalKeyLookupInteger(String name) {
        Object value = this.naturalKeyTable.get(name);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        return new Integer(name.charAt(0));
    }

    public final int formalModifierLookup(String name) {
        Object value = this.modifierKeyTable.get(name);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        return 0;
    }

    public final String formalNameLookup(int key) {
        Integer keyObject = new Integer(key);
        Object value = this.nameTable.get(keyObject);
        if (value instanceof String) {
            return (String)value;
        }
        return "" + (char)key;
    }

    public final int getAlt() {
        return 65536;
    }

    public final int getCommand() {
        return 0x400000;
    }

    public final int getCtrl() {
        return 262144;
    }

    public final int getShift() {
        return 131072;
    }

    public final boolean isModifierKey(int key) {
        return (key & SWT.MODIFIER_MASK) != 0;
    }
}

