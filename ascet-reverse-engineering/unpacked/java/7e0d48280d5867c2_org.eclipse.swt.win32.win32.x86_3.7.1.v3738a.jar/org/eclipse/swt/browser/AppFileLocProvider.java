/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.util.Vector;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.browser.SimpleEnumerator;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsEmbedString;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDirectoryServiceProvider;
import org.eclipse.swt.internal.mozilla.nsIDirectoryServiceProvider2;
import org.eclipse.swt.internal.mozilla.nsIFile;
import org.eclipse.swt.internal.mozilla.nsILocalFile;
import org.eclipse.swt.internal.mozilla.nsISupports;

class AppFileLocProvider {
    XPCOMObject supports;
    XPCOMObject directoryServiceProvider;
    XPCOMObject directoryServiceProvider2;
    int refCount = 0;
    String mozillaPath;
    String profilePath;
    String[] pluginDirs;
    boolean isXULRunner;
    static final String SEPARATOR_OS = System.getProperty("file.separator");
    static final String CHROME_DIR = "chrome";
    static final String COMPONENTS_DIR = "components";
    static final String HISTORY_FILE = "history.dat";
    static final String LOCALSTORE_FILE = "localstore.rdf";
    static final String MIMETYPES_FILE = "mimeTypes.rdf";
    static final String PLUGINS_DIR = "plugins";
    static final String USER_PLUGINS_DIR = ".mozilla" + SEPARATOR_OS + "plugins";
    static final String PREFERENCES_FILE = "prefs.js";
    static boolean IsSparc;

    static {
        String osName = System.getProperty("os.name").toLowerCase();
        String osArch = System.getProperty("os.arch").toLowerCase();
        IsSparc = (osName.startsWith("sunos") || osName.startsWith("solaris")) && osArch.startsWith("sparc");
    }

    AppFileLocProvider(String mozillaPath, String profilePath, boolean isXULRunner) {
        this.mozillaPath = String.valueOf(mozillaPath) + SEPARATOR_OS;
        this.profilePath = String.valueOf(profilePath) + SEPARATOR_OS;
        this.isXULRunner = isXULRunner;
        if (!Compatibility.fileExists(profilePath, "")) {
            int[] result = new int[1];
            nsEmbedString pathString = new nsEmbedString(profilePath);
            int rc = XPCOM.NS_NewLocalFile(pathString.getAddress(), 1, result);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467261);
            }
            pathString.dispose();
            nsILocalFile file = new nsILocalFile(result[0]);
            rc = file.Create(1, 448);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            file.Release();
        }
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return AppFileLocProvider.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return AppFileLocProvider.this.AddRef();
            }

            public int method2(int[] args) {
                return AppFileLocProvider.this.Release();
            }
        };
        int[] nArray2 = new int[4];
        nArray2[0] = 2;
        nArray2[3] = 3;
        this.directoryServiceProvider = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return AppFileLocProvider.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return AppFileLocProvider.this.AddRef();
            }

            public int method2(int[] args) {
                return AppFileLocProvider.this.Release();
            }

            public int method3(int[] args) {
                return AppFileLocProvider.this.getFile(args[0], args[1], args[2]);
            }
        };
        int[] nArray3 = new int[5];
        nArray3[0] = 2;
        nArray3[3] = 3;
        nArray3[4] = 2;
        this.directoryServiceProvider2 = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return AppFileLocProvider.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return AppFileLocProvider.this.AddRef();
            }

            public int method2(int[] args) {
                return AppFileLocProvider.this.Release();
            }

            public int method3(int[] args) {
                return AppFileLocProvider.this.getFile(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return AppFileLocProvider.this.getFiles(args[0], args[1]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.directoryServiceProvider != null) {
            this.directoryServiceProvider.dispose();
            this.directoryServiceProvider = null;
        }
        if (this.directoryServiceProvider2 != null) {
            this.directoryServiceProvider2.dispose();
            this.directoryServiceProvider2 = null;
        }
    }

    int getAddress() {
        return this.directoryServiceProvider.getAddress();
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
        if (guid.Equals(nsIDirectoryServiceProvider.NS_IDIRECTORYSERVICEPROVIDER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.directoryServiceProvider.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIDirectoryServiceProvider2.NS_IDIRECTORYSERVICEPROVIDER2_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.directoryServiceProvider2.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int getFiles(int prop, int _retval) {
        int size = XPCOM.strlen(prop);
        byte[] bytes = new byte[size];
        XPCOM.memmove(bytes, prop, size);
        String propertyName = new String(MozillaDelegate.mbcsToWcs(null, bytes));
        String[] propertyValues = null;
        if (propertyName.equals("APluginsDL")) {
            if (this.pluginDirs == null) {
                int index = 0;
                int ptr = C.getenv(MozillaDelegate.wcsToMbcs(null, "MOZ_PLUGIN_PATH", true));
                if (ptr != 0) {
                    int length = C.strlen(ptr);
                    byte[] buffer = new byte[length];
                    C.memmove(buffer, ptr, length);
                    String value = new String(MozillaDelegate.mbcsToWcs(null, buffer));
                    if (value.length() > 0) {
                        String separator = System.getProperty("path.separator");
                        Vector<String> segments = new Vector<String>();
                        int end = -1;
                        do {
                            int start;
                            String segment;
                            if ((segment = (end = value.indexOf(separator, start = end + 1)) == -1 ? value.substring(start) : value.substring(start, end)).length() <= 0) continue;
                            segments.addElement(segment);
                        } while (end != -1);
                        int segmentsSize = segments.size();
                        this.pluginDirs = new String[segmentsSize + (IsSparc ? 1 : 2)];
                        index = 0;
                        while (index < segmentsSize) {
                            this.pluginDirs[index] = (String)segments.elementAt(index);
                            ++index;
                        }
                    }
                }
                if (this.pluginDirs == null) {
                    this.pluginDirs = new String[IsSparc ? 1 : 2];
                }
                if (!IsSparc) {
                    this.pluginDirs[index++] = String.valueOf(this.mozillaPath) + PLUGINS_DIR;
                }
                this.pluginDirs[index++] = String.valueOf(System.getProperty("user.home")) + SEPARATOR_OS + USER_PLUGINS_DIR;
            }
            propertyValues = this.pluginDirs;
        }
        XPCOM.memmove(_retval, new int[1], C.PTR_SIZEOF);
        if (propertyValues != null) {
            int[] result = new int[1];
            nsISupports[] files = new nsISupports[propertyValues.length];
            int index = 0;
            int i = 0;
            while (i < propertyValues.length) {
                nsEmbedString pathString = new nsEmbedString(propertyValues[i]);
                int rc = XPCOM.NS_NewLocalFile(pathString.getAddress(), 1, result);
                if (rc != -2142109695) {
                    if (rc != 0) {
                        Mozilla.error(rc);
                    }
                    if (result[0] == 0) {
                        Mozilla.error(-2147467261);
                    }
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
                    nsIFile file = new nsIFile(result[0]);
                    files[index++] = file;
                }
                pathString.dispose();
                result[0] = 0;
                ++i;
            }
            if (index < propertyValues.length) {
                nsISupports[] temp = new nsISupports[index];
                System.arraycopy(files, 0, temp, 0, index);
                files = temp;
            }
            SimpleEnumerator enumerator = new SimpleEnumerator(files);
            enumerator.AddRef();
            XPCOM.memmove(_retval, new int[]{enumerator.getAddress()}, C.PTR_SIZEOF);
            return 0;
        }
        return -2147467259;
    }

    int getFile(int prop, int persistent, int _retval) {
        int size = XPCOM.strlen(prop);
        byte[] bytes = new byte[size];
        XPCOM.memmove(bytes, prop, size);
        String propertyName = new String(MozillaDelegate.mbcsToWcs(null, bytes));
        String propertyValue = null;
        if (propertyName.equals("UHist")) {
            propertyValue = String.valueOf(this.profilePath) + HISTORY_FILE;
        } else if (propertyName.equals("UMimTyp")) {
            propertyValue = String.valueOf(this.profilePath) + MIMETYPES_FILE;
        } else if (propertyName.equals("PrefF")) {
            propertyValue = String.valueOf(this.profilePath) + PREFERENCES_FILE;
        } else if (propertyName.equals("PrefD")) {
            propertyValue = this.profilePath;
        } else if (propertyName.equals("UChrm")) {
            propertyValue = String.valueOf(this.profilePath) + CHROME_DIR;
        } else if (propertyName.equals("ProfD")) {
            propertyValue = this.profilePath;
        } else if (propertyName.equals("LclSt")) {
            propertyValue = String.valueOf(this.profilePath) + LOCALSTORE_FILE;
        } else if (propertyName.equals("cachePDir")) {
            propertyValue = this.profilePath;
        } else if (propertyName.equals("Home")) {
            propertyValue = System.getProperty("user.home");
        } else if (propertyName.equals("TmpD")) {
            propertyValue = System.getProperty("java.io.tmpdir");
        } else if (propertyName.equals("GreD")) {
            propertyValue = this.mozillaPath;
        } else if (propertyName.equals("GreComsD")) {
            propertyValue = String.valueOf(this.profilePath) + COMPONENTS_DIR;
        } else if (propertyName.equals("MozBinD")) {
            propertyValue = this.mozillaPath;
        } else if (propertyName.equals("CurProcD")) {
            propertyValue = this.mozillaPath;
        } else if (propertyName.equals("ComsD")) {
            propertyValue = String.valueOf(this.mozillaPath) + COMPONENTS_DIR;
        } else if (propertyName.equals("XCurProcD")) {
            propertyValue = this.mozillaPath;
        } else if (propertyName.equals("PrfDef") && this.isXULRunner) {
            propertyValue = this.profilePath;
        }
        XPCOM.memmove(persistent, new int[]{1}, 4);
        XPCOM.memmove(_retval, new int[1], C.PTR_SIZEOF);
        if (propertyValue != null && propertyValue.length() > 0) {
            int[] result = new int[1];
            nsEmbedString pathString = new nsEmbedString(propertyValue);
            int rc = XPCOM.NS_NewLocalFile(pathString.getAddress(), 1, result);
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
            XPCOM.memmove(_retval, new int[]{result[0]}, C.PTR_SIZEOF);
            localFile.Release();
            return 0;
        }
        return -2147467259;
    }
}

