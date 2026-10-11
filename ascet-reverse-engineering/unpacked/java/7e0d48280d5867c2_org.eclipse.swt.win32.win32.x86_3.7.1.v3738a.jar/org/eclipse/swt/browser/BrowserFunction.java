/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.util.Random;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;

public class BrowserFunction {
    Browser browser;
    String name;
    String functionString;
    int index;
    boolean isEvaluate;
    long token;

    public BrowserFunction(Browser browser, String name) {
        this(browser, name, true);
    }

    BrowserFunction(Browser browser, String name, boolean create) {
        if (browser == null) {
            SWT.error(4);
        }
        if (name == null) {
            SWT.error(4);
        }
        if (browser.isDisposed()) {
            SWT.error(24);
        }
        browser.checkWidget();
        this.browser = browser;
        this.name = name;
        Random random = new Random();
        long value = random.nextLong();
        this.token = (value & 0xFFE0000000000000L) >>> 11 ^ value & 0x1FFFFFFFFFFFFFL;
        if (create) {
            browser.webBrowser.createFunction(this);
        }
    }

    public void dispose() {
        this.dispose(true);
    }

    void dispose(boolean remove) {
        if (this.index < 0) {
            return;
        }
        if (remove) {
            this.browser.webBrowser.destroyFunction(this);
        }
        this.browser = null;
        this.functionString = null;
        this.name = null;
        this.index = -1;
    }

    public Object function(Object[] arguments) {
        if (this.index < 0) {
            SWT.error(49);
        }
        this.browser.checkWidget();
        return null;
    }

    public Browser getBrowser() {
        if (this.index < 0) {
            SWT.error(49);
        }
        this.browser.checkWidget();
        return this.browser;
    }

    public String getName() {
        if (this.index < 0) {
            SWT.error(49);
        }
        this.browser.checkWidget();
        return this.name;
    }

    public boolean isDisposed() {
        return this.index < 0;
    }
}

