/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.browser;

import org.eclipse.ui.browser.IWebBrowser;

public abstract class AbstractWebBrowser
implements IWebBrowser {
    private String id;

    public AbstractWebBrowser(String id) {
        this.id = id;
    }

    public String getId() {
        return this.id;
    }

    public boolean close() {
        return false;
    }
}

