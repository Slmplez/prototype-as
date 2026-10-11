/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.bindings.keys;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Text;

public final class KeySequenceText {
    private static final String EMPTY_STRING = "";
    public static final int INFINITE = -1;
    public static final String P_KEY_SEQUENCE = "org.eclipse.jface.bindings.keys.KeySequenceText.KeySequence";
    public static final List TRAPPED_KEYS;
    private final KeyTrapListener keyFilter = new KeyTrapListener();
    private KeySequence keySequence = KeySequence.getInstance();
    private Collection listeners = null;
    private int maxStrokes = -1;
    private final Text text;
    private final UpdateSequenceListener updateSequenceListener = new UpdateSequenceListener();

    static {
        TreeSet<KeyStroke> trappedKeys = new TreeSet<KeyStroke>();
        trappedKeys.add(SWTKeySupport.convertAcceleratorToKeyStroke(9));
        trappedKeys.add(SWTKeySupport.convertAcceleratorToKeyStroke(131081));
        trappedKeys.add(SWTKeySupport.convertAcceleratorToKeyStroke(8));
        ArrayList trappedKeyList = new ArrayList(trappedKeys);
        TRAPPED_KEYS = Collections.unmodifiableList(trappedKeyList);
    }

    public KeySequenceText(Text wrappedText) {
        this.text = wrappedText;
        if (Util.isMac()) {
            final Font font = new Font((Device)this.text.getDisplay(), "Lucida Grande", 13, 0);
            this.text.setFont(font);
            this.text.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    font.dispose();
                }
            });
        }
        this.text.addListener(2, (Listener)this.keyFilter);
        this.text.addListener(1, (Listener)this.keyFilter);
        final TraversalFilterManager traversalFilterManager = new TraversalFilterManager();
        this.text.addFocusListener((FocusListener)traversalFilterManager);
        this.text.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                traversalFilterManager.dispose();
            }
        });
        this.text.addModifyListener((ModifyListener)this.updateSequenceListener);
    }

    public final void addPropertyChangeListener(IPropertyChangeListener listener) {
        if (listener == null) {
            return;
        }
        if (this.listeners == null) {
            this.listeners = new ArrayList(1);
        }
        this.listeners.add(listener);
    }

    public void clear() {
        KeySequence oldKeySequence = this.keySequence;
        this.keySequence = KeySequence.getInstance();
        this.text.setText(EMPTY_STRING);
        this.firePropertyChangeEvent(oldKeySequence);
    }

    /*
     * Unable to fully structure code
     */
    private final int deleteSelection(KeyStroke[] keyStrokes, boolean allowIncomplete, KeyStroke[][] deletedKeyStrokes) {
        selection = this.text.getSelection();
        start = selection.x;
        end = selection.y;
        string = new String();
        currentStrokes = new ArrayList<KeyStroke>();
        startTextIndex = 0;
        keyStrokesLength = keyStrokes.length;
        i = 0;
        while (i < keyStrokesLength && string.length() < start) {
            startTextIndex = string.length();
            currentStrokes.add(keyStrokes[i]);
            string = KeySequence.getInstance(currentStrokes).format();
            ++i;
        }
        startStrokeIndex = string.length() == start ? currentStrokes.size() : currentStrokes.size() - 1;
        if (start != end) ** GOTO lbl24
        deletedKeyStrokes[0] = keyStrokes;
        return startStrokeIndex;
lbl-1000:
        // 1 sources

        {
            currentStrokes.add(keyStrokes[i]);
            string = KeySequence.getInstance(currentStrokes).format();
            ++i;
lbl24:
            // 2 sources

            ** while (i < keyStrokesLength && string.length() < end)
        }
lbl25:
        // 1 sources

        endStrokeIndex = currentStrokes.size() - 1;
        if (endStrokeIndex < 0) {
            endStrokeIndex = 0;
        }
        newLength = keyStrokesLength - (endStrokeIndex - startStrokeIndex + 1);
        deletedKeyStrokes[0] = new KeyStroke[newLength];
        startStroke = keyStrokes[startStrokeIndex];
        keyStrokeResult = new KeyStroke[newLength];
        System.arraycopy(keyStrokes, 0, keyStrokeResult, 0, startStrokeIndex);
        System.arraycopy(keyStrokes, endStrokeIndex + 1, keyStrokeResult, startStrokeIndex, keyStrokesLength - endStrokeIndex - 1);
        System.arraycopy(keyStrokeResult, 0, deletedKeyStrokes[0], 0, newLength);
        if (allowIncomplete && startTextIndex + (incompleteStrokeLength = (incompleteStroke = KeyStroke.getInstance(modifierKeys = startStroke.getModifierKeys(), 0)).format().length()) <= start) {
            added = new KeyStroke[newLength + 1];
            System.arraycopy(deletedKeyStrokes[0], 0, added, 0, startStrokeIndex);
            added[startStrokeIndex] = incompleteStroke;
            System.arraycopy(deletedKeyStrokes[0], startStrokeIndex, added, startStrokeIndex + 1, newLength - startStrokeIndex);
            deletedKeyStrokes[0] = added;
        }
        return startStrokeIndex;
    }

    protected final void firePropertyChangeEvent(KeySequence oldKeySequence) {
        if (this.listeners != null) {
            Iterator listenerItr = this.listeners.iterator();
            PropertyChangeEvent event = new PropertyChangeEvent(this, P_KEY_SEQUENCE, oldKeySequence, this.getKeySequence());
            while (listenerItr.hasNext()) {
                IPropertyChangeListener listener = (IPropertyChangeListener)listenerItr.next();
                listener.propertyChange(event);
            }
        }
    }

    public KeySequence getKeySequence() {
        return this.keySequence;
    }

    private String getText() {
        return this.text.getText();
    }

    private boolean hasIncompleteStroke() {
        return !this.keySequence.isComplete();
    }

    private boolean hasSelection() {
        return this.text.getSelectionCount() > 0;
    }

    public void insert(KeyStroke stroke) {
        KeyStroke[] newKeyStrokes;
        if (!stroke.isComplete()) {
            return;
        }
        KeySequence keySequence = this.getKeySequence();
        KeyStroke[] oldKeyStrokes = keySequence.getKeyStrokes();
        if (this.hasIncompleteStroke() && !keySequence.isEmpty()) {
            int newKeyStrokesLength = oldKeyStrokes.length - 1;
            newKeyStrokes = new KeyStroke[newKeyStrokesLength];
            System.arraycopy(oldKeyStrokes, 0, newKeyStrokes, 0, newKeyStrokesLength);
        } else {
            newKeyStrokes = oldKeyStrokes;
        }
        KeyStroke[][] deletedKeyStrokes = new KeyStroke[1][];
        int index = this.deleteSelection(newKeyStrokes, false, deletedKeyStrokes);
        if (index == -1) {
            index = 0;
        }
        KeyStroke[] keyStrokes = this.insertStrokeAt(newKeyStrokes, stroke, index);
        this.keyFilter.clearInsertionIndex();
        this.setKeySequence(KeySequence.getInstance(keyStrokes));
    }

    private final KeyStroke[] insertStrokeAt(KeyStroke[] keyStrokes, KeyStroke stroke, int index) {
        KeyStroke currentStroke;
        int keyStrokesLength = keyStrokes.length;
        KeyStroke keyStroke = currentStroke = index >= keyStrokesLength ? null : keyStrokes[index];
        if (currentStroke != null && !currentStroke.isComplete()) {
            int modifierKeys = currentStroke.getModifierKeys();
            int naturalKey = stroke.getNaturalKey();
            keyStrokes[index] = KeyStroke.getInstance(modifierKeys |= stroke.getModifierKeys(), naturalKey);
            return keyStrokes;
        }
        KeyStroke[] newKeyStrokes = new KeyStroke[keyStrokesLength + 1];
        System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, index);
        newKeyStrokes[index] = stroke;
        if (index < keyStrokesLength) {
            System.arraycopy(keyStrokes, index, newKeyStrokes, index + 1, keyStrokesLength - index);
        }
        return newKeyStrokes;
    }

    private boolean isCursorInLastPosition() {
        return this.text.getSelection().y >= this.getText().length();
    }

    public final void removePropertyChangeListener(IPropertyChangeListener listener) {
        if (listener == null || this.listeners == null) {
            return;
        }
        this.listeners.remove(listener);
    }

    public void setKeySequence(KeySequence newKeySequence) {
        String newString;
        String currentString;
        KeyStroke[] oldKeyStrokes;
        KeySequence oldKeySequence = this.keySequence;
        if (newKeySequence == null) {
            this.text.setText(EMPTY_STRING);
        } else {
            this.keySequence = newKeySequence;
        }
        if (this.maxStrokes != -1 && this.maxStrokes < (oldKeyStrokes = this.keySequence.getKeyStrokes()).length) {
            KeyStroke[] newKeyStrokes = new KeyStroke[this.maxStrokes];
            System.arraycopy(oldKeyStrokes, 0, newKeyStrokes, 0, this.maxStrokes);
            this.keySequence = KeySequence.getInstance(newKeyStrokes);
        }
        if (!(currentString = this.getText()).equals(newString = this.keySequence.format())) {
            this.text.removeModifyListener((ModifyListener)this.updateSequenceListener);
            this.text.setText(this.keySequence.format());
            this.text.addModifyListener((ModifyListener)this.updateSequenceListener);
            this.text.setSelection(this.getText().length());
        }
        this.firePropertyChangeEvent(oldKeySequence);
    }

    public int getKeyStrokeLimit() {
        return this.maxStrokes;
    }

    public void setKeyStrokeLimit(int keyStrokeLimit) {
        if (keyStrokeLimit <= 0 && keyStrokeLimit != -1) {
            throw new IllegalArgumentException();
        }
        this.maxStrokes = keyStrokeLimit;
        this.setKeySequence(this.getKeySequence());
    }

    private class KeyTrapListener
    implements Listener {
        private int insertionIndex = -1;

        private KeyTrapListener() {
        }

        void clearInsertionIndex() {
            this.insertionIndex = -1;
        }

        private final KeyStroke[] deleteKeyStroke(KeyStroke[] keyStrokes) {
            this.clearInsertionIndex();
            if (KeySequenceText.this.hasSelection()) {
                KeyStroke[][] deletedKeyStrokes = new KeyStroke[1][];
                KeySequenceText.this.deleteSelection(keyStrokes, false, deletedKeyStrokes);
                return deletedKeyStrokes[0];
            }
            if (keyStrokes.length > 0) {
                int newKeyStrokesLength = keyStrokes.length - 1;
                KeyStroke[] newKeyStrokes = new KeyStroke[newKeyStrokesLength];
                System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, newKeyStrokesLength);
                return newKeyStrokes;
            }
            return keyStrokes;
        }

        public void handleEvent(Event event) {
            KeyStroke[] keyStrokes = KeySequenceText.this.getKeySequence().getKeyStrokes();
            if (event.type == 1) {
                keyStrokes = this.handleKeyDown(event, keyStrokes);
            } else if (event.type == 2) {
                keyStrokes = this.handleKeyUp(event, keyStrokes);
            }
            KeySequenceText.this.setKeySequence(KeySequence.getInstance(keyStrokes));
            event.doit = false;
        }

        private KeyStroke[] handleKeyDown(Event event, KeyStroke[] keyStrokes) {
            if ((event.character == '\b' || event.character == '\u007f') && event.stateMask == 0) {
                return this.deleteKeyStroke(keyStrokes);
            }
            return this.insertKeyStroke(event, keyStrokes);
        }

        private final KeyStroke[] handleKeyUp(Event event, KeyStroke[] keyStrokes) {
            if (KeySequenceText.this.hasIncompleteStroke()) {
                KeyStroke[] newKeyStrokes;
                Event mockEvent = new Event();
                mockEvent.stateMask = (event.keyCode & SWT.MODIFIER_MASK) != 0 ? event.stateMask - event.keyCode : event.stateMask;
                int key = SWTKeySupport.convertEventToUnmodifiedAccelerator(mockEvent);
                KeyStroke remainingStroke = SWTKeySupport.convertAcceleratorToKeyStroke(key);
                int keyStrokesLength = keyStrokes.length;
                if (keyStrokesLength > 0 && remainingStroke.getModifierKeys() != 0) {
                    newKeyStrokes = new KeyStroke[keyStrokesLength];
                    System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, keyStrokesLength - 1);
                    newKeyStrokes[keyStrokesLength - 1] = remainingStroke;
                } else if (keyStrokesLength > 0) {
                    newKeyStrokes = new KeyStroke[keyStrokesLength - 1];
                    System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, keyStrokesLength - 1);
                } else if (remainingStroke.getModifierKeys() != 0) {
                    newKeyStrokes = new KeyStroke[keyStrokesLength + 1];
                    System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, keyStrokesLength);
                    newKeyStrokes[keyStrokesLength] = remainingStroke;
                } else {
                    newKeyStrokes = keyStrokes;
                }
                return newKeyStrokes;
            }
            return keyStrokes;
        }

        private final KeyStroke[] insertKeyStroke(Event event, KeyStroke[] keyStrokes) {
            int key = SWTKeySupport.convertEventToUnmodifiedAccelerator(event);
            KeyStroke stroke = SWTKeySupport.convertAcceleratorToKeyStroke(key);
            if (16777299 == stroke.getNaturalKey() || 16777298 == stroke.getNaturalKey() || 16777300 == stroke.getNaturalKey()) {
                return keyStrokes;
            }
            if (this.insertionIndex != -1) {
                if (stroke.isComplete()) {
                    keyStrokes = KeySequenceText.this.insertStrokeAt(keyStrokes, stroke, this.insertionIndex);
                    this.clearInsertionIndex();
                }
            } else if (KeySequenceText.this.hasSelection()) {
                KeyStroke[][] deletedKeyStrokes = new KeyStroke[1][];
                this.insertionIndex = KeySequenceText.this.deleteSelection(keyStrokes, stroke.isComplete(), deletedKeyStrokes);
                keyStrokes = deletedKeyStrokes[0];
                if (stroke.isComplete() || this.insertionIndex >= keyStrokes.length) {
                    keyStrokes = KeySequenceText.this.insertStrokeAt(keyStrokes, stroke, this.insertionIndex);
                    this.clearInsertionIndex();
                }
            } else {
                if (KeySequenceText.this.hasIncompleteStroke() && keyStrokes.length > 0) {
                    KeyStroke[] newKeyStrokes = new KeyStroke[keyStrokes.length - 1];
                    System.arraycopy(keyStrokes, 0, newKeyStrokes, 0, keyStrokes.length - 1);
                    keyStrokes = newKeyStrokes;
                }
                if (keyStrokes.length == 0 || this.insertionIndex >= keyStrokes.length || KeySequenceText.this.isCursorInLastPosition()) {
                    keyStrokes = KeySequenceText.this.insertStrokeAt(keyStrokes, stroke, keyStrokes.length);
                    this.clearInsertionIndex();
                } else {
                    KeyStroke[][] deletedKeyStrokes = new KeyStroke[1][];
                    this.insertionIndex = KeySequenceText.this.deleteSelection(keyStrokes, stroke.isComplete(), deletedKeyStrokes);
                    keyStrokes = deletedKeyStrokes[0];
                    if (stroke.isComplete()) {
                        keyStrokes = KeySequenceText.this.insertStrokeAt(keyStrokes, stroke, this.insertionIndex);
                        this.clearInsertionIndex();
                    }
                }
            }
            return keyStrokes;
        }
    }

    private class TraversalFilter
    implements Listener {
        private TraversalFilter() {
        }

        public void handleEvent(Event event) {
            switch (event.detail) {
                case 0: 
                case 2: 
                case 4: 
                case 128: 
                case 256: 
                case 512: {
                    event.type = 0;
                    event.doit = false;
                    break;
                }
                case 8: 
                case 16: {
                    if ((event.stateMask & (SWT.MODIFIER_MASK ^ 0x20000)) != 0) {
                        event.type = 0;
                        event.doit = false;
                        break;
                    }
                }
                default: {
                    if (!KeySequenceText.this.hasIncompleteStroke()) break;
                    KeyStroke[] oldKeyStrokes = KeySequenceText.this.getKeySequence().getKeyStrokes();
                    int newKeyStrokesLength = oldKeyStrokes.length - 1;
                    if (newKeyStrokesLength >= 1) {
                        KeyStroke[] newKeyStrokes = new KeyStroke[newKeyStrokesLength];
                        System.arraycopy(oldKeyStrokes, 0, newKeyStrokes, 0, newKeyStrokesLength);
                        KeySequenceText.this.setKeySequence(KeySequence.getInstance(newKeyStrokes));
                        break;
                    }
                    KeySequenceText.this.setKeySequence(KeySequence.getInstance());
                }
            }
        }
    }

    private class TraversalFilterManager
    implements FocusListener {
        private TraversalFilter filter;
        private boolean filtering;

        private TraversalFilterManager() {
            this.filter = new TraversalFilter();
            this.filtering = false;
        }

        public void focusGained(FocusEvent event) {
            Display.getCurrent().addFilter(31, (Listener)this.filter);
            this.filtering = true;
        }

        public void focusLost(FocusEvent event) {
            Display.getCurrent().removeFilter(31, (Listener)this.filter);
            this.filtering = false;
        }

        public void dispose() {
            if (this.filtering) {
                Display.getCurrent().removeFilter(31, (Listener)this.filter);
            }
        }
    }

    private class UpdateSequenceListener
    implements ModifyListener {
        private UpdateSequenceListener() {
        }

        public void modifyText(ModifyEvent event) {
            try {
                KeySequence originalSequence = KeySequenceText.this.getKeySequence();
                String contents = KeySequenceText.this.getText();
                KeySequence newSequence = KeySequence.getInstance(contents);
                if (!originalSequence.equals(newSequence)) {
                    KeySequenceText.this.setKeySequence(newSequence);
                }
            }
            catch (ParseException parseException) {
                KeySequenceText.this.setKeySequence(KeySequenceText.this.getKeySequence());
            }
        }
    }
}

