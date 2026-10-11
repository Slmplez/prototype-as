/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.util.Util
 *  org.eclipse.swt.program.Program
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.browser;

import java.io.IOException;
import java.net.URL;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.program.Program;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.browser.AbstractWebBrowser;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.browser.DefaultWorkbenchBrowserSupport;

public class DefaultWebBrowser
extends AbstractWebBrowser {
    private DefaultWorkbenchBrowserSupport support;
    private String webBrowser;
    private boolean webBrowserOpened;

    public DefaultWebBrowser(DefaultWorkbenchBrowserSupport support, String id) {
        super(id);
        this.support = support;
    }

    public void openURL(URL url) throws PartInitException {
        String href = url.toString();
        if (href.startsWith("file:")) {
            href = href.substring(5);
            while (href.startsWith("/")) {
                href = href.substring(1);
            }
            href = "file:///" + href;
        }
        final String localHref = href;
        final Display d = Display.getCurrent();
        if (Util.isWindows()) {
            Program.launch((String)localHref);
        } else if (Util.isMac()) {
            try {
                Runtime.getRuntime().exec("/usr/bin/open " + localHref);
            }
            catch (IOException e) {
                throw new PartInitException(WorkbenchMessages.ProductInfoDialog_unableToOpenWebBrowser, e);
            }
        } else {
            Thread launcher = new Thread("About Link Launcher"){

                public void run() {
                    block9: {
                        try {
                            String encodedLocalHref = DefaultWebBrowser.this.urlEncodeForSpaces(localHref.toCharArray());
                            if (DefaultWebBrowser.this.webBrowserOpened) {
                                Runtime.getRuntime().exec(String.valueOf(DefaultWebBrowser.this.webBrowser) + " -remote openURL(" + encodedLocalHref + ")");
                                break block9;
                            }
                            Process p = DefaultWebBrowser.this.openWebBrowser(encodedLocalHref);
                            DefaultWebBrowser.this.webBrowserOpened = true;
                            try {
                                try {
                                    if (p != null) {
                                        p.waitFor();
                                    }
                                }
                                catch (InterruptedException interruptedException) {
                                    DefaultWebBrowser.this.openWebBrowserError(d);
                                    DefaultWebBrowser.this.webBrowserOpened = false;
                                }
                            }
                            finally {
                                DefaultWebBrowser.this.webBrowserOpened = false;
                            }
                        }
                        catch (IOException iOException) {
                            DefaultWebBrowser.this.openWebBrowserError(d);
                        }
                    }
                }
            };
            launcher.start();
        }
    }

    public boolean close() {
        this.support.unregisterBrowser(this);
        return super.close();
    }

    private String urlEncodeForSpaces(char[] input) {
        StringBuffer retu = new StringBuffer(input.length);
        int i = 0;
        while (i < input.length) {
            if (input[i] == ' ') {
                retu.append("%20");
            } else {
                retu.append(input[i]);
            }
            ++i;
        }
        return retu.toString();
    }

    private Process openWebBrowser(String href) throws IOException {
        Process p = null;
        if (this.webBrowser == null) {
            try {
                this.webBrowser = "firefox";
                p = Runtime.getRuntime().exec(String.valueOf(this.webBrowser) + "  " + href);
            }
            catch (IOException iOException) {
                p = null;
                this.webBrowser = "mozilla";
            }
        }
        if (p == null) {
            try {
                p = Runtime.getRuntime().exec(String.valueOf(this.webBrowser) + " " + href);
            }
            catch (IOException iOException) {
                p = null;
                this.webBrowser = "netscape";
            }
        }
        if (p == null) {
            try {
                p = Runtime.getRuntime().exec(String.valueOf(this.webBrowser) + " " + href);
            }
            catch (IOException e) {
                p = null;
                throw e;
            }
        }
        return p;
    }

    private void openWebBrowserError(Display display) {
        display.asyncExec(new Runnable(){

            public void run() {
                MessageDialog.openError(null, (String)WorkbenchMessages.ProductInfoDialog_errorTitle, (String)WorkbenchMessages.ProductInfoDialog_unableToOpenWebBrowser);
            }
        });
    }
}

