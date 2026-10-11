/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.AuthenticationListener;
import org.eclipse.swt.browser.BrowserFactory;
import org.eclipse.swt.browser.CloseWindowListener;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.OpenWindowListener;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.browser.StatusTextListener;
import org.eclipse.swt.browser.TitleListener;
import org.eclipse.swt.browser.VisibilityWindowListener;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;

public class Browser
extends Composite {
    WebBrowser webBrowser;
    int userStyle;
    boolean isClosing;
    static int DefaultType = -1;
    static final String NO_INPUT_METHOD = "org.eclipse.swt.internal.gtk.noInputMethod";
    static final String PACKAGE_PREFIX = "org.eclipse.swt.browser.";
    static final String PROPERTY_DEFAULTTYPE = "org.eclipse.swt.browser.DefaultType";

    public Browser(Composite parent, int style) {
        super(Browser.checkParent(parent), Browser.checkStyle(style));
        this.userStyle = style;
        String platform = SWT.getPlatform();
        if ("gtk".equals(platform)) {
            parent.getDisplay().setData(NO_INPUT_METHOD, null);
        }
        style = this.getStyle();
        this.webBrowser = new BrowserFactory().createWebBrowser(style);
        if (this.webBrowser != null) {
            this.webBrowser.setBrowser(this);
            this.webBrowser.create(parent, style);
            return;
        }
        this.dispose();
        SWT.error(2);
    }

    static Composite checkParent(Composite parent) {
        Display display;
        String platform = SWT.getPlatform();
        if (!"gtk".equals(platform)) {
            return parent;
        }
        if (parent != null && !parent.isDisposed() && (display = parent.getDisplay()) != null && display.getThread() == Thread.currentThread()) {
            display.setData(NO_INPUT_METHOD, "true");
        }
        return parent;
    }

    static int checkStyle(int style) {
        if (DefaultType == -1) {
            try {
                Class.forName("org.eclipse.swt.browser.BrowserInitializer");
            }
            catch (ClassNotFoundException classNotFoundException) {}
            String value = System.getProperty(PROPERTY_DEFAULTTYPE);
            if (value != null) {
                if (value.equalsIgnoreCase("mozilla")) {
                    DefaultType = 32768;
                } else if (value.equalsIgnoreCase("webkit")) {
                    DefaultType = 65536;
                }
            }
            if (DefaultType == -1) {
                DefaultType = 0;
            }
        }
        if ((style & 0x18000) == 0) {
            style |= DefaultType;
        }
        if ((style & 0x18000) == 98304) {
            style &= 0xFFFEFFFF;
        }
        String platform = SWT.getPlatform();
        if ((style & 0x8000) != 0 || (style & 0x10000) != 0) {
            if ("carbon".equals(platform)) {
                return style | 0x1000000;
            }
            if ("motif".equals(platform)) {
                return style | 0x1000000;
            }
            return style;
        }
        if ("win32".equals(platform)) {
            return style & 0xFFFFF7FF;
        }
        if ("motif".equals(platform)) {
            return style | 0x1000000;
        }
        return style;
    }

    protected void checkWidget() {
        super.checkWidget();
    }

    public static void clearSessions() {
        WebBrowser.clearSessions();
    }

    public static String getCookie(String name, String url) {
        if (name == null) {
            SWT.error(4);
        }
        if (url == null) {
            SWT.error(4);
        }
        return WebBrowser.GetCookie(name, url);
    }

    public static boolean setCookie(String value, String url) {
        if (value == null) {
            SWT.error(4);
        }
        if (url == null) {
            SWT.error(4);
        }
        return WebBrowser.SetCookie(value, url, true);
    }

    public void addAuthenticationListener(AuthenticationListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addAuthenticationListener(listener);
    }

    public void addCloseWindowListener(CloseWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addCloseWindowListener(listener);
    }

    public void addLocationListener(LocationListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addLocationListener(listener);
    }

    public void addOpenWindowListener(OpenWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addOpenWindowListener(listener);
    }

    public void addProgressListener(ProgressListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addProgressListener(listener);
    }

    public void addStatusTextListener(StatusTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addStatusTextListener(listener);
    }

    public void addTitleListener(TitleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addTitleListener(listener);
    }

    public void addVisibilityWindowListener(VisibilityWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.addVisibilityWindowListener(listener);
    }

    public boolean back() {
        this.checkWidget();
        return this.webBrowser.back();
    }

    protected void checkSubclass() {
        int index;
        String name = this.getClass().getName();
        if (!name.substring(0, (index = name.lastIndexOf(46)) + 1).equals(PACKAGE_PREFIX)) {
            SWT.error(43);
        }
    }

    public boolean execute(String script) {
        this.checkWidget();
        if (script == null) {
            SWT.error(4);
        }
        return this.webBrowser.execute(script);
    }

    public boolean close() {
        this.checkWidget();
        if (this.webBrowser.close()) {
            this.isClosing = true;
            this.dispose();
            this.isClosing = false;
            return true;
        }
        return false;
    }

    public Object evaluate(String script) throws SWTException {
        this.checkWidget();
        if (script == null) {
            SWT.error(4);
        }
        return this.webBrowser.evaluate(script);
    }

    public boolean forward() {
        this.checkWidget();
        return this.webBrowser.forward();
    }

    public String getBrowserType() {
        this.checkWidget();
        return this.webBrowser.getBrowserType();
    }

    public boolean getJavascriptEnabled() {
        this.checkWidget();
        return this.webBrowser.jsEnabled;
    }

    public int getStyle() {
        return super.getStyle() | this.userStyle & 0x800;
    }

    public String getText() {
        this.checkWidget();
        return this.webBrowser.getText();
    }

    public String getUrl() {
        this.checkWidget();
        return this.webBrowser.getUrl();
    }

    public Object getWebBrowser() {
        this.checkWidget();
        return this.webBrowser.getWebBrowser();
    }

    public boolean isBackEnabled() {
        this.checkWidget();
        return this.webBrowser.isBackEnabled();
    }

    public boolean isFocusControl() {
        this.checkWidget();
        if (this.webBrowser.isFocusControl()) {
            return true;
        }
        return super.isFocusControl();
    }

    public boolean isForwardEnabled() {
        this.checkWidget();
        return this.webBrowser.isForwardEnabled();
    }

    public void refresh() {
        this.checkWidget();
        this.webBrowser.refresh();
    }

    public void removeAuthenticationListener(AuthenticationListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeAuthenticationListener(listener);
    }

    public void removeCloseWindowListener(CloseWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeCloseWindowListener(listener);
    }

    public void removeLocationListener(LocationListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeLocationListener(listener);
    }

    public void removeOpenWindowListener(OpenWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeOpenWindowListener(listener);
    }

    public void removeProgressListener(ProgressListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeProgressListener(listener);
    }

    public void removeStatusTextListener(StatusTextListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeStatusTextListener(listener);
    }

    public void removeTitleListener(TitleListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeTitleListener(listener);
    }

    public void removeVisibilityWindowListener(VisibilityWindowListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.webBrowser.removeVisibilityWindowListener(listener);
    }

    public void setJavascriptEnabled(boolean enabled) {
        this.checkWidget();
        this.webBrowser.jsEnabled = enabled;
        this.webBrowser.jsEnabledChanged = true;
    }

    public boolean setText(String html) {
        this.checkWidget();
        return this.setText(html, true);
    }

    public boolean setText(String html, boolean trusted) {
        this.checkWidget();
        if (html == null) {
            SWT.error(4);
        }
        return this.webBrowser.setText(html, trusted);
    }

    public boolean setUrl(String url) {
        this.checkWidget();
        return this.setUrl(url, null, null);
    }

    public boolean setUrl(String url, String postData, String[] headers) {
        this.checkWidget();
        if (url == null) {
            SWT.error(4);
        }
        return this.webBrowser.setUrl(url, postData, headers);
    }

    public void stop() {
        this.checkWidget();
        this.webBrowser.stop();
    }
}

