/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Util;

public final class LegacyActionTools {
    private static Map keyCodes = null;
    private static Map keyStrings = null;
    private static String localizedAlt;
    private static String localizedCommand;
    private static String localizedCtrl;
    private static Map localizedKeyCodes;
    private static String localizedShift;
    public static final char MNEMONIC_NONE = '\u0000';

    static {
        localizedKeyCodes = null;
    }

    public static final String convertAccelerator(int keyCode) {
        String modifier = LegacyActionTools.getModifierString(keyCode);
        String fullKey = modifier.equals("") ? LegacyActionTools.findKeyString(keyCode) : String.valueOf(modifier) + "+" + LegacyActionTools.findKeyString(keyCode);
        return fullKey;
    }

    public static final int convertAccelerator(String acceleratorText) {
        int accelerator = 0;
        StringTokenizer stok = new StringTokenizer(acceleratorText, "+");
        int keyCode = -1;
        boolean hasMoreTokens = stok.hasMoreTokens();
        while (hasMoreTokens) {
            String token = stok.nextToken();
            hasMoreTokens = stok.hasMoreTokens();
            if (hasMoreTokens) {
                int modifier = LegacyActionTools.findModifier(token);
                if (modifier != 0) {
                    accelerator |= modifier;
                    continue;
                }
                return 0;
            }
            keyCode = LegacyActionTools.findKeyCode(token);
        }
        if (keyCode != -1) {
            accelerator |= keyCode;
        }
        return accelerator;
    }

    static final int convertLocalizedAccelerator(String acceleratorText) {
        int accelerator = 0;
        StringTokenizer stok = new StringTokenizer(acceleratorText, "+");
        int keyCode = -1;
        boolean hasMoreTokens = stok.hasMoreTokens();
        while (hasMoreTokens) {
            String token = stok.nextToken();
            hasMoreTokens = stok.hasMoreTokens();
            if (hasMoreTokens) {
                int modifier = LegacyActionTools.findLocalizedModifier(token);
                if (modifier != 0) {
                    accelerator |= modifier;
                    continue;
                }
                return 0;
            }
            keyCode = LegacyActionTools.findLocalizedKeyCode(token);
        }
        if (keyCode != -1) {
            accelerator |= keyCode;
        }
        return accelerator;
    }

    public static final String extractAcceleratorText(String text) {
        if (text == null) {
            return null;
        }
        int index = text.lastIndexOf(9);
        if (index == -1) {
            index = text.lastIndexOf(64);
        }
        if (index >= 0) {
            return text.substring(index + 1);
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    public static final char extractMnemonic(String text) {
        if (text == null) {
            return '\u0000';
        }
        index = text.indexOf(38);
        if (index == -1) {
            return '\u0000';
        }
        textLength = text.length();
        if (index != textLength - 1) ** GOTO lbl12
        return '\u0000';
lbl-1000:
        // 1 sources

        {
            ++index;
            if ((index = text.indexOf(38, index)) != textLength - 1) continue;
            return '\u0000';
lbl12:
            // 2 sources

            ** while (text.charAt((int)(index + 1)) == '&')
        }
lbl13:
        // 1 sources

        return text.charAt(index + 1);
    }

    public static final int findKeyCode(String token) {
        Integer i;
        if (keyCodes == null) {
            LegacyActionTools.initKeyCodes();
        }
        if ((i = (Integer)keyCodes.get(token = token.toUpperCase())) != null) {
            return i;
        }
        if (token.length() == 1) {
            return token.charAt(0);
        }
        return -1;
    }

    public static final String findKeyString(int keyCode) {
        int i;
        Integer integer;
        String result;
        if (keyStrings == null) {
            LegacyActionTools.initKeyStrings();
        }
        if ((result = (String)keyStrings.get(integer = new Integer(i = keyCode & 0xFFB8FFFF))) != null) {
            return result;
        }
        result = new String(new char[]{(char)i});
        return result;
    }

    private static final int findLocalizedKeyCode(String token) {
        Integer i;
        if (localizedKeyCodes == null) {
            LegacyActionTools.initLocalizedKeyCodes();
        }
        if ((i = (Integer)localizedKeyCodes.get(token = token.toUpperCase())) != null) {
            return i;
        }
        if (token.length() == 1) {
            return token.charAt(0);
        }
        return -1;
    }

    private static final int findLocalizedModifier(String token) {
        if (localizedCtrl == null) {
            LegacyActionTools.initLocalizedModifiers();
        }
        if ((token = token.toUpperCase()).equals(localizedCtrl)) {
            return 262144;
        }
        if (token.equals(localizedShift)) {
            return 131072;
        }
        if (token.equals(localizedAlt)) {
            return 65536;
        }
        if (token.equals(localizedCommand)) {
            return 0x400000;
        }
        return 0;
    }

    public static final int findModifier(String token) {
        if ((token = token.toUpperCase()).equals("CTRL")) {
            return 262144;
        }
        if (token.equals("SHIFT")) {
            return 131072;
        }
        if (token.equals("ALT")) {
            return 65536;
        }
        if (token.equals("COMMAND")) {
            return 0x400000;
        }
        return 0;
    }

    public static final String findModifierString(int keyCode) {
        if (keyCode == 262144) {
            return JFaceResources.getString("Ctrl");
        }
        if (keyCode == 65536) {
            return JFaceResources.getString("Alt");
        }
        if (keyCode == 131072) {
            return JFaceResources.getString("Shift");
        }
        if (keyCode == 0x400000) {
            return JFaceResources.getString("Command");
        }
        return null;
    }

    private static String getModifierString(int keyCode) {
        String modString = "";
        if ((keyCode & 0x40000) != 0) {
            modString = LegacyActionTools.findModifierString(keyCode & 0x40000);
        }
        if ((keyCode & 0x10000) != 0) {
            modString = modString.equals("") ? LegacyActionTools.findModifierString(keyCode & 0x10000) : String.valueOf(modString) + "+" + LegacyActionTools.findModifierString(keyCode & 0x10000);
        }
        if ((keyCode & 0x20000) != 0) {
            modString = modString.equals("") ? LegacyActionTools.findModifierString(keyCode & 0x20000) : String.valueOf(modString) + "+" + LegacyActionTools.findModifierString(keyCode & 0x20000);
        }
        if ((keyCode & 0x400000) != 0) {
            modString = modString.equals("") ? LegacyActionTools.findModifierString(keyCode & 0x400000) : String.valueOf(modString) + "+" + LegacyActionTools.findModifierString(keyCode & 0x400000);
        }
        return modString;
    }

    private static final void initKeyCodes() {
        keyCodes = new HashMap(40);
        keyCodes.put("BACKSPACE", new Integer(8));
        keyCodes.put("TAB", new Integer(9));
        keyCodes.put("RETURN", new Integer(13));
        keyCodes.put("ENTER", new Integer(13));
        keyCodes.put("ESCAPE", new Integer(27));
        keyCodes.put("ESC", new Integer(27));
        keyCodes.put("DELETE", new Integer(127));
        keyCodes.put("SPACE", new Integer(32));
        keyCodes.put("ARROW_UP", new Integer(0x1000001));
        keyCodes.put("ARROW_DOWN", new Integer(0x1000002));
        keyCodes.put("ARROW_LEFT", new Integer(0x1000003));
        keyCodes.put("ARROW_RIGHT", new Integer(0x1000004));
        keyCodes.put("PAGE_UP", new Integer(0x1000005));
        keyCodes.put("PAGE_DOWN", new Integer(0x1000006));
        keyCodes.put("HOME", new Integer(0x1000007));
        keyCodes.put("END", new Integer(0x1000008));
        keyCodes.put("INSERT", new Integer(0x1000009));
        keyCodes.put("F1", new Integer(0x100000A));
        keyCodes.put("F2", new Integer(0x100000B));
        keyCodes.put("F3", new Integer(0x100000C));
        keyCodes.put("F4", new Integer(0x100000D));
        keyCodes.put("F5", new Integer(0x100000E));
        keyCodes.put("F6", new Integer(0x100000F));
        keyCodes.put("F7", new Integer(0x1000010));
        keyCodes.put("F8", new Integer(0x1000011));
        keyCodes.put("F9", new Integer(0x1000012));
        keyCodes.put("F10", new Integer(0x1000013));
        keyCodes.put("F11", new Integer(0x1000014));
        keyCodes.put("F12", new Integer(0x1000015));
        keyCodes.put("F13", new Integer(0x1000016));
        keyCodes.put("F14", new Integer(0x1000017));
        keyCodes.put("F15", new Integer(0x1000018));
        keyCodes.put("F16", new Integer(0x1000019));
        keyCodes.put("F17", new Integer(0x100001A));
        keyCodes.put("F18", new Integer(0x100001B));
        keyCodes.put("F19", new Integer(0x100001C));
        keyCodes.put("F20", new Integer(0x100001D));
    }

    private static void initKeyStrings() {
        keyStrings = new HashMap(40);
        keyStrings.put(new Integer(8), JFaceResources.getString("Backspace"));
        keyStrings.put(new Integer(9), JFaceResources.getString("Tab"));
        keyStrings.put(new Integer(13), JFaceResources.getString("Return"));
        keyStrings.put(new Integer(13), JFaceResources.getString("Enter"));
        keyStrings.put(new Integer(27), JFaceResources.getString("Escape"));
        keyStrings.put(new Integer(27), JFaceResources.getString("Esc"));
        keyStrings.put(new Integer(127), JFaceResources.getString("Delete"));
        keyStrings.put(new Integer(32), JFaceResources.getString("Space"));
        keyStrings.put(new Integer(0x1000001), JFaceResources.getString("Arrow_Up"));
        keyStrings.put(new Integer(0x1000002), JFaceResources.getString("Arrow_Down"));
        keyStrings.put(new Integer(0x1000003), JFaceResources.getString("Arrow_Left"));
        keyStrings.put(new Integer(0x1000004), JFaceResources.getString("Arrow_Right"));
        keyStrings.put(new Integer(0x1000005), JFaceResources.getString("Page_Up"));
        keyStrings.put(new Integer(0x1000006), JFaceResources.getString("Page_Down"));
        keyStrings.put(new Integer(0x1000007), JFaceResources.getString("Home"));
        keyStrings.put(new Integer(0x1000008), JFaceResources.getString("End"));
        keyStrings.put(new Integer(0x1000009), JFaceResources.getString("Insert"));
        keyStrings.put(new Integer(0x100000A), JFaceResources.getString("F1"));
        keyStrings.put(new Integer(0x100000B), JFaceResources.getString("F2"));
        keyStrings.put(new Integer(0x100000C), JFaceResources.getString("F3"));
        keyStrings.put(new Integer(0x100000D), JFaceResources.getString("F4"));
        keyStrings.put(new Integer(0x100000E), JFaceResources.getString("F5"));
        keyStrings.put(new Integer(0x100000F), JFaceResources.getString("F6"));
        keyStrings.put(new Integer(0x1000010), JFaceResources.getString("F7"));
        keyStrings.put(new Integer(0x1000011), JFaceResources.getString("F8"));
        keyStrings.put(new Integer(0x1000012), JFaceResources.getString("F9"));
        keyStrings.put(new Integer(0x1000013), JFaceResources.getString("F10"));
        keyStrings.put(new Integer(0x1000014), JFaceResources.getString("F11"));
        keyStrings.put(new Integer(0x1000015), JFaceResources.getString("F12"));
        keyStrings.put(new Integer(0x1000016), JFaceResources.getString("F13"));
        keyStrings.put(new Integer(0x1000017), JFaceResources.getString("F14"));
        keyStrings.put(new Integer(0x1000018), JFaceResources.getString("F15"));
        keyStrings.put(new Integer(0x1000019), JFaceResources.getString("F16"));
        keyStrings.put(new Integer(0x100001A), JFaceResources.getString("F17"));
        keyStrings.put(new Integer(0x100001B), JFaceResources.getString("F18"));
        keyStrings.put(new Integer(0x100001C), JFaceResources.getString("F19"));
        keyStrings.put(new Integer(0x100001D), JFaceResources.getString("F20"));
    }

    private static void initLocalizedKeyCodes() {
        localizedKeyCodes = new HashMap(40);
        localizedKeyCodes.put(JFaceResources.getString("Backspace").toUpperCase(), new Integer(8));
        localizedKeyCodes.put(JFaceResources.getString("Tab").toUpperCase(), new Integer(9));
        localizedKeyCodes.put(JFaceResources.getString("Return").toUpperCase(), new Integer(13));
        localizedKeyCodes.put(JFaceResources.getString("Enter").toUpperCase(), new Integer(13));
        localizedKeyCodes.put(JFaceResources.getString("Escape").toUpperCase(), new Integer(27));
        localizedKeyCodes.put(JFaceResources.getString("Esc").toUpperCase(), new Integer(27));
        localizedKeyCodes.put(JFaceResources.getString("Delete").toUpperCase(), new Integer(127));
        localizedKeyCodes.put(JFaceResources.getString("Space").toUpperCase(), new Integer(32));
        localizedKeyCodes.put(JFaceResources.getString("Arrow_Up").toUpperCase(), new Integer(0x1000001));
        localizedKeyCodes.put(JFaceResources.getString("Arrow_Down").toUpperCase(), new Integer(0x1000002));
        localizedKeyCodes.put(JFaceResources.getString("Arrow_Left").toUpperCase(), new Integer(0x1000003));
        localizedKeyCodes.put(JFaceResources.getString("Arrow_Right").toUpperCase(), new Integer(0x1000004));
        localizedKeyCodes.put(JFaceResources.getString("Page_Up").toUpperCase(), new Integer(0x1000005));
        localizedKeyCodes.put(JFaceResources.getString("Page_Down").toUpperCase(), new Integer(0x1000006));
        localizedKeyCodes.put(JFaceResources.getString("Home").toUpperCase(), new Integer(0x1000007));
        localizedKeyCodes.put(JFaceResources.getString("End").toUpperCase(), new Integer(0x1000008));
        localizedKeyCodes.put(JFaceResources.getString("Insert").toUpperCase(), new Integer(0x1000009));
        localizedKeyCodes.put(JFaceResources.getString("F1").toUpperCase(), new Integer(0x100000A));
        localizedKeyCodes.put(JFaceResources.getString("F2").toUpperCase(), new Integer(0x100000B));
        localizedKeyCodes.put(JFaceResources.getString("F3").toUpperCase(), new Integer(0x100000C));
        localizedKeyCodes.put(JFaceResources.getString("F4").toUpperCase(), new Integer(0x100000D));
        localizedKeyCodes.put(JFaceResources.getString("F5").toUpperCase(), new Integer(0x100000E));
        localizedKeyCodes.put(JFaceResources.getString("F6").toUpperCase(), new Integer(0x100000F));
        localizedKeyCodes.put(JFaceResources.getString("F7").toUpperCase(), new Integer(0x1000010));
        localizedKeyCodes.put(JFaceResources.getString("F8").toUpperCase(), new Integer(0x1000011));
        localizedKeyCodes.put(JFaceResources.getString("F9").toUpperCase(), new Integer(0x1000012));
        localizedKeyCodes.put(JFaceResources.getString("F10").toUpperCase(), new Integer(0x1000013));
        localizedKeyCodes.put(JFaceResources.getString("F11").toUpperCase(), new Integer(0x1000014));
        localizedKeyCodes.put(JFaceResources.getString("F12").toUpperCase(), new Integer(0x1000015));
        localizedKeyCodes.put(JFaceResources.getString("F13").toUpperCase(), new Integer(0x1000016));
        localizedKeyCodes.put(JFaceResources.getString("F14").toUpperCase(), new Integer(0x1000017));
        localizedKeyCodes.put(JFaceResources.getString("F15").toUpperCase(), new Integer(0x1000018));
        localizedKeyCodes.put(JFaceResources.getString("F16").toUpperCase(), new Integer(0x1000019));
        localizedKeyCodes.put(JFaceResources.getString("F17").toUpperCase(), new Integer(0x100001A));
        localizedKeyCodes.put(JFaceResources.getString("F18").toUpperCase(), new Integer(0x100001B));
        localizedKeyCodes.put(JFaceResources.getString("F19").toUpperCase(), new Integer(0x100001C));
        localizedKeyCodes.put(JFaceResources.getString("F20").toUpperCase(), new Integer(0x100001D));
    }

    private static void initLocalizedModifiers() {
        localizedCtrl = JFaceResources.getString("Ctrl").toUpperCase();
        localizedShift = JFaceResources.getString("Shift").toUpperCase();
        localizedAlt = JFaceResources.getString("Alt").toUpperCase();
        localizedCommand = JFaceResources.getString("Command").toUpperCase();
    }

    public static final String removeAcceleratorText(String text) {
        int index = text.lastIndexOf(9);
        if (index == -1) {
            index = text.lastIndexOf(64);
        }
        if (index >= 0) {
            return text.substring(0, index);
        }
        return text;
    }

    public static final String removeMnemonics(String text) {
        int index = text.indexOf(38);
        if (index == -1) {
            return text;
        }
        int len = text.length();
        StringBuffer sb = new StringBuffer(len);
        int lastIndex = 0;
        while (index != -1) {
            if (index == len - 1) break;
            if (text.charAt(index + 1) == '&') {
                ++index;
            }
            if (index > 0 && text.charAt(index - 1) == '(' && text.length() >= index + 3 && text.charAt(index + 2) == ')') {
                sb.append(text.substring(lastIndex, index - 1));
                index += 3;
            } else {
                sb.append(text.substring(lastIndex, index));
            }
            lastIndex = ++index;
            index = text.indexOf(38, index);
        }
        if (lastIndex < len) {
            sb.append(text.substring(lastIndex, len));
        }
        return sb.toString();
    }

    public static final String escapeMnemonics(String text) {
        return Util.replaceAll(text, "&", "&&");
    }

    private LegacyActionTools() {
    }
}

