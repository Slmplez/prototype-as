/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDocShell
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 51;
    public static final String NS_IDOCSHELL_IID_STR = "69e5de00-7b8b-11d3-af61-00a024ffc08c";
    public static final nsID NS_IDOCSHELL_IID = new nsID("69e5de00-7b8b-11d3-af61-00a024ffc08c");
    public static final int ENUMERATE_FORWARDS = 0;
    public static final int ENUMERATE_BACKWARDS = 1;
    public static final int APP_TYPE_UNKNOWN = 0;
    public static final int APP_TYPE_MAIL = 1;
    public static final int BUSY_FLAGS_NONE = 0;
    public static final int BUSY_FLAGS_BUSY = 1;
    public static final int BUSY_FLAGS_BEFORE_PAGE_LOAD = 2;
    public static final int BUSY_FLAGS_PAGE_LOADING = 4;
    public static final int LOAD_CMD_NORMAL = 1;
    public static final int LOAD_CMD_RELOAD = 2;
    public static final int LOAD_CMD_HISTORY = 4;

    public nsIDocShell(int address) {
        super(address);
    }

    public int LoadURI(int uri, int loadInfo, int aLoadFlags, int firstParty) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), uri, loadInfo, aLoadFlags, firstParty);
    }

    public int LoadStream(int aStream, int aURI, int aContentType, int aContentCharset, int aLoadInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aStream, aURI, aContentType, aContentCharset, aLoadInfo);
    }

    public int InternalLoad(int aURI, int aReferrer, int aOwner, int aInheritOwner, char[] aWindowTarget, int aPostDataStream, int aHeadersStream, int aLoadFlags, int aSHEntry, int firstParty, int[] aDocShell, int[] aRequest) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aURI, aReferrer, aOwner, aInheritOwner, aWindowTarget, aPostDataStream, aHeadersStream, aLoadFlags, aSHEntry, firstParty, aDocShell, aRequest);
    }

    public int CreateLoadInfo(int[] loadInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), loadInfo);
    }

    public int PrepareForNewContentModel() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress());
    }

    public int SetCurrentURI(int aURI) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aURI);
    }

    public int FireUnloadNotification() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress());
    }

    public int GetPresContext(int[] aPresContext) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aPresContext);
    }

    public int GetPresShell(int[] aPresShell) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aPresShell);
    }

    public int GetEldestPresShell(int[] aEldestPresShell) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aEldestPresShell);
    }

    public int GetContentViewer(int[] aContentViewer) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aContentViewer);
    }

    public int GetChromeEventHandler(int[] aChromeEventHandler) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aChromeEventHandler);
    }

    public int SetChromeEventHandler(int aChromeEventHandler) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aChromeEventHandler);
    }

    public int GetParentURIContentListener(int[] aParentURIContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aParentURIContentListener);
    }

    public int SetParentURIContentListener(int aParentURIContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), aParentURIContentListener);
    }

    public int GetDocumentCharsetInfo(int[] aDocumentCharsetInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aDocumentCharsetInfo);
    }

    public int SetDocumentCharsetInfo(int aDocumentCharsetInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aDocumentCharsetInfo);
    }

    public int GetAllowPlugins(int[] aAllowPlugins) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aAllowPlugins);
    }

    public int SetAllowPlugins(int aAllowPlugins) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), aAllowPlugins);
    }

    public int GetAllowJavascript(int[] aAllowJavascript) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), aAllowJavascript);
    }

    public int SetAllowJavascript(int aAllowJavascript) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), aAllowJavascript);
    }

    public int GetAllowMetaRedirects(int[] aAllowMetaRedirects) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress(), aAllowMetaRedirects);
    }

    public int SetAllowMetaRedirects(int aAllowMetaRedirects) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), aAllowMetaRedirects);
    }

    public int GetAllowSubframes(int[] aAllowSubframes) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), aAllowSubframes);
    }

    public int SetAllowSubframes(int aAllowSubframes) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 25, this.getAddress(), aAllowSubframes);
    }

    public int GetAllowImages(int[] aAllowImages) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 26, this.getAddress(), aAllowImages);
    }

    public int SetAllowImages(int aAllowImages) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 27, this.getAddress(), aAllowImages);
    }

    public int GetDocShellEnumerator(int aItemType, int aDirection, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 28, this.getAddress(), aItemType, aDirection, _retval);
    }

    public int GetAppType(int[] aAppType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 29, this.getAddress(), aAppType);
    }

    public int SetAppType(int aAppType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 30, this.getAddress(), aAppType);
    }

    public int GetAllowAuth(int[] aAllowAuth) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 31, this.getAddress(), aAllowAuth);
    }

    public int SetAllowAuth(int aAllowAuth) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 32, this.getAddress(), aAllowAuth);
    }

    public int GetZoom(float[] aZoom) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 33, this.getAddress(), aZoom);
    }

    public int SetZoom(float aZoom) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 34, this.getAddress(), aZoom);
    }

    public int GetMarginWidth(int[] aMarginWidth) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 35, this.getAddress(), aMarginWidth);
    }

    public int SetMarginWidth(int aMarginWidth) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 36, this.getAddress(), aMarginWidth);
    }

    public int GetMarginHeight(int[] aMarginHeight) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 37, this.getAddress(), aMarginHeight);
    }

    public int SetMarginHeight(int aMarginHeight) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 38, this.getAddress(), aMarginHeight);
    }

    public int GetHasFocus(int[] aHasFocus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 39, this.getAddress(), aHasFocus);
    }

    public int SetHasFocus(int aHasFocus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 40, this.getAddress(), aHasFocus);
    }

    public int GetCanvasHasFocus(int[] aCanvasHasFocus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 41, this.getAddress(), aCanvasHasFocus);
    }

    public int SetCanvasHasFocus(int aCanvasHasFocus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 42, this.getAddress(), aCanvasHasFocus);
    }

    public int TabToTreeOwner(int forward, int[] tookFocus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 43, this.getAddress(), forward, tookFocus);
    }

    public int GetBusyFlags(int[] aBusyFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 44, this.getAddress(), aBusyFlags);
    }

    public int GetLoadType(int[] aLoadType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 45, this.getAddress(), aLoadType);
    }

    public int SetLoadType(int aLoadType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 46, this.getAddress(), aLoadType);
    }

    public int IsBeingDestroyed(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 47, this.getAddress(), _retval);
    }

    public int GetIsExecutingOnLoadHandler(int[] aIsExecutingOnLoadHandler) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 48, this.getAddress(), aIsExecutingOnLoadHandler);
    }

    public int GetLayoutHistoryState(int[] aLayoutHistoryState) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 49, this.getAddress(), aLayoutHistoryState);
    }

    public int SetLayoutHistoryState(int aLayoutHistoryState) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 50, this.getAddress(), aLayoutHistoryState);
    }

    public int GetShouldSaveLayoutState(int[] aShouldSaveLayoutState) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 51, this.getAddress(), aShouldSaveLayoutState);
    }
}

