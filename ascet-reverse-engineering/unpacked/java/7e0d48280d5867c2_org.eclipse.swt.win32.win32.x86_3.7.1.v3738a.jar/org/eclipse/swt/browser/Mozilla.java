/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.Vector;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.browser.AppFileLocProvider;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.DownloadFactory;
import org.eclipse.swt.browser.DownloadFactory_1_8;
import org.eclipse.swt.browser.ExternalFactory;
import org.eclipse.swt.browser.FilePickerFactory;
import org.eclipse.swt.browser.FilePickerFactory_1_8;
import org.eclipse.swt.browser.HelperAppLauncherDialogFactory;
import org.eclipse.swt.browser.InputStream;
import org.eclipse.swt.browser.LocationAdapter;
import org.eclipse.swt.browser.LocationEvent;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.PromptDialog;
import org.eclipse.swt.browser.PromptService2Factory;
import org.eclipse.swt.browser.StatusTextEvent;
import org.eclipse.swt.browser.TitleEvent;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.browser.WindowCreator2;
import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.LONG;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.init.GREProperty;
import org.eclipse.swt.internal.mozilla.init.GREVersionRange;
import org.eclipse.swt.internal.mozilla.init.XPCOMInit;
import org.eclipse.swt.internal.mozilla.nsDynamicFunctionLoad;
import org.eclipse.swt.internal.mozilla.nsEmbedString;
import org.eclipse.swt.internal.mozilla.nsIAppShell;
import org.eclipse.swt.internal.mozilla.nsIBadCertListener2;
import org.eclipse.swt.internal.mozilla.nsIBaseWindow;
import org.eclipse.swt.internal.mozilla.nsICategoryManager;
import org.eclipse.swt.internal.mozilla.nsICertOverrideService;
import org.eclipse.swt.internal.mozilla.nsIChannel;
import org.eclipse.swt.internal.mozilla.nsIComponentManager;
import org.eclipse.swt.internal.mozilla.nsIComponentRegistrar;
import org.eclipse.swt.internal.mozilla.nsIContextMenuListener;
import org.eclipse.swt.internal.mozilla.nsICookie;
import org.eclipse.swt.internal.mozilla.nsICookieManager;
import org.eclipse.swt.internal.mozilla.nsICookieService;
import org.eclipse.swt.internal.mozilla.nsICookieService_1_9;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDOMEvent;
import org.eclipse.swt.internal.mozilla.nsIDOMEventTarget;
import org.eclipse.swt.internal.mozilla.nsIDOMKeyEvent;
import org.eclipse.swt.internal.mozilla.nsIDOMMouseEvent;
import org.eclipse.swt.internal.mozilla.nsIDOMSerializer;
import org.eclipse.swt.internal.mozilla.nsIDOMSerializer_1_7;
import org.eclipse.swt.internal.mozilla.nsIDOMWindow;
import org.eclipse.swt.internal.mozilla.nsIDOMWindowCollection;
import org.eclipse.swt.internal.mozilla.nsIDirectoryService;
import org.eclipse.swt.internal.mozilla.nsIDocShell;
import org.eclipse.swt.internal.mozilla.nsIDocShell_1_8;
import org.eclipse.swt.internal.mozilla.nsIEmbeddingSiteWindow;
import org.eclipse.swt.internal.mozilla.nsIFile;
import org.eclipse.swt.internal.mozilla.nsIIOService;
import org.eclipse.swt.internal.mozilla.nsIInterfaceRequestor;
import org.eclipse.swt.internal.mozilla.nsIJSContextStack;
import org.eclipse.swt.internal.mozilla.nsILocalFile;
import org.eclipse.swt.internal.mozilla.nsIMIMEInputStream;
import org.eclipse.swt.internal.mozilla.nsIObserverService;
import org.eclipse.swt.internal.mozilla.nsIPrefBranch;
import org.eclipse.swt.internal.mozilla.nsIPrefLocalizedString;
import org.eclipse.swt.internal.mozilla.nsIPrefService;
import org.eclipse.swt.internal.mozilla.nsIPrincipal;
import org.eclipse.swt.internal.mozilla.nsIProperties;
import org.eclipse.swt.internal.mozilla.nsIRequest;
import org.eclipse.swt.internal.mozilla.nsISSLStatus;
import org.eclipse.swt.internal.mozilla.nsIScriptSecurityManager_1_9;
import org.eclipse.swt.internal.mozilla.nsIScriptSecurityManager_1_9_1;
import org.eclipse.swt.internal.mozilla.nsIServiceManager;
import org.eclipse.swt.internal.mozilla.nsISimpleEnumerator;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.internal.mozilla.nsISupportsWeakReference;
import org.eclipse.swt.internal.mozilla.nsITooltipListener;
import org.eclipse.swt.internal.mozilla.nsIURI;
import org.eclipse.swt.internal.mozilla.nsIURIContentListener;
import org.eclipse.swt.internal.mozilla.nsIWeakReference;
import org.eclipse.swt.internal.mozilla.nsIWebBrowser;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserChrome;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserChromeFocus;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserFocus;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserSetup;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserStream;
import org.eclipse.swt.internal.mozilla.nsIWebNavigation;
import org.eclipse.swt.internal.mozilla.nsIWebNavigationInfo;
import org.eclipse.swt.internal.mozilla.nsIWebProgress;
import org.eclipse.swt.internal.mozilla.nsIWebProgressListener;
import org.eclipse.swt.internal.mozilla.nsIWindowWatcher;
import org.eclipse.swt.internal.mozilla.nsIX509Cert;
import org.eclipse.swt.internal.mozilla.nsIX509CertValidity;
import org.eclipse.swt.internal.mozilla.nsIXPCSecurityManager;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;

class Mozilla
extends WebBrowser {
    int embedHandle;
    nsIWebBrowser webBrowser;
    Object webBrowserObject;
    MozillaDelegate delegate;
    XPCOMObject supports;
    XPCOMObject weakReference;
    XPCOMObject webProgressListener;
    XPCOMObject webBrowserChrome;
    XPCOMObject webBrowserChromeFocus;
    XPCOMObject embeddingSiteWindow;
    XPCOMObject interfaceRequestor;
    XPCOMObject supportsWeakReference;
    XPCOMObject contextMenuListener;
    XPCOMObject uriContentListener;
    XPCOMObject tooltipListener;
    XPCOMObject domEventListener;
    XPCOMObject badCertListener;
    int chromeFlags = 1;
    int registerFunctionsOnState = 0;
    int refCount;
    int lastKeyCode;
    int lastCharCode;
    int authCount;
    int request;
    Point location;
    Point size;
    boolean visible;
    boolean isChild;
    boolean ignoreDispose;
    boolean isRetrievingBadCert;
    boolean isViewingErrorPage;
    boolean ignoreAllMessages;
    boolean untrustedText;
    boolean updateLastNavigateUrl;
    Shell tip = null;
    Listener listener;
    Vector unhookedDOMWindows = new Vector();
    String lastNavigateURL;
    byte[] htmlBytes;
    static nsIAppShell AppShell;
    static AppFileLocProvider LocationProvider;
    static WindowCreator2 WindowCreator;
    static int BrowserCount;
    static int NextJSFunctionIndex;
    static Hashtable AllFunctions;
    static Listener DisplayListener;
    static boolean Initialized;
    static boolean IsPre_1_8;
    static boolean IsPre_1_9;
    static boolean IsXULRunner;
    static boolean PerformedVersionCheck;
    static boolean XPCOMWasGlued;
    static boolean XPCOMInitWasGlued;
    static String MozillaPath;
    static String oldProxyHostFTP;
    static String oldProxyHostHTTP;
    static String oldProxyHostSSL;
    static int oldProxyPortFTP;
    static int oldProxyPortHTTP;
    static int oldProxyPortSSL;
    static int oldProxyType;
    static byte[] pathBytes_JSEvaluateUCScriptForPrincipals;
    static byte[] pathBytes_NSFree;
    static final String GCC3 = "-gcc3";
    static final String GRERANGE_LOWER = "1.8.1.2";
    static final String GRERANGE_LOWER_FALLBACK = "1.8";
    static final boolean LowerRangeInclusive = true;
    static final String GRERANGE_UPPER = "1.9.*";
    static final boolean UpperRangeInclusive = true;
    static final String PROPERTY_ABI = "abi";
    static final int MAX_PORT = 65535;
    static final String DEFAULTVALUE_STRING = "default";
    static final char SEPARATOR_OS;
    static final String ABOUT_BLANK = "about:blank";
    static final String DISPOSE_LISTENER_HOOKED = "org.eclipse.swt.browser.Mozilla.disposeListenerHooked";
    static final String HEADER_CONTENTTYPE = "Content-Type";
    static final String MIMETYPE_FORMURLENCODED = "application/x-www-form-urlencoded";
    static final String PREFIX_JAVASCRIPT = "javascript:";
    static final String PREFERENCE_CHARSET = "intl.charset.default";
    static final String PREFERENCE_DISABLEOPENDURINGLOAD = "dom.disable_open_during_load";
    static final String PREFERENCE_DISABLEOPENWINDOWSTATUSHIDE = "dom.disable_window_open_feature.status";
    static final String PREFERENCE_DISABLEWINDOWSTATUSCHANGE = "dom.disable_window_status_change";
    static final String PREFERENCE_JAVASCRIPTENABLED = "javascript.enabled";
    static final String PREFERENCE_LANGUAGES = "intl.accept_languages";
    static final String PREFERENCE_PROXYHOST_FTP = "network.proxy.ftp";
    static final String PREFERENCE_PROXYPORT_FTP = "network.proxy.ftp_port";
    static final String PREFERENCE_PROXYHOST_HTTP = "network.proxy.http";
    static final String PREFERENCE_PROXYPORT_HTTP = "network.proxy.http_port";
    static final String PREFERENCE_PROXYHOST_SSL = "network.proxy.ssl";
    static final String PREFERENCE_PROXYPORT_SSL = "network.proxy.ssl_port";
    static final String PREFERENCE_PROXYTYPE = "network.proxy.type";
    static final String PROFILE_AFTER_CHANGE = "profile-after-change";
    static final String PROFILE_BEFORE_CHANGE = "profile-before-change";
    static final String PROFILE_DIR;
    static final String PROFILE_DO_CHANGE = "profile-do-change";
    static final String PROPERTY_PROXYPORT = "network.proxy_port";
    static final String PROPERTY_PROXYHOST = "network.proxy_host";
    static final String SEPARATOR_LOCALE = "-";
    static final String SHUTDOWN_PERSIST = "shutdown-persist";
    static final String STARTUP = "startup";
    static final String TOKENIZER_LOCALE = ",";
    static final String TRUE = "true";
    static final String URI_FILEROOT = "file:///";
    static final String XULRUNNER_PATH = "org.eclipse.swt.browser.XULRunnerPath";
    static final String FACTORIES_REGISTERED = "org.eclipse.swt.browser.MozillaFactoriesRegistered";
    static final String GRE_INITIALIZED = "org.eclipse.swt.browser.XULRunnerInitialized";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        NextJSFunctionIndex = 1;
        AllFunctions = new Hashtable();
        oldProxyPortFTP = -1;
        oldProxyPortHTTP = -1;
        oldProxyPortSSL = -1;
        oldProxyType = -1;
        SEPARATOR_OS = System.getProperty("file.separator").charAt(0);
        PROFILE_DIR = String.valueOf(SEPARATOR_OS) + "eclipse" + SEPARATOR_OS;
        DisplayListener = new Listener(){

            public void handleEvent(Event event) {
                if (BrowserCount > 0) {
                    return;
                }
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                byte[] buffer = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/observer-service;1", true);
                rc = serviceManager.GetServiceByContractID(buffer, nsIObserverService.NS_IOBSERVERSERVICE_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIObserverService observerService = new nsIObserverService(result[0]);
                result[0] = 0;
                buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PROFILE_BEFORE_CHANGE, true);
                int length = Mozilla.SHUTDOWN_PERSIST.length();
                char[] chars = new char[length + 1];
                Mozilla.SHUTDOWN_PERSIST.getChars(0, length, chars, 0);
                rc = observerService.NotifyObservers(0, buffer, chars);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                observerService.Release();
                if (LocationProvider != null) {
                    String prefsLocation = String.valueOf(Mozilla.LocationProvider.profilePath) + "prefs.js";
                    nsEmbedString pathString = new nsEmbedString(prefsLocation);
                    rc = XPCOM.NS_NewLocalFile(pathString.getAddress(), 1, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467261);
                    }
                    pathString.dispose();
                    nsILocalFile localFile = new nsILocalFile(result[0]);
                    result[0] = 0;
                    rc = localFile.QueryInterface(nsIFile.NS_IFILE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    localFile.Release();
                    nsIFile prefFile = new nsIFile(result[0]);
                    result[0] = 0;
                    buffer = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/preferences-service;1", true);
                    rc = serviceManager.GetServiceByContractID(buffer, nsIPrefService.NS_IPREFSERVICE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIPrefService prefService = new nsIPrefService(result[0]);
                    result[0] = 0;
                    this.revertProxySettings(prefService);
                    rc = prefService.SavePrefFile(prefFile.getAddress());
                    prefService.Release();
                    prefFile.Release();
                }
                serviceManager.Release();
                if (XPCOMWasGlued) {
                    XPCOMWasGlued = false;
                }
                if (XPCOMInitWasGlued) {
                    XPCOMInit.XPCOMGlueShutdown();
                    XPCOMInitWasGlued = false;
                }
                PerformedVersionCheck = false;
                Initialized = false;
            }

            void revertProxySettings(nsIPrefService prefService) {
                boolean hostSet;
                boolean bl = hostSet = oldProxyHostFTP != null || oldProxyHostHTTP != null || oldProxyHostSSL != null;
                if (!hostSet && oldProxyPortFTP == -1 && oldProxyPortHTTP == -1 && oldProxyPortSSL == -1 && oldProxyType == -1) {
                    return;
                }
                byte[] buffer = new byte[1];
                int[] result = new int[1];
                int rc = prefService.GetBranch(buffer, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIPrefBranch prefBranch = new nsIPrefBranch(result[0]);
                result[0] = 0;
                if (hostSet) {
                    char[] charBuffer;
                    int length;
                    rc = XPCOM.NS_GetComponentManager(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIComponentManager componentManager = new nsIComponentManager(result[0]);
                    result[0] = 0;
                    byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/pref-localizedstring;1", true);
                    rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIPrefLocalizedString localizedString = new nsIPrefLocalizedString(result[0]);
                    result[0] = 0;
                    if (oldProxyHostFTP != null) {
                        buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYHOST_FTP, true);
                        if (oldProxyHostFTP.equals(Mozilla.DEFAULTVALUE_STRING)) {
                            rc = prefBranch.ClearUserPref(buffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                        } else {
                            length = oldProxyHostFTP.length();
                            charBuffer = new char[length];
                            oldProxyHostFTP.getChars(0, length, charBuffer, 0);
                            rc = localizedString.SetDataWithLength(length, charBuffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                            if ((rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress())) != 0) {
                                Mozilla.error(rc);
                            }
                        }
                    }
                    if (oldProxyHostHTTP != null) {
                        buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYHOST_HTTP, true);
                        if (oldProxyHostHTTP.equals(Mozilla.DEFAULTVALUE_STRING)) {
                            rc = prefBranch.ClearUserPref(buffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                        } else {
                            length = oldProxyHostHTTP.length();
                            charBuffer = new char[length];
                            oldProxyHostHTTP.getChars(0, length, charBuffer, 0);
                            rc = localizedString.SetDataWithLength(length, charBuffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                            if ((rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress())) != 0) {
                                Mozilla.error(rc);
                            }
                        }
                    }
                    if (oldProxyHostSSL != null) {
                        buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYHOST_SSL, true);
                        if (oldProxyHostSSL.equals(Mozilla.DEFAULTVALUE_STRING)) {
                            rc = prefBranch.ClearUserPref(buffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                        } else {
                            length = oldProxyHostSSL.length();
                            charBuffer = new char[length];
                            oldProxyHostSSL.getChars(0, length, charBuffer, 0);
                            rc = localizedString.SetDataWithLength(length, charBuffer);
                            if (rc != 0) {
                                Mozilla.error(rc);
                            }
                            if ((rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress())) != 0) {
                                Mozilla.error(rc);
                            }
                        }
                    }
                    localizedString.Release();
                    componentManager.Release();
                }
                if (oldProxyPortFTP != -1 && (rc = prefBranch.SetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYPORT_FTP, true), oldProxyPortFTP)) != 0) {
                    Mozilla.error(rc);
                }
                if (oldProxyPortHTTP != -1 && (rc = prefBranch.SetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYPORT_HTTP, true), oldProxyPortHTTP)) != 0) {
                    Mozilla.error(rc);
                }
                if (oldProxyPortSSL != -1 && (rc = prefBranch.SetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYPORT_SSL, true), oldProxyPortSSL)) != 0) {
                    Mozilla.error(rc);
                }
                if (oldProxyType != -1 && (rc = prefBranch.SetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, Mozilla.PREFERENCE_PROXYTYPE, true), oldProxyType)) != 0) {
                    Mozilla.error(rc);
                }
                prefBranch.Release();
            }
        };
        MozillaClearSessions = new Runnable(){

            public void run() {
                int[] moreElements;
                nsISimpleEnumerator enumerator;
                if (!Initialized) {
                    return;
                }
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/cookiemanager;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsICookieManager.NS_ICOOKIEMANAGER_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                serviceManager.Release();
                nsICookieManager manager = new nsICookieManager(result[0]);
                result[0] = 0;
                rc = manager.GetEnumerator(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if ((rc = (enumerator = new nsISimpleEnumerator(result[0])).HasMoreElements(moreElements = new int[1])) != 0) {
                    Mozilla.error(rc);
                }
                while (moreElements[0] != 0) {
                    result[0] = 0;
                    rc = enumerator.GetNext(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    nsICookie cookie = new nsICookie(result[0]);
                    long[] expires = new long[1];
                    rc = cookie.GetExpires(expires);
                    if (expires[0] == 0L) {
                        int domain = XPCOM.nsEmbedCString_new();
                        int name = XPCOM.nsEmbedCString_new();
                        int path = XPCOM.nsEmbedCString_new();
                        cookie.GetHost(domain);
                        cookie.GetName(name);
                        cookie.GetPath(path);
                        rc = manager.Remove(domain, name, path, 0);
                        XPCOM.nsEmbedCString_delete(domain);
                        XPCOM.nsEmbedCString_delete(name);
                        XPCOM.nsEmbedCString_delete(path);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                    }
                    cookie.Release();
                    rc = enumerator.HasMoreElements(moreElements);
                    if (rc == 0) continue;
                    Mozilla.error(rc);
                }
                enumerator.Release();
                manager.Release();
            }
        };
        MozillaGetCookie = new Runnable(){

            public void run() {
                int cookieString;
                nsISupports cookieService;
                if (!Initialized) {
                    return;
                }
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                rc = serviceManager.GetService(XPCOM.NS_IOSERVICE_CID, nsIIOService.NS_IIOSERVICE_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIIOService ioService = new nsIIOService(result[0]);
                result[0] = 0;
                byte[] bytes = MozillaDelegate.wcsToMbcs(null, CookieUrl, false);
                int aSpec = XPCOM.nsEmbedCString_new(bytes, bytes.length);
                rc = ioService.NewURI(aSpec, null, 0, result);
                XPCOM.nsEmbedCString_delete(aSpec);
                ioService.Release();
                if (rc != 0) {
                    serviceManager.Release();
                    return;
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                nsIURI aURI = new nsIURI(result[0]);
                result[0] = 0;
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/cookieService;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsICookieService.NS_ICOOKIESERVICE_IID, result);
                if (rc == 0 && result[0] != 0) {
                    cookieService = new nsICookieService(result[0]);
                    result[0] = 0;
                    rc = ((nsICookieService)cookieService).GetCookieString(aURI.getAddress(), 0, result);
                    cookieService.Release();
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        aURI.Release();
                        serviceManager.Release();
                        return;
                    }
                    cookieString = result[0];
                } else {
                    result[0] = 0;
                    rc = serviceManager.GetServiceByContractID(aContractID, nsICookieService_1_9.NS_ICOOKIESERVICE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    cookieService = new nsICookieService_1_9(result[0]);
                    result[0] = 0;
                    rc = ((nsICookieService_1_9)cookieService).GetCookieString(aURI.getAddress(), 0, result);
                    cookieService.Release();
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        aURI.Release();
                        serviceManager.Release();
                        return;
                    }
                    cookieString = result[0];
                }
                aURI.Release();
                serviceManager.Release();
                result[0] = 0;
                int length = C.strlen(cookieString);
                bytes = new byte[length];
                XPCOM.memmove(bytes, cookieString, length);
                if (pathBytes_NSFree == null) {
                    String mozillaPath = String.valueOf(Mozilla.getMozillaPath()) + MozillaDelegate.getLibraryName() + '\u0000';
                    try {
                        pathBytes_NSFree = mozillaPath.getBytes("UTF-8");
                    }
                    catch (UnsupportedEncodingException unsupportedEncodingException) {
                        pathBytes_NSFree = mozillaPath.getBytes();
                    }
                }
                if (!XPCOM.NS_Free(pathBytes_NSFree, cookieString)) {
                    C.free(cookieString);
                }
                String allCookies = new String(MozillaDelegate.mbcsToWcs(null, bytes));
                StringTokenizer tokenizer = new StringTokenizer(allCookies, ";");
                while (tokenizer.hasMoreTokens()) {
                    String name;
                    String cookie = tokenizer.nextToken();
                    int index = cookie.indexOf(61);
                    if (index == -1 || !(name = cookie.substring(0, index).trim()).equals(CookieName)) continue;
                    CookieValue = cookie.substring(index + 1).trim();
                    return;
                }
            }
        };
        MozillaSetCookie = new Runnable(){

            public void run() {
                if (!Initialized) {
                    return;
                }
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                rc = serviceManager.GetService(XPCOM.NS_IOSERVICE_CID, nsIIOService.NS_IIOSERVICE_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIIOService ioService = new nsIIOService(result[0]);
                result[0] = 0;
                byte[] bytes = MozillaDelegate.wcsToMbcs(null, CookieUrl, false);
                int aSpec = XPCOM.nsEmbedCString_new(bytes, bytes.length);
                rc = ioService.NewURI(aSpec, null, 0, result);
                XPCOM.nsEmbedCString_delete(aSpec);
                ioService.Release();
                if (rc != 0) {
                    serviceManager.Release();
                    return;
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                nsIURI aURI = new nsIURI(result[0]);
                result[0] = 0;
                byte[] aCookie = MozillaDelegate.wcsToMbcs(null, CookieValue, true);
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/cookieService;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsICookieService.NS_ICOOKIESERVICE_IID, result);
                if (rc == 0 && result[0] != 0) {
                    nsICookieService cookieService = new nsICookieService(result[0]);
                    rc = cookieService.SetCookieString(aURI.getAddress(), 0, aCookie, 0);
                    cookieService.Release();
                } else {
                    result[0] = 0;
                    rc = serviceManager.GetServiceByContractID(aContractID, nsICookieService_1_9.NS_ICOOKIESERVICE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsICookieService_1_9 cookieService = new nsICookieService_1_9(result[0]);
                    rc = cookieService.SetCookieString(aURI.getAddress(), 0, aCookie, 0);
                    cookieService.Release();
                }
                result[0] = 0;
                aURI.Release();
                serviceManager.Release();
                CookieResult = rc == 0;
            }
        };
    }

    Mozilla() {
    }

    static String Arch() {
        String osArch = System.getProperty("os.arch");
        if (osArch.equals("i386") || osArch.equals("i686")) {
            return "x86";
        }
        if (osArch.equals("amd64")) {
            return "x86_64";
        }
        if (osArch.equals("IA64N")) {
            return "ia64_32";
        }
        if (osArch.equals("IA64W")) {
            return "ia64";
        }
        return osArch;
    }

    static void LoadLibraries() {
        boolean initLoaded = false;
        String greInitialized = System.getProperty(GRE_INITIALIZED);
        if (TRUE.equals(greInitialized)) {
            Initialized = true;
        }
        if ((MozillaPath = System.getProperty(XULRUNNER_PATH)) == null) {
            try {
                Class.forName("org.eclipse.swt.browser.XULRunnerInitializer");
                MozillaPath = System.getProperty(XULRUNNER_PATH);
            }
            catch (ClassNotFoundException classNotFoundException) {}
        }
        if (MozillaPath == null) {
            try {
                String libName = MozillaDelegate.GetSWTInitLibraryName();
                Library.loadLibrary(libName);
                initLoaded = true;
            }
            catch (UnsatisfiedLinkError unsatisfiedLinkError) {}
        } else {
            MozillaPath = SEPARATOR_OS == '/' ? MozillaPath.replace('\\', SEPARATOR_OS) : MozillaPath.replace('/', SEPARATOR_OS);
            MozillaPath = String.valueOf(MozillaPath) + SEPARATOR_OS + MozillaDelegate.getLibraryName();
            IsXULRunner = true;
        }
        if (initLoaded) {
            MozillaPath = Mozilla.InitDiscoverXULRunner();
            boolean bl = IsXULRunner = MozillaPath.length() > 0;
            if (IsXULRunner) {
                byte[] bytes = MozillaDelegate.wcsToMbcs(null, MozillaPath, true);
                int rc = XPCOMInit.XPCOMGlueStartup(bytes);
                if (rc != 0) {
                    int ptr;
                    MozillaPath = MozillaPath.substring(0, MozillaPath.lastIndexOf(SEPARATOR_OS));
                    if (Device.DEBUG) {
                        System.out.println("cannot use detected XULRunner: " + MozillaPath);
                    }
                    if ((ptr = C.getenv(MozillaDelegate.wcsToMbcs(null, "MOZILLA_FIVE_HOME", true))) == 0) {
                        IsXULRunner = false;
                    } else {
                        int length = C.strlen(ptr);
                        bytes = new byte[length];
                        C.memmove(bytes, ptr, length);
                        MozillaPath = new String(MozillaDelegate.mbcsToWcs(null, bytes));
                        if (MozillaPath.indexOf("xulrunner") == -1) {
                            IsXULRunner = false;
                        } else {
                            bytes = MozillaDelegate.wcsToMbcs(null, MozillaPath = String.valueOf(MozillaPath) + SEPARATOR_OS + MozillaDelegate.getLibraryName(), true);
                            rc = XPCOMInit.XPCOMGlueStartup(bytes);
                            if (rc == 0) {
                                MozillaPath = SEPARATOR_OS == '/' ? MozillaPath.replace('\\', SEPARATOR_OS) : MozillaPath.replace('/', SEPARATOR_OS);
                            } else {
                                IsXULRunner = false;
                                MozillaPath = MozillaPath.substring(0, MozillaPath.lastIndexOf(SEPARATOR_OS));
                                if (Device.DEBUG) {
                                    System.out.println("failed to start as XULRunner: " + MozillaPath);
                                }
                            }
                        }
                    }
                }
                if (IsXULRunner) {
                    XPCOMInitWasGlued = true;
                }
            }
        }
    }

    public void create(Composite parent, int style) {
        nsIComponentManager componentManager;
        int rc;
        this.delegate = new MozillaDelegate(this.browser);
        Display display = parent.getDisplay();
        int[] result = new int[1];
        if (!Initialized) {
            Mozilla.LoadLibraries();
            if (IsXULRunner) {
                MozillaPath = this.initXULRunner(MozillaPath);
            } else {
                if ((style & 0x8000) != 0) {
                    this.browser.dispose();
                    String errorString = MozillaPath != null && MozillaPath.length() > 0 ? " [Failed to use detected XULRunner: " + MozillaPath + "]" : " [Could not detect registered XULRunner to use]";
                    SWT.error(2, null, errorString);
                }
                MozillaPath = this.initMozilla(MozillaPath);
            }
            if (!Initialized) {
                String profilePath = this.delegate.getProfilePath();
                LocationProvider = new AppFileLocProvider(MozillaPath, profilePath, IsXULRunner);
                LocationProvider.AddRef();
                this.initExternal(profilePath);
                this.initXPCOM(MozillaPath, IsXULRunner);
            }
            if (IsXULRunner) {
                this.initJavaXPCOM(MozillaPath);
            }
            if ((rc = XPCOM.NS_GetComponentManager(result)) != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            componentManager = new nsIComponentManager(result[0]);
            result[0] = 0;
            rc = XPCOM.NS_GetServiceManager(result);
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
            result[0] = 0;
            this.initSpinup(componentManager);
            boolean factoriesRegistered = false;
            String propertyString = System.getProperty(FACTORIES_REGISTERED);
            if (TRUE.equals(propertyString)) {
                factoriesRegistered = true;
            }
            if (!factoriesRegistered) {
                this.initWindowCreator(serviceManager);
            }
            this.initProfile(serviceManager, IsXULRunner);
            this.initPreferences(serviceManager, componentManager);
            if (!factoriesRegistered) {
                this.initFactories(serviceManager, componentManager, IsXULRunner);
            }
            serviceManager.Release();
            componentManager.Release();
            if (MozillaPendingCookies != null) {
                Mozilla.SetPendingCookies(MozillaPendingCookies);
            }
            MozillaPendingCookies = null;
            Initialized = true;
        }
        ++BrowserCount;
        if (display.getData(DISPOSE_LISTENER_HOOKED) == null) {
            display.setData(DISPOSE_LISTENER_HOOKED, DISPOSE_LISTENER_HOOKED);
            display.addListener(12, DisplayListener);
        }
        if ((rc = XPCOM.NS_GetComponentManager(result)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        componentManager = new nsIComponentManager(result[0]);
        result[0] = 0;
        nsID NS_IWEBBROWSER_CID = new nsID("F1EAC761-87E9-11d3-AF80-00A024FFC08C");
        rc = componentManager.CreateInstance(NS_IWEBBROWSER_CID, 0, nsIWebBrowser.NS_IWEBBROWSER_IID, result);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        this.webBrowser = new nsIWebBrowser(result[0]);
        result[0] = 0;
        this.createCOMInterfaces();
        this.AddRef();
        this.initWebBrowserWindows();
        if (!PerformedVersionCheck) {
            PerformedVersionCheck = true;
            rc = componentManager.QueryInterface(nsIComponentRegistrar.NS_ICOMPONENTREGISTRAR_IID, result);
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            nsIComponentRegistrar componentRegistrar = new nsIComponentRegistrar(result[0]);
            result[0] = 0;
            boolean factoriesRegistered = false;
            String propertyString = System.getProperty(FACTORIES_REGISTERED);
            if (TRUE.equals(propertyString)) {
                factoriesRegistered = true;
            }
            if (!factoriesRegistered) {
                HelperAppLauncherDialogFactory dialogFactory = new HelperAppLauncherDialogFactory();
                dialogFactory.AddRef();
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/helperapplauncherdialog;1", true);
                byte[] aClassName = MozillaDelegate.wcsToMbcs(null, "swtHelperAppLauncherDialog", true);
                rc = componentRegistrar.RegisterFactory(XPCOM.NS_HELPERAPPLAUNCHERDIALOG_CID, aClassName, aContractID, dialogFactory.getAddress());
                if (rc != 0) {
                    this.browser.dispose();
                    Mozilla.error(rc);
                }
                dialogFactory.Release();
            }
            if ((rc = this.webBrowser.QueryInterface(nsIInterfaceRequestor.NS_IINTERFACEREQUESTOR_IID, result)) != 0) {
                this.browser.dispose();
                Mozilla.error(-2147467259);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            nsIInterfaceRequestor interfaceRequestor = new nsIInterfaceRequestor(result[0]);
            result[0] = 0;
            rc = interfaceRequestor.GetInterface(nsIDocShell.NS_IDOCSHELL_IID, result);
            if (rc == 0 && result[0] != 0) {
                IsPre_1_8 = true;
                new nsISupports(result[0]).Release();
            }
            result[0] = 0;
            IsPre_1_9 = true;
            if (!IsPre_1_8) {
                rc = interfaceRequestor.GetInterface(nsIDocShell_1_8.NS_IDOCSHELL_IID, result);
                if (rc == 0 && result[0] != 0) {
                    new nsISupports(result[0]).Release();
                    result[0] = 0;
                    if (!factoriesRegistered) {
                        DownloadFactory_1_8 downloadFactory_1_8 = new DownloadFactory_1_8();
                        downloadFactory_1_8.AddRef();
                        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/transfer;1", true);
                        byte[] aClassName = MozillaDelegate.wcsToMbcs(null, "swtTransfer", true);
                        rc = componentRegistrar.RegisterFactory(XPCOM.NS_DOWNLOAD_CID, aClassName, aContractID, downloadFactory_1_8.getAddress());
                        if (rc != 0) {
                            this.browser.dispose();
                            Mozilla.error(rc);
                        }
                        downloadFactory_1_8.Release();
                    }
                } else {
                    IsPre_1_9 = false;
                }
            }
            result[0] = 0;
            interfaceRequestor.Release();
            componentRegistrar.Release();
            System.setProperty(FACTORIES_REGISTERED, TRUE);
        }
        componentManager.Release();
        if (!IsPre_1_9) {
            this.delegate.addWindowSubclass();
        }
        if ((rc = this.webBrowser.AddWebBrowserListener(this.weakReference.getAddress(), nsIWebProgressListener.NS_IWEBPROGRESSLISTENER_IID)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = this.webBrowser.SetParentURIContentListener(this.uriContentListener.getAddress())) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        this.delegate.init();
        this.listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        if (Mozilla.this.ignoreDispose) {
                            Mozilla.this.ignoreDispose = false;
                            break;
                        }
                        Mozilla.this.ignoreDispose = true;
                        Mozilla.this.browser.notifyListeners(event.type, event);
                        event.type = 0;
                        Mozilla.this.onDispose(event.display);
                        break;
                    }
                    case 11: {
                        Mozilla.this.onResize();
                        break;
                    }
                    case 15: {
                        Mozilla.this.Activate();
                        break;
                    }
                    case 26: {
                        Mozilla.this.Activate();
                        break;
                    }
                    case 27: {
                        Display display = event.display;
                        if (Mozilla.this.browser != display.getFocusControl()) break;
                        Mozilla.this.Deactivate();
                        break;
                    }
                    case 22: {
                        Display display = event.display;
                        display.asyncExec(new Runnable(this){
                            final /* synthetic */ 5 this$1;
                            {
                                this.this$1 = var1_1;
                            }

                            public void run() {
                                if (5.access$0(this.this$1).browser.isDisposed()) {
                                    return;
                                }
                                5.access$0(this.this$1).onResize();
                            }
                        });
                    }
                }
            }

            static /* synthetic */ Mozilla access$0(5 var0) {
                return var0.Mozilla.this;
            }
        };
        int[] folderEvents = new int[]{12, 11, 15, 26, 27, 22, 1};
        int i = 0;
        while (i < folderEvents.length) {
            this.browser.addListener(folderEvents[i], this.listener);
            ++i;
        }
    }

    public boolean back() {
        this.htmlBytes = null;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        rc = webNavigation.GoBack();
        webNavigation.Release();
        return rc == 0;
    }

    public boolean close() {
        final boolean[] result = new boolean[1];
        LocationListener[] oldListeners = this.locationListeners;
        this.locationListeners = new LocationListener[]{new LocationAdapter(){

            public void changing(LocationEvent event) {
                result[0] = true;
            }
        }};
        this.execute("window.location.replace('about:blank');");
        this.locationListeners = oldListeners;
        return result[0];
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }
        };
        int[] nArray2 = new int[4];
        nArray2[0] = 2;
        nArray2[3] = 2;
        this.weakReference = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.QueryReferent(args[0], args[1]);
            }
        };
        int[] nArray3 = new int[8];
        nArray3[0] = 2;
        nArray3[3] = 4;
        nArray3[4] = 6;
        nArray3[5] = 3;
        nArray3[6] = 4;
        nArray3[7] = 3;
        this.webProgressListener = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.OnStateChange(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return Mozilla.this.OnProgressChange(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method5(int[] args) {
                return Mozilla.this.OnLocationChange(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return Mozilla.this.OnStatusChange(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Mozilla.this.OnSecurityChange(args[0], args[1], args[2]);
            }
        };
        int[] nArray4 = new int[13];
        nArray4[0] = 2;
        nArray4[3] = 2;
        nArray4[4] = 1;
        nArray4[5] = 1;
        nArray4[6] = 1;
        nArray4[7] = 1;
        nArray4[9] = 2;
        nArray4[11] = 1;
        nArray4[12] = 1;
        this.webBrowserChrome = new XPCOMObject(nArray4){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.SetStatus(args[0], args[1]);
            }

            public int method4(int[] args) {
                return Mozilla.this.GetWebBrowser(args[0]);
            }

            public int method5(int[] args) {
                return Mozilla.this.SetWebBrowser(args[0]);
            }

            public int method6(int[] args) {
                return Mozilla.this.GetChromeFlags(args[0]);
            }

            public int method7(int[] args) {
                return Mozilla.this.SetChromeFlags(args[0]);
            }

            public int method8(int[] args) {
                return Mozilla.this.DestroyBrowserWindow();
            }

            public int method9(int[] args) {
                return Mozilla.this.SizeBrowserTo(args[0], args[1]);
            }

            public int method10(int[] args) {
                return Mozilla.this.ShowAsModal();
            }

            public int method11(int[] args) {
                return Mozilla.this.IsWindowModal(args[0]);
            }

            public int method12(int[] args) {
                return Mozilla.this.ExitModalEventLoop(args[0]);
            }
        };
        int[] nArray5 = new int[5];
        nArray5[0] = 2;
        this.webBrowserChromeFocus = new XPCOMObject(nArray5){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.FocusNextElement();
            }

            public int method4(int[] args) {
                return Mozilla.this.FocusPrevElement();
            }
        };
        int[] nArray6 = new int[11];
        nArray6[0] = 2;
        nArray6[3] = 5;
        nArray6[4] = 5;
        nArray6[6] = 1;
        nArray6[7] = 1;
        nArray6[8] = 1;
        nArray6[9] = 1;
        nArray6[10] = 1;
        this.embeddingSiteWindow = new XPCOMObject(nArray6){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.SetDimensions(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method4(int[] args) {
                return Mozilla.this.GetDimensions(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method5(int[] args) {
                return Mozilla.this.SetFocus();
            }

            public int method6(int[] args) {
                return Mozilla.this.GetVisibility(args[0]);
            }

            public int method7(int[] args) {
                return Mozilla.this.SetVisibility(args[0]);
            }

            public int method8(int[] args) {
                return Mozilla.this.GetTitle(args[0]);
            }

            public int method9(int[] args) {
                return Mozilla.this.SetTitle(args[0]);
            }

            public int method10(int[] args) {
                return Mozilla.this.GetSiteWindow(args[0]);
            }
        };
        int[] nArray7 = new int[4];
        nArray7[0] = 2;
        nArray7[3] = 2;
        this.interfaceRequestor = new XPCOMObject(nArray7){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.GetInterface(args[0], args[1]);
            }
        };
        int[] nArray8 = new int[4];
        nArray8[0] = 2;
        nArray8[3] = 1;
        this.supportsWeakReference = new XPCOMObject(nArray8){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.GetWeakReference(args[0]);
            }
        };
        int[] nArray9 = new int[4];
        nArray9[0] = 2;
        nArray9[3] = 3;
        this.contextMenuListener = new XPCOMObject(nArray9){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.OnShowContextMenu(args[0], args[1], args[2]);
            }
        };
        int[] nArray10 = new int[11];
        nArray10[0] = 2;
        nArray10[3] = 2;
        nArray10[4] = 5;
        nArray10[5] = 3;
        nArray10[6] = 4;
        nArray10[7] = 1;
        nArray10[8] = 1;
        nArray10[9] = 1;
        nArray10[10] = 1;
        this.uriContentListener = new XPCOMObject(nArray10){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.OnStartURIOpen(args[0], args[1]);
            }

            public int method4(int[] args) {
                return Mozilla.this.DoContent(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method5(int[] args) {
                return Mozilla.this.IsPreferred(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return Mozilla.this.CanHandleContent(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Mozilla.this.GetLoadCookie(args[0]);
            }

            public int method8(int[] args) {
                return Mozilla.this.SetLoadCookie(args[0]);
            }

            public int method9(int[] args) {
                return Mozilla.this.GetParentContentListener(args[0]);
            }

            public int method10(int[] args) {
                return Mozilla.this.SetParentContentListener(args[0]);
            }
        };
        int[] nArray11 = new int[5];
        nArray11[0] = 2;
        nArray11[3] = 3;
        this.tooltipListener = new XPCOMObject(nArray11){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.OnShowTooltip(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return Mozilla.this.OnHideTooltip();
            }
        };
        int[] nArray12 = new int[4];
        nArray12[0] = 2;
        nArray12[3] = 1;
        this.domEventListener = new XPCOMObject(nArray12){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.HandleEvent(args[0]);
            }
        };
        int[] nArray13 = new int[4];
        nArray13[0] = 2;
        nArray13[3] = 4;
        this.badCertListener = new XPCOMObject(nArray13){

            public int method0(int[] args) {
                return Mozilla.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Mozilla.this.AddRef();
            }

            public int method2(int[] args) {
                return Mozilla.this.Release();
            }

            public int method3(int[] args) {
                return Mozilla.this.NotifyCertProblem(args[0], args[1], args[2], args[3]);
            }
        };
    }

    void deregisterFunction(BrowserFunction function) {
        super.deregisterFunction(function);
        AllFunctions.remove(new Integer(function.index));
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.weakReference != null) {
            this.weakReference.dispose();
            this.weakReference = null;
        }
        if (this.webProgressListener != null) {
            this.webProgressListener.dispose();
            this.webProgressListener = null;
        }
        if (this.webBrowserChrome != null) {
            this.webBrowserChrome.dispose();
            this.webBrowserChrome = null;
        }
        if (this.webBrowserChromeFocus != null) {
            this.webBrowserChromeFocus.dispose();
            this.webBrowserChromeFocus = null;
        }
        if (this.embeddingSiteWindow != null) {
            this.embeddingSiteWindow.dispose();
            this.embeddingSiteWindow = null;
        }
        if (this.interfaceRequestor != null) {
            this.interfaceRequestor.dispose();
            this.interfaceRequestor = null;
        }
        if (this.supportsWeakReference != null) {
            this.supportsWeakReference.dispose();
            this.supportsWeakReference = null;
        }
        if (this.contextMenuListener != null) {
            this.contextMenuListener.dispose();
            this.contextMenuListener = null;
        }
        if (this.uriContentListener != null) {
            this.uriContentListener.dispose();
            this.uriContentListener = null;
        }
        if (this.tooltipListener != null) {
            this.tooltipListener.dispose();
            this.tooltipListener = null;
        }
        if (this.domEventListener != null) {
            this.domEventListener.dispose();
            this.domEventListener = null;
        }
        if (this.badCertListener != null) {
            this.badCertListener.dispose();
            this.badCertListener = null;
        }
    }

    public boolean execute(String script) {
        this.delegate.removeWindowSubclass();
        int[] result = new int[1];
        if (!IsPre_1_9) {
            nsIXPCSecurityManager securityManager;
            int rc = XPCOM.NS_GetServiceManager(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
            result[0] = 0;
            nsIPrincipal principal = null;
            byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/scriptsecuritymanager;1", true);
            rc = serviceManager.GetServiceByContractID(aContractID, nsIScriptSecurityManager_1_9_1.NS_ISCRIPTSECURITYMANAGER_IID, result);
            if (rc == 0 && result[0] != 0) {
                securityManager = new nsIScriptSecurityManager_1_9_1(result[0]);
                result[0] = 0;
                rc = ((nsIScriptSecurityManager_1_9_1)securityManager).GetSystemPrincipal(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                principal = new nsIPrincipal(result[0]);
                result[0] = 0;
                securityManager.Release();
            } else {
                rc = serviceManager.GetServiceByContractID(aContractID, nsIScriptSecurityManager_1_9.NS_ISCRIPTSECURITYMANAGER_IID, result);
                if (rc == 0 && result[0] != 0) {
                    securityManager = new nsIScriptSecurityManager_1_9(result[0]);
                    result[0] = 0;
                    rc = ((nsIScriptSecurityManager_1_9)securityManager).GetSystemPrincipal(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467261);
                    }
                    principal = new nsIPrincipal(result[0]);
                    result[0] = 0;
                    securityManager.Release();
                }
            }
            if (principal != null) {
                rc = this.webBrowser.QueryInterface(nsIInterfaceRequestor.NS_IINTERFACEREQUESTOR_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIInterfaceRequestor interfaceRequestor = new nsIInterfaceRequestor(result[0]);
                result[0] = 0;
                nsID scriptGlobalObjectNSID_1_9 = new nsID("6afecd40-0b9a-4cfd-8c42-0f645cd91829");
                rc = interfaceRequestor.GetInterface(scriptGlobalObjectNSID_1_9, result);
                if (rc != 0 || result[0] == 0) {
                    result[0] = 0;
                    nsID scriptGlobalObjectNSID_1_9_2 = new nsID("e9f3f2c1-2d94-4722-bbd4-2bf6fdf42f48");
                    rc = interfaceRequestor.GetInterface(scriptGlobalObjectNSID_1_9_2, result);
                }
                interfaceRequestor.Release();
                if (rc == 0 && result[0] != 0) {
                    int scriptGlobalObject = result[0];
                    result[0] = 0;
                    rc = XPCOM.nsIScriptGlobalObject_EnsureScriptEnvironment(scriptGlobalObject, 2);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    int scriptContext = XPCOM.nsIScriptGlobalObject_GetScriptContext(scriptGlobalObject, 2);
                    int globalJSObject = XPCOM.nsIScriptGlobalObject_GetScriptGlobal(scriptGlobalObject, 2);
                    new nsISupports(scriptGlobalObject).Release();
                    if (scriptContext != 0 && globalJSObject != 0) {
                        nsID scriptContextNSID_1_9 = new nsID("e7b9871d-3adc-4bf7-850d-7fb9554886bf");
                        rc = new nsISupports(scriptContext).QueryInterface(scriptContextNSID_1_9, result);
                        if (rc != 0 || result[0] == 0) {
                            result[0] = 0;
                            nsID scriptContextNSID_1_9_2 = new nsID("87482b5e-e019-4df5-9bc2-b2a51b1f2d28");
                            rc = new nsISupports(scriptContext).QueryInterface(scriptContextNSID_1_9_2, result);
                        }
                        if (rc == 0 && result[0] != 0) {
                            new nsISupports(result[0]).Release();
                            result[0] = 0;
                            int nativeContext = XPCOM.nsIScriptContext_GetNativeContext(scriptContext);
                            if (nativeContext != 0) {
                                int length = script.length();
                                char[] scriptChars = new char[length];
                                script.getChars(0, length, scriptChars, 0);
                                byte[] urlbytes = MozillaDelegate.wcsToMbcs(null, this.getUrl(), true);
                                rc = principal.GetJSPrincipals(nativeContext, result);
                                if (rc == 0 && result[0] != 0) {
                                    int principals = result[0];
                                    result[0] = 0;
                                    principal.Release();
                                    if (pathBytes_JSEvaluateUCScriptForPrincipals == null) {
                                        String mozillaPath = String.valueOf(Mozilla.getMozillaPath()) + this.delegate.getJSLibraryName() + '\u0000';
                                        try {
                                            pathBytes_JSEvaluateUCScriptForPrincipals = mozillaPath.getBytes("UTF-8");
                                        }
                                        catch (UnsupportedEncodingException unsupportedEncodingException) {
                                            pathBytes_JSEvaluateUCScriptForPrincipals = mozillaPath.getBytes();
                                        }
                                    }
                                    if ((rc = serviceManager.GetServiceByContractID(aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/js/xpc/ContextStack;1", true), nsIJSContextStack.NS_IJSCONTEXTSTACK_IID, result)) != 0) {
                                        Mozilla.error(rc);
                                    }
                                    if (result[0] == 0) {
                                        Mozilla.error(-2147467262);
                                    }
                                    serviceManager.Release();
                                    nsIJSContextStack stack = new nsIJSContextStack(result[0]);
                                    result[0] = 0;
                                    rc = stack.Push(nativeContext);
                                    if (rc != 0) {
                                        Mozilla.error(rc);
                                    }
                                    boolean success = XPCOM.JS_EvaluateUCScriptForPrincipals(pathBytes_JSEvaluateUCScriptForPrincipals, nativeContext, globalJSObject, principals, scriptChars, length, urlbytes, 0, result) != 0;
                                    result[0] = 0;
                                    rc = stack.Pop(result);
                                    if (rc != 0) {
                                        Mozilla.error(rc);
                                    }
                                    stack.Release();
                                    return success;
                                }
                            }
                        }
                    }
                }
                principal.Release();
            }
            serviceManager.Release();
        }
        String url = PREFIX_JAVASCRIPT + script + ";void(0);";
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        char[] arg = url.toCharArray();
        char[] c = new char[arg.length + 1];
        System.arraycopy(arg, 0, c, 0, arg.length);
        rc = webNavigation.LoadURI(c, 0, 0, 0, 0);
        webNavigation.Release();
        return rc == 0;
    }

    static Browser findBrowser(int handle) {
        return MozillaDelegate.findBrowser(handle);
    }

    static Browser findBrowser(nsIDOMWindow aDOMWindow) {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/embedcomp/window-watcher;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIWindowWatcher.NS_IWINDOWWATCHER_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIWindowWatcher windowWatcher = new nsIWindowWatcher(result[0]);
        result[0] = 0;
        rc = aDOMWindow.GetTop(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        int topDOMWindow = result[0];
        result[0] = 0;
        rc = windowWatcher.GetChromeForWindow(topDOMWindow, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        new nsISupports(topDOMWindow).Release();
        windowWatcher.Release();
        if (result[0] == 0) {
            return null;
        }
        nsIWebBrowserChrome webBrowserChrome = new nsIWebBrowserChrome(result[0]);
        result[0] = 0;
        rc = webBrowserChrome.QueryInterface(nsIEmbeddingSiteWindow.NS_IEMBEDDINGSITEWINDOW_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        webBrowserChrome.Release();
        nsIEmbeddingSiteWindow embeddingSiteWindow = new nsIEmbeddingSiteWindow(result[0]);
        result[0] = 0;
        rc = embeddingSiteWindow.GetSiteWindow(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        embeddingSiteWindow.Release();
        return Mozilla.findBrowser(result[0]);
    }

    public boolean forward() {
        this.htmlBytes = null;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        rc = webNavigation.GoForward();
        webNavigation.Release();
        return rc == 0;
    }

    public String getBrowserType() {
        return "mozilla";
    }

    static String getMozillaPath() {
        if (LocationProvider != null) {
            return Mozilla.LocationProvider.mozillaPath;
        }
        if (!Initialized) {
            return "";
        }
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] buffer = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/file/directory_service;1", true);
        rc = serviceManager.GetServiceByContractID(buffer, nsIDirectoryService.NS_IDIRECTORYSERVICE_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIDirectoryService directoryService = new nsIDirectoryService(result[0]);
        result[0] = 0;
        rc = directoryService.QueryInterface(nsIProperties.NS_IPROPERTIES_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        directoryService.Release();
        nsIProperties properties = new nsIProperties(result[0]);
        result[0] = 0;
        buffer = MozillaDelegate.wcsToMbcs(null, "GreD", true);
        rc = properties.Get(buffer, nsIFile.NS_IFILE_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        properties.Release();
        nsIFile mozillaDir = new nsIFile(result[0]);
        result[0] = 0;
        int path = XPCOM.nsEmbedCString_new();
        rc = mozillaDir.GetNativePath(path);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        int length = XPCOM.nsEmbedCString_Length(path);
        int ptr = XPCOM.nsEmbedCString_get(path);
        buffer = new byte[length];
        XPCOM.memmove(buffer, ptr, length);
        XPCOM.nsEmbedCString_delete(path);
        mozillaDir.Release();
        return String.valueOf(new String(MozillaDelegate.mbcsToWcs(null, buffer))) + SEPARATOR_OS;
    }

    int getNextFunctionIndex() {
        return NextJSFunctionIndex++;
    }

    public String getText() {
        int[] result = new int[1];
        int rc = this.webBrowser.GetContentDOMWindow(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIDOMWindow window = new nsIDOMWindow(result[0]);
        result[0] = 0;
        rc = window.GetDocument(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        window.Release();
        int document = result[0];
        result[0] = 0;
        rc = XPCOM.NS_GetComponentManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIComponentManager componentManager = new nsIComponentManager(result[0]);
        result[0] = 0;
        byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/xmlextras/xmlserializer;1", true);
        char[] chars = null;
        rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIDOMSerializer_1_7.NS_IDOMSERIALIZER_IID, result);
        if (rc == 0) {
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMSerializer_1_7 serializer = new nsIDOMSerializer_1_7(result[0]);
            result[0] = 0;
            int string = XPCOM.nsEmbedString_new();
            rc = serializer.SerializeToString(document, string);
            serializer.Release();
            int length = XPCOM.nsEmbedString_Length(string);
            int buffer = XPCOM.nsEmbedString_get(string);
            chars = new char[length];
            XPCOM.memmove(chars, buffer, length * 2);
            XPCOM.nsEmbedString_delete(string);
        } else {
            rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIDOMSerializer.NS_IDOMSERIALIZER_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMSerializer serializer = new nsIDOMSerializer(result[0]);
            result[0] = 0;
            rc = serializer.SerializeToString(document, result);
            serializer.Release();
            int length = XPCOM.strlen_PRUnichar(result[0]);
            chars = new char[length];
            XPCOM.memmove(chars, result[0], length * 2);
        }
        componentManager.Release();
        new nsISupports(document).Release();
        return new String(chars);
    }

    public String getUrl() {
        int[] aCurrentURI;
        nsIWebNavigation webNavigation;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (webNavigation = new nsIWebNavigation(result[0])).GetCurrentURI(aCurrentURI = new int[1])) != 0) {
            Mozilla.error(rc);
        }
        webNavigation.Release();
        byte[] dest = null;
        if (aCurrentURI[0] != 0) {
            nsIURI uri = new nsIURI(aCurrentURI[0]);
            int aSpec = XPCOM.nsEmbedCString_new();
            rc = uri.GetSpec(aSpec);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            int length = XPCOM.nsEmbedCString_Length(aSpec);
            int buffer = XPCOM.nsEmbedCString_get(aSpec);
            dest = new byte[length];
            XPCOM.memmove(dest, buffer, length);
            XPCOM.nsEmbedCString_delete(aSpec);
            uri.Release();
        }
        if (dest == null) {
            return "";
        }
        String location = new String(dest);
        if (location.equals(URI_FILEROOT)) {
            location = ABOUT_BLANK;
        } else {
            int length = URI_FILEROOT.length();
            if (location.startsWith(URI_FILEROOT) && location.charAt(length) == '#') {
                location = ABOUT_BLANK + location.substring(length);
            }
        }
        return location;
    }

    public Object getWebBrowser() {
        if ((this.browser.getStyle() & 0x8000) == 0) {
            return null;
        }
        if (this.webBrowserObject != null) {
            return this.webBrowserObject;
        }
        try {
            Class<?> clazz = Class.forName("org.mozilla.xpcom.Mozilla");
            Method method = clazz.getMethod("getInstance", new Class[0]);
            Object mozilla = method.invoke(null, new Object[0]);
            Class[] classArray = new Class[2];
            classArray[0] = Long.TYPE;
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[1] = clazz2;
            method = clazz.getMethod("wrapXPCOMObject", classArray);
            this.webBrowserObject = method.invoke(mozilla, new Long(this.webBrowser.getAddress()), "69e5df00-7b8b-11d3-af61-00a024ffc08c");
            this.webBrowser.AddRef();
            return this.webBrowserObject;
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoSuchMethodException noSuchMethodException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {
        }
        catch (InvocationTargetException invocationTargetException) {}
        return null;
    }

    static String InitDiscoverXULRunner() {
        GREVersionRange range = new GREVersionRange();
        byte[] bytes = MozillaDelegate.wcsToMbcs(null, GRERANGE_LOWER, true);
        int lower = C.malloc(bytes.length);
        C.memmove(lower, bytes, bytes.length);
        range.lower = lower;
        range.lowerInclusive = true;
        bytes = MozillaDelegate.wcsToMbcs(null, GRERANGE_UPPER, true);
        int upper = C.malloc(bytes.length);
        C.memmove(upper, bytes, bytes.length);
        range.upper = upper;
        range.upperInclusive = true;
        GREProperty property = new GREProperty();
        bytes = MozillaDelegate.wcsToMbcs(null, PROPERTY_ABI, true);
        int name = C.malloc(bytes.length);
        C.memmove(name, bytes, bytes.length);
        property.property = name;
        bytes = MozillaDelegate.wcsToMbcs(null, String.valueOf(Mozilla.Arch()) + GCC3, true);
        int value = C.malloc(bytes.length);
        C.memmove(value, bytes, bytes.length);
        property.value = value;
        int length = 4096;
        int greBuffer = C.malloc(length);
        int rc = XPCOMInit.GRE_GetGREPathWithProperties(range, 1, property, 1, greBuffer, length);
        if (rc != 0 && (rc = XPCOMInit.GRE_GetGREPathWithProperties(range, 1, property, 0, greBuffer, length)) != 0) {
            C.free(lower);
            bytes = MozillaDelegate.wcsToMbcs(null, GRERANGE_LOWER_FALLBACK, true);
            lower = C.malloc(bytes.length);
            C.memmove(lower, bytes, bytes.length);
            range.lower = lower;
            rc = XPCOMInit.GRE_GetGREPathWithProperties(range, 1, property, 0, greBuffer, length);
        }
        C.free(value);
        C.free(name);
        C.free(lower);
        C.free(upper);
        String result = null;
        if (rc == 0) {
            length = C.strlen(greBuffer);
            bytes = new byte[length];
            C.memmove(bytes, greBuffer, length);
            result = new String(MozillaDelegate.mbcsToWcs(null, bytes));
        } else {
            result = "";
        }
        C.free(greBuffer);
        return result;
    }

    void initExternal(String profilePath) {
        java.io.InputStream is;
        File componentsDir = new File(profilePath, "components");
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.swt.internal.Library");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((is = clazz.getResourceAsStream("/external.xpt")) != null) {
            if (!componentsDir.exists()) {
                componentsDir.mkdirs();
            }
            byte[] buffer = new byte[4096];
            File file = new File(componentsDir, "external.xpt");
            try {
                int read;
                FileOutputStream os = new FileOutputStream(file);
                while ((read = is.read(buffer)) != -1) {
                    os.write(buffer, 0, read);
                }
                os.close();
                is.close();
            }
            catch (FileNotFoundException fileNotFoundException) {
            }
            catch (IOException iOException) {}
        }
    }

    void initFactories(nsIServiceManager serviceManager, nsIComponentManager componentManager, boolean isXULRunner) {
        int[] result = new int[1];
        int rc = componentManager.QueryInterface(nsIComponentRegistrar.NS_ICOMPONENTREGISTRAR_IID, result);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIComponentRegistrar componentRegistrar = new nsIComponentRegistrar(result[0]);
        result[0] = 0;
        componentRegistrar.AutoRegister(0);
        PromptService2Factory factory = new PromptService2Factory();
        factory.AddRef();
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/embedcomp/prompt-service;1", true);
        byte[] aClassName = MozillaDelegate.wcsToMbcs(null, "swtPromptService", true);
        rc = componentRegistrar.RegisterFactory(XPCOM.NS_PROMPTSERVICE_CID, aClassName, aContractID, factory.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        factory.Release();
        ExternalFactory externalFactory = new ExternalFactory();
        externalFactory.AddRef();
        aContractID = MozillaDelegate.wcsToMbcs(null, "@eclipse.org/external;1", true);
        aClassName = MozillaDelegate.wcsToMbcs(null, "External", true);
        rc = componentRegistrar.RegisterFactory(XPCOM.EXTERNAL_CID, aClassName, aContractID, externalFactory.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        externalFactory.Release();
        rc = serviceManager.GetService(XPCOM.NS_CATEGORYMANAGER_CID, nsICategoryManager.NS_ICATEGORYMANAGER_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsICategoryManager categoryManager = new nsICategoryManager(result[0]);
        result[0] = 0;
        byte[] category = MozillaDelegate.wcsToMbcs(null, "JavaScript global property", true);
        byte[] entry = MozillaDelegate.wcsToMbcs(null, "external", true);
        rc = categoryManager.AddCategoryEntry(category, entry, aContractID, 1, 1, result);
        result[0] = 0;
        categoryManager.Release();
        DownloadFactory downloadFactory = new DownloadFactory();
        downloadFactory.AddRef();
        aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/download;1", true);
        aClassName = MozillaDelegate.wcsToMbcs(null, "swtDownload", true);
        rc = componentRegistrar.RegisterFactory(XPCOM.NS_DOWNLOAD_CID, aClassName, aContractID, downloadFactory.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        downloadFactory.Release();
        FilePickerFactory pickerFactory = isXULRunner ? new FilePickerFactory_1_8() : new FilePickerFactory();
        pickerFactory.AddRef();
        aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/filepicker;1", true);
        aClassName = MozillaDelegate.wcsToMbcs(null, "swtFilePicker", true);
        rc = componentRegistrar.RegisterFactory(XPCOM.NS_FILEPICKER_CID, aClassName, aContractID, pickerFactory.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        pickerFactory.Release();
        componentRegistrar.Release();
    }

    void initJavaXPCOM(String mozillaPath) {
        try {
            Class<?> clazz = Class.forName("org.mozilla.xpcom.Mozilla");
            Method method = clazz.getMethod("getInstance", new Class[0]);
            Object mozilla = method.invoke(null, new Object[0]);
            method = clazz.getMethod("getComponentManager", new Class[0]);
            try {
                method.invoke(mozilla, new Object[0]);
            }
            catch (InvocationTargetException invocationTargetException) {
                Class<?> fileClass = Class.forName("java.io.File");
                method = clazz.getMethod("initialize", fileClass);
                Class[] classArray = new Class[1];
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$0 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz2;
                Constructor<?> constructor = fileClass.getDeclaredConstructor(classArray);
                Object argument = constructor.newInstance(mozillaPath);
                method.invoke(mozilla, argument);
            }
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (NoSuchMethodException noSuchMethodException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {
        }
        catch (InvocationTargetException invocationTargetException) {
        }
        catch (InstantiationException instantiationException) {}
    }

    String initMozilla(String mozillaPath) {
        int ptr = C.getenv(MozillaDelegate.wcsToMbcs(null, "MOZILLA_FIVE_HOME", true));
        if (ptr != 0) {
            int length = C.strlen(ptr);
            byte[] buffer = new byte[length];
            C.memmove(buffer, ptr, length);
            mozillaPath = new String(MozillaDelegate.mbcsToWcs(null, buffer));
            mozillaPath = SEPARATOR_OS == '/' ? mozillaPath.replace('\\', SEPARATOR_OS) : mozillaPath.replace('/', SEPARATOR_OS);
        } else {
            this.browser.dispose();
            SWT.error(2, null, " [Unknown Mozilla path (MOZILLA_FIVE_HOME not set)]");
        }
        if (Device.DEBUG) {
            System.out.println("Mozilla path: " + mozillaPath);
        }
        if (Compatibility.fileExists(mozillaPath, "components/libwidget_gtk.so")) {
            this.browser.dispose();
            SWT.error(2, null, " [Mozilla GTK2 required (GTK1.2 detected)]");
        }
        try {
            Library.loadLibrary("swt-mozilla");
        }
        catch (UnsatisfiedLinkError e) {
            try {
                Library.loadLibrary("swt-mozilla-gcc3");
            }
            catch (UnsatisfiedLinkError unsatisfiedLinkError) {
                this.browser.dispose();
                SWT.error(2, e, " [MOZILLA_FIVE_HOME='" + mozillaPath + "']");
            }
        }
        return mozillaPath;
    }

    void initXPCOM(String mozillaPath, boolean isXULRunner) {
        int[] result = new int[1];
        nsEmbedString pathString = new nsEmbedString(mozillaPath);
        int rc = XPCOM.NS_NewLocalFile(pathString.getAddress(), 1, result);
        pathString.dispose();
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467261);
        }
        nsILocalFile localFile = new nsILocalFile(result[0]);
        result[0] = 0;
        if (isXULRunner) {
            int size = XPCOM.nsDynamicFunctionLoad_sizeof();
            int ptr = C.malloc(size * 2);
            C.memset(ptr, 0, size * 2);
            nsDynamicFunctionLoad functionLoad = new nsDynamicFunctionLoad();
            byte[] bytes = MozillaDelegate.wcsToMbcs(null, "XRE_InitEmbedding", true);
            functionLoad.functionName = C.malloc(bytes.length);
            C.memmove(functionLoad.functionName, bytes, bytes.length);
            functionLoad.function = C.malloc(C.PTR_SIZEOF);
            C.memmove(functionLoad.function, new int[1], C.PTR_SIZEOF);
            XPCOM.memmove(ptr, functionLoad, XPCOM.nsDynamicFunctionLoad_sizeof());
            XPCOM.XPCOMGlueLoadXULFunctions(ptr);
            C.memmove(result, functionLoad.function, C.PTR_SIZEOF);
            int functionPtr = result[0];
            result[0] = 0;
            C.free(functionLoad.function);
            C.free(functionLoad.functionName);
            C.free(ptr);
            if (functionPtr == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467261);
            }
            if ((rc = XPCOM.Call(functionPtr, localFile.getAddress(), localFile.getAddress(), LocationProvider.getAddress(), 0, 0)) == 0) {
                System.setProperty(XULRUNNER_PATH, mozillaPath);
            }
        } else {
            rc = XPCOM.NS_InitXPCOM2(0, localFile.getAddress(), LocationProvider.getAddress());
        }
        localFile.Release();
        if (rc != 0) {
            this.browser.dispose();
            SWT.error(2, null, " [MOZILLA_FIVE_HOME may not point at an embeddable GRE] [NS_InitEmbedding " + mozillaPath + " error " + rc + "]");
        }
        System.setProperty(GRE_INITIALIZED, TRUE);
    }

    void initPreferences(nsIServiceManager serviceManager, nsIComponentManager componentManager) {
        int[] result = new int[1];
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/preferences-service;1", true);
        int rc = serviceManager.GetServiceByContractID(aContractID, nsIPrefService.NS_IPREFSERVICE_IID, result);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIPrefService prefService = new nsIPrefService(result[0]);
        result[0] = 0;
        byte[] buffer = new byte[1];
        rc = prefService.GetBranch(buffer, result);
        prefService.Release();
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIPrefBranch prefBranch = new nsIPrefBranch(result[0]);
        result[0] = 0;
        String prefLocales = null;
        nsIPrefLocalizedString localizedString = null;
        buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_LANGUAGES, true);
        rc = prefBranch.GetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
        if (rc != 0) {
            prefLocales = "en-us,en,";
        } else {
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            localizedString = new nsIPrefLocalizedString(result[0]);
            result[0] = 0;
            rc = localizedString.ToString(result);
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            int length = XPCOM.strlen_PRUnichar(result[0]);
            char[] dest = new char[length];
            XPCOM.memmove(dest, result[0], length * 2);
            prefLocales = String.valueOf(new String(dest)) + TOKENIZER_LOCALE;
        }
        result[0] = 0;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuffer stringBuffer = new StringBuffer(language);
        stringBuffer.append(SEPARATOR_LOCALE);
        stringBuffer.append(country.toLowerCase());
        stringBuffer.append(TOKENIZER_LOCALE);
        stringBuffer.append(language);
        stringBuffer.append(TOKENIZER_LOCALE);
        String newLocales = stringBuffer.toString();
        int end = -1;
        do {
            int start;
            String token = (end = prefLocales.indexOf(TOKENIZER_LOCALE, start = end + 1)) == -1 ? prefLocales.substring(start) : prefLocales.substring(start, end);
            if (token.length() <= 0 || newLocales.indexOf(token = (String.valueOf(token) + TOKENIZER_LOCALE).trim()) != -1) continue;
            stringBuffer.append(token);
        } while (end != -1);
        newLocales = stringBuffer.toString();
        if (!newLocales.equals(prefLocales)) {
            newLocales = newLocales.substring(0, newLocales.length() - TOKENIZER_LOCALE.length());
            int length = newLocales.length();
            char[] charBuffer = new char[length + 1];
            newLocales.getChars(0, length, charBuffer, 0);
            if (localizedString == null) {
                byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/pref-localizedstring;1", true);
                rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
                if (rc != 0) {
                    this.browser.dispose();
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    this.browser.dispose();
                    Mozilla.error(-2147467262);
                }
                localizedString = new nsIPrefLocalizedString(result[0]);
                result[0] = 0;
            }
            localizedString.SetDataWithLength(length, charBuffer);
            rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress());
        }
        if (localizedString != null) {
            localizedString.Release();
            localizedString = null;
        }
        String prefCharset = null;
        buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_CHARSET, true);
        rc = prefBranch.GetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
        if (rc != 0) {
            prefCharset = "ISO-8859-1";
        } else {
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            localizedString = new nsIPrefLocalizedString(result[0]);
            result[0] = 0;
            rc = localizedString.ToString(result);
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            int length = XPCOM.strlen_PRUnichar(result[0]);
            char[] dest = new char[length];
            XPCOM.memmove(dest, result[0], length * 2);
            prefCharset = new String(dest);
        }
        result[0] = 0;
        String newCharset = System.getProperty("file.encoding");
        if (!newCharset.equals(prefCharset)) {
            int length = newCharset.length();
            char[] charBuffer = new char[length + 1];
            newCharset.getChars(0, length, charBuffer, 0);
            if (localizedString == null) {
                byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/pref-localizedstring;1", true);
                rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
                if (rc != 0) {
                    this.browser.dispose();
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    this.browser.dispose();
                    Mozilla.error(-2147467262);
                }
                localizedString = new nsIPrefLocalizedString(result[0]);
                result[0] = 0;
            }
            localizedString.SetDataWithLength(length, charBuffer);
            rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress());
        }
        if (localizedString != null) {
            localizedString.Release();
        }
        String proxyHost = System.getProperty(PROPERTY_PROXYHOST);
        String proxyPortString = System.getProperty(PROPERTY_PROXYPORT);
        int port = -1;
        if (proxyPortString != null) {
            try {
                int value = Integer.valueOf(proxyPortString);
                if (value >= 0 && value <= 65535) {
                    port = value;
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        if (proxyHost != null) {
            char[] dest;
            nsIPrefLocalizedString value;
            byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/pref-localizedstring;1", true);
            rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            localizedString = new nsIPrefLocalizedString(result[0]);
            result[0] = 0;
            int length = proxyHost.length();
            char[] charBuffer = new char[length];
            proxyHost.getChars(0, length, charBuffer, 0);
            rc = localizedString.SetDataWithLength(length, charBuffer);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = prefBranch.GetComplexValue(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYHOST_FTP, true), nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result)) == 0 && result[0] != 0) {
                value = new nsIPrefLocalizedString(result[0]);
                result[0] = 0;
                rc = value.ToString(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                length = XPCOM.strlen_PRUnichar(result[0]);
                dest = new char[length];
                XPCOM.memmove(dest, result[0], length * 2);
                oldProxyHostFTP = new String(dest);
            } else {
                oldProxyHostFTP = DEFAULTVALUE_STRING;
            }
            result[0] = 0;
            rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress());
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = prefBranch.GetComplexValue(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYHOST_HTTP, true), nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result)) == 0 && result[0] != 0) {
                value = new nsIPrefLocalizedString(result[0]);
                result[0] = 0;
                rc = value.ToString(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                length = XPCOM.strlen_PRUnichar(result[0]);
                dest = new char[length];
                XPCOM.memmove(dest, result[0], length * 2);
                oldProxyHostHTTP = new String(dest);
            } else {
                oldProxyHostHTTP = DEFAULTVALUE_STRING;
            }
            result[0] = 0;
            rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress());
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = prefBranch.GetComplexValue(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYHOST_SSL, true), nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, result)) == 0 && result[0] != 0) {
                value = new nsIPrefLocalizedString(result[0]);
                result[0] = 0;
                rc = value.ToString(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467261);
                }
                length = XPCOM.strlen_PRUnichar(result[0]);
                dest = new char[length];
                XPCOM.memmove(dest, result[0], length * 2);
                oldProxyHostSSL = new String(dest);
            } else {
                oldProxyHostSSL = DEFAULTVALUE_STRING;
            }
            result[0] = 0;
            rc = prefBranch.SetComplexValue(buffer, nsIPrefLocalizedString.NS_IPREFLOCALIZEDSTRING_IID, localizedString.getAddress());
            if (rc != 0) {
                Mozilla.error(rc);
            }
            localizedString.Release();
        }
        int[] intResult = new int[1];
        if (port != -1) {
            buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYPORT_FTP, true);
            rc = prefBranch.GetIntPref(buffer, intResult);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            oldProxyPortFTP = intResult[0];
            intResult[0] = 0;
            rc = prefBranch.SetIntPref(buffer, port);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = prefBranch.GetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYPORT_HTTP, true), intResult)) != 0) {
                Mozilla.error(rc);
            }
            oldProxyPortHTTP = intResult[0];
            intResult[0] = 0;
            rc = prefBranch.SetIntPref(buffer, port);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = prefBranch.GetIntPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYPORT_SSL, true), intResult)) != 0) {
                Mozilla.error(rc);
            }
            oldProxyPortSSL = intResult[0];
            intResult[0] = 0;
            rc = prefBranch.SetIntPref(buffer, port);
            if (rc != 0) {
                Mozilla.error(rc);
            }
        }
        if (proxyHost != null || port != -1) {
            buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_PROXYTYPE, true);
            rc = prefBranch.GetIntPref(buffer, intResult);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            oldProxyType = intResult[0];
            intResult[0] = 0;
            rc = prefBranch.SetIntPref(buffer, 1);
            if (rc != 0) {
                Mozilla.error(rc);
            }
        }
        if ((rc = prefBranch.SetBoolPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_DISABLEOPENDURINGLOAD, true), 0)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = prefBranch.SetBoolPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_DISABLEWINDOWSTATUSCHANGE, true), 0)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = prefBranch.SetBoolPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_DISABLEOPENWINDOWSTATUSHIDE, true), 0)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = prefBranch.SetBoolPref(buffer = MozillaDelegate.wcsToMbcs(null, PREFERENCE_JAVASCRIPTENABLED, true), 1)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        prefBranch.Release();
    }

    void initProfile(nsIServiceManager serviceManager, boolean isXULRunner) {
        int[] result = new int[1];
        byte[] buffer = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/observer-service;1", true);
        int rc = serviceManager.GetServiceByContractID(buffer, nsIObserverService.NS_IOBSERVERSERVICE_IID, result);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIObserverService observerService = new nsIObserverService(result[0]);
        result[0] = 0;
        buffer = MozillaDelegate.wcsToMbcs(null, PROFILE_DO_CHANGE, true);
        int length = STARTUP.length();
        char[] chars = new char[length + 1];
        STARTUP.getChars(0, length, chars, 0);
        rc = observerService.NotifyObservers(0, buffer, chars);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = observerService.NotifyObservers(0, buffer = MozillaDelegate.wcsToMbcs(null, PROFILE_AFTER_CHANGE, true), chars)) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        observerService.Release();
        if (isXULRunner) {
            int size = XPCOM.nsDynamicFunctionLoad_sizeof();
            int ptr = C.malloc(size * 2);
            C.memset(ptr, 0, size * 2);
            nsDynamicFunctionLoad functionLoad = new nsDynamicFunctionLoad();
            byte[] bytes = MozillaDelegate.wcsToMbcs(null, "XRE_NotifyProfile", true);
            functionLoad.functionName = C.malloc(bytes.length);
            C.memmove(functionLoad.functionName, bytes, bytes.length);
            functionLoad.function = C.malloc(C.PTR_SIZEOF);
            C.memmove(functionLoad.function, new int[1], C.PTR_SIZEOF);
            XPCOM.memmove(ptr, functionLoad, XPCOM.nsDynamicFunctionLoad_sizeof());
            XPCOM.XPCOMGlueLoadXULFunctions(ptr);
            C.memmove(result, functionLoad.function, C.PTR_SIZEOF);
            int functionPtr = result[0];
            result[0] = 0;
            C.free(functionLoad.function);
            C.free(functionLoad.functionName);
            C.free(ptr);
            if (functionPtr != 0 && (rc = XPCOM.Call(functionPtr)) != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
        }
    }

    void initSpinup(nsIComponentManager componentManager) {
        int[] result;
        int rc;
        if (this.delegate.needsSpinup() && (rc = componentManager.CreateInstance(XPCOM.NS_APPSHELL_CID, 0, nsIAppShell.NS_IAPPSHELL_IID, result = new int[1])) != -2147467262) {
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                this.browser.dispose();
                Mozilla.error(-2147467262);
            }
            AppShell = new nsIAppShell(result[0]);
            result[0] = 0;
            rc = AppShell.Create(0, null);
            if (rc != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
            if ((rc = AppShell.Spinup()) != 0) {
                this.browser.dispose();
                Mozilla.error(rc);
            }
        }
    }

    void initWebBrowserWindows() {
        int[] result;
        int rc = this.webBrowser.SetContainerWindow(this.webBrowserChrome.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if ((rc = this.webBrowser.QueryInterface(nsIBaseWindow.NS_IBASEWINDOW_IID, result = new int[1])) != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIBaseWindow baseWindow = new nsIBaseWindow(result[0]);
        result[0] = 0;
        Rectangle rect = this.browser.getClientArea();
        if (rect.isEmpty()) {
            rect.width = 1;
            rect.height = 1;
        }
        this.embedHandle = this.delegate.getHandle();
        rc = baseWindow.InitWindow(this.embedHandle, 0, 0, 0, rect.width, rect.height);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(-2147467259);
        }
        if ((rc = this.delegate.createBaseWindow(baseWindow)) != 0) {
            this.browser.dispose();
            Mozilla.error(-2147467259);
        }
        if ((rc = baseWindow.SetVisibility(1)) != 0) {
            this.browser.dispose();
            Mozilla.error(-2147467259);
        }
        baseWindow.Release();
    }

    void initWindowCreator(nsIServiceManager serviceManager) {
        WindowCreator = new WindowCreator2();
        WindowCreator.AddRef();
        int[] result = new int[1];
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/embedcomp/window-watcher;1", true);
        int rc = serviceManager.GetServiceByContractID(aContractID, nsIWindowWatcher.NS_IWINDOWWATCHER_IID, result);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            this.browser.dispose();
            Mozilla.error(-2147467262);
        }
        nsIWindowWatcher windowWatcher = new nsIWindowWatcher(result[0]);
        result[0] = 0;
        rc = windowWatcher.SetWindowCreator(WindowCreator.getAddress());
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        windowWatcher.Release();
    }

    String initXULRunner(String mozillaPath) {
        if (Device.DEBUG) {
            System.out.println("XULRunner path: " + mozillaPath);
        }
        try {
            Library.loadLibrary("swt-xulrunner");
        }
        catch (UnsatisfiedLinkError e) {
            SWT.error(2, e);
        }
        byte[] path = MozillaDelegate.wcsToMbcs(null, mozillaPath, true);
        int rc = XPCOM.XPCOMGlueStartup(path);
        if (rc != 0) {
            this.browser.dispose();
            Mozilla.error(rc);
        }
        XPCOMWasGlued = true;
        return mozillaPath.substring(0, mozillaPath.lastIndexOf(SEPARATOR_OS));
    }

    public boolean isBackEnabled() {
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        int[] aCanGoBack = new int[1];
        rc = webNavigation.GetCanGoBack(aCanGoBack);
        webNavigation.Release();
        return aCanGoBack[0] != 0;
    }

    public boolean isForwardEnabled() {
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        int[] aCanGoForward = new int[1];
        rc = webNavigation.GetCanGoForward(aCanGoForward);
        webNavigation.Release();
        return aCanGoForward[0] != 0;
    }

    static String error(int code) {
        throw new SWTError("XPCOM error " + code);
    }

    void onDispose(Display display) {
        nsIBaseWindow baseWindow;
        int rc;
        if (!this.browser.isClosing && !this.browser.isDisposed()) {
            LocationListener[] oldLocationListeners = this.locationListeners;
            this.locationListeners = new LocationListener[0];
            this.ignoreAllMessages = true;
            this.execute("window.location.replace('about:blank');");
            this.ignoreAllMessages = false;
            this.locationListeners = oldLocationListeners;
        }
        if ((rc = this.webBrowser.RemoveWebBrowserListener(this.weakReference.getAddress(), nsIWebProgressListener.NS_IWEBPROGRESSLISTENER_IID)) != 0) {
            Mozilla.error(rc);
        }
        if ((rc = this.webBrowser.SetParentURIContentListener(0)) != 0) {
            Mozilla.error(rc);
        }
        if ((rc = this.webBrowser.SetContainerWindow(0)) != 0) {
            Mozilla.error(rc);
        }
        this.unhookDOMListeners();
        int[] result = new int[1];
        rc = this.webBrowser.QueryInterface(nsIBaseWindow.NS_IBASEWINDOW_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (baseWindow = new nsIBaseWindow(result[0])).Destroy()) != 0) {
            Mozilla.error(rc);
        }
        baseWindow.Release();
        this.Release();
        this.webBrowser.Release();
        this.webBrowser = null;
        this.webBrowserObject = null;
        this.lastNavigateURL = null;
        this.htmlBytes = null;
        this.listener = null;
        if (this.tip != null && !this.tip.isDisposed()) {
            this.tip.dispose();
        }
        this.tip = null;
        this.size = null;
        this.location = null;
        Enumeration<Object> elements = this.unhookedDOMWindows.elements();
        while (elements.hasMoreElements()) {
            LONG ptrObject = (LONG)elements.nextElement();
            new nsISupports(ptrObject.value).Release();
        }
        this.unhookedDOMWindows = null;
        elements = this.functions.elements();
        while (elements.hasMoreElements()) {
            BrowserFunction function = (BrowserFunction)elements.nextElement();
            AllFunctions.remove(new Integer(function.index));
            function.dispose(false);
        }
        this.functions = null;
        this.delegate.onDispose(this.embedHandle);
        this.delegate = null;
        this.embedHandle = 0;
        --BrowserCount;
    }

    void Activate() {
        nsIWebBrowserFocus webBrowserFocus;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebBrowserFocus.NS_IWEBBROWSERFOCUS_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (webBrowserFocus = new nsIWebBrowserFocus(result[0])).Activate()) != 0) {
            Mozilla.error(rc);
        }
        webBrowserFocus.Release();
    }

    void Deactivate() {
        nsIWebBrowserFocus webBrowserFocus;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebBrowserFocus.NS_IWEBBROWSERFOCUS_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (webBrowserFocus = new nsIWebBrowserFocus(result[0])).Deactivate()) != 0) {
            Mozilla.error(rc);
        }
        webBrowserFocus.Release();
    }

    void onResize() {
        Rectangle rect = this.browser.getClientArea();
        int width = Math.max(1, rect.width);
        int height = Math.max(1, rect.height);
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIBaseWindow.NS_IBASEWINDOW_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        this.delegate.setSize(this.embedHandle, width, height);
        nsIBaseWindow baseWindow = new nsIBaseWindow(result[0]);
        rc = baseWindow.SetPositionAndSize(0, 0, width, height, 1);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        baseWindow.Release();
    }

    public void refresh() {
        this.htmlBytes = null;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        rc = webNavigation.Reload(0);
        webNavigation.Release();
        switch (rc) {
            case -2147467261: 
            case -2142568446: 
            case -2142109678: 
            case 0: {
                return;
            }
        }
        Mozilla.error(rc);
    }

    void registerFunction(BrowserFunction function) {
        super.registerFunction(function);
        AllFunctions.put(new Integer(function.index), function);
    }

    public boolean setText(String html, boolean trusted) {
        if (this.browser != this.browser.getDisplay().getFocusControl()) {
            this.Deactivate();
        }
        byte[] data = null;
        try {
            data = html.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return false;
        }
        this.delegate.removeWindowSubclass();
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebBrowserStream.NS_IWEBBROWSERSTREAM_IID, result);
        if (rc == 0 && result[0] != 0) {
            new nsISupports(result[0]).Release();
            result[0] = 0;
            boolean blankLoading = this.htmlBytes != null;
            this.htmlBytes = data;
            boolean bl = this.untrustedText = !trusted;
            if (blankLoading) {
                return true;
            }
            rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
            result[0] = 0;
            char[] uri = new char[ABOUT_BLANK.length() + 1];
            ABOUT_BLANK.getChars(0, ABOUT_BLANK.length(), uri, 0);
            rc = webNavigation.LoadURI(uri, 0, 0, 0, 0);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            webNavigation.Release();
        } else {
            byte[] contentCharsetBuffer = MozillaDelegate.wcsToMbcs(null, "UTF-8", false);
            int aContentCharset = XPCOM.nsEmbedCString_new(contentCharsetBuffer, contentCharsetBuffer.length);
            byte[] contentTypeBuffer = MozillaDelegate.wcsToMbcs(null, "text/html", false);
            int aContentType = XPCOM.nsEmbedCString_new(contentTypeBuffer, contentTypeBuffer.length);
            rc = XPCOM.NS_GetServiceManager(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
            result[0] = 0;
            rc = serviceManager.GetService(XPCOM.NS_IOSERVICE_CID, nsIIOService.NS_IIOSERVICE_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIIOService ioService = new nsIIOService(result[0]);
            result[0] = 0;
            byte[] aString = trusted ? MozillaDelegate.wcsToMbcs(null, URI_FILEROOT, false) : MozillaDelegate.wcsToMbcs(null, ABOUT_BLANK, false);
            int aSpec = XPCOM.nsEmbedCString_new(aString, aString.length);
            rc = ioService.NewURI(aSpec, null, 0, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            XPCOM.nsEmbedCString_delete(aSpec);
            ioService.Release();
            nsIURI uri = new nsIURI(result[0]);
            result[0] = 0;
            rc = this.webBrowser.QueryInterface(nsIInterfaceRequestor.NS_IINTERFACEREQUESTOR_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIInterfaceRequestor interfaceRequestor = new nsIInterfaceRequestor(result[0]);
            result[0] = 0;
            InputStream inputStream = new InputStream(data);
            inputStream.AddRef();
            rc = interfaceRequestor.GetInterface(nsIDocShell.NS_IDOCSHELL_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDocShell docShell = new nsIDocShell(result[0]);
            result[0] = 0;
            rc = docShell.LoadStream(inputStream.getAddress(), uri.getAddress(), aContentType, aContentCharset, 0);
            docShell.Release();
            inputStream.Release();
            interfaceRequestor.Release();
            uri.Release();
            XPCOM.nsEmbedCString_delete(aContentType);
            XPCOM.nsEmbedCString_delete(aContentCharset);
        }
        return true;
    }

    public boolean setUrl(String url, String postData, String[] headers) {
        this.htmlBytes = null;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        this.delegate.removeWindowSubclass();
        nsIWebNavigation webNavigation = new nsIWebNavigation(result[0]);
        result[0] = 0;
        char[] uri = new char[url.length() + 1];
        url.getChars(0, url.length(), uri, 0);
        nsISupports postDataStream = null;
        InputStream dataStream = null;
        if (postData != null) {
            rc = XPCOM.NS_GetComponentManager(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIComponentManager componentManager = new nsIComponentManager(result[0]);
            result[0] = 0;
            byte[] contractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/network/mime-input-stream;1", true);
            rc = componentManager.CreateInstanceByContractID(contractID, 0, nsIMIMEInputStream.NS_IMIMEINPUTSTREAM_IID, result);
            componentManager.Release();
            if (rc == 0 && result[0] != 0) {
                byte[] value;
                byte[] name;
                byte[] bytes = MozillaDelegate.wcsToMbcs(null, postData, false);
                dataStream = new InputStream(bytes);
                dataStream.AddRef();
                postDataStream = new nsIMIMEInputStream(result[0]);
                rc = ((nsIMIMEInputStream)postDataStream).SetData(dataStream.getAddress());
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if ((rc = ((nsIMIMEInputStream)postDataStream).SetAddContentLength(1)) != 0) {
                    Mozilla.error(rc);
                }
                if ((rc = ((nsIMIMEInputStream)postDataStream).AddHeader(name = MozillaDelegate.wcsToMbcs(null, HEADER_CONTENTTYPE, true), value = MozillaDelegate.wcsToMbcs(null, MIMETYPE_FORMURLENCODED, true))) != 0) {
                    Mozilla.error(rc);
                }
            }
            result[0] = 0;
        }
        InputStream headersStream = null;
        if (headers != null) {
            StringBuffer buffer = new StringBuffer();
            int i = 0;
            while (i < headers.length) {
                int sep;
                String current = headers[i];
                if (current != null && (sep = current.indexOf(58)) != -1) {
                    String key = current.substring(0, sep).trim();
                    String value = current.substring(sep + 1).trim();
                    if (key.length() > 0 && value.length() > 0) {
                        buffer.append(key);
                        buffer.append(':');
                        buffer.append(value);
                        buffer.append("\r\n");
                    }
                }
                ++i;
            }
            byte[] bytes = MozillaDelegate.wcsToMbcs(null, buffer.toString(), true);
            headersStream = new InputStream(bytes);
            headersStream.AddRef();
        }
        rc = webNavigation.LoadURI(uri, 0, 0, postDataStream == null ? 0 : postDataStream.getAddress(), headersStream == null ? 0 : headersStream.getAddress());
        if (dataStream != null) {
            dataStream.Release();
        }
        if (headersStream != null) {
            headersStream.Release();
        }
        webNavigation.Release();
        return rc == 0;
    }

    public void stop() {
        nsIWebNavigation webNavigation;
        this.htmlBytes = null;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIWebNavigation.NS_IWEBNAVIGATION_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (webNavigation = new nsIWebNavigation(result[0])).Stop(3)) != 0) {
            Mozilla.error(rc);
        }
        webNavigation.Release();
    }

    void hookDOMListeners(nsIDOMEventTarget target, boolean isTop) {
        nsEmbedString string = new nsEmbedString("focus");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("unload");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mousedown");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mouseup");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mousemove");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("DOMMouseScroll");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("draggesture");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        if (isTop && this.delegate.hookEnterExit()) {
            string = new nsEmbedString("mouseover");
            target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
            string.dispose();
            string = new nsEmbedString("mouseout");
            target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
            string.dispose();
        }
        string = new nsEmbedString("keydown");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("keypress");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("keyup");
        target.AddEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
    }

    void unhookDOMListeners() {
        int count;
        int[] result = new int[1];
        int rc = this.webBrowser.GetContentDOMWindow(result);
        if (rc != 0 || result[0] == 0) {
            return;
        }
        nsIDOMWindow window = new nsIDOMWindow(result[0]);
        result[0] = 0;
        rc = window.QueryInterface(nsIDOMEventTarget.NS_IDOMEVENTTARGET_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIDOMEventTarget target = new nsIDOMEventTarget(result[0]);
        result[0] = 0;
        this.unhookDOMListeners(target);
        target.Release();
        rc = window.GetFrames(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIDOMWindowCollection frames = new nsIDOMWindowCollection(result[0]);
        result[0] = 0;
        int[] frameCount = new int[1];
        rc = frames.GetLength(frameCount);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if ((count = frameCount[0]) > 0) {
            int i = 0;
            while (i < count) {
                rc = frames.Item(i, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIDOMWindow frame = new nsIDOMWindow(result[0]);
                result[0] = 0;
                rc = frame.QueryInterface(nsIDOMEventTarget.NS_IDOMEVENTTARGET_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                target = new nsIDOMEventTarget(result[0]);
                result[0] = 0;
                this.unhookDOMListeners(target);
                target.Release();
                frame.Release();
                ++i;
            }
        }
        frames.Release();
        window.Release();
    }

    void unhookDOMListeners(nsIDOMEventTarget target) {
        nsEmbedString string = new nsEmbedString("focus");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("unload");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mousedown");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mouseup");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mousemove");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("DOMMouseScroll");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("draggesture");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mouseover");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("mouseout");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("keydown");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("keypress");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
        string = new nsEmbedString("keyup");
        target.RemoveEventListener(string.getAddress(), this.domEventListener.getAddress(), 0);
        string.dispose();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supports.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWeakReference.NS_IWEAKREFERENCE_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.weakReference.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWebProgressListener.NS_IWEBPROGRESSLISTENER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.webProgressListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWebBrowserChrome.NS_IWEBBROWSERCHROME_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.webBrowserChrome.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWebBrowserChromeFocus.NS_IWEBBROWSERCHROMEFOCUS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.webBrowserChromeFocus.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIEmbeddingSiteWindow.NS_IEMBEDDINGSITEWINDOW_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.embeddingSiteWindow.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIInterfaceRequestor.NS_IINTERFACEREQUESTOR_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.interfaceRequestor.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsISupportsWeakReference.NS_ISUPPORTSWEAKREFERENCE_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supportsWeakReference.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIContextMenuListener.NS_ICONTEXTMENULISTENER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.contextMenuListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIURIContentListener.NS_IURICONTENTLISTENER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.uriContentListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsITooltipListener.NS_ITOOLTIPLISTENER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.tooltipListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIBadCertListener2.NS_IBADCERTLISTENER2_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.badCertListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int QueryReferent(int riid, int ppvObject) {
        return this.QueryInterface(riid, ppvObject);
    }

    int GetInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsIDOMWindow.NS_IDOMWINDOW_IID)) {
            int[] aContentDOMWindow = new int[1];
            int rc = this.webBrowser.GetContentDOMWindow(aContentDOMWindow);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (aContentDOMWindow[0] == 0) {
                Mozilla.error(-2147467262);
            }
            XPCOM.memmove(ppvObject, aContentDOMWindow, C.PTR_SIZEOF);
            return rc;
        }
        return this.QueryInterface(riid, ppvObject);
    }

    int GetWeakReference(int ppvObject) {
        XPCOM.memmove(ppvObject, new int[]{this.weakReference.getAddress()}, C.PTR_SIZEOF);
        this.AddRef();
        return 0;
    }

    int OnStateChange(int aWebProgress, int aRequest, int aStateFlags, int aStatus) {
        nsIWebProgress progress;
        nsIRequest request;
        int[] result;
        int rc;
        if (this.registerFunctionsOnState != 0 && (aStateFlags & this.registerFunctionsOnState) == this.registerFunctionsOnState) {
            this.registerFunctionsOnState = 0;
            Enumeration elements = this.functions.elements();
            while (elements.hasMoreElements()) {
                BrowserFunction function = (BrowserFunction)elements.nextElement();
                if (function.isEvaluate) continue;
                this.execute(function.functionString);
            }
        }
        if (this.updateLastNavigateUrl && aStateFlags == 65537) {
            nsIRequest request2 = new nsIRequest(aRequest);
            int name = XPCOM.nsEmbedCString_new();
            rc = request2.GetName(name);
            if (rc == 0) {
                int length = XPCOM.nsEmbedCString_Length(name);
                int buffer = XPCOM.nsEmbedCString_get(name);
                byte[] bytes = new byte[length];
                XPCOM.memmove(bytes, buffer, length);
                String value = new String(bytes);
                if (value.indexOf(":/") != -1) {
                    this.lastNavigateURL = value;
                }
            }
            XPCOM.nsEmbedCString_delete(name);
        }
        if ((aStateFlags & 0x20000) == 0) {
            return 0;
        }
        if ((aStateFlags & 1) != 0) {
            result = new int[1];
            if (this.isRetrievingBadCert) {
                this.isRetrievingBadCert = false;
                request = new nsIRequest(aRequest);
                rc = request.QueryInterface(nsIChannel.NS_ICHANNEL_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIChannel channel = new nsIChannel(result[0]);
                result[0] = 0;
                rc = channel.SetNotificationCallbacks(this.interfaceRequestor.getAddress());
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                channel.Release();
                return 0;
            }
            if (this.request == 0) {
                this.request = aRequest;
            }
            this.registerFunctionsOnState = 65537;
            progress = new nsIWebProgress(aWebProgress);
            rc = progress.GetDOMWindow(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            this.unhookedDOMWindows.addElement(new LONG(result[0]));
        } else if ((aStateFlags & 2) != 0) {
            if (this.request == aRequest) {
                this.request = 0;
            }
            this.registerFunctionsOnState = 4;
            this.updateLastNavigateUrl = true;
        } else if ((aStateFlags & 0x10) != 0) {
            progress = new nsIWebProgress(aWebProgress);
            result = new int[1];
            rc = progress.GetDOMWindow(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMWindow domWindow = new nsIDOMWindow(result[0]);
            LONG ptrObject = new LONG(result[0]);
            result[0] = 0;
            int index = this.unhookedDOMWindows.indexOf(ptrObject);
            if (index != -1) {
                rc = this.webBrowser.GetContentDOMWindow(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                boolean isTop = result[0] == domWindow.getAddress();
                new nsISupports(result[0]).Release();
                result[0] = 0;
                rc = domWindow.QueryInterface(nsIDOMEventTarget.NS_IDOMEVENTTARGET_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIDOMEventTarget target = new nsIDOMEventTarget(result[0]);
                result[0] = 0;
                this.hookDOMListeners(target, isTop);
                target.Release();
                this.unhookedDOMWindows.remove(ptrObject);
                new nsISupports(ptrObject.value).Release();
            }
            boolean deferCompleted = false;
            if (this.htmlBytes != null) {
                nsIRequest req = new nsIRequest(aRequest);
                int name = XPCOM.nsEmbedCString_new();
                rc = req.GetName(name);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                int length = XPCOM.nsEmbedCString_Length(name);
                int buffer = XPCOM.nsEmbedCString_get(name);
                byte[] dest = new byte[length];
                XPCOM.memmove(dest, buffer, length);
                String url = new String(dest);
                XPCOM.nsEmbedCString_delete(name);
                if (url.startsWith(ABOUT_BLANK)) {
                    this.unhookDOMListeners();
                    rc = XPCOM.NS_GetServiceManager(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                    result[0] = 0;
                    rc = serviceManager.GetService(XPCOM.NS_IOSERVICE_CID, nsIIOService.NS_IIOSERVICE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    serviceManager.Release();
                    nsIIOService ioService = new nsIIOService(result[0]);
                    result[0] = 0;
                    byte[] aString = this.untrustedText ? MozillaDelegate.wcsToMbcs(null, ABOUT_BLANK, false) : MozillaDelegate.wcsToMbcs(null, URI_FILEROOT, false);
                    int aSpec = XPCOM.nsEmbedCString_new(aString, aString.length);
                    rc = ioService.NewURI(aSpec, null, 0, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    XPCOM.nsEmbedCString_delete(aSpec);
                    ioService.Release();
                    nsIURI uri = new nsIURI(result[0]);
                    result[0] = 0;
                    rc = this.webBrowser.QueryInterface(nsIWebBrowserStream.NS_IWEBBROWSERSTREAM_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIWebBrowserStream stream = new nsIWebBrowserStream(result[0]);
                    result[0] = 0;
                    byte[] contentTypeBuffer = MozillaDelegate.wcsToMbcs(null, "text/html", false);
                    int aContentType = XPCOM.nsEmbedCString_new(contentTypeBuffer, contentTypeBuffer.length);
                    rc = stream.OpenStream(uri.getAddress(), aContentType);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    Enumeration elements = this.functions.elements();
                    while (elements.hasMoreElements()) {
                        BrowserFunction function = (BrowserFunction)elements.nextElement();
                        if (function.isEvaluate) continue;
                        this.execute(function.functionString);
                    }
                    this.registerFunctionsOnState = 65537;
                    int ptr = C.malloc(this.htmlBytes.length);
                    XPCOM.memmove(ptr, this.htmlBytes, this.htmlBytes.length);
                    int pageSize = 8192;
                    int pageCount = this.htmlBytes.length / pageSize + 1;
                    int current = ptr;
                    int i = 0;
                    while (i < pageCount) {
                        int n = length = i == pageCount - 1 ? this.htmlBytes.length % pageSize : pageSize;
                        if (length > 0 && (rc = stream.AppendToStream(current, length)) != 0) {
                            Mozilla.error(rc);
                        }
                        current += pageSize;
                        ++i;
                    }
                    rc = stream.CloseStream();
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    C.free(ptr);
                    XPCOM.nsEmbedCString_delete(aContentType);
                    stream.Release();
                    uri.Release();
                    this.htmlBytes = null;
                    deferCompleted = true;
                    rc = this.webBrowser.GetContentDOMWindow(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    boolean isTop = result[0] == domWindow.getAddress();
                    new nsISupports(result[0]).Release();
                    result[0] = 0;
                    rc = domWindow.QueryInterface(nsIDOMEventTarget.NS_IDOMEVENTTARGET_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIDOMEventTarget target = new nsIDOMEventTarget(result[0]);
                    result[0] = 0;
                    this.hookDOMListeners(target, isTop);
                    target.Release();
                } else {
                    this.registerFunctionsOnState = 0;
                }
            }
            domWindow.Release();
            if (this.request == aRequest || this.request == 0) {
                this.request = 0;
                StatusTextEvent event = new StatusTextEvent(this.browser);
                event.display = this.browser.getDisplay();
                event.widget = this.browser;
                event.text = "";
                int i = 0;
                while (i < this.statusTextListeners.length) {
                    this.statusTextListeners[i].changed(event);
                    ++i;
                }
                Display display = this.browser.getDisplay();
                final ProgressEvent event2 = new ProgressEvent(this.browser);
                event2.display = display;
                event2.widget = this.browser;
                Runnable runnable = new Runnable(){

                    public void run() {
                        if (Mozilla.this.browser.isDisposed()) {
                            return;
                        }
                        int i = 0;
                        while (i < Mozilla.this.progressListeners.length) {
                            Mozilla.this.progressListeners[i].completed(event2);
                            ++i;
                        }
                    }
                };
                if (deferCompleted) {
                    display.asyncExec(runnable);
                } else {
                    display.syncExec(runnable);
                }
            }
        } else if ((aStateFlags & 4) != 0) {
            if (this.updateLastNavigateUrl) {
                this.updateLastNavigateUrl = false;
                request = new nsIRequest(aRequest);
                result = new int[1];
                rc = request.QueryInterface(nsIChannel.NS_ICHANNEL_IID, result);
                if (rc == 0 && result[0] != 0) {
                    nsIChannel channel = new nsIChannel(result[0]);
                    result[0] = 0;
                    rc = channel.GetURI(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467261);
                    }
                    channel.Release();
                    nsIURI uri = new nsIURI(result[0]);
                    result[0] = 0;
                    int aSpec = XPCOM.nsEmbedCString_new();
                    rc = uri.GetSpec(aSpec);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    int length = XPCOM.nsEmbedCString_Length(aSpec);
                    int buffer = XPCOM.nsEmbedCString_get(aSpec);
                    byte[] bytes = new byte[length];
                    XPCOM.memmove(bytes, buffer, length);
                    this.lastNavigateURL = new String(bytes);
                    XPCOM.nsEmbedCString_delete(aSpec);
                    uri.Release();
                }
            }
            if ((rc = (progress = new nsIWebProgress(aWebProgress)).GetDOMWindow(result = new int[1])) != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMWindow domWindow = new nsIDOMWindow(result[0]);
            LONG ptrObject = new LONG(result[0]);
            result[0] = 0;
            int index = this.unhookedDOMWindows.indexOf(ptrObject);
            if (index != -1) {
                rc = this.webBrowser.GetContentDOMWindow(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                boolean isTop = result[0] == domWindow.getAddress();
                new nsISupports(result[0]).Release();
                result[0] = 0;
                rc = domWindow.QueryInterface(nsIDOMEventTarget.NS_IDOMEVENTTARGET_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIDOMEventTarget target = new nsIDOMEventTarget(result[0]);
                result[0] = 0;
                this.hookDOMListeners(target, isTop);
                target.Release();
                this.unhookedDOMWindows.remove(ptrObject);
                new nsISupports(ptrObject.value).Release();
            }
            domWindow.Release();
        }
        return 0;
    }

    int OnProgressChange(int aWebProgress, int aRequest, int aCurSelfProgress, int aMaxSelfProgress, int aCurTotalProgress, int aMaxTotalProgress) {
        if (this.progressListeners.length == 0) {
            return 0;
        }
        ProgressEvent event = new ProgressEvent(this.browser);
        event.display = this.browser.getDisplay();
        event.widget = this.browser;
        event.current = aCurTotalProgress;
        event.total = aMaxTotalProgress;
        int i = 0;
        while (i < this.progressListeners.length) {
            this.progressListeners[i].changed(event);
            ++i;
        }
        return 0;
    }

    int OnLocationChange(int aWebProgress, int aRequest, int aLocation) {
        int[] aTop;
        nsIDOMWindow domWindow;
        if (this.request != 0 && this.request != aRequest) {
            this.request = aRequest;
        }
        if (this.locationListeners.length == 0) {
            return 0;
        }
        nsIWebProgress webProgress = new nsIWebProgress(aWebProgress);
        int[] aDOMWindow = new int[1];
        int rc = webProgress.GetDOMWindow(aDOMWindow);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (aDOMWindow[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (domWindow = new nsIDOMWindow(aDOMWindow[0])).GetTop(aTop = new int[1])) != 0) {
            Mozilla.error(rc);
        }
        if (aTop[0] == 0) {
            Mozilla.error(-2147467262);
        }
        domWindow.Release();
        nsIDOMWindow topWindow = new nsIDOMWindow(aTop[0]);
        topWindow.Release();
        nsIURI location = new nsIURI(aLocation);
        int aSpec = XPCOM.nsEmbedCString_new();
        location.GetSpec(aSpec);
        int length = XPCOM.nsEmbedCString_Length(aSpec);
        int buffer = XPCOM.nsEmbedCString_get(aSpec);
        byte[] dest = new byte[length];
        XPCOM.memmove(dest, buffer, length);
        XPCOM.nsEmbedCString_delete(aSpec);
        String url = new String(dest);
        if (!IsPre_1_8 && aRequest == 0 && url.startsWith(ABOUT_BLANK)) {
            return 0;
        }
        LocationEvent event = new LocationEvent(this.browser);
        event.display = this.browser.getDisplay();
        event.widget = this.browser;
        event.location = url;
        if (event.location.equals(URI_FILEROOT)) {
            event.location = ABOUT_BLANK;
        } else {
            length = URI_FILEROOT.length();
            if (event.location.startsWith(URI_FILEROOT) && event.location.charAt(length) == '#') {
                event.location = ABOUT_BLANK + event.location.substring(length);
            }
        }
        event.top = aTop[0] == aDOMWindow[0];
        int i = 0;
        while (i < this.locationListeners.length) {
            this.locationListeners[i].changed(event);
            ++i;
        }
        return 0;
    }

    int OnStatusChange(int aWebProgress, int aRequest, int aStatus, int aMessage) {
        if (this.statusTextListeners.length == 0) {
            return 0;
        }
        StatusTextEvent event = new StatusTextEvent(this.browser);
        event.display = this.browser.getDisplay();
        event.widget = this.browser;
        int length = XPCOM.strlen_PRUnichar(aMessage);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aMessage, length * 2);
        event.text = new String(dest);
        int i = 0;
        while (i < this.statusTextListeners.length) {
            this.statusTextListeners[i].changed(event);
            ++i;
        }
        return 0;
    }

    int OnSecurityChange(int aWebProgress, int aRequest, int state) {
        return 0;
    }

    int SetStatus(int statusType, int status) {
        String string;
        if (this.statusTextListeners.length == 0) {
            return 0;
        }
        StatusTextEvent event = new StatusTextEvent(this.browser);
        event.display = this.browser.getDisplay();
        event.widget = this.browser;
        int length = XPCOM.strlen_PRUnichar(status);
        char[] dest = new char[length];
        XPCOM.memmove(dest, status, length * 2);
        event.text = string = new String(dest);
        int i = 0;
        while (i < this.statusTextListeners.length) {
            this.statusTextListeners[i].changed(event);
            ++i;
        }
        return 0;
    }

    int GetWebBrowser(int aWebBrowser) {
        int[] ret = new int[1];
        if (this.webBrowser != null) {
            this.webBrowser.AddRef();
            ret[0] = this.webBrowser.getAddress();
        }
        XPCOM.memmove(aWebBrowser, ret, C.PTR_SIZEOF);
        return 0;
    }

    int SetWebBrowser(int aWebBrowser) {
        if (this.webBrowser != null) {
            this.webBrowser.Release();
        }
        this.webBrowser = aWebBrowser != 0 ? new nsIWebBrowser(aWebBrowser) : null;
        return 0;
    }

    int GetChromeFlags(int aChromeFlags) {
        int[] ret = new int[]{this.chromeFlags};
        XPCOM.memmove(aChromeFlags, ret, 4);
        return 0;
    }

    int SetChromeFlags(int aChromeFlags) {
        this.chromeFlags = aChromeFlags;
        return 0;
    }

    int DestroyBrowserWindow() {
        WindowEvent newEvent = new WindowEvent(this.browser);
        newEvent.display = this.browser.getDisplay();
        newEvent.widget = this.browser;
        int i = 0;
        while (i < this.closeWindowListeners.length) {
            this.closeWindowListeners[i].close(newEvent);
            ++i;
        }
        this.browser.dispose();
        return 0;
    }

    int SizeBrowserTo(int aCX, int aCY) {
        boolean isChrome;
        this.size = new Point(aCX, aCY);
        boolean bl = isChrome = (this.chromeFlags & Integer.MIN_VALUE) != 0;
        if (isChrome) {
            Shell shell = this.browser.getShell();
            shell.setSize(shell.computeSize(this.size.x, this.size.y));
        }
        return 0;
    }

    int ShowAsModal() {
        int[] result = new int[1];
        int rc = XPCOM.NS_GetServiceManager(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
        result[0] = 0;
        byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/js/xpc/ContextStack;1", true);
        rc = serviceManager.GetServiceByContractID(aContractID, nsIJSContextStack.NS_IJSCONTEXTSTACK_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        serviceManager.Release();
        nsIJSContextStack stack = new nsIJSContextStack(result[0]);
        result[0] = 0;
        rc = stack.Push(0);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        Shell shell = this.browser.getShell();
        Display display = this.browser.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
        rc = stack.Pop(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        stack.Release();
        return 0;
    }

    int IsWindowModal(int retval) {
        int result = (this.chromeFlags & 0x20000000) != 0 ? 1 : 0;
        XPCOM.memmove(retval, new int[]{result}, 4);
        return 0;
    }

    int ExitModalEventLoop(int aStatus) {
        return 0;
    }

    int SetDimensions(int flags, int x, int y, int cx, int cy) {
        boolean isChrome;
        boolean bl = isChrome = (this.chromeFlags & Integer.MIN_VALUE) != 0;
        if ((flags & 1) != 0) {
            this.location = new Point(x, y);
            if (isChrome) {
                this.browser.getShell().setLocation(x, y);
            }
        }
        if ((flags & 2) != 0) {
            this.size = new Point(cx, cy);
            if (isChrome) {
                this.browser.setSize(cx, cy);
            }
        }
        if ((flags & 4) != 0 && isChrome) {
            this.browser.getShell().setSize(cx, cy);
        }
        return 0;
    }

    int GetDimensions(int flags, int x, int y, int cx, int cy) {
        Point size;
        if ((flags & 1) != 0) {
            Point location = this.browser.getShell().getLocation();
            if (x != 0) {
                C.memmove(x, new int[]{location.x}, 4);
            }
            if (y != 0) {
                C.memmove(y, new int[]{location.y}, 4);
            }
        }
        if ((flags & 2) != 0) {
            size = this.browser.getSize();
            if (cx != 0) {
                C.memmove(cx, new int[]{size.x}, 4);
            }
            if (cy != 0) {
                C.memmove(cy, new int[]{size.y}, 4);
            }
        }
        if ((flags & 4) != 0) {
            size = this.browser.getShell().getSize();
            if (cx != 0) {
                C.memmove(cx, new int[]{size.x}, 4);
            }
            if (cy != 0) {
                C.memmove(cy, new int[]{size.y}, 4);
            }
        }
        return 0;
    }

    int SetFocus() {
        nsIBaseWindow baseWindow;
        int[] result = new int[1];
        int rc = this.webBrowser.QueryInterface(nsIBaseWindow.NS_IBASEWINDOW_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        if ((rc = (baseWindow = new nsIBaseWindow(result[0])).SetFocus()) != 0) {
            Mozilla.error(rc);
        }
        baseWindow.Release();
        return 0;
    }

    int GetVisibility(int aVisibility) {
        boolean visible = this.browser.isVisible() && !this.browser.getShell().getMinimized();
        XPCOM.memmove(aVisibility, new int[]{visible ? 1 : 0}, 4);
        return 0;
    }

    int SetVisibility(int aVisibility) {
        if (this.isChild) {
            WindowEvent event = new WindowEvent(this.browser);
            event.display = this.browser.getDisplay();
            event.widget = this.browser;
            if (aVisibility != 0) {
                if (!this.visible) {
                    this.visible = true;
                    event.location = this.location;
                    event.size = this.size;
                    event.addressBar = (this.chromeFlags & 0x40) != 0;
                    boolean isOSX = "win32".equals("cocoa") || "win32".equals("carbon");
                    event.menuBar = isOSX || (this.chromeFlags & 0x10) != 0;
                    event.statusBar = (this.chromeFlags & 0x80) != 0;
                    event.toolBar = (this.chromeFlags & 0x20) != 0;
                    int i = 0;
                    while (i < this.visibilityWindowListeners.length) {
                        this.visibilityWindowListeners[i].show(event);
                        ++i;
                    }
                    this.location = null;
                    this.size = null;
                }
            } else {
                this.visible = false;
                int i = 0;
                while (i < this.visibilityWindowListeners.length) {
                    this.visibilityWindowListeners[i].hide(event);
                    ++i;
                }
            }
        }
        return 0;
    }

    int GetTitle(int aTitle) {
        return 0;
    }

    int SetTitle(int aTitle) {
        if (this.titleListeners.length == 0) {
            return 0;
        }
        TitleEvent event = new TitleEvent(this.browser);
        event.display = this.browser.getDisplay();
        event.widget = this.browser;
        int length = XPCOM.strlen_PRUnichar(aTitle);
        if (length > 0) {
            char[] dest = new char[length];
            XPCOM.memmove(dest, aTitle, length * 2);
            event.title = new String(dest);
        } else {
            event.title = this.getUrl();
        }
        int i = 0;
        while (i < this.titleListeners.length) {
            this.titleListeners[i].changed(event);
            ++i;
        }
        return 0;
    }

    int GetSiteWindow(int aSiteWindow) {
        XPCOM.memmove(aSiteWindow, new int[]{this.embedHandle}, C.PTR_SIZEOF);
        return 0;
    }

    int FocusNextElement() {
        this.browser.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (Mozilla.this.browser.isDisposed()) {
                    return;
                }
                Mozilla.this.browser.traverse(16);
            }
        });
        return 0;
    }

    int FocusPrevElement() {
        this.browser.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (Mozilla.this.browser.isDisposed()) {
                    return;
                }
                Mozilla.this.browser.traverse(8);
            }
        });
        return 0;
    }

    int OnShowContextMenu(int aContextFlags, int aEvent, int aNode) {
        nsIDOMEvent domEvent = new nsIDOMEvent(aEvent);
        int[] result = new int[1];
        int rc = domEvent.QueryInterface(nsIDOMMouseEvent.NS_IDOMMOUSEEVENT_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIDOMMouseEvent domMouseEvent = new nsIDOMMouseEvent(result[0]);
        int[] aScreenX = new int[1];
        int[] aScreenY = new int[1];
        rc = domMouseEvent.GetScreenX(aScreenX);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetScreenY(aScreenY)) != 0) {
            Mozilla.error(rc);
        }
        domMouseEvent.Release();
        Event event = new Event();
        event.x = aScreenX[0];
        event.y = aScreenY[0];
        this.browser.notifyListeners(35, event);
        if (!event.doit || this.browser.isDisposed()) {
            return 0;
        }
        Menu menu = this.browser.getMenu();
        if (menu != null && !menu.isDisposed()) {
            if (aScreenX[0] != event.x || aScreenY[0] != event.y) {
                menu.setLocation(event.x, event.y);
            }
            menu.setVisible(true);
        }
        return 0;
    }

    int OnStartURIOpen(int aURI, int retval) {
        if (this.isRetrievingBadCert) {
            return 0;
        }
        this.authCount = 0;
        nsIURI location = new nsIURI(aURI);
        int aSpec = XPCOM.nsEmbedCString_new();
        location.GetSpec(aSpec);
        int length = XPCOM.nsEmbedCString_Length(aSpec);
        int buffer = XPCOM.nsEmbedCString_get(aSpec);
        buffer = XPCOM.nsEmbedCString_get(aSpec);
        byte[] dest = new byte[length];
        XPCOM.memmove(dest, buffer, length);
        XPCOM.nsEmbedCString_delete(aSpec);
        String value = new String(dest);
        if (value.indexOf("aboutCertError.xhtml") != -1 || this.isViewingErrorPage && value.indexOf("javascript:showSecuritySection") != -1) {
            XPCOM.memmove(retval, new int[]{1}, 4);
            this.isRetrievingBadCert = true;
            this.setUrl(this.lastNavigateURL, null, null);
            return 0;
        }
        this.isViewingErrorPage = value.indexOf("netError.xhtml") != -1;
        boolean doit = true;
        if (this.request == 0 && !value.startsWith(PREFIX_JAVASCRIPT)) {
            if (this.locationListeners.length > 0) {
                LocationEvent event = new LocationEvent(this.browser);
                event.display = this.browser.getDisplay();
                event.widget = this.browser;
                event.location = value;
                if (event.location.equals(URI_FILEROOT)) {
                    event.location = ABOUT_BLANK;
                } else {
                    length = URI_FILEROOT.length();
                    if (event.location.startsWith(URI_FILEROOT) && event.location.charAt(length) == '#') {
                        event.location = ABOUT_BLANK + event.location.substring(length);
                    }
                }
                event.doit = doit;
                int i = 0;
                while (i < this.locationListeners.length) {
                    this.locationListeners[i].changing(event);
                    ++i;
                }
                boolean bl = doit = event.doit && !this.browser.isDisposed();
            }
            if (doit) {
                if (this.jsEnabledChanged) {
                    this.jsEnabledChanged = false;
                    int[] result = new int[1];
                    int rc = this.webBrowser.QueryInterface(nsIWebBrowserSetup.NS_IWEBBROWSERSETUP_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIWebBrowserSetup setup = new nsIWebBrowserSetup(result[0]);
                    result[0] = 0;
                    rc = setup.SetProperty(2, this.jsEnabled ? 1 : 0);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    setup.Release();
                }
                if (!this.isViewingErrorPage) {
                    this.lastNavigateURL = value;
                }
            }
        }
        XPCOM.memmove(retval, new int[]{doit ? 0 : 1}, 4);
        return 0;
    }

    int DoContent(int aContentType, int aIsContentPreferred, int aRequest, int aContentHandler, int retval) {
        return -2147467263;
    }

    int IsPreferred(int aContentType, int aDesiredContentType, int retval) {
        boolean preferred = false;
        int size = XPCOM.strlen(aContentType);
        if (size > 0) {
            byte[] typeBytes = new byte[size + 1];
            XPCOM.memmove(typeBytes, aContentType, size);
            String contentType = new String(typeBytes, 0, size);
            if (!contentType.equals("application/x-vnd.mozilla.maybe-text") && !contentType.equals("multipart/x-mixed-replace")) {
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/webnavigation-info;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsIWebNavigationInfo.NS_IWEBNAVIGATIONINFO_IID, result);
                if (rc == 0) {
                    byte[] bytes = MozillaDelegate.wcsToMbcs(null, contentType, false);
                    int typePtr = XPCOM.nsEmbedCString_new(bytes, bytes.length);
                    nsIWebNavigationInfo info = new nsIWebNavigationInfo(result[0]);
                    result[0] = 0;
                    int[] isSupportedResult = new int[1];
                    rc = info.IsTypeSupported(typePtr, 0, isSupportedResult);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    info.Release();
                    XPCOM.nsEmbedCString_delete(typePtr);
                    preferred = isSupportedResult[0] != 0;
                } else {
                    result[0] = 0;
                    rc = serviceManager.GetService(XPCOM.NS_CATEGORYMANAGER_CID, nsICategoryManager.NS_ICATEGORYMANAGER_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsICategoryManager categoryManager = new nsICategoryManager(result[0]);
                    result[0] = 0;
                    byte[] categoryBytes = MozillaDelegate.wcsToMbcs(null, "Gecko-Content-Viewers", true);
                    rc = categoryManager.GetCategoryEntry(categoryBytes, typeBytes, result);
                    categoryManager.Release();
                    preferred = rc == 0;
                }
                serviceManager.Release();
            }
        }
        XPCOM.memmove(retval, new int[]{preferred ? 1 : 0}, 4);
        if (preferred) {
            XPCOM.memmove(aDesiredContentType, new int[1], C.PTR_SIZEOF);
        }
        return 0;
    }

    int CanHandleContent(int aContentType, int aIsContentPreferred, int aDesiredContentType, int retval) {
        return -2147467263;
    }

    int GetLoadCookie(int aLoadCookie) {
        return -2147467263;
    }

    int SetLoadCookie(int aLoadCookie) {
        return -2147467263;
    }

    int GetParentContentListener(int aParentContentListener) {
        return -2147467263;
    }

    int SetParentContentListener(int aParentContentListener) {
        return -2147467263;
    }

    int OnShowTooltip(int aXCoords, int aYCoords, int aTipText) {
        int length = XPCOM.strlen_PRUnichar(aTipText);
        char[] dest = new char[length];
        XPCOM.memmove(dest, aTipText, length * 2);
        String text = new String(dest);
        if (this.tip != null && !this.tip.isDisposed()) {
            this.tip.dispose();
        }
        Display display = this.browser.getDisplay();
        Shell parent = this.browser.getShell();
        this.tip = new Shell(parent, 16384);
        this.tip.setLayout(new FillLayout());
        Label label = new Label(this.tip, 0x1000000);
        label.setForeground(display.getSystemColor(28));
        label.setBackground(display.getSystemColor(29));
        label.setText(text);
        Point point = display.getCursorLocation();
        point.y += 21;
        this.tip.setLocation(point);
        this.tip.pack();
        this.tip.setVisible(true);
        return 0;
    }

    int OnHideTooltip() {
        if (this.tip != null && !this.tip.isDisposed()) {
            this.tip.dispose();
        }
        this.tip = null;
        return 0;
    }

    int HandleEvent(int event) {
        short[] aButton;
        nsIDOMEvent domEvent = new nsIDOMEvent(event);
        int type = XPCOM.nsEmbedString_new();
        int rc = domEvent.GetType(type);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        int length = XPCOM.nsEmbedString_Length(type);
        int buffer = XPCOM.nsEmbedString_get(type);
        char[] chars = new char[length];
        XPCOM.memmove(chars, buffer, length * 2);
        String typeString = new String(chars);
        XPCOM.nsEmbedString_delete(type);
        if ("unload".equals(typeString)) {
            int[] result = new int[1];
            rc = domEvent.GetCurrentTarget(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMEventTarget target = new nsIDOMEventTarget(result[0]);
            this.unhookDOMListeners(target);
            target.Release();
            return 0;
        }
        if ("focus".equals(typeString)) {
            this.delegate.handleFocus();
            return 0;
        }
        if ("keydown".equals(typeString)) {
            int keyCode;
            int[] result = new int[1];
            rc = domEvent.QueryInterface(nsIDOMKeyEvent.NS_IDOMKEYEVENT_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMKeyEvent domKeyEvent = new nsIDOMKeyEvent(result[0]);
            result[0] = 0;
            int[] aKeyCode = new int[1];
            rc = domKeyEvent.GetKeyCode(aKeyCode);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((keyCode = this.translateKey(aKeyCode[0])) != this.lastKeyCode) {
                this.lastKeyCode = keyCode;
                switch (keyCode) {
                    case 65536: 
                    case 131072: 
                    case 262144: 
                    case 0x400000: 
                    case 16777298: 
                    case 16777299: 
                    case 16777300: {
                        int[] aAltKey = new int[1];
                        int[] aCtrlKey = new int[1];
                        int[] aShiftKey = new int[1];
                        int[] aMetaKey = new int[1];
                        rc = domKeyEvent.GetAltKey(aAltKey);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        if ((rc = domKeyEvent.GetCtrlKey(aCtrlKey)) != 0) {
                            Mozilla.error(rc);
                        }
                        if ((rc = domKeyEvent.GetShiftKey(aShiftKey)) != 0) {
                            Mozilla.error(rc);
                        }
                        if ((rc = domKeyEvent.GetMetaKey(aMetaKey)) != 0) {
                            Mozilla.error(rc);
                        }
                        Event keyEvent = new Event();
                        keyEvent.widget = this.browser;
                        keyEvent.type = 1;
                        keyEvent.keyCode = keyCode;
                        keyEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
                        keyEvent.stateMask &= ~keyCode;
                        this.browser.notifyListeners(keyEvent.type, keyEvent);
                        if (keyEvent.doit && !this.browser.isDisposed()) break;
                        domEvent.PreventDefault();
                        break;
                    }
                    default: {
                        int[] aMetaKey = new int[1];
                        rc = domKeyEvent.GetMetaKey(aMetaKey);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        if (aMetaKey[0] == 0) break;
                        int[] aCtrlKey = new int[1];
                        rc = domKeyEvent.GetCtrlKey(aCtrlKey);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        if (aCtrlKey[0] != 0) break;
                        int[] aAltKey = new int[1];
                        int[] aShiftKey = new int[1];
                        rc = domKeyEvent.GetAltKey(aAltKey);
                        if (rc != 0) {
                            Mozilla.error(rc);
                        }
                        if ((rc = domKeyEvent.GetShiftKey(aShiftKey)) != 0) {
                            Mozilla.error(rc);
                        }
                        Event keyEvent = new Event();
                        keyEvent.widget = this.browser;
                        keyEvent.type = 1;
                        keyEvent.keyCode = this.lastKeyCode;
                        keyEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
                        this.browser.notifyListeners(keyEvent.type, keyEvent);
                        if (keyEvent.doit && !this.browser.isDisposed()) break;
                        domEvent.PreventDefault();
                    }
                }
            }
            domKeyEvent.Release();
            return 0;
        }
        if ("keypress".equals(typeString)) {
            if (this.lastKeyCode == 0) {
                return 0;
            }
            switch (this.lastKeyCode) {
                case 16777298: 
                case 16777299: 
                case 16777300: {
                    return 0;
                }
            }
            int[] result = new int[1];
            rc = domEvent.QueryInterface(nsIDOMKeyEvent.NS_IDOMKEYEVENT_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMKeyEvent domKeyEvent = new nsIDOMKeyEvent(result[0]);
            result[0] = 0;
            int[] aAltKey = new int[1];
            int[] aCtrlKey = new int[1];
            int[] aShiftKey = new int[1];
            int[] aMetaKey = new int[1];
            rc = domKeyEvent.GetAltKey(aAltKey);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetCtrlKey(aCtrlKey)) != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetShiftKey(aShiftKey)) != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetMetaKey(aMetaKey)) != 0) {
                Mozilla.error(rc);
            }
            domKeyEvent.Release();
            int[] aCharCode = new int[1];
            rc = domKeyEvent.GetCharCode(aCharCode);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            this.lastCharCode = aCharCode[0];
            if (this.lastCharCode == 0) {
                switch (this.lastKeyCode) {
                    case 9: {
                        this.lastCharCode = 9;
                        break;
                    }
                    case 13: {
                        this.lastCharCode = 13;
                        break;
                    }
                    case 8: {
                        this.lastCharCode = 8;
                        break;
                    }
                    case 27: {
                        this.lastCharCode = 27;
                        break;
                    }
                    case 127: {
                        this.lastCharCode = 127;
                    }
                }
            }
            if (aCtrlKey[0] != 0 && this.lastCharCode >= 0 && this.lastCharCode <= 127) {
                if (97 <= this.lastCharCode && this.lastCharCode <= 122) {
                    this.lastCharCode -= 32;
                }
                if (64 <= this.lastCharCode && this.lastCharCode <= 95) {
                    this.lastCharCode -= 64;
                }
            }
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 1;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
            boolean doit = true;
            if (this.delegate.sendTraverse()) {
                doit = this.sendKeyEvent(keyEvent);
            } else {
                this.browser.notifyListeners(keyEvent.type, keyEvent);
                doit = keyEvent.doit;
            }
            if (!doit || this.browser.isDisposed()) {
                domEvent.PreventDefault();
            }
            return 0;
        }
        if ("keyup".equals(typeString)) {
            int keyCode;
            int[] result = new int[1];
            rc = domEvent.QueryInterface(nsIDOMKeyEvent.NS_IDOMKEYEVENT_IID, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            nsIDOMKeyEvent domKeyEvent = new nsIDOMKeyEvent(result[0]);
            result[0] = 0;
            int[] aKeyCode = new int[1];
            rc = domKeyEvent.GetKeyCode(aKeyCode);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((keyCode = this.translateKey(aKeyCode[0])) == 0) {
                domKeyEvent.Release();
                return 0;
            }
            if (keyCode != this.lastKeyCode) {
                this.lastKeyCode = keyCode;
                this.lastCharCode = 0;
            }
            int[] aAltKey = new int[1];
            int[] aCtrlKey = new int[1];
            int[] aShiftKey = new int[1];
            int[] aMetaKey = new int[1];
            rc = domKeyEvent.GetAltKey(aAltKey);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetCtrlKey(aCtrlKey)) != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetShiftKey(aShiftKey)) != 0) {
                Mozilla.error(rc);
            }
            if ((rc = domKeyEvent.GetMetaKey(aMetaKey)) != 0) {
                Mozilla.error(rc);
            }
            domKeyEvent.Release();
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 2;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
            switch (this.lastKeyCode) {
                case 65536: 
                case 131072: 
                case 262144: 
                case 0x400000: {
                    keyEvent.stateMask |= this.lastKeyCode;
                }
            }
            this.browser.notifyListeners(keyEvent.type, keyEvent);
            if (!keyEvent.doit || this.browser.isDisposed()) {
                domEvent.PreventDefault();
            }
            this.lastCharCode = 0;
            this.lastKeyCode = 0;
            return 0;
        }
        int[] result = new int[1];
        rc = domEvent.QueryInterface(nsIDOMMouseEvent.NS_IDOMMOUSEEVENT_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsIDOMMouseEvent domMouseEvent = new nsIDOMMouseEvent(result[0]);
        result[0] = 0;
        if ("mouseover".equals(typeString) || "mouseout".equals(typeString)) {
            rc = domMouseEvent.GetRelatedTarget(result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] != 0) {
                new nsISupports(result[0]).Release();
                domMouseEvent.Release();
                return 0;
            }
        }
        int[] aScreenX = new int[1];
        int[] aScreenY = new int[1];
        rc = domMouseEvent.GetScreenX(aScreenX);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetScreenY(aScreenY)) != 0) {
            Mozilla.error(rc);
        }
        Point position = new Point(aScreenX[0], aScreenY[0]);
        position = this.browser.getDisplay().map(null, (Control)this.browser, position);
        int[] aDetail = new int[1];
        rc = domMouseEvent.GetDetail(aDetail);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetButton(aButton = new short[1])) != 0) {
            Mozilla.error(rc);
        }
        int[] aAltKey = new int[1];
        int[] aCtrlKey = new int[1];
        int[] aShiftKey = new int[1];
        int[] aMetaKey = new int[1];
        rc = domMouseEvent.GetAltKey(aAltKey);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetCtrlKey(aCtrlKey)) != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetShiftKey(aShiftKey)) != 0) {
            Mozilla.error(rc);
        }
        if ((rc = domMouseEvent.GetMetaKey(aMetaKey)) != 0) {
            Mozilla.error(rc);
        }
        domMouseEvent.Release();
        Event mouseEvent = new Event();
        mouseEvent.widget = this.browser;
        mouseEvent.x = position.x;
        mouseEvent.y = position.y;
        mouseEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
        if ("mousedown".equals(typeString)) {
            this.delegate.handleMouseDown();
            mouseEvent.type = 3;
            mouseEvent.button = aButton[0] + 1;
            mouseEvent.count = aDetail[0];
        } else if ("mouseup".equals(typeString)) {
            int button = aButton[0] + 1;
            int count = aDetail[0];
            if (count == 0 && button == 3) {
                return 0;
            }
            mouseEvent.type = 4;
            mouseEvent.button = button;
            mouseEvent.count = count;
        } else if ("mousemove".equals(typeString)) {
            mouseEvent.type = 5;
        } else if ("DOMMouseScroll".equals(typeString)) {
            mouseEvent.type = 37;
            mouseEvent.count = -aDetail[0];
        } else if ("mouseover".equals(typeString)) {
            mouseEvent.type = 6;
        } else if ("mouseout".equals(typeString)) {
            mouseEvent.type = 7;
        } else if ("draggesture".equals(typeString)) {
            mouseEvent.type = 29;
            mouseEvent.button = aButton[0] + 1;
            switch (mouseEvent.button) {
                case 1: {
                    mouseEvent.stateMask |= 0x80000;
                    break;
                }
                case 2: {
                    mouseEvent.stateMask |= 0x100000;
                    break;
                }
                case 3: {
                    mouseEvent.stateMask |= 0x200000;
                    break;
                }
                case 4: {
                    mouseEvent.stateMask |= 0x800000;
                    break;
                }
                case 5: {
                    mouseEvent.stateMask |= 0x2000000;
                }
            }
        }
        this.browser.notifyListeners(mouseEvent.type, mouseEvent);
        if (this.browser.isDisposed()) {
            return 0;
        }
        if (aDetail[0] == 2 && "mousedown".equals(typeString)) {
            mouseEvent = new Event();
            mouseEvent.widget = this.browser;
            mouseEvent.x = position.x;
            mouseEvent.y = position.y;
            mouseEvent.stateMask = (aAltKey[0] != 0 ? 65536 : 0) | (aCtrlKey[0] != 0 ? 262144 : 0) | (aShiftKey[0] != 0 ? 131072 : 0) | (aMetaKey[0] != 0 ? 0x400000 : 0);
            mouseEvent.type = 8;
            mouseEvent.button = aButton[0] + 1;
            mouseEvent.count = aDetail[0];
            this.browser.notifyListeners(mouseEvent.type, mouseEvent);
        }
        return 0;
    }

    int NotifyCertProblem(int socketInfo, int status, int targetSite, int _suppressError) {
        String name;
        char[] chars;
        int ptr;
        int length = XPCOM.nsEmbedCString_Length(targetSite);
        int buffer = XPCOM.nsEmbedCString_get(targetSite);
        byte[] dest = new byte[length];
        XPCOM.memmove(dest, buffer, length);
        final String urlPort = new String(dest);
        int index = urlPort.indexOf(58);
        final String host = urlPort.substring(0, index);
        final int port = Integer.valueOf(urlPort.substring(index + 1));
        int[] result = new int[1];
        nsISupports supports = new nsISupports(status);
        int rc = supports.QueryInterface(nsISSLStatus.NS_ISSLSTATUS_IID, result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467262);
        }
        nsISSLStatus sslStatus = new nsISSLStatus(result[0]);
        result[0] = 0;
        rc = sslStatus.GetServerCert(result);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (result[0] == 0) {
            Mozilla.error(-2147467261);
        }
        final nsIX509Cert cert = new nsIX509Cert(result[0]);
        result[0] = 0;
        String[] problems = new String[3];
        int problemCount = 0;
        int flags = 0;
        int[] intResult = new int[1];
        rc = sslStatus.GetIsDomainMismatch(intResult);
        if (intResult[0] != 0) {
            ptr = XPCOM.nsEmbedString_new();
            rc = cert.GetCommonName(ptr);
            if (rc != 0) {
                SWT.error(rc);
            }
            length = XPCOM.nsEmbedString_Length(ptr);
            buffer = XPCOM.nsEmbedString_get(ptr);
            chars = new char[length];
            XPCOM.memmove(chars, buffer, length * 2);
            name = new String(chars);
            problems[problemCount++] = Compatibility.getMessage("SWT_InvalidCert_InvalidName", new String[]{name});
            flags |= 2;
            XPCOM.nsEmbedString_delete(ptr);
        }
        intResult[0] = 0;
        rc = sslStatus.GetIsNotValidAtThisTime(intResult);
        if (intResult[0] != 0) {
            rc = cert.GetValidity(result);
            if (rc != 0) {
                SWT.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467261);
            }
            nsIX509CertValidity validity = new nsIX509CertValidity(result[0]);
            result[0] = 0;
            int ptr2 = XPCOM.nsEmbedString_new();
            rc = validity.GetNotBeforeGMT(ptr2);
            if (rc != 0) {
                SWT.error(rc);
            }
            length = XPCOM.nsEmbedString_Length(ptr2);
            buffer = XPCOM.nsEmbedString_get(ptr2);
            char[] chars2 = new char[length];
            XPCOM.memmove(chars2, buffer, length * 2);
            String notBefore = new String(chars2);
            XPCOM.nsEmbedString_delete(ptr2);
            ptr2 = XPCOM.nsEmbedString_new();
            rc = validity.GetNotAfterGMT(ptr2);
            if (rc != 0) {
                SWT.error(rc);
            }
            length = XPCOM.nsEmbedString_Length(ptr2);
            buffer = XPCOM.nsEmbedString_get(ptr2);
            chars2 = new char[length];
            XPCOM.memmove(chars2, buffer, length * 2);
            String notAfter = new String(chars2);
            XPCOM.nsEmbedString_delete(ptr2);
            String range = String.valueOf(notBefore) + " - " + notAfter;
            problems[problemCount++] = Compatibility.getMessage("SWT_InvalidCert_NotValid", new String[]{range});
            flags |= 4;
            validity.Release();
        }
        intResult[0] = 0;
        rc = sslStatus.GetIsUntrusted(intResult);
        if (intResult[0] != 0) {
            ptr = XPCOM.nsEmbedString_new();
            rc = cert.GetIssuerCommonName(ptr);
            if (rc != 0) {
                SWT.error(rc);
            }
            length = XPCOM.nsEmbedString_Length(ptr);
            buffer = XPCOM.nsEmbedString_get(ptr);
            chars = new char[length];
            XPCOM.memmove(chars, buffer, length * 2);
            name = new String(chars);
            problems[problemCount++] = Compatibility.getMessage("SWT_InvalidCert_NotTrusted", new String[]{name});
            flags |= 1;
            XPCOM.nsEmbedString_delete(ptr);
        }
        intResult[0] = 0;
        sslStatus.Release();
        final int finalFlags = flags;
        final String[] finalProblems = new String[problemCount];
        System.arraycopy(problems, 0, finalProblems, 0, problemCount);
        final String url = this.lastNavigateURL;
        this.browser.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (Mozilla.this.browser.isDisposed()) {
                    return;
                }
                if (!url.equals(Mozilla.this.lastNavigateURL)) {
                    return;
                }
                String message = Compatibility.getMessage("SWT_InvalidCert_Message", new String[]{urlPort});
                if (new PromptDialog(Mozilla.this.browser.getShell()).invalidCert(Mozilla.this.browser, message, finalProblems, cert)) {
                    int[] result = new int[1];
                    int rc = XPCOM.NS_GetServiceManager(result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                    result[0] = 0;
                    byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/security/certoverride;1", true);
                    rc = serviceManager.GetServiceByContractID(aContractID, nsICertOverrideService.NS_ICERTOVERRIDESERVICE_IID, result);
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467262);
                    }
                    serviceManager.Release();
                    nsICertOverrideService overrideService = new nsICertOverrideService(result[0]);
                    result[0] = 0;
                    byte[] hostBytes = MozillaDelegate.wcsToMbcs(null, host, false);
                    int hostString = XPCOM.nsEmbedCString_new(hostBytes, hostBytes.length);
                    rc = overrideService.RememberValidityOverride(hostString, port, cert.getAddress(), finalFlags, 1);
                    Mozilla.this.browser.setUrl(url);
                    XPCOM.nsEmbedCString_delete(hostString);
                    overrideService.Release();
                }
                cert.Release();
            }
        });
        C.memmove(_suppressError, new int[]{1}, 4);
        return 0;
    }
}

