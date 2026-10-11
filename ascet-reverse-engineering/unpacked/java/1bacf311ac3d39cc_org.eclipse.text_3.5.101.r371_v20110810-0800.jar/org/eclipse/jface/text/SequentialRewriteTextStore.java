/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import java.util.Iterator;
import java.util.LinkedList;
import org.eclipse.jface.text.ITextStore;

public class SequentialRewriteTextStore
implements ITextStore {
    private LinkedList fReplaceList = new LinkedList();
    private ITextStore fSource;
    private static final boolean ASSERT_SEQUENTIALITY = false;

    public SequentialRewriteTextStore(ITextStore source) {
        this.fSource = source;
    }

    public ITextStore getSourceStore() {
        this.commit();
        return this.fSource;
    }

    public void replace(int offset, int length, String text) {
        if (text == null) {
            text = "";
        }
        if (this.fReplaceList.size() == 0) {
            this.fReplaceList.add(new Replace(offset, offset, length, text));
        } else {
            Replace firstReplace = (Replace)this.fReplaceList.getFirst();
            Replace lastReplace = (Replace)this.fReplaceList.getLast();
            if (offset + length <= firstReplace.newOffset) {
                int delta = text.length() - length;
                if (delta != 0) {
                    Iterator i = this.fReplaceList.iterator();
                    while (i.hasNext()) {
                        Replace replace = (Replace)i.next();
                        replace.newOffset += delta;
                    }
                }
                this.fReplaceList.addFirst(new Replace(offset, offset, length, text));
            } else if (offset >= lastReplace.newOffset + lastReplace.text.length()) {
                int delta = SequentialRewriteTextStore.getDelta(lastReplace);
                this.fReplaceList.add(new Replace(offset - delta, offset, length, text));
            } else {
                this.commit();
                this.fSource.replace(offset, length, text);
            }
        }
    }

    public void set(String text) {
        this.fSource.set(text);
        this.fReplaceList.clear();
    }

    public String get(int offset, int length) {
        if (this.fReplaceList.isEmpty()) {
            return this.fSource.get(offset, length);
        }
        Replace firstReplace = (Replace)this.fReplaceList.getFirst();
        Replace lastReplace = (Replace)this.fReplaceList.getLast();
        if (offset + length <= firstReplace.newOffset) {
            return this.fSource.get(offset, length);
        }
        if (offset >= lastReplace.newOffset + lastReplace.text.length()) {
            int delta = SequentialRewriteTextStore.getDelta(lastReplace);
            return this.fSource.get(offset - delta, length);
        }
        int delta = 0;
        Iterator i = this.fReplaceList.iterator();
        while (i.hasNext()) {
            Replace replace = (Replace)i.next();
            if (offset + length < replace.newOffset) {
                return this.fSource.get(offset - delta, length);
            }
            if (offset >= replace.newOffset && offset + length <= replace.newOffset + replace.text.length()) {
                return replace.text.substring(offset - replace.newOffset, offset - replace.newOffset + length);
            }
            if (offset >= replace.newOffset + replace.text.length()) {
                delta = SequentialRewriteTextStore.getDelta(replace);
                continue;
            }
            this.commit();
            return this.fSource.get(offset, length);
        }
        return this.fSource.get(offset - delta, length);
    }

    private static final int getDelta(Replace replace) {
        return replace.newOffset - replace.offset + replace.text.length() - replace.length;
    }

    public char get(int offset) {
        if (this.fReplaceList.isEmpty()) {
            return this.fSource.get(offset);
        }
        Replace firstReplace = (Replace)this.fReplaceList.getFirst();
        Replace lastReplace = (Replace)this.fReplaceList.getLast();
        if (offset < firstReplace.newOffset) {
            return this.fSource.get(offset);
        }
        if (offset >= lastReplace.newOffset + lastReplace.text.length()) {
            int delta = SequentialRewriteTextStore.getDelta(lastReplace);
            return this.fSource.get(offset - delta);
        }
        int delta = 0;
        Iterator i = this.fReplaceList.iterator();
        while (i.hasNext()) {
            Replace replace = (Replace)i.next();
            if (offset < replace.newOffset) {
                return this.fSource.get(offset - delta);
            }
            if (offset < replace.newOffset + replace.text.length()) {
                return replace.text.charAt(offset - replace.newOffset);
            }
            delta = SequentialRewriteTextStore.getDelta(replace);
        }
        return this.fSource.get(offset - delta);
    }

    public int getLength() {
        if (this.fReplaceList.isEmpty()) {
            return this.fSource.getLength();
        }
        Replace lastReplace = (Replace)this.fReplaceList.getLast();
        return this.fSource.getLength() + SequentialRewriteTextStore.getDelta(lastReplace);
    }

    public void dispose() {
        this.fReplaceList = null;
        this.fSource = null;
    }

    private void commit() {
        if (this.fReplaceList.isEmpty()) {
            return;
        }
        StringBuffer buffer = new StringBuffer();
        int delta = 0;
        Iterator i = this.fReplaceList.iterator();
        while (i.hasNext()) {
            Replace replace = (Replace)i.next();
            int offset = buffer.length() - delta;
            buffer.append(this.fSource.get(offset, replace.offset - offset));
            buffer.append(replace.text);
            delta = SequentialRewriteTextStore.getDelta(replace);
        }
        int offset = buffer.length() - delta;
        buffer.append(this.fSource.get(offset, this.fSource.getLength() - offset));
        this.fSource.set(buffer.toString());
        this.fReplaceList.clear();
    }

    private static class Replace {
        public int newOffset;
        public final int offset;
        public final int length;
        public final String text;

        public Replace(int offset, int newOffset, int length, String text) {
            this.newOffset = newOffset;
            this.offset = offset;
            this.length = length;
            this.text = text;
        }
    }
}

