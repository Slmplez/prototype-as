/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.AbstractDocument
 *  org.eclipse.jface.text.ConfigurableLineTracker
 *  org.eclipse.jface.text.ILineTracker
 *  org.eclipse.jface.text.ITextStore
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.AbstractDocument;
import org.eclipse.jface.text.ConfigurableLineTracker;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.ITextStore;

class DocumentClone
extends AbstractDocument {
    public DocumentClone(String content, String[] lineDelimiters) {
        this.setTextStore(new StringTextStore(content));
        ConfigurableLineTracker tracker = new ConfigurableLineTracker(lineDelimiters);
        this.setLineTracker((ILineTracker)tracker);
        this.getTracker().set(content);
        this.completeInitialization();
    }

    private static class StringTextStore
    implements ITextStore {
        private String fContent;

        public StringTextStore(String content) {
            Assert.isNotNull((Object)content);
            this.fContent = content;
        }

        public char get(int offset) {
            return this.fContent.charAt(offset);
        }

        public String get(int offset, int length) {
            return this.fContent.substring(offset, offset + length);
        }

        public int getLength() {
            return this.fContent.length();
        }

        public void replace(int offset, int length, String text) {
        }

        public void set(String text) {
        }
    }
}

