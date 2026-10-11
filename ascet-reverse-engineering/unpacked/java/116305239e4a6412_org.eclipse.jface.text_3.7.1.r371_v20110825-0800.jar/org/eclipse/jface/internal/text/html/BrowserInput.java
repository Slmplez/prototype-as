/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.html;

public abstract class BrowserInput {
    private final BrowserInput fPrevious;
    private BrowserInput fNext;

    public BrowserInput(BrowserInput previous) {
        this.fPrevious = previous;
        if (previous != null) {
            previous.fNext = this;
        }
    }

    public BrowserInput getPrevious() {
        return this.fPrevious;
    }

    public BrowserInput getNext() {
        return this.fNext;
    }

    public abstract Object getInputElement();

    public abstract String getInputName();
}

