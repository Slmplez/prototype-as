/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.browser;

import java.net.URL;
import org.eclipse.ui.PartInitException;

public interface IWebBrowser {
    public String getId();

    public void openURL(URL var1) throws PartInitException;

    public boolean close();
}

