/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.browser;

import java.util.Hashtable;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.browser.AbstractWorkbenchBrowserSupport;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.internal.browser.DefaultWebBrowser;

public class DefaultWorkbenchBrowserSupport
extends AbstractWorkbenchBrowserSupport {
    private Hashtable browsers = new Hashtable();
    private static final String DEFAULT_BROWSER_ID_BASE = "org.eclipse.ui.defaultBrowser";

    void registerBrowser(IWebBrowser browser) {
        this.browsers.put(browser.getId(), browser);
    }

    void unregisterBrowser(IWebBrowser browser) {
        this.browsers.remove(browser.getId());
    }

    IWebBrowser findBrowser(String id) {
        return (IWebBrowser)this.browsers.get(id);
    }

    protected IWebBrowser doCreateBrowser(int style, String browserId, String name, String tooltip) throws PartInitException {
        return new DefaultWebBrowser(this, browserId);
    }

    public IWebBrowser createBrowser(int style, String browserId, String name, String tooltip) throws PartInitException {
        String id = browserId == null ? this.getDefaultId() : browserId;
        IWebBrowser browser = this.findBrowser(id);
        if (browser != null) {
            return browser;
        }
        browser = this.doCreateBrowser(style, id, name, tooltip);
        this.registerBrowser(browser);
        return browser;
    }

    public IWebBrowser createBrowser(String browserId) throws PartInitException {
        return this.createBrowser(128, browserId, null, null);
    }

    private String getDefaultId() {
        String id = null;
        int i = 0;
        while (i < Integer.MAX_VALUE) {
            id = DEFAULT_BROWSER_ID_BASE + i;
            if (this.browsers.get(id) == null) break;
            ++i;
        }
        return id;
    }
}

