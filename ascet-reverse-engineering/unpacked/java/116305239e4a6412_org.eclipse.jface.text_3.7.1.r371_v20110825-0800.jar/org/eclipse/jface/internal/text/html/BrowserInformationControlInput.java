/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.internal.text.html;

import org.eclipse.jface.internal.text.html.BrowserInput;

public abstract class BrowserInformationControlInput
extends BrowserInput {
    public int getLeadingImageWidth() {
        return 0;
    }

    public BrowserInformationControlInput(BrowserInformationControlInput previous) {
        super(previous);
    }

    public abstract String getHtml();

    public String toString() {
        return this.getHtml();
    }
}

