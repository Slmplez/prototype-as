/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.ITextStore;

public class CopyOnWriteTextStore
implements ITextStore {
    protected ITextStore fTextStore = new StringTextStore();
    private final ITextStore fModifiableTextStore;

    public CopyOnWriteTextStore(ITextStore modifiableTextStore) {
        Assert.isNotNull((Object)modifiableTextStore);
        this.fTextStore = new StringTextStore();
        this.fModifiableTextStore = modifiableTextStore;
    }

    public char get(int offset) {
        return this.fTextStore.get(offset);
    }

    public String get(int offset, int length) {
        return this.fTextStore.get(offset, length);
    }

    public int getLength() {
        return this.fTextStore.getLength();
    }

    public void replace(int offset, int length, String text) {
        if (this.fTextStore != this.fModifiableTextStore) {
            String content = this.fTextStore.get(0, this.fTextStore.getLength());
            this.fTextStore = this.fModifiableTextStore;
            this.fTextStore.set(content);
        }
        this.fTextStore.replace(offset, length, text);
    }

    public void set(String text) {
        this.fTextStore = new StringTextStore(text);
        this.fModifiableTextStore.set("");
    }

    private static class StringTextStore
    implements ITextStore {
        private static final int SMALL_TEXT_LIMIT = 0x100000;
        private final String fText;
        private final int fCopyLimit;

        private StringTextStore() {
            this("");
        }

        private StringTextStore(String text) {
            this.fText = text != null ? text : "";
            this.fCopyLimit = this.fText.length() > 0x100000 ? this.fText.length() / 2 : 0;
        }

        public char get(int offset) {
            return this.fText.charAt(offset);
        }

        public String get(int offset, int length) {
            if (length < this.fCopyLimit) {
                return new String(this.fText.substring(offset, offset + length).toCharArray());
            }
            return this.fText.substring(offset, offset + length);
        }

        public int getLength() {
            return this.fText.length();
        }

        public void replace(int offset, int length, String text) {
            throw new UnsupportedOperationException();
        }

        public void set(String text) {
            throw new UnsupportedOperationException();
        }
    }
}

