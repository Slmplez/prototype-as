/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;

public class nsEmbedString {
    int handle;

    public nsEmbedString() {
        this.handle = XPCOM.nsEmbedString_new();
    }

    public nsEmbedString(String string) {
        if (string != null) {
            char[] aString = new char[string.length() + 1];
            string.getChars(0, string.length(), aString, 0);
            this.handle = XPCOM.nsEmbedString_new(aString);
        }
    }

    public int getAddress() {
        return this.handle;
    }

    public String toString() {
        if (this.handle == 0) {
            return null;
        }
        int length = XPCOM.nsEmbedString_Length(this.handle);
        int buffer = XPCOM.nsEmbedString_get(this.handle);
        char[] dest = new char[length];
        XPCOM.memmove(dest, buffer, length * 2);
        return new String(dest);
    }

    public void dispose() {
        if (this.handle == 0) {
            return;
        }
        XPCOM.nsEmbedString_delete(this.handle);
        this.handle = 0;
    }
}

