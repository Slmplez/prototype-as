/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.bindings.keys;

public interface IKeyLookup {
    public static final String ALT_NAME = "ALT";
    public static final String ARROW_DOWN_NAME = "ARROW_DOWN";
    public static final String ARROW_LEFT_NAME = "ARROW_LEFT";
    public static final String ARROW_RIGHT_NAME = "ARROW_RIGHT";
    public static final String ARROW_UP_NAME = "ARROW_UP";
    public static final String BACKSPACE_NAME = "BACKSPACE";
    public static final String BREAK_NAME = "BREAK";
    public static final String BS_NAME = "BS";
    public static final String CAPS_LOCK_NAME = "CAPS_LOCK";
    public static final String COMMAND_NAME = "COMMAND";
    public static final String CR_NAME = "CR";
    public static final String CTRL_NAME = "CTRL";
    public static final String DEL_NAME = "DEL";
    public static final String DELETE_NAME = "DELETE";
    public static final String END_NAME = "END";
    public static final String ENTER_NAME = "ENTER";
    public static final String ESC_NAME = "ESC";
    public static final String ESCAPE_NAME = "ESCAPE";
    public static final String F1_NAME = "F1";
    public static final String F10_NAME = "F10";
    public static final String F11_NAME = "F11";
    public static final String F12_NAME = "F12";
    public static final String F13_NAME = "F13";
    public static final String F14_NAME = "F14";
    public static final String F15_NAME = "F15";
    public static final String F16_NAME = "F16";
    public static final String F17_NAME = "F17";
    public static final String F18_NAME = "F18";
    public static final String F19_NAME = "F19";
    public static final String F20_NAME = "F20";
    public static final String F2_NAME = "F2";
    public static final String F3_NAME = "F3";
    public static final String F4_NAME = "F4";
    public static final String F5_NAME = "F5";
    public static final String F6_NAME = "F6";
    public static final String F7_NAME = "F7";
    public static final String F8_NAME = "F8";
    public static final String F9_NAME = "F9";
    public static final String FF_NAME = "FF";
    public static final String HOME_NAME = "HOME";
    public static final String INSERT_NAME = "INSERT";
    public static final String LF_NAME = "LF";
    public static final String M1_NAME = "M1";
    public static final String M2_NAME = "M2";
    public static final String M3_NAME = "M3";
    public static final String M4_NAME = "M4";
    public static final String NUL_NAME = "NUL";
    public static final String NUM_LOCK_NAME = "NUM_LOCK";
    public static final String NUMPAD_0_NAME = "NUMPAD_0";
    public static final String NUMPAD_1_NAME = "NUMPAD_1";
    public static final String NUMPAD_2_NAME = "NUMPAD_2";
    public static final String NUMPAD_3_NAME = "NUMPAD_3";
    public static final String NUMPAD_4_NAME = "NUMPAD_4";
    public static final String NUMPAD_5_NAME = "NUMPAD_5";
    public static final String NUMPAD_6_NAME = "NUMPAD_6";
    public static final String NUMPAD_7_NAME = "NUMPAD_7";
    public static final String NUMPAD_8_NAME = "NUMPAD_8";
    public static final String NUMPAD_9_NAME = "NUMPAD_9";
    public static final String NUMPAD_ADD_NAME = "NUMPAD_ADD";
    public static final String NUMPAD_DECIMAL_NAME = "NUMPAD_DECIMAL";
    public static final String NUMPAD_DIVIDE_NAME = "NUMPAD_DIVIDE";
    public static final String NUMPAD_ENTER_NAME = "NUMPAD_ENTER";
    public static final String NUMPAD_EQUAL_NAME = "NUMPAD_EQUAL";
    public static final String NUMPAD_MULTIPLY_NAME = "NUMPAD_MULTIPLY";
    public static final String NUMPAD_SUBTRACT_NAME = "NUMPAD_SUBTRACT";
    public static final String PAGE_DOWN_NAME = "PAGE_DOWN";
    public static final String PAGE_UP_NAME = "PAGE_UP";
    public static final String PAUSE_NAME = "PAUSE";
    public static final String PRINT_SCREEN_NAME = "PRINT_SCREEN";
    public static final String RETURN_NAME = "RETURN";
    public static final String SCROLL_LOCK_NAME = "SCROLL_LOCK";
    public static final String SHIFT_NAME = "SHIFT";
    public static final String SPACE_NAME = "SPACE";
    public static final String TAB_NAME = "TAB";
    public static final String VT_NAME = "VT";

    public int formalKeyLookup(String var1);

    public Integer formalKeyLookupInteger(String var1);

    public int formalModifierLookup(String var1);

    public String formalNameLookup(int var1);

    public int getAlt();

    public int getCommand();

    public int getCtrl();

    public int getShift();

    public boolean isModifierKey(int var1);
}

