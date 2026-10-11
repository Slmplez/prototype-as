/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.bindings.keys;

import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.formatting.IKeyFormatter;
import org.eclipse.jface.bindings.keys.formatting.NativeKeyFormatter;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Event;

public final class SWTKeySupport {
    private static final IKeyFormatter NATIVE_FORMATTER = new NativeKeyFormatter();

    public static final KeyStroke convertAcceleratorToKeyStroke(int accelerator) {
        int modifierKeys = accelerator & SWT.MODIFIER_MASK;
        int naturalKey = accelerator == modifierKeys ? 0 : accelerator - modifierKeys;
        return KeyStroke.getInstance(modifierKeys, naturalKey);
    }

    public static final int convertEventToModifiedAccelerator(Event event) {
        int modifiers = event.stateMask & SWT.MODIFIER_MASK;
        char character = SWTKeySupport.topKey(event);
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static final int convertEventToUnmodifiedAccelerator(Event event) {
        return SWTKeySupport.convertEventToUnmodifiedAccelerator(event.stateMask, event.keyCode);
    }

    private static final int convertEventToUnmodifiedAccelerator(int stateMask, int keyCode) {
        int modifiers = stateMask & SWT.MODIFIER_MASK;
        int character = keyCode;
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static final int convertEventToUnmodifiedAccelerator(KeyEvent event) {
        return SWTKeySupport.convertEventToUnmodifiedAccelerator(event.stateMask, event.keyCode);
    }

    public static final int convertEventToUnshiftedModifiedAccelerator(Event event) {
        if (Character.isLetter((char)event.keyCode)) {
            return SWTKeySupport.convertEventToUnmodifiedAccelerator(event);
        }
        int modifiers = event.stateMask & (SWT.MODIFIER_MASK ^ 0x20000);
        char character = SWTKeySupport.topKey(event);
        return modifiers + SWTKeySupport.toUpperCase(character);
    }

    public static final int convertKeyStrokeToAccelerator(KeyStroke keyStroke) {
        return keyStroke.getModifierKeys() + keyStroke.getNaturalKey();
    }

    public static IKeyFormatter getKeyFormatterForPlatform() {
        return NATIVE_FORMATTER;
    }

    private static final char topKey(Event event) {
        boolean ctrlDown;
        char character = event.character;
        boolean bl = ctrlDown = (event.stateMask & 0x40000) != 0;
        if (ctrlDown && event.character != event.keyCode && event.character < ' ' && (event.keyCode & 0x1000000) == 0) {
            character = (char)(character + 64);
        }
        return character;
    }

    private static final int toUpperCase(int keyCode) {
        if (keyCode > 65535) {
            return keyCode;
        }
        char character = (char)keyCode;
        return Character.isLetter(character) ? (int)Character.toUpperCase(character) : keyCode;
    }

    protected SWTKeySupport() {
    }
}

