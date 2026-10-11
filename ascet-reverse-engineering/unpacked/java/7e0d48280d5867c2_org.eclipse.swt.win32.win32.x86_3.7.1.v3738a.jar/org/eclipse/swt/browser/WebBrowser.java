/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.AuthenticationListener;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.CloseWindowListener;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.OpenWindowListener;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.browser.StatusTextListener;
import org.eclipse.swt.browser.TitleListener;
import org.eclipse.swt.browser.VisibilityWindowListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;

abstract class WebBrowser {
    Browser browser;
    Hashtable functions = new Hashtable();
    AuthenticationListener[] authenticationListeners = new AuthenticationListener[0];
    CloseWindowListener[] closeWindowListeners = new CloseWindowListener[0];
    LocationListener[] locationListeners = new LocationListener[0];
    OpenWindowListener[] openWindowListeners = new OpenWindowListener[0];
    ProgressListener[] progressListeners = new ProgressListener[0];
    StatusTextListener[] statusTextListeners = new StatusTextListener[0];
    TitleListener[] titleListeners = new TitleListener[0];
    VisibilityWindowListener[] visibilityWindowListeners = new VisibilityWindowListener[0];
    boolean jsEnabledChanged;
    boolean jsEnabled = true;
    int nextFunctionIndex = 1;
    Object evaluateResult;
    static final String ERROR_ID = "org.eclipse.swt.browser.error";
    static final String EXECUTE_ID = "SWTExecuteTemporaryFunction";
    static Vector NativePendingCookies = new Vector();
    static Vector MozillaPendingCookies = new Vector();
    static String CookieName;
    static String CookieValue;
    static String CookieUrl;
    static boolean CookieResult;
    static Runnable MozillaClearSessions;
    static Runnable NativeClearSessions;
    static Runnable MozillaGetCookie;
    static Runnable NativeGetCookie;
    static Runnable MozillaSetCookie;
    static Runnable NativeSetCookie;
    static final int[][] KeyTable;

    static {
        int[][] nArrayArray = new int[117][];
        nArrayArray[0] = new int[]{18, 65536};
        nArrayArray[1] = new int[]{16, 131072};
        nArrayArray[2] = new int[]{17, 262144};
        nArrayArray[3] = new int[]{224, 0x400000};
        nArrayArray[4] = new int[]{65, 97};
        nArrayArray[5] = new int[]{66, 98};
        nArrayArray[6] = new int[]{67, 99};
        nArrayArray[7] = new int[]{68, 100};
        nArrayArray[8] = new int[]{69, 101};
        nArrayArray[9] = new int[]{70, 102};
        nArrayArray[10] = new int[]{71, 103};
        nArrayArray[11] = new int[]{72, 104};
        nArrayArray[12] = new int[]{73, 105};
        nArrayArray[13] = new int[]{74, 106};
        nArrayArray[14] = new int[]{75, 107};
        nArrayArray[15] = new int[]{76, 108};
        nArrayArray[16] = new int[]{77, 109};
        nArrayArray[17] = new int[]{78, 110};
        nArrayArray[18] = new int[]{79, 111};
        nArrayArray[19] = new int[]{80, 112};
        nArrayArray[20] = new int[]{81, 113};
        nArrayArray[21] = new int[]{82, 114};
        nArrayArray[22] = new int[]{83, 115};
        nArrayArray[23] = new int[]{84, 116};
        nArrayArray[24] = new int[]{85, 117};
        nArrayArray[25] = new int[]{86, 118};
        nArrayArray[26] = new int[]{87, 119};
        nArrayArray[27] = new int[]{88, 120};
        nArrayArray[28] = new int[]{89, 121};
        nArrayArray[29] = new int[]{90, 122};
        nArrayArray[30] = new int[]{48, 48};
        nArrayArray[31] = new int[]{49, 49};
        nArrayArray[32] = new int[]{50, 50};
        nArrayArray[33] = new int[]{51, 51};
        nArrayArray[34] = new int[]{52, 52};
        nArrayArray[35] = new int[]{53, 53};
        nArrayArray[36] = new int[]{54, 54};
        nArrayArray[37] = new int[]{55, 55};
        nArrayArray[38] = new int[]{56, 56};
        nArrayArray[39] = new int[]{57, 57};
        nArrayArray[40] = new int[]{32, 32};
        nArrayArray[41] = new int[]{59, 59};
        nArrayArray[42] = new int[]{61, 61};
        nArrayArray[43] = new int[]{188, 44};
        nArrayArray[44] = new int[]{190, 46};
        nArrayArray[45] = new int[]{191, 47};
        nArrayArray[46] = new int[]{219, 91};
        nArrayArray[47] = new int[]{221, 93};
        nArrayArray[48] = new int[]{222, 39};
        nArrayArray[49] = new int[]{192, 96};
        nArrayArray[50] = new int[]{220, 92};
        nArrayArray[51] = new int[]{108, 124};
        nArrayArray[52] = new int[]{37, 0x1000003};
        nArrayArray[53] = new int[]{39, 0x1000004};
        nArrayArray[54] = new int[]{38, 0x1000001};
        nArrayArray[55] = new int[]{40, 0x1000002};
        nArrayArray[56] = new int[]{45, 0x1000009};
        nArrayArray[57] = new int[]{36, 0x1000007};
        nArrayArray[58] = new int[]{35, 0x1000008};
        nArrayArray[59] = new int[]{46, 127};
        nArrayArray[60] = new int[]{33, 0x1000005};
        nArrayArray[61] = new int[]{34, 0x1000006};
        nArrayArray[62] = new int[]{8, 8};
        nArrayArray[63] = new int[]{13, 13};
        nArrayArray[64] = new int[]{9, 9};
        nArrayArray[65] = new int[]{27, 27};
        nArrayArray[66] = new int[]{12, 127};
        nArrayArray[67] = new int[]{112, 0x100000A};
        nArrayArray[68] = new int[]{113, 0x100000B};
        nArrayArray[69] = new int[]{114, 0x100000C};
        nArrayArray[70] = new int[]{115, 0x100000D};
        nArrayArray[71] = new int[]{116, 0x100000E};
        nArrayArray[72] = new int[]{117, 0x100000F};
        nArrayArray[73] = new int[]{118, 0x1000010};
        nArrayArray[74] = new int[]{119, 0x1000011};
        nArrayArray[75] = new int[]{120, 0x1000012};
        nArrayArray[76] = new int[]{121, 0x1000013};
        nArrayArray[77] = new int[]{122, 0x1000014};
        nArrayArray[78] = new int[]{123, 0x1000015};
        nArrayArray[79] = new int[]{124, 0x1000016};
        nArrayArray[80] = new int[]{125, 0x1000017};
        nArrayArray[81] = new int[]{126, 0x1000018};
        int[] nArray = new int[2];
        nArray[0] = 127;
        nArrayArray[82] = nArray;
        int[] nArray2 = new int[2];
        nArray2[0] = 128;
        nArrayArray[83] = nArray2;
        int[] nArray3 = new int[2];
        nArray3[0] = 129;
        nArrayArray[84] = nArray3;
        int[] nArray4 = new int[2];
        nArray4[0] = 130;
        nArrayArray[85] = nArray4;
        int[] nArray5 = new int[2];
        nArray5[0] = 131;
        nArrayArray[86] = nArray5;
        int[] nArray6 = new int[2];
        nArray6[0] = 132;
        nArrayArray[87] = nArray6;
        int[] nArray7 = new int[2];
        nArray7[0] = 133;
        nArrayArray[88] = nArray7;
        int[] nArray8 = new int[2];
        nArray8[0] = 134;
        nArrayArray[89] = nArray8;
        int[] nArray9 = new int[2];
        nArray9[0] = 135;
        nArrayArray[90] = nArray9;
        nArrayArray[91] = new int[]{96, 0x1000030};
        nArrayArray[92] = new int[]{97, 0x1000031};
        nArrayArray[93] = new int[]{98, 16777266};
        nArrayArray[94] = new int[]{99, 0x1000033};
        nArrayArray[95] = new int[]{100, 16777268};
        nArrayArray[96] = new int[]{101, 16777269};
        nArrayArray[97] = new int[]{102, 16777270};
        nArrayArray[98] = new int[]{103, 16777271};
        nArrayArray[99] = new int[]{104, 16777272};
        nArrayArray[100] = new int[]{105, 16777273};
        nArrayArray[101] = new int[]{14, 0x1000050};
        nArrayArray[102] = new int[]{107, 16777259};
        nArrayArray[103] = new int[]{109, 16777261};
        nArrayArray[104] = new int[]{106, 16777258};
        nArrayArray[105] = new int[]{111, 16777263};
        nArrayArray[106] = new int[]{110, 16777262};
        nArrayArray[107] = new int[]{20, 16777298};
        nArrayArray[108] = new int[]{144, 16777299};
        nArrayArray[109] = new int[]{145, 16777300};
        nArrayArray[110] = new int[]{44, 16777303};
        nArrayArray[111] = new int[]{6, 0x1000051};
        nArrayArray[112] = new int[]{19, 0x1000055};
        nArrayArray[113] = new int[]{3, 16777302};
        nArrayArray[114] = new int[]{186, 59};
        nArrayArray[115] = new int[]{187, 61};
        nArrayArray[116] = new int[]{189, 45};
        KeyTable = nArrayArray;
    }

    WebBrowser() {
    }

    public void addAuthenticationListener(AuthenticationListener listener) {
        AuthenticationListener[] newAuthenticationListeners = new AuthenticationListener[this.authenticationListeners.length + 1];
        System.arraycopy(this.authenticationListeners, 0, newAuthenticationListeners, 0, this.authenticationListeners.length);
        this.authenticationListeners = newAuthenticationListeners;
        this.authenticationListeners[this.authenticationListeners.length - 1] = listener;
    }

    public void addCloseWindowListener(CloseWindowListener listener) {
        CloseWindowListener[] newCloseWindowListeners = new CloseWindowListener[this.closeWindowListeners.length + 1];
        System.arraycopy(this.closeWindowListeners, 0, newCloseWindowListeners, 0, this.closeWindowListeners.length);
        this.closeWindowListeners = newCloseWindowListeners;
        this.closeWindowListeners[this.closeWindowListeners.length - 1] = listener;
    }

    public void addLocationListener(LocationListener listener) {
        LocationListener[] newLocationListeners = new LocationListener[this.locationListeners.length + 1];
        System.arraycopy(this.locationListeners, 0, newLocationListeners, 0, this.locationListeners.length);
        this.locationListeners = newLocationListeners;
        this.locationListeners[this.locationListeners.length - 1] = listener;
    }

    public void addOpenWindowListener(OpenWindowListener listener) {
        OpenWindowListener[] newOpenWindowListeners = new OpenWindowListener[this.openWindowListeners.length + 1];
        System.arraycopy(this.openWindowListeners, 0, newOpenWindowListeners, 0, this.openWindowListeners.length);
        this.openWindowListeners = newOpenWindowListeners;
        this.openWindowListeners[this.openWindowListeners.length - 1] = listener;
    }

    public void addProgressListener(ProgressListener listener) {
        ProgressListener[] newProgressListeners = new ProgressListener[this.progressListeners.length + 1];
        System.arraycopy(this.progressListeners, 0, newProgressListeners, 0, this.progressListeners.length);
        this.progressListeners = newProgressListeners;
        this.progressListeners[this.progressListeners.length - 1] = listener;
    }

    public void addStatusTextListener(StatusTextListener listener) {
        StatusTextListener[] newStatusTextListeners = new StatusTextListener[this.statusTextListeners.length + 1];
        System.arraycopy(this.statusTextListeners, 0, newStatusTextListeners, 0, this.statusTextListeners.length);
        this.statusTextListeners = newStatusTextListeners;
        this.statusTextListeners[this.statusTextListeners.length - 1] = listener;
    }

    public void addTitleListener(TitleListener listener) {
        TitleListener[] newTitleListeners = new TitleListener[this.titleListeners.length + 1];
        System.arraycopy(this.titleListeners, 0, newTitleListeners, 0, this.titleListeners.length);
        this.titleListeners = newTitleListeners;
        this.titleListeners[this.titleListeners.length - 1] = listener;
    }

    public void addVisibilityWindowListener(VisibilityWindowListener listener) {
        VisibilityWindowListener[] newVisibilityWindowListeners = new VisibilityWindowListener[this.visibilityWindowListeners.length + 1];
        System.arraycopy(this.visibilityWindowListeners, 0, newVisibilityWindowListeners, 0, this.visibilityWindowListeners.length);
        this.visibilityWindowListeners = newVisibilityWindowListeners;
        this.visibilityWindowListeners[this.visibilityWindowListeners.length - 1] = listener;
    }

    public abstract boolean back();

    public static void clearSessions() {
        if (NativeClearSessions != null) {
            NativeClearSessions.run();
        }
        if (MozillaClearSessions != null) {
            MozillaClearSessions.run();
        }
    }

    public static String GetCookie(String name, String url) {
        CookieName = name;
        CookieUrl = url;
        CookieValue = null;
        if (NativeGetCookie != null) {
            NativeGetCookie.run();
        }
        if (CookieValue == null && MozillaGetCookie != null) {
            MozillaGetCookie.run();
        }
        String result = CookieValue;
        CookieUrl = null;
        CookieValue = null;
        CookieName = null;
        return result;
    }

    public static boolean SetCookie(String value, String url, boolean addToPending) {
        CookieValue = value;
        CookieUrl = url;
        CookieResult = false;
        if (NativeSetCookie != null) {
            NativeSetCookie.run();
        } else if (addToPending && NativePendingCookies != null) {
            NativePendingCookies.add(new String[]{value, url});
        }
        if (MozillaSetCookie != null) {
            MozillaSetCookie.run();
        } else if (addToPending && MozillaPendingCookies != null) {
            MozillaPendingCookies.add(new String[]{value, url});
        }
        CookieUrl = null;
        CookieValue = null;
        return CookieResult;
    }

    static void SetPendingCookies(Vector pendingCookies) {
        Enumeration elements = pendingCookies.elements();
        while (elements.hasMoreElements()) {
            String[] current = (String[])elements.nextElement();
            WebBrowser.SetCookie(current[0], current[1], false);
        }
    }

    public abstract void create(Composite var1, int var2);

    static String CreateErrorString(String error) {
        return ERROR_ID + error;
    }

    static String ExtractError(String error) {
        return error.substring(ERROR_ID.length());
    }

    public boolean close() {
        return true;
    }

    public void createFunction(BrowserFunction function) {
        Enumeration keys = this.functions.keys();
        while (keys.hasMoreElements()) {
            Object key = keys.nextElement();
            BrowserFunction current = (BrowserFunction)this.functions.get(key);
            if (!current.name.equals(function.name)) continue;
            this.deregisterFunction(current);
            break;
        }
        function.index = this.getNextFunctionIndex();
        this.registerFunction(function);
        StringBuffer buffer = new StringBuffer("window.");
        buffer.append(function.name);
        buffer.append(" = function ");
        buffer.append(function.name);
        buffer.append("() {var result = window.external.callJava(");
        buffer.append(function.index);
        buffer.append(',');
        buffer.append(function.token);
        buffer.append(",Array.prototype.slice.call(arguments)); if (typeof result == 'string' && result.indexOf('");
        buffer.append(ERROR_ID);
        buffer.append("') == 0) {var error = new Error(result.substring(");
        buffer.append(ERROR_ID.length());
        buffer.append(")); throw error;} return result;};");
        buffer.append("for (var i = 0; i < frames.length; i++) {try { frames[i].");
        buffer.append(function.name);
        buffer.append(" = window.");
        buffer.append(function.name);
        buffer.append(";} catch (e) {} };");
        function.functionString = buffer.toString();
        this.execute(function.functionString);
    }

    void deregisterFunction(BrowserFunction function) {
        this.functions.remove(new Integer(function.index));
    }

    public void destroyFunction(BrowserFunction function) {
        String deleteString = this.getDeleteFunctionString(function.name);
        StringBuffer buffer = new StringBuffer("for (var i = 0; i < frames.length; i++) {try {frames[i].eval(\"");
        buffer.append(deleteString);
        buffer.append("\");} catch (e) {}}");
        this.execute(buffer.toString());
        this.execute(deleteString);
        this.deregisterFunction(function);
    }

    public abstract boolean execute(String var1);

    public Object evaluate(String script) throws SWTException {
        int index;
        EvaluateFunction function = new EvaluateFunction(this.browser, "");
        function.index = index = this.getNextFunctionIndex();
        function.isEvaluate = true;
        this.registerFunction(function);
        String functionName = EXECUTE_ID + index;
        StringBuffer buffer = new StringBuffer("window.");
        buffer.append(functionName);
        buffer.append(" = function ");
        buffer.append(functionName);
        buffer.append("() {\n");
        buffer.append(script);
        buffer.append("\n};");
        this.execute(buffer.toString());
        buffer = new StringBuffer("if (window.");
        buffer.append(functionName);
        buffer.append(" == undefined) {window.external.callJava(");
        buffer.append(index);
        buffer.append(',');
        buffer.append(function.token);
        buffer.append(", ['");
        buffer.append(ERROR_ID);
        buffer.append("']);} else {try {var result = ");
        buffer.append(functionName);
        buffer.append("(); window.external.callJava(");
        buffer.append(index);
        buffer.append(',');
        buffer.append(function.token);
        buffer.append(", [result]);} catch (e) {window.external.callJava(");
        buffer.append(index);
        buffer.append(',');
        buffer.append(function.token);
        buffer.append(", ['");
        buffer.append(ERROR_ID);
        buffer.append("' + e.message]);}}");
        this.execute(buffer.toString());
        this.execute(this.getDeleteFunctionString(functionName));
        this.deregisterFunction(function);
        Object result = this.evaluateResult;
        this.evaluateResult = null;
        if (result instanceof SWTException) {
            throw (SWTException)result;
        }
        return result;
    }

    public abstract boolean forward();

    public abstract String getBrowserType();

    String getDeleteFunctionString(String functionName) {
        return "delete window." + functionName;
    }

    int getNextFunctionIndex() {
        return this.nextFunctionIndex++;
    }

    public abstract String getText();

    public abstract String getUrl();

    public Object getWebBrowser() {
        return null;
    }

    public abstract boolean isBackEnabled();

    public boolean isFocusControl() {
        return false;
    }

    public abstract boolean isForwardEnabled();

    public abstract void refresh();

    void registerFunction(BrowserFunction function) {
        this.functions.put(new Integer(function.index), function);
    }

    public void removeAuthenticationListener(AuthenticationListener listener) {
        if (this.authenticationListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.authenticationListeners.length) {
            if (listener == this.authenticationListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.authenticationListeners.length == 1) {
            this.authenticationListeners = new AuthenticationListener[0];
            return;
        }
        AuthenticationListener[] newAuthenticationListeners = new AuthenticationListener[this.authenticationListeners.length - 1];
        System.arraycopy(this.authenticationListeners, 0, newAuthenticationListeners, 0, index);
        System.arraycopy(this.authenticationListeners, index + 1, newAuthenticationListeners, index, this.authenticationListeners.length - index - 1);
        this.authenticationListeners = newAuthenticationListeners;
    }

    public void removeCloseWindowListener(CloseWindowListener listener) {
        if (this.closeWindowListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.closeWindowListeners.length) {
            if (listener == this.closeWindowListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.closeWindowListeners.length == 1) {
            this.closeWindowListeners = new CloseWindowListener[0];
            return;
        }
        CloseWindowListener[] newCloseWindowListeners = new CloseWindowListener[this.closeWindowListeners.length - 1];
        System.arraycopy(this.closeWindowListeners, 0, newCloseWindowListeners, 0, index);
        System.arraycopy(this.closeWindowListeners, index + 1, newCloseWindowListeners, index, this.closeWindowListeners.length - index - 1);
        this.closeWindowListeners = newCloseWindowListeners;
    }

    public void removeLocationListener(LocationListener listener) {
        if (this.locationListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.locationListeners.length) {
            if (listener == this.locationListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.locationListeners.length == 1) {
            this.locationListeners = new LocationListener[0];
            return;
        }
        LocationListener[] newLocationListeners = new LocationListener[this.locationListeners.length - 1];
        System.arraycopy(this.locationListeners, 0, newLocationListeners, 0, index);
        System.arraycopy(this.locationListeners, index + 1, newLocationListeners, index, this.locationListeners.length - index - 1);
        this.locationListeners = newLocationListeners;
    }

    public void removeOpenWindowListener(OpenWindowListener listener) {
        if (this.openWindowListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.openWindowListeners.length) {
            if (listener == this.openWindowListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.openWindowListeners.length == 1) {
            this.openWindowListeners = new OpenWindowListener[0];
            return;
        }
        OpenWindowListener[] newOpenWindowListeners = new OpenWindowListener[this.openWindowListeners.length - 1];
        System.arraycopy(this.openWindowListeners, 0, newOpenWindowListeners, 0, index);
        System.arraycopy(this.openWindowListeners, index + 1, newOpenWindowListeners, index, this.openWindowListeners.length - index - 1);
        this.openWindowListeners = newOpenWindowListeners;
    }

    public void removeProgressListener(ProgressListener listener) {
        if (this.progressListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.progressListeners.length) {
            if (listener == this.progressListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.progressListeners.length == 1) {
            this.progressListeners = new ProgressListener[0];
            return;
        }
        ProgressListener[] newProgressListeners = new ProgressListener[this.progressListeners.length - 1];
        System.arraycopy(this.progressListeners, 0, newProgressListeners, 0, index);
        System.arraycopy(this.progressListeners, index + 1, newProgressListeners, index, this.progressListeners.length - index - 1);
        this.progressListeners = newProgressListeners;
    }

    public void removeStatusTextListener(StatusTextListener listener) {
        if (this.statusTextListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.statusTextListeners.length) {
            if (listener == this.statusTextListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.statusTextListeners.length == 1) {
            this.statusTextListeners = new StatusTextListener[0];
            return;
        }
        StatusTextListener[] newStatusTextListeners = new StatusTextListener[this.statusTextListeners.length - 1];
        System.arraycopy(this.statusTextListeners, 0, newStatusTextListeners, 0, index);
        System.arraycopy(this.statusTextListeners, index + 1, newStatusTextListeners, index, this.statusTextListeners.length - index - 1);
        this.statusTextListeners = newStatusTextListeners;
    }

    public void removeTitleListener(TitleListener listener) {
        if (this.titleListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.titleListeners.length) {
            if (listener == this.titleListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.titleListeners.length == 1) {
            this.titleListeners = new TitleListener[0];
            return;
        }
        TitleListener[] newTitleListeners = new TitleListener[this.titleListeners.length - 1];
        System.arraycopy(this.titleListeners, 0, newTitleListeners, 0, index);
        System.arraycopy(this.titleListeners, index + 1, newTitleListeners, index, this.titleListeners.length - index - 1);
        this.titleListeners = newTitleListeners;
    }

    public void removeVisibilityWindowListener(VisibilityWindowListener listener) {
        if (this.visibilityWindowListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.visibilityWindowListeners.length) {
            if (listener == this.visibilityWindowListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.visibilityWindowListeners.length == 1) {
            this.visibilityWindowListeners = new VisibilityWindowListener[0];
            return;
        }
        VisibilityWindowListener[] newVisibilityWindowListeners = new VisibilityWindowListener[this.visibilityWindowListeners.length - 1];
        System.arraycopy(this.visibilityWindowListeners, 0, newVisibilityWindowListeners, 0, index);
        System.arraycopy(this.visibilityWindowListeners, index + 1, newVisibilityWindowListeners, index, this.visibilityWindowListeners.length - index - 1);
        this.visibilityWindowListeners = newVisibilityWindowListeners;
    }

    boolean sendKeyEvent(Event event) {
        int traversal = 0;
        boolean traverseDoit = true;
        switch (event.keyCode) {
            case 27: {
                traversal = 2;
                traverseDoit = true;
                break;
            }
            case 13: {
                traversal = 4;
                traverseDoit = false;
                break;
            }
            case 0x1000002: 
            case 0x1000004: {
                traversal = 64;
                traverseDoit = false;
                break;
            }
            case 0x1000001: 
            case 0x1000003: {
                traversal = 32;
                traverseDoit = false;
                break;
            }
            case 9: {
                traversal = (event.stateMask & 0x20000) != 0 ? 8 : 16;
                traverseDoit = (event.stateMask & 0x40000) != 0;
                break;
            }
            case 0x1000006: {
                if ((event.stateMask & 0x40000) == 0) break;
                traversal = 512;
                traverseDoit = true;
                break;
            }
            case 0x1000005: {
                if ((event.stateMask & 0x40000) == 0) break;
                traversal = 256;
                traverseDoit = true;
                break;
            }
            default: {
                if (!this.translateMnemonics() || event.character == '\u0000' || (event.stateMask & 0x50000) != 65536) break;
                traversal = 128;
                traverseDoit = true;
            }
        }
        boolean doit = true;
        if (traversal != 0) {
            boolean oldEventDoit = event.doit;
            event.doit = traverseDoit;
            doit = !this.browser.traverse(traversal, event);
            event.doit = oldEventDoit;
        }
        if (doit) {
            this.browser.notifyListeners(event.type, event);
            doit = event.doit;
        }
        return doit;
    }

    public void setBrowser(Browser browser) {
        this.browser = browser;
    }

    public abstract boolean setText(String var1, boolean var2);

    public abstract boolean setUrl(String var1, String var2, String[] var3);

    public abstract void stop();

    int translateKey(int key) {
        int i = 0;
        while (i < KeyTable.length) {
            if (KeyTable[i][0] == key) {
                return KeyTable[i][1];
            }
            ++i;
        }
        return 0;
    }

    boolean translateMnemonics() {
        return true;
    }

    public class EvaluateFunction
    extends BrowserFunction {
        public EvaluateFunction(Browser browser, String name) {
            super(browser, name, false);
        }

        public Object function(Object[] arguments) {
            String string;
            if (arguments[0] instanceof String && (string = (String)arguments[0]).startsWith(WebBrowser.ERROR_ID)) {
                String errorString = WebBrowser.ExtractError(string);
                WebBrowser.this.evaluateResult = errorString.length() > 0 ? new SWTException(50, errorString) : new SWTException(50);
                return null;
            }
            WebBrowser.this.evaluateResult = arguments[0];
            return null;
        }
    }
}

