/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.keys;

import java.util.Iterator;
import java.util.TreeSet;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.internal.keys.NativeKeyFormatter;
import org.eclipse.ui.keys.CharacterKey;
import org.eclipse.ui.keys.IKeyFormatter;
import org.eclipse.ui.keys.KeyStroke;
import org.eclipse.ui.keys.ModifierKey;
import org.eclipse.ui.keys.NaturalKey;
import org.eclipse.ui.keys.SpecialKey;

public final class SWTKeySupport {
    private static final IKeyFormatter NATIVE_FORMATTER = new NativeKeyFormatter();

    public static KeyStroke convertAcceleratorToKeyStroke(int accelerator) {
        NaturalKey naturalKey;
        TreeSet<ModifierKey> modifierKeys = new TreeSet<ModifierKey>();
        if ((accelerator & 0x10000) != 0) {
            modifierKeys.add(ModifierKey.ALT);
        }
        if ((accelerator & 0x400000) != 0) {
            modifierKeys.add(ModifierKey.COMMAND);
        }
        if ((accelerator & 0x40000) != 0) {
            modifierKeys.add(ModifierKey.CTRL);
        }
        if ((accelerator & 0x20000) != 0) {
            modifierKeys.add(ModifierKey.SHIFT);
        }
        if ((accelerator & 0x100FFFF) == 0 && accelerator != 0) {
            naturalKey = null;
        } else {
            switch (accelerator &= 0x100FFFF) {
                case 0x1000002: {
                    naturalKey = SpecialKey.ARROW_DOWN;
                    break;
                }
                case 0x1000003: {
                    naturalKey = SpecialKey.ARROW_LEFT;
                    break;
                }
                case 0x1000004: {
                    naturalKey = SpecialKey.ARROW_RIGHT;
                    break;
                }
                case 0x1000001: {
                    naturalKey = SpecialKey.ARROW_UP;
                    break;
                }
                case 16777302: {
                    naturalKey = SpecialKey.BREAK;
                    break;
                }
                case 16777298: {
                    naturalKey = SpecialKey.CAPS_LOCK;
                    break;
                }
                case 0x1000008: {
                    naturalKey = SpecialKey.END;
                    break;
                }
                case 0x100000A: {
                    naturalKey = SpecialKey.F1;
                    break;
                }
                case 0x1000013: {
                    naturalKey = SpecialKey.F10;
                    break;
                }
                case 0x1000014: {
                    naturalKey = SpecialKey.F11;
                    break;
                }
                case 0x1000015: {
                    naturalKey = SpecialKey.F12;
                    break;
                }
                case 0x100000B: {
                    naturalKey = SpecialKey.F2;
                    break;
                }
                case 0x100000C: {
                    naturalKey = SpecialKey.F3;
                    break;
                }
                case 0x100000D: {
                    naturalKey = SpecialKey.F4;
                    break;
                }
                case 0x100000E: {
                    naturalKey = SpecialKey.F5;
                    break;
                }
                case 0x100000F: {
                    naturalKey = SpecialKey.F6;
                    break;
                }
                case 0x1000010: {
                    naturalKey = SpecialKey.F7;
                    break;
                }
                case 0x1000011: {
                    naturalKey = SpecialKey.F8;
                    break;
                }
                case 0x1000012: {
                    naturalKey = SpecialKey.F9;
                    break;
                }
                case 0x1000007: {
                    naturalKey = SpecialKey.HOME;
                    break;
                }
                case 0x1000009: {
                    naturalKey = SpecialKey.INSERT;
                    break;
                }
                case 0x1000030: {
                    naturalKey = SpecialKey.NUMPAD_0;
                    break;
                }
                case 0x1000031: {
                    naturalKey = SpecialKey.NUMPAD_1;
                    break;
                }
                case 16777266: {
                    naturalKey = SpecialKey.NUMPAD_2;
                    break;
                }
                case 0x1000033: {
                    naturalKey = SpecialKey.NUMPAD_3;
                    break;
                }
                case 16777268: {
                    naturalKey = SpecialKey.NUMPAD_4;
                    break;
                }
                case 16777269: {
                    naturalKey = SpecialKey.NUMPAD_5;
                    break;
                }
                case 16777270: {
                    naturalKey = SpecialKey.NUMPAD_6;
                    break;
                }
                case 16777271: {
                    naturalKey = SpecialKey.NUMPAD_7;
                    break;
                }
                case 16777272: {
                    naturalKey = SpecialKey.NUMPAD_8;
                    break;
                }
                case 16777273: {
                    naturalKey = SpecialKey.NUMPAD_9;
                    break;
                }
                case 16777259: {
                    naturalKey = SpecialKey.NUMPAD_ADD;
                    break;
                }
                case 0x1000050: {
                    naturalKey = SpecialKey.NUMPAD_ENTER;
                    break;
                }
                case 16777262: {
                    naturalKey = SpecialKey.NUMPAD_DECIMAL;
                    break;
                }
                case 16777263: {
                    naturalKey = SpecialKey.NUMPAD_DIVIDE;
                    break;
                }
                case 16777277: {
                    naturalKey = SpecialKey.NUMPAD_EQUAL;
                    break;
                }
                case 16777258: {
                    naturalKey = SpecialKey.NUMPAD_MULTIPLY;
                    break;
                }
                case 16777261: {
                    naturalKey = SpecialKey.NUMPAD_SUBTRACT;
                    break;
                }
                case 16777299: {
                    naturalKey = SpecialKey.NUM_LOCK;
                    break;
                }
                case 0x1000006: {
                    naturalKey = SpecialKey.PAGE_DOWN;
                    break;
                }
                case 0x1000005: {
                    naturalKey = SpecialKey.PAGE_UP;
                    break;
                }
                case 0x1000055: {
                    naturalKey = SpecialKey.PAUSE;
                    break;
                }
                case 16777303: {
                    naturalKey = SpecialKey.PRINT_SCREEN;
                    break;
                }
                case 16777300: {
                    naturalKey = SpecialKey.SCROLL_LOCK;
                    break;
                }
                default: {
                    naturalKey = CharacterKey.getInstance((char)(accelerator & 0xFFFF));
                }
            }
        }
        return KeyStroke.getInstance(modifierKeys, naturalKey);
    }

    public static int convertEventToModifiedAccelerator(Event event) {
        int modifiers = event.stateMask & SWT.MODIFIER_MASK;
        char character = SWTKeySupport.topKey(event);
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static int convertEventToUnmodifiedAccelerator(Event event) {
        return SWTKeySupport.convertEventToUnmodifiedAccelerator(event.stateMask, event.keyCode);
    }

    private static int convertEventToUnmodifiedAccelerator(int stateMask, int keyCode) {
        int modifiers = stateMask & SWT.MODIFIER_MASK;
        int character = keyCode;
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static int convertEventToUnmodifiedAccelerator(KeyEvent event) {
        return SWTKeySupport.convertEventToUnmodifiedAccelerator(event.stateMask, event.keyCode);
    }

    public static int convertEventToUnshiftedModifiedAccelerator(Event event) {
        if (Character.isLetter((char)event.keyCode)) {
            return SWTKeySupport.convertEventToUnmodifiedAccelerator(event);
        }
        int modifiers = event.stateMask & (SWT.MODIFIER_MASK ^ 0x20000);
        char character = SWTKeySupport.topKey(event);
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static final int convertKeyStrokeToAccelerator(KeyStroke keyStroke) {
        int accelerator = 0;
        Iterator iterator = keyStroke.getModifierKeys().iterator();
        while (iterator.hasNext()) {
            ModifierKey modifierKey = (ModifierKey)iterator.next();
            if (modifierKey == ModifierKey.ALT) {
                accelerator |= 0x10000;
                continue;
            }
            if (modifierKey == ModifierKey.COMMAND) {
                accelerator |= 0x400000;
                continue;
            }
            if (modifierKey == ModifierKey.CTRL) {
                accelerator |= 0x40000;
                continue;
            }
            if (modifierKey != ModifierKey.SHIFT) continue;
            accelerator |= 0x20000;
        }
        NaturalKey naturalKey = keyStroke.getNaturalKey();
        if (naturalKey instanceof CharacterKey) {
            accelerator |= ((CharacterKey)naturalKey).getCharacter();
        } else if (naturalKey instanceof SpecialKey) {
            SpecialKey specialKey = (SpecialKey)naturalKey;
            if (specialKey == SpecialKey.ARROW_DOWN) {
                accelerator |= 0x1000002;
            } else if (specialKey == SpecialKey.ARROW_LEFT) {
                accelerator |= 0x1000003;
            } else if (specialKey == SpecialKey.ARROW_RIGHT) {
                accelerator |= 0x1000004;
            } else if (specialKey == SpecialKey.ARROW_UP) {
                accelerator |= 0x1000001;
            } else if (specialKey == SpecialKey.END) {
                accelerator |= 0x1000008;
            } else if (specialKey == SpecialKey.F1) {
                accelerator |= 0x100000A;
            } else if (specialKey == SpecialKey.F10) {
                accelerator |= 0x1000013;
            } else if (specialKey == SpecialKey.F11) {
                accelerator |= 0x1000014;
            } else if (specialKey == SpecialKey.F12) {
                accelerator |= 0x1000015;
            } else if (specialKey == SpecialKey.F2) {
                accelerator |= 0x100000B;
            } else if (specialKey == SpecialKey.F3) {
                accelerator |= 0x100000C;
            } else if (specialKey == SpecialKey.F4) {
                accelerator |= 0x100000D;
            } else if (specialKey == SpecialKey.F5) {
                accelerator |= 0x100000E;
            } else if (specialKey == SpecialKey.F6) {
                accelerator |= 0x100000F;
            } else if (specialKey == SpecialKey.F7) {
                accelerator |= 0x1000010;
            } else if (specialKey == SpecialKey.F8) {
                accelerator |= 0x1000011;
            } else if (specialKey == SpecialKey.F9) {
                accelerator |= 0x1000012;
            } else if (specialKey == SpecialKey.HOME) {
                accelerator |= 0x1000007;
            } else if (specialKey == SpecialKey.INSERT) {
                accelerator |= 0x1000009;
            } else if (specialKey == SpecialKey.PAGE_DOWN) {
                accelerator |= 0x1000006;
            } else if (specialKey == SpecialKey.PAGE_UP) {
                accelerator |= 0x1000005;
            }
        }
        return accelerator;
    }

    public static IKeyFormatter getKeyFormatterForPlatform() {
        return NATIVE_FORMATTER;
    }

    private static char topKey(Event event) {
        boolean ctrlDown;
        char character = event.character;
        boolean bl = ctrlDown = (event.stateMask & 0x40000) != 0;
        if (ctrlDown && event.character != event.keyCode && event.character < ' ') {
            character = (char)(character + 64);
        }
        return character;
    }

    private static int toUpperCase(int keyCode) {
        if (keyCode > 65535) {
            return keyCode;
        }
        char character = (char)keyCode;
        return Character.isLetter(character) ? (int)Character.toUpperCase(character) : keyCode;
    }

    private SWTKeySupport() {
    }
}

