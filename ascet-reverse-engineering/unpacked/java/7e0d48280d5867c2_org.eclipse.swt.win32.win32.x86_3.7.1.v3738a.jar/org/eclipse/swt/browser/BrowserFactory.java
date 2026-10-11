/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWTError;
import org.eclipse.swt.browser.IE;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.internal.win32.OS;

class BrowserFactory {
    static boolean mozillaLibsLoaded;

    BrowserFactory() {
    }

    WebBrowser createWebBrowser(int style) {
        if (OS.IsWinCE && (style & 0x18000) != 0) {
            throw new SWTError(2, "Unsupported Browser type");
        }
        if ((style & 0x8000) != 0) {
            mozillaLibsLoaded = true;
            return new Mozilla();
        }
        if ((style & 0x10000) != 0) {
            if (!mozillaLibsLoaded) {
                mozillaLibsLoaded = true;
                Mozilla.LoadLibraries();
            }
            return new WebKit();
        }
        return new IE();
    }
}

