/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.launcher;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.net.URLStreamHandlerFactory;
import java.security.AllPermission;
import java.security.CodeSource;
import java.security.Permission;
import java.security.PermissionCollection;
import java.security.Policy;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.equinox.launcher.JNIBridge;
import org.eclipse.equinox.launcher.Main;

public class Main {
    protected boolean debug = false;
    protected String bootLocation = null;
    protected URL installLocation = null;
    protected URL configurationLocation = null;
    protected String parentConfigurationLocation = null;
    protected String framework = "org.eclipse.osgi";
    protected String devClassPath = null;
    private Properties devClassPathProps = null;
    protected boolean inDevelopmentMode = false;
    protected String os = null;
    protected String ws = null;
    protected String arch = null;
    private String library = null;
    private String exitData = null;
    private String vm = null;
    private String[] vmargs = null;
    private String[] commands = null;
    String[] extensionPaths = null;
    JNIBridge bridge = null;
    private boolean showSplash = false;
    private String splashLocation = null;
    private String endSplash = null;
    private boolean initialize = false;
    protected boolean splashDown = false;
    private final Thread splashHandler = new SplashHandler();
    public static final String SPLASH_HANDLE = "org.eclipse.equinox.launcher.splash.handle";
    public static final String SPLASH_LOCATION = "org.eclipse.equinox.launcher.splash.location";
    private static final String FRAMEWORK = "-framework";
    private static final String INSTALL = "-install";
    private static final String INITIALIZE = "-initialize";
    private static final String VM = "-vm";
    private static final String VMARGS = "-vmargs";
    private static final String DEBUG = "-debug";
    private static final String DEV = "-dev";
    private static final String CONFIGURATION = "-configuration";
    private static final String NOSPLASH = "-nosplash";
    private static final String SHOWSPLASH = "-showsplash";
    private static final String EXITDATA = "-exitdata";
    private static final String NAME = "-name";
    private static final String LAUNCHER = "-launcher";
    private static final String LIBRARY = "--launcher.library";
    private static final String APPEND_VMARGS = "--launcher.appendVmargs";
    private static final String OVERRIDE_VMARGS = "--launcher.overrideVmargs";
    private static final String NL = "-nl";
    private static final String ENDSPLASH = "-endsplash";
    private static final String SPLASH_IMAGE = "splash.bmp";
    private static final String CLEAN = "-clean";
    private static final String NOEXIT = "-noExit";
    private static final String OS = "-os";
    private static final String WS = "-ws";
    private static final String ARCH = "-arch";
    private static final String STARTUP = "-startup";
    private static final String OSGI = "org.eclipse.osgi";
    private static final String STARTER = "org.eclipse.core.runtime.adaptor.EclipseStarter";
    private static final String PLATFORM_URL = "platform:/base/";
    private static final String ECLIPSE_PROPERTIES = "eclipse.properties";
    private static final String FILE_SCHEME = "file:";
    protected static final String REFERENCE_SCHEME = "reference:";
    protected static final String JAR_SCHEME = "jar:";
    private static final String CONFIG_DIR = "configuration/";
    private static final String CONFIG_FILE = "config.ini";
    private static final String CONFIG_FILE_TEMP_SUFFIX = ".tmp";
    private static final String CONFIG_FILE_BAK_SUFFIX = ".bak";
    private static final String ECLIPSE = "eclipse";
    private static final String PRODUCT_SITE_MARKER = ".eclipseproduct";
    private static final String PRODUCT_SITE_ID = "id";
    private static final String PRODUCT_SITE_VERSION = "version";
    private static final String PROP_USER_HOME = "user.home";
    private static final String PROP_USER_DIR = "user.dir";
    private static final String PROP_INSTALL_AREA = "osgi.install.area";
    private static final String PROP_CONFIG_AREA = "osgi.configuration.area";
    private static final String PROP_CONFIG_AREA_DEFAULT = "osgi.configuration.area.default";
    private static final String PROP_BASE_CONFIG_AREA = "osgi.baseConfiguration.area";
    private static final String PROP_SHARED_CONFIG_AREA = "osgi.sharedConfiguration.area";
    private static final String PROP_CONFIG_CASCADED = "osgi.configuration.cascaded";
    protected static final String PROP_FRAMEWORK = "osgi.framework";
    private static final String PROP_SPLASHPATH = "osgi.splashPath";
    private static final String PROP_SPLASHLOCATION = "osgi.splashLocation";
    private static final String PROP_CLASSPATH = "osgi.frameworkClassPath";
    private static final String PROP_EXTENSIONS = "osgi.framework.extensions";
    private static final String PROP_FRAMEWORK_SYSPATH = "osgi.syspath";
    private static final String PROP_FRAMEWORK_SHAPE = "osgi.framework.shape";
    private static final String PROP_LOGFILE = "osgi.logfile";
    private static final String PROP_REQUIRED_JAVA_VERSION = "osgi.requiredJavaVersion";
    private static final String PROP_PARENT_CLASSLOADER = "osgi.parentClassloader";
    private static final String PROP_FRAMEWORK_PARENT_CLASSLOADER = "osgi.frameworkParentClassloader";
    private static final String PROP_NL = "osgi.nl";
    static final String PROP_NOSHUTDOWN = "osgi.noShutdown";
    private static final String PROP_DEBUG = "osgi.debug";
    private static final String PROP_OS = "osgi.os";
    private static final String PROP_WS = "osgi.ws";
    private static final String PROP_ARCH = "osgi.arch";
    private static final String PROP_EXITCODE = "eclipse.exitcode";
    private static final String PROP_EXITDATA = "eclipse.exitdata";
    private static final String PROP_LAUNCHER = "eclipse.launcher";
    private static final String PROP_LAUNCHER_NAME = "eclipse.launcher.name";
    private static final String PROP_VM = "eclipse.vm";
    private static final String PROP_VMARGS = "eclipse.vmargs";
    private static final String PROP_COMMANDS = "eclipse.commands";
    private static final String PROP_ECLIPSESECURITY = "eclipse.security";
    private static final String READ_ONLY_AREA_SUFFIX = ".readOnly";
    private static final String NONE = "@none";
    private static final String NO_DEFAULT = "@noDefault";
    private static final String USER_HOME = "@user.home";
    private static final String USER_DIR = "@user.dir";
    private static final String PARENT_CLASSLOADER_APP = "app";
    private static final String PARENT_CLASSLOADER_EXT = "ext";
    private static final String PARENT_CLASSLOADER_BOOT = "boot";
    private static final String PARENT_CLASSLOADER_CURRENT = "current";
    protected static final String SESSION = "!SESSION";
    protected static final String ENTRY = "!ENTRY";
    protected static final String MESSAGE = "!MESSAGE";
    protected static final String STACK = "!STACK";
    protected static final int ERROR = 4;
    protected static final String PLUGIN_ID = "org.eclipse.equinox.launcher";
    protected File logFile = null;
    protected BufferedWriter log = null;
    protected boolean newSession = true;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    private String getWS() {
        if (this.ws != null) {
            return this.ws;
        }
        String osgiWs = System.getProperty(PROP_WS);
        if (osgiWs != null) {
            this.ws = osgiWs;
            return this.ws;
        }
        String osName = this.getOS();
        if (osName.equals("win32")) {
            return "win32";
        }
        if (osName.equals("linux")) {
            return "gtk";
        }
        if (osName.equals("macosx")) {
            return "cocoa";
        }
        if (osName.equals("hpux")) {
            return "motif";
        }
        if (osName.equals("aix")) {
            return "motif";
        }
        if (osName.equals("solaris")) {
            return "gtk";
        }
        if (osName.equals("qnx")) {
            return "photon";
        }
        return "unknown";
    }

    private String getAlternateWS(String defaultWS) {
        if ("cocoa".equals(defaultWS)) {
            return "carbon";
        }
        if ("gtk".equals(defaultWS)) {
            return "motif";
        }
        if ("win32".equals(defaultWS)) {
            return "wpf";
        }
        return "unknown";
    }

    private String getOS() {
        if (this.os != null) {
            return this.os;
        }
        String osgiOs = System.getProperty(PROP_OS);
        if (osgiOs != null) {
            this.os = osgiOs;
            return this.os;
        }
        String osName = System.getProperties().getProperty("os.name");
        if (osName.regionMatches(true, 0, "win32", 0, 3)) {
            return "win32";
        }
        if (osName.equalsIgnoreCase("SunOS")) {
            return "solaris";
        }
        if (osName.equalsIgnoreCase("Linux")) {
            return "linux";
        }
        if (osName.equalsIgnoreCase("QNX")) {
            return "qnx";
        }
        if (osName.equalsIgnoreCase("AIX")) {
            return "aix";
        }
        if (osName.equalsIgnoreCase("HP-UX")) {
            return "hpux";
        }
        if (osName.equalsIgnoreCase("OS/400")) {
            return "os/400";
        }
        if (osName.equalsIgnoreCase("OS/390")) {
            return "os/390";
        }
        if (osName.equalsIgnoreCase("z/OS")) {
            return "z/os";
        }
        if (osName.regionMatches(true, 0, "Mac OS", 0, "Mac OS".length())) {
            return "macosx";
        }
        return "unknown";
    }

    private String getArch() {
        if (this.arch != null) {
            return this.arch;
        }
        String osgiArch = System.getProperty(PROP_ARCH);
        if (osgiArch != null) {
            this.arch = osgiArch;
            return this.arch;
        }
        String name = System.getProperties().getProperty("os.arch");
        if (name.equalsIgnoreCase("i386")) {
            return "x86";
        }
        if (name.equalsIgnoreCase("amd64")) {
            return "x86_64";
        }
        return name;
    }

    private String getFragmentString(String fragmentOS, String fragmentWS, String fragmentArch) {
        StringBuffer buffer = new StringBuffer(PLUGIN_ID);
        buffer.append('.');
        buffer.append(fragmentWS);
        buffer.append('.');
        buffer.append(fragmentOS);
        if (!fragmentOS.equals("macosx") || "x86_64".equals(fragmentArch)) {
            buffer.append('.');
            buffer.append(fragmentArch);
        }
        return buffer.toString();
    }

    private void setupJNI(URL[] defaultPath) {
        String alternateWS;
        String fragmentArch;
        String fragmentWS;
        String fragmentOS;
        String libPath = null;
        if (this.library != null) {
            File lib = new File(this.library);
            if (lib.isDirectory()) {
                libPath = this.searchFor(ECLIPSE, lib.getAbsolutePath());
            } else if (lib.exists()) {
                libPath = lib.getAbsolutePath();
            }
        }
        if (libPath == null && (libPath = this.getLibraryPath(this.getFragmentString(fragmentOS = this.getOS(), fragmentWS = this.getWS(), fragmentArch = this.getArch()), defaultPath)) == null && this.ws == null && (libPath = this.getLibraryPath(this.getFragmentString(fragmentOS, alternateWS = this.getAlternateWS(fragmentWS), fragmentArch), defaultPath)) != null) {
            System.getProperties().put(PROP_WS, alternateWS);
        }
        this.library = libPath;
        if (this.library != null) {
            this.bridge = new JNIBridge(this.library);
        }
    }

    private String getLibraryPath(String fragmentName, URL[] defaultPath) {
        URL[] urls;
        String dir;
        File location;
        String devPathList;
        String[] locations;
        String libPath = null;
        String fragment = null;
        if (this.inDevelopmentMode && this.devClassPathProps != null && (locations = this.getArrayFromList(devPathList = this.devClassPathProps.getProperty(PLUGIN_ID))).length > 0 && (location = new File(locations[0])).isAbsolute() && (fragment = this.searchFor(fragmentName, dir = location.getParent())) != null) {
            libPath = this.getLibraryFromFragment(fragment);
        }
        if (libPath == null && this.bootLocation != null && (urls = defaultPath) != null && urls.length > 0) {
            int i = urls.length - 1;
            while (i >= 0 && libPath == null) {
                File entryFile = new File(urls[i].getFile());
                dir = entryFile.getParent();
                if (this.inDevelopmentMode) {
                    String devDir = String.valueOf(dir) + "/" + PLUGIN_ID + "/fragments";
                    fragment = this.searchFor(fragmentName, devDir);
                }
                if (fragment == null) {
                    fragment = this.searchFor(fragmentName, dir);
                }
                if (fragment != null) {
                    libPath = this.getLibraryFromFragment(fragment);
                }
                --i;
            }
        }
        if (libPath == null) {
            URL install = this.getInstallLocation();
            String location2 = install.getFile();
            fragment = this.searchFor(fragmentName, location2 = String.valueOf(location2) + "/plugins/");
            if (fragment != null) {
                libPath = this.getLibraryFromFragment(fragment);
            }
        }
        return libPath;
    }

    private String getLibraryFromFragment(String fragment) {
        File frag;
        if (fragment.startsWith(FILE_SCHEME)) {
            fragment = fragment.substring(5);
        }
        if (!(frag = new File(fragment)).exists()) {
            return null;
        }
        if (frag.isDirectory()) {
            return this.searchFor(ECLIPSE, fragment);
        }
        ZipFile fragmentJar = null;
        try {
            fragmentJar = new ZipFile(frag);
        }
        catch (IOException e) {
            this.log("Exception opening JAR file: " + fragment);
            this.log(e);
            return null;
        }
        Enumeration<? extends ZipEntry> entries = fragmentJar.entries();
        String entry = null;
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = entries.nextElement();
            if (!zipEntry.getName().startsWith("eclipse_")) continue;
            entry = zipEntry.getName();
            try {
                fragmentJar.close();
            }
            catch (IOException iOException) {}
            break;
        }
        if (entry != null) {
            String lib = this.extractFromJAR(fragment, entry);
            if (!this.getOS().equals("win32")) {
                try {
                    Runtime.getRuntime().exec(new String[]{"chmod", "755", lib}).waitFor();
                }
                catch (Throwable throwable) {}
            }
            return lib;
        }
        return null;
    }

    protected void basicRun(String[] args) throws Exception {
        System.getProperties().put("eclipse.startTime", Long.toString(System.currentTimeMillis()));
        this.commands = args;
        String[] passThruArgs = this.processCommandLine(args);
        if (!this.debug) {
            this.debug = System.getProperty(PROP_DEBUG) != null;
        }
        this.setupVMProperties();
        this.processConfiguration();
        this.getInstallLocation();
        URL[] bootPath = this.getBootPath(this.bootLocation);
        this.setupJNI(bootPath);
        if (!this.checkVersion(System.getProperty("java.version"), System.getProperty(PROP_REQUIRED_JAVA_VERSION))) {
            return;
        }
        if (!this.checkConfigurationLocation(this.configurationLocation)) {
            return;
        }
        this.setSecurityPolicy(bootPath);
        this.handleSplash(bootPath);
        this.beforeFwkInvocation();
        this.invokeFramework(passThruArgs, bootPath);
    }

    protected void beforeFwkInvocation() {
    }

    protected void setSecurityPolicy(URL[] bootPath) {
        String eclipseSecurity = System.getProperty(PROP_ECLIPSESECURITY);
        if (eclipseSecurity != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.equinox.launcher.Main");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ProtectionDomain domain = clazz.getProtectionDomain();
            CodeSource source = null;
            if (domain != null) {
                Class<?> clazz2 = class$0;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$0 = Class.forName("org.eclipse.equinox.launcher.Main");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                source = clazz2.getProtectionDomain().getCodeSource();
            }
            if (domain == null || source == null) {
                this.log("Can not automatically set the security manager. Please use a policy file.");
                return;
            }
            URL[] rootURLs = new URL[bootPath.length + 1];
            rootURLs[0] = source.getLocation();
            System.arraycopy(bootPath, 0, rootURLs, 1, bootPath.length);
            EclipsePolicy eclipsePolicy = new EclipsePolicy(Policy.getPolicy(), rootURLs);
            Policy.setPolicy(eclipsePolicy);
        }
    }

    private void invokeFramework(String[] passThruArgs, URL[] bootPath) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, Error, Exception, InvocationTargetException {
        String type = System.getProperty(PROP_FRAMEWORK_PARENT_CLASSLOADER, System.getProperty(PROP_PARENT_CLASSLOADER, PARENT_CLASSLOADER_BOOT));
        ClassLoader parent = null;
        if (PARENT_CLASSLOADER_APP.equalsIgnoreCase(type)) {
            parent = ClassLoader.getSystemClassLoader();
        } else if (PARENT_CLASSLOADER_EXT.equalsIgnoreCase(type)) {
            ClassLoader appCL = ClassLoader.getSystemClassLoader();
            if (appCL != null) {
                parent = appCL.getParent();
            }
        } else if (PARENT_CLASSLOADER_CURRENT.equalsIgnoreCase(type)) {
            parent = this.getClass().getClassLoader();
        }
        StartupClassLoader loader = new StartupClassLoader(bootPath, parent);
        Class<?> clazz = loader.loadClass(STARTER);
        Class[] classArray = new Class[2];
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("[Ljava.lang.String;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz2;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Runnable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz3;
        Method method = clazz.getDeclaredMethod("run", classArray);
        try {
            method.invoke(clazz, passThruArgs, this.splashHandler);
        }
        catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Error) {
                throw (Error)e.getTargetException();
            }
            if (e.getTargetException() instanceof Exception) {
                throw (Exception)e.getTargetException();
            }
            throw e;
        }
    }

    private boolean checkVersion(String availableVersion, String requiredVersion) {
        if (requiredVersion == null || availableVersion == null) {
            return true;
        }
        try {
            Identifier required = new Identifier(requiredVersion);
            Identifier available = new Identifier(availableVersion);
            boolean compatible = available.isGreaterEqualTo(required);
            if (!compatible) {
                System.getProperties().put(PROP_EXITCODE, "14");
                System.getProperties().put(PROP_EXITDATA, "<title>Incompatible JVM</title>Version " + availableVersion + " of the JVM is not suitable for this product. Version: " + requiredVersion + " or greater is required.");
            }
            return compatible;
        }
        catch (SecurityException securityException) {
            return true;
        }
        catch (NumberFormatException numberFormatException) {
            return true;
        }
    }

    private boolean checkConfigurationLocation(URL locationUrl) {
        if (locationUrl == null || !"file".equals(locationUrl.getProtocol())) {
            return true;
        }
        if (Boolean.valueOf(System.getProperty("osgi.configuration.area.readOnly")).booleanValue()) {
            return true;
        }
        File configDir = new File(locationUrl.getFile()).getAbsoluteFile();
        if (!configDir.exists()) {
            configDir.mkdirs();
            if (!configDir.exists()) {
                System.getProperties().put(PROP_EXITCODE, "15");
                System.getProperties().put(PROP_EXITDATA, "<title>Invalid Configuration Location</title>The configuration area at '" + configDir + "' could not be created.  Please choose a writable location using the '-configuration' command line option.");
                return false;
            }
        }
        if (!Main.canWrite(configDir)) {
            System.getProperties().put(PROP_EXITCODE, "15");
            System.getProperties().put(PROP_EXITDATA, "<title>Invalid Configuration Location</title>The configuration area at '" + configDir + "' is not writable.  Please choose a writable location using the '-configuration' command line option.");
            return false;
        }
        return true;
    }

    protected String decode(String urlString) {
        try {
            Object result;
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("java.net.URLDecoder");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> clazz2 = clazz;
            Class[] classArray = new Class[2];
            Class<?> clazz3 = class$4;
            if (clazz3 == null) {
                try {
                    clazz3 = class$4 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz3;
            Class<?> clazz4 = class$4;
            if (clazz4 == null) {
                try {
                    clazz4 = class$4 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[1] = clazz4;
            Method method = clazz2.getDeclaredMethod("decode", classArray);
            if (urlString.indexOf(43) >= 0) {
                int len = urlString.length();
                StringBuffer buf = new StringBuffer(len);
                int i = 0;
                while (i < len) {
                    char c = urlString.charAt(i);
                    if (c == '+') {
                        buf.append("%2B");
                    } else {
                        buf.append(c);
                    }
                    ++i;
                }
                urlString = buf.toString();
            }
            if ((result = method.invoke(null, urlString, "UTF-8")) != null) {
                return (String)result;
            }
        }
        catch (Exception exception) {}
        boolean replaced = false;
        byte[] encodedBytes = urlString.getBytes();
        int encodedLength = encodedBytes.length;
        byte[] decodedBytes = new byte[encodedLength];
        int decodedLength = 0;
        int i = 0;
        while (i < encodedLength) {
            byte b = encodedBytes[i];
            if (b == 37) {
                if (i + 2 >= encodedLength) {
                    throw new IllegalArgumentException("Malformed URL (\"" + urlString + "\"): % must be followed by 2 digits.");
                }
                byte enc1 = encodedBytes[++i];
                byte enc2 = encodedBytes[++i];
                b = (byte)((this.hexToByte(enc1) << 4) + this.hexToByte(enc2));
                replaced = true;
            }
            decodedBytes[decodedLength++] = b;
            ++i;
        }
        if (!replaced) {
            return urlString;
        }
        try {
            return new String(decodedBytes, 0, decodedLength, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new String(decodedBytes, 0, decodedLength);
        }
    }

    protected String[] getArrayFromList(String prop) {
        if (prop == null || prop.trim().equals("")) {
            return new String[0];
        }
        Vector<String> list = new Vector<String>();
        StringTokenizer tokens = new StringTokenizer(prop, ",");
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            list.addElement(token);
        }
        return list.isEmpty() ? new String[]{} : list.toArray(new String[list.size()]);
    }

    private URL[] getDevPath(URL base) throws IOException {
        ArrayList result = new ArrayList(5);
        if (this.inDevelopmentMode) {
            this.addDevEntries(base, result, OSGI);
        }
        this.addBaseJars(base, result);
        return result.toArray(new URL[result.size()]);
    }

    URL constructURL(URL url, String name) {
        String externalForm = url.toExternalForm();
        if (externalForm.endsWith(".jar")) {
            try {
                return new URL(JAR_SCHEME + url + "!/" + name);
            }
            catch (MalformedURLException malformedURLException) {}
        }
        try {
            return new URL(url, name);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }

    private void readFrameworkExtensions(URL base, ArrayList result) throws IOException {
        String[] extensions = this.getArrayFromList(System.getProperties().getProperty(PROP_EXTENSIONS));
        String parent = new File(base.getFile()).getParent().toString();
        ArrayList<String> extensionResults = new ArrayList<String>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            String path = this.searchForBundle(extensions[i], parent);
            if (path == null) {
                this.log("Could not find extension: " + extensions[i]);
            } else {
                String[] stringArray;
                Properties extensionProperties;
                URL extensionURL;
                block15: {
                    if (this.debug) {
                        System.out.println("Loading extension: " + extensions[i]);
                    }
                    extensionURL = null;
                    if (this.installLocation.getProtocol().equals("file")) {
                        extensionResults.add(path);
                        extensionURL = new File(path).toURL();
                    } else {
                        extensionURL = new URL(this.installLocation.getProtocol(), this.installLocation.getHost(), this.installLocation.getPort(), path);
                    }
                    extensionProperties = null;
                    try {
                        extensionProperties = this.loadProperties(this.constructURL(extensionURL, ECLIPSE_PROPERTIES));
                    }
                    catch (IOException iOException) {
                        if (!this.debug) break block15;
                        System.out.println("\teclipse.properties not found");
                    }
                }
                String extensionClassPath = null;
                if (extensionProperties != null) {
                    extensionClassPath = extensionProperties.getProperty(PROP_CLASSPATH);
                } else {
                    extensionProperties = new Properties();
                }
                if (extensionClassPath == null || extensionClassPath.length() == 0) {
                    String[] stringArray2 = new String[1];
                    stringArray = stringArray2;
                    stringArray2[0] = "";
                } else {
                    stringArray = this.getArrayFromList(extensionClassPath);
                }
                String[] entries = stringArray;
                String qualifiedPath = System.getProperty(PROP_CLASSPATH) == null ? "." : "";
                int j = 0;
                while (j < entries.length) {
                    qualifiedPath = String.valueOf(qualifiedPath) + ", file:" + path + entries[j];
                    ++j;
                }
                extensionProperties.put(PROP_CLASSPATH, qualifiedPath);
                this.mergeProperties(System.getProperties(), extensionProperties, null);
                if (this.inDevelopmentMode) {
                    String name = extensions[i];
                    if (name.startsWith(REFERENCE_SCHEME)) {
                        name = new File(path).getName();
                    }
                    this.addDevEntries(extensionURL, result, name);
                }
            }
            ++i;
        }
        this.extensionPaths = extensionResults.toArray(new String[extensionResults.size()]);
    }

    private void addBaseJars(URL base, ArrayList result) throws IOException {
        File fwkFile;
        boolean fwkIsDirectory;
        String baseJarList = System.getProperty(PROP_CLASSPATH);
        if (baseJarList == null) {
            this.readFrameworkExtensions(base, result);
            baseJarList = System.getProperties().getProperty(PROP_CLASSPATH);
        }
        if (fwkIsDirectory = (fwkFile = new File(base.getFile())).isDirectory()) {
            System.getProperties().put(PROP_FRAMEWORK_SHAPE, "folder");
        } else {
            System.getProperties().put(PROP_FRAMEWORK_SHAPE, "jar");
        }
        String fwkPath = new File(new File(base.getFile()).getParent()).getAbsolutePath();
        if (Character.isUpperCase(fwkPath.charAt(0))) {
            char[] chars = fwkPath.toCharArray();
            chars[0] = Character.toLowerCase(chars[0]);
            fwkPath = new String(chars);
        }
        System.getProperties().put(PROP_FRAMEWORK_SYSPATH, fwkPath);
        String[] baseJars = this.getArrayFromList(baseJarList);
        if (baseJars.length == 0) {
            if (!this.inDevelopmentMode && new File(base.getFile()).isDirectory()) {
                throw new IOException("Unable to initialize osgi.frameworkClassPath");
            }
            this.addEntry(base, result);
            return;
        }
        int i = 0;
        while (i < baseJars.length) {
            String string = baseJars[i];
            try {
                if (string.equals(".")) {
                    this.addEntry(base, result);
                }
                URL url = null;
                url = string.startsWith(FILE_SCHEME) ? new File(string.substring(5)).toURL() : new URL(string);
                this.addEntry(url, result);
            }
            catch (MalformedURLException malformedURLException) {
                this.addEntry(new URL(base, string), result);
            }
            ++i;
        }
    }

    protected void addEntry(URL url, List result) {
        if (new File(url.getFile()).exists()) {
            result.add(url);
        }
    }

    private void addDevEntries(URL base, List result, String symbolicName) throws MalformedURLException {
        if (this.devClassPathProps == null) {
            return;
        }
        String devPathList = this.devClassPathProps.getProperty(symbolicName);
        if (devPathList == null) {
            devPathList = this.devClassPathProps.getProperty("*");
        }
        String[] locations = this.getArrayFromList(devPathList);
        int i = 0;
        while (i < locations.length) {
            URL url;
            String location = locations[i];
            File path = new File(location);
            if (path.isAbsolute()) {
                url = path.toURL();
            } else {
                char lastChar = location.charAt(location.length() - 1);
                url = location.endsWith(".jar") || lastChar == '/' || lastChar == '\\' ? new URL(base, location) : new URL(base, String.valueOf(location) + "/");
            }
            this.addEntry(url, result);
            ++i;
        }
    }

    protected URL[] getBootPath(String base) throws IOException {
        URL url = null;
        if (base != null) {
            url = Main.buildURL(base, true);
        } else {
            url = this.getInstallLocation();
            String path = new File(url.getFile(), "plugins").toString();
            if ((path = this.searchFor(this.framework, path)) == null) {
                throw new RuntimeException("Could not find framework");
            }
            url = url.getProtocol().equals("file") ? new File(path).toURL() : new URL(url.getProtocol(), url.getHost(), url.getPort(), path);
        }
        if (System.getProperty(PROP_FRAMEWORK) == null) {
            System.getProperties().put(PROP_FRAMEWORK, url.toExternalForm());
        }
        if (this.debug) {
            System.out.println("Framework located:\n    " + url.toExternalForm());
        }
        URL[] result = this.getDevPath(url);
        if (this.debug) {
            System.out.println("Framework classpath:");
            int i = 0;
            while (i < result.length) {
                System.out.println("    " + result[i].toExternalForm());
                ++i;
            }
        }
        return result;
    }

    protected String searchFor(String target, String start) {
        return this.searchFor(target, null, start);
    }

    protected String searchFor(String target, String targetSuffix, String start) {
        File root = Main.resolveFile(new File(start));
        String[] candidates = root.list();
        if (candidates == null) {
            return null;
        }
        ArrayList<String> matches = new ArrayList<String>(2);
        int i = 0;
        while (i < candidates.length) {
            if (this.isMatchingCandidate(target, candidates[i], root)) {
                matches.add(candidates[i]);
            }
            ++i;
        }
        String[] names = matches.toArray(new String[matches.size()]);
        int result = this.findMax(target, names);
        if (result == -1) {
            return null;
        }
        File candidate = new File(start, names[result]);
        return String.valueOf(candidate.getAbsolutePath().replace(File.separatorChar, '/')) + (candidate.isDirectory() ? "/" : "");
    }

    /*
     * Unable to fully structure code
     */
    private boolean isMatchingCandidate(String target, String candidate, File root) {
        if (candidate.equals(target)) {
            return true;
        }
        if (!candidate.startsWith(String.valueOf(target) + "_")) {
            return false;
        }
        targetLength = target.length();
        lastUnderscore = candidate.lastIndexOf(95);
        candidateFile = new File(root, candidate);
        if (candidateFile.isFile() && (candidate.endsWith(".jar") || candidate.endsWith(".zip"))) {
            extension = candidate.lastIndexOf(46);
            candidate = candidate.substring(0, extension);
        }
        if ((lastDot = candidate.lastIndexOf(46)) >= targetLength) ** GOTO lbl14
        return false;
lbl-1000:
        // 1 sources

        {
            lastUnderscore = candidate.lastIndexOf(95, lastUnderscore - 1);
lbl14:
            // 2 sources

            ** while (lastUnderscore > lastDot)
        }
lbl15:
        // 1 sources

        return lastUnderscore == targetLength;
    }

    private String searchForBundle(String target, String start) {
        if (target.startsWith(REFERENCE_SCHEME)) {
            File child;
            if (!(target = target.substring(REFERENCE_SCHEME.length())).startsWith(FILE_SCHEME)) {
                throw new IllegalArgumentException("Bundle URL is invalid: " + target);
            }
            target = target.substring(FILE_SCHEME.length());
            File fileLocation = child = new File(target);
            if (!child.isAbsolute()) {
                File parent = Main.resolveFile(new File(start));
                fileLocation = new File(parent, child.getPath());
            }
            return this.searchFor(fileLocation.getName(), fileLocation.getParentFile().getAbsolutePath());
        }
        return this.searchFor(target, start);
    }

    protected int findMax(String prefix, String[] candidates) {
        int result = -1;
        Object[] maxVersion = null;
        int i = 0;
        while (i < candidates.length) {
            String name = candidates[i] != null ? candidates[i] : "";
            String version = "";
            if (prefix == null) {
                version = name;
            } else if (name.startsWith(String.valueOf(prefix) + "_")) {
                version = name.substring(prefix.length() + 1);
            }
            Object[] currentVersion = this.getVersionElements(version);
            if (maxVersion == null) {
                result = i;
                maxVersion = currentVersion;
            } else if (this.compareVersion(maxVersion, currentVersion) < 0) {
                result = i;
                maxVersion = currentVersion;
            }
            ++i;
        }
        return result;
    }

    private int compareVersion(Object[] left, Object[] right) {
        int result = ((Integer)left[0]).compareTo((Integer)right[0]);
        if (result != 0) {
            return result;
        }
        result = ((Integer)left[1]).compareTo((Integer)right[1]);
        if (result != 0) {
            return result;
        }
        result = ((Integer)left[2]).compareTo((Integer)right[2]);
        if (result != 0) {
            return result;
        }
        return ((String)left[3]).compareTo((String)right[3]);
    }

    private Object[] getVersionElements(String version) {
        if (version.endsWith(".jar")) {
            version = version.substring(0, version.length() - 4);
        }
        Object[] result = new Object[]{new Integer(0), new Integer(0), new Integer(0), ""};
        StringTokenizer t = new StringTokenizer(version, ".");
        int i = 0;
        while (t.hasMoreTokens() && i < 4) {
            String token = t.nextToken();
            if (i < 3) {
                try {
                    result[i++] = new Integer(token);
                    continue;
                }
                catch (Exception exception) {
                    break;
                }
            }
            result[i++] = token;
        }
        return result;
    }

    private static URL buildURL(String spec, boolean trailingSlash) {
        if (spec == null) {
            return null;
        }
        boolean isFile = spec.startsWith(FILE_SCHEME);
        try {
            if (isFile) {
                File toAdjust = new File(spec.substring(5));
                if ((toAdjust = Main.resolveFile(toAdjust)).isDirectory()) {
                    return Main.adjustTrailingSlash(toAdjust.toURL(), trailingSlash);
                }
                return toAdjust.toURL();
            }
            return new URL(spec);
        }
        catch (MalformedURLException malformedURLException) {
            if (isFile) {
                return null;
            }
            try {
                File toAdjust = new File(spec);
                if (toAdjust.isDirectory()) {
                    return Main.adjustTrailingSlash(toAdjust.toURL(), trailingSlash);
                }
                return toAdjust.toURL();
            }
            catch (MalformedURLException malformedURLException2) {
                return null;
            }
        }
    }

    private static File resolveFile(File toAdjust) {
        String installArea;
        if (!toAdjust.isAbsolute() && (installArea = System.getProperties().getProperty(PROP_INSTALL_AREA)) != null) {
            if (installArea.startsWith(FILE_SCHEME)) {
                toAdjust = new File(installArea.substring(5), toAdjust.getPath());
            } else if (new File(installArea).exists()) {
                toAdjust = new File(installArea, toAdjust.getPath());
            }
        }
        return toAdjust;
    }

    private static URL adjustTrailingSlash(URL url, boolean trailingSlash) throws MalformedURLException {
        String file = url.getFile();
        if (trailingSlash == file.endsWith("/")) {
            return url;
        }
        file = trailingSlash ? String.valueOf(file) + "/" : file.substring(0, file.length() - 1);
        return new URL(url.getProtocol(), url.getHost(), file);
    }

    private URL buildLocation(String property, URL defaultLocation, String userDefaultAppendage) {
        URL result = null;
        String location = System.getProperty(property);
        System.getProperties().remove(property);
        try {
            if (location == null) {
                result = defaultLocation;
            } else {
                if (location.equalsIgnoreCase(NONE)) {
                    return null;
                }
                if (location.equalsIgnoreCase(NO_DEFAULT)) {
                    result = Main.buildURL(location, true);
                } else {
                    if (location.startsWith(USER_HOME)) {
                        String base = this.substituteVar(location, USER_HOME, PROP_USER_HOME);
                        location = new File(base, userDefaultAppendage).getAbsolutePath();
                    } else if (location.startsWith(USER_DIR)) {
                        String base = this.substituteVar(location, USER_DIR, PROP_USER_DIR);
                        location = new File(base, userDefaultAppendage).getAbsolutePath();
                    }
                    result = Main.buildURL(location, true);
                }
            }
        }
        finally {
            if (result != null) {
                System.getProperties().put(property, result.toExternalForm());
            }
        }
        return result;
    }

    private String substituteVar(String source, String var, String prop) {
        String value = System.getProperty(prop, "");
        return String.valueOf(value) + source.substring(var.length());
    }

    private String computeDefaultConfigurationLocation() {
        File installDir;
        URL install = this.getInstallLocation();
        if (install.getProtocol().equals("file") && Main.canWrite(installDir = new File(install.getFile()))) {
            return String.valueOf(installDir.getAbsolutePath()) + File.separator + CONFIG_DIR;
        }
        return this.computeDefaultUserAreaLocation(CONFIG_DIR);
    }

    private static boolean canWrite(File installDir) {
        if (!installDir.canWrite()) {
            return false;
        }
        if (!installDir.isDirectory()) {
            return false;
        }
        File fileTest = null;
        try {
            try {
                fileTest = File.createTempFile("writtableArea", ".dll", installDir);
            }
            catch (IOException iOException) {
                if (fileTest != null) {
                    fileTest.delete();
                }
                return false;
            }
        }
        finally {
            if (fileTest != null) {
                fileTest.delete();
            }
        }
        return true;
    }

    private String computeDefaultUserAreaLocation(String pathAppendage) {
        int hashCode;
        URL installURL = this.getInstallLocation();
        if (installURL == null) {
            return null;
        }
        File installDir = new File(installURL.getFile());
        try {
            hashCode = installDir.getCanonicalPath().hashCode();
        }
        catch (IOException iOException) {
            hashCode = installDir.getAbsolutePath().hashCode();
        }
        if (hashCode < 0) {
            hashCode = -hashCode;
        }
        String installDirHash = String.valueOf(hashCode);
        String appName = ".eclipse";
        File eclipseProduct = new File(installDir, PRODUCT_SITE_MARKER);
        if (eclipseProduct.exists()) {
            Properties props = new Properties();
            try {
                String appVersion;
                props.load(new FileInputStream(eclipseProduct));
                String appId = props.getProperty(PRODUCT_SITE_ID);
                if (appId == null || appId.trim().length() == 0) {
                    appId = ECLIPSE;
                }
                if ((appVersion = props.getProperty(PRODUCT_SITE_VERSION)) == null || appVersion.trim().length() == 0) {
                    appVersion = "";
                }
                appName = String.valueOf(appName) + File.separator + appId + "_" + appVersion + "_" + installDirHash;
            }
            catch (IOException iOException) {
                appName = String.valueOf(appName) + File.separator + installDirHash;
            }
        } else {
            appName = String.valueOf(appName) + File.separator + installDirHash;
        }
        String userHome = System.getProperty(PROP_USER_HOME);
        return new File(userHome, String.valueOf(appName) + "/" + pathAppendage).getAbsolutePath();
    }

    public static void main(String argString) {
        Vector<Object> list = new Vector<Object>(5);
        StringTokenizer tokens = new StringTokenizer(argString, " ");
        while (tokens.hasMoreElements()) {
            list.addElement(tokens.nextElement());
        }
        Main.main(list.toArray(new String[list.size()]));
    }

    public static void main(String[] args) {
        int result = 0;
        try {
            try {
                result = new Main().run(args);
            }
            catch (Throwable t) {
                t.printStackTrace();
                if (!Boolean.getBoolean(PROP_NOSHUTDOWN)) {
                    System.exit(result);
                }
            }
        }
        finally {
            if (!Boolean.getBoolean(PROP_NOSHUTDOWN)) {
                System.exit(result);
            }
        }
    }

    public int run(String[] args) {
        int result;
        block11: {
            result = 0;
            try {
                try {
                    this.basicRun(args);
                    String exitCode = System.getProperty(PROP_EXITCODE);
                    try {
                        result = exitCode == null ? 0 : Integer.parseInt(exitCode);
                    }
                    catch (NumberFormatException numberFormatException) {
                        result = 17;
                    }
                }
                catch (Throwable e) {
                    if (!"13".equals(System.getProperty(PROP_EXITCODE))) {
                        this.log("Exception launching the Eclipse Platform:");
                        this.log(e);
                        String message = "An error has occurred";
                        message = this.logFile == null ? String.valueOf(message) + " and could not be logged: \n" + e.getMessage() : String.valueOf(message) + ".  See the log file\n" + this.logFile.getAbsolutePath();
                        System.getProperties().put(PROP_EXITDATA, message);
                    }
                    result = 13;
                    this.takeDownSplash();
                    if (this.bridge != null) {
                        this.bridge.uninitialize();
                    }
                    break block11;
                }
            }
            catch (Throwable throwable) {
                this.takeDownSplash();
                if (this.bridge != null) {
                    this.bridge.uninitialize();
                }
                throw throwable;
            }
            this.takeDownSplash();
            if (this.bridge != null) {
                this.bridge.uninitialize();
            }
        }
        System.getProperties().put(PROP_EXITCODE, Integer.toString(result));
        this.setExitData();
        return result;
    }

    private void setExitData() {
        String data = System.getProperty(PROP_EXITDATA);
        if (data == null) {
            return;
        }
        if (this.bridge == null || this.bridge.isLibraryLoadedByJava() && this.exitData == null) {
            System.out.println(data);
        } else {
            this.bridge.setExitData(this.exitData, data);
        }
    }

    protected String[] processCommandLine(String[] args) {
        if (args.length == 0) {
            return args;
        }
        int[] configArgs = new int[args.length];
        configArgs[0] = -1;
        int configArgIndex = 0;
        int i = 0;
        while (i < args.length) {
            boolean found = false;
            if (args[i].equalsIgnoreCase(DEBUG)) {
                this.debug = true;
            } else {
                if (args[i].equalsIgnoreCase(NOSPLASH)) {
                    this.splashDown = true;
                    found = true;
                }
                if (args[i].equalsIgnoreCase(NOEXIT)) {
                    System.getProperties().put(PROP_NOSHUTDOWN, "true");
                    found = true;
                }
                if (args[i].equalsIgnoreCase(APPEND_VMARGS) || args[i].equalsIgnoreCase(OVERRIDE_VMARGS)) {
                    found = true;
                }
                if (args[i].equalsIgnoreCase(INITIALIZE)) {
                    this.initialize = true;
                } else if (args[i].equalsIgnoreCase(DEV) && (i + 1 == args.length || i + 1 < args.length && args[i + 1].startsWith("-"))) {
                    this.inDevelopmentMode = true;
                } else {
                    if (args[i].equalsIgnoreCase(SHOWSPLASH)) {
                        this.showSplash = true;
                        found = true;
                        if (i + 1 < args.length && !args[i + 1].startsWith("-")) {
                            configArgs[configArgIndex++] = i++;
                            this.splashLocation = args[i];
                        }
                    }
                    if (found) {
                        configArgs[configArgIndex++] = i;
                    } else if (args[i].equalsIgnoreCase(VMARGS)) {
                        args[i] = null;
                        this.vmargs = new String[args.length - ++i];
                        int j = 0;
                        while (i < args.length) {
                            this.vmargs[j++] = args[i];
                            args[i] = null;
                            ++i;
                        }
                    } else if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                        String arg = args[++i];
                        if (args[i - 1].equalsIgnoreCase(DEV)) {
                            this.inDevelopmentMode = true;
                            this.devClassPathProps = this.processDevArg(arg);
                            if (this.devClassPathProps != null) {
                                this.devClassPath = this.devClassPathProps.getProperty(OSGI);
                                if (this.devClassPath == null) {
                                    this.devClassPath = this.devClassPathProps.getProperty("*");
                                }
                            }
                        } else {
                            if (args[i - 1].equalsIgnoreCase(FRAMEWORK)) {
                                this.framework = arg;
                                found = true;
                            }
                            if (args[i - 1].equalsIgnoreCase(OS)) {
                                this.os = arg;
                            } else if (args[i - 1].equalsIgnoreCase(WS)) {
                                this.ws = arg;
                            } else if (args[i - 1].equalsIgnoreCase(ARCH)) {
                                this.arch = arg;
                            } else {
                                if (args[i - 1].equalsIgnoreCase(INSTALL)) {
                                    System.getProperties().put(PROP_INSTALL_AREA, arg);
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(CONFIGURATION)) {
                                    System.getProperties().put(PROP_CONFIG_AREA, arg);
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(EXITDATA)) {
                                    this.exitData = arg;
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(NAME)) {
                                    System.getProperties().put(PROP_LAUNCHER_NAME, arg);
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(STARTUP)) {
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(LAUNCHER)) {
                                    System.getProperties().put(PROP_LAUNCHER, arg);
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(LIBRARY)) {
                                    this.library = arg;
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(ENDSPLASH)) {
                                    this.endSplash = arg;
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(VM)) {
                                    this.vm = arg;
                                    found = true;
                                }
                                if (args[i - 1].equalsIgnoreCase(NL)) {
                                    System.getProperties().put(PROP_NL, arg);
                                    found = true;
                                }
                                if (found) {
                                    configArgs[configArgIndex++] = i - 1;
                                    configArgs[configArgIndex++] = i;
                                }
                            }
                        }
                    }
                }
            }
            ++i;
        }
        String[] passThruArgs = new String[args.length - configArgIndex - (this.vmargs == null ? 0 : this.vmargs.length + 1)];
        configArgIndex = 0;
        int j = 0;
        int i2 = 0;
        while (i2 < args.length) {
            if (i2 == configArgs[configArgIndex]) {
                ++configArgIndex;
            } else if (args[i2] != null) {
                passThruArgs[j++] = args[i2];
            }
            ++i2;
        }
        return passThruArgs;
    }

    private Properties processDevArg(String arg) {
        if (arg == null) {
            return null;
        }
        try {
            URL location = new URL(arg);
            return this.load(location, null);
        }
        catch (MalformedURLException malformedURLException) {
            Properties result = new Properties();
            result.put("*", arg);
            return result;
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private URL getConfigurationLocation() {
        if (this.configurationLocation != null) {
            return this.configurationLocation;
        }
        this.configurationLocation = this.buildLocation(PROP_CONFIG_AREA, null, "");
        if (this.configurationLocation == null) {
            this.configurationLocation = this.buildLocation(PROP_CONFIG_AREA_DEFAULT, null, "");
            if (this.configurationLocation == null) {
                this.configurationLocation = Main.buildURL(this.computeDefaultConfigurationLocation(), true);
            }
        }
        if (this.configurationLocation != null) {
            System.getProperties().put(PROP_CONFIG_AREA, this.configurationLocation.toExternalForm());
        }
        if (this.debug) {
            System.out.println("Configuration location:\n    " + this.configurationLocation);
        }
        return this.configurationLocation;
    }

    private void processConfiguration() {
        Properties configuration;
        URL baseConfigurationLocation = null;
        Properties baseConfiguration = null;
        if (System.getProperty(PROP_CONFIG_AREA) == null) {
            String baseLocation = System.getProperty(PROP_BASE_CONFIG_AREA);
            if (baseLocation != null) {
                baseConfigurationLocation = Main.buildURL(baseLocation, true);
            }
            if (baseConfigurationLocation == null) {
                try {
                    baseConfigurationLocation = new URL(this.getInstallLocation(), CONFIG_DIR);
                }
                catch (MalformedURLException malformedURLException) {}
            }
            if ((baseConfiguration = this.loadConfiguration(baseConfigurationLocation)) != null) {
                String location = baseConfiguration.getProperty(PROP_CONFIG_AREA);
                if (location != null) {
                    System.getProperties().put(PROP_CONFIG_AREA, location);
                }
                if ((location = baseConfiguration.getProperty(PROP_INSTALL_AREA)) != null && System.getProperty(PROP_INSTALL_AREA) == null) {
                    System.getProperties().put(PROP_INSTALL_AREA, location);
                }
            }
        }
        if ((configuration = baseConfiguration) == null || !this.getConfigurationLocation().equals(baseConfigurationLocation)) {
            configuration = this.loadConfiguration(this.getConfigurationLocation());
        }
        this.mergeProperties(System.getProperties(), configuration, null);
        if ("false".equalsIgnoreCase(System.getProperty(PROP_CONFIG_CASCADED))) {
            System.getProperties().remove(PROP_SHARED_CONFIG_AREA);
        } else {
            this.ensureAbsolute(PROP_SHARED_CONFIG_AREA);
            URL sharedConfigURL = this.buildLocation(PROP_SHARED_CONFIG_AREA, null, "");
            if (sharedConfigURL == null) {
                try {
                    sharedConfigURL = new URL(this.getInstallLocation(), CONFIG_DIR);
                }
                catch (MalformedURLException malformedURLException) {}
            }
            if (sharedConfigURL != null) {
                if (sharedConfigURL.equals(this.getConfigurationLocation())) {
                    System.getProperties().remove(PROP_SHARED_CONFIG_AREA);
                } else {
                    Properties sharedConfiguration = baseConfiguration;
                    if (!sharedConfigURL.equals(baseConfigurationLocation)) {
                        sharedConfiguration = this.loadConfiguration(sharedConfigURL);
                    }
                    this.mergeProperties(System.getProperties(), sharedConfiguration, configuration);
                    System.getProperties().put(PROP_SHARED_CONFIG_AREA, sharedConfigURL.toExternalForm());
                    if (this.debug) {
                        System.out.println("Shared configuration location:\n    " + sharedConfigURL.toExternalForm());
                    }
                }
            }
        }
        String urlString = System.getProperty(PROP_FRAMEWORK, null);
        if (urlString != null) {
            urlString = this.resolve(urlString);
            this.getInstallLocation();
            URL url = Main.buildURL(urlString, true);
            urlString = url.toExternalForm();
            System.getProperties().put(PROP_FRAMEWORK, urlString);
            this.bootLocation = urlString;
        }
    }

    private void ensureAbsolute(String locationProperty) {
        String propertyValue = System.getProperty(locationProperty);
        if (propertyValue == null) {
            return;
        }
        URL locationURL = null;
        try {
            locationURL = new URL(propertyValue);
        }
        catch (MalformedURLException malformedURLException) {
            return;
        }
        String locationPath = locationURL.getPath();
        if (locationPath.startsWith("/")) {
            return;
        }
        URL installURL = this.getInstallLocation();
        if (!locationURL.getProtocol().equals(installURL.getProtocol())) {
            return;
        }
        try {
            URL absoluteURL = new URL(installURL, locationPath);
            System.getProperties().put(locationProperty, absoluteURL.toExternalForm());
        }
        catch (MalformedURLException malformedURLException) {}
    }

    private URL getInstallLocation() {
        if (this.installLocation != null) {
            return this.installLocation;
        }
        String installArea = System.getProperty(PROP_INSTALL_AREA);
        if (installArea != null) {
            this.installLocation = Main.buildURL(installArea, true);
            if (this.installLocation == null) {
                throw new IllegalStateException("Install location is invalid: " + installArea);
            }
            System.getProperties().put(PROP_INSTALL_AREA, this.installLocation.toExternalForm());
            if (this.debug) {
                System.out.println("Install location:\n    " + this.installLocation);
            }
            return this.installLocation;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.launcher.Main");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ProtectionDomain domain = clazz.getProtectionDomain();
        CodeSource source = null;
        URL result = null;
        if (domain != null) {
            source = domain.getCodeSource();
        }
        if (source == null || domain == null) {
            if (this.debug) {
                System.out.println("CodeSource location is null. Defaulting the install location to file:startup.jar");
            }
            try {
                result = new URL("file:startup.jar");
            }
            catch (MalformedURLException malformedURLException) {}
        }
        if (source != null) {
            result = source.getLocation();
        }
        String path = this.decode(result.getFile());
        File file = new File(path);
        path = file.toString().replace('\\', '/');
        if (File.separatorChar == '\\' && Character.isUpperCase(path.charAt(0))) {
            char[] chars = path.toCharArray();
            chars[0] = Character.toLowerCase(chars[0]);
            path = new String(chars);
        }
        if (path.toLowerCase().endsWith(".jar")) {
            path = path.substring(0, path.lastIndexOf("/") + 1);
        }
        if (path.toLowerCase().endsWith("/plugins/")) {
            path = path.substring(0, path.length() - "/plugins/".length());
        }
        try {
            try {
                path = new File(path).toURL().getFile();
            }
            catch (MalformedURLException malformedURLException) {}
            this.installLocation = new URL(result.getProtocol(), result.getHost(), result.getPort(), path);
            System.getProperties().put(PROP_INSTALL_AREA, this.installLocation.toExternalForm());
        }
        catch (MalformedURLException malformedURLException) {}
        if (this.debug) {
            System.out.println("Install location:\n    " + this.installLocation);
        }
        return this.installLocation;
    }

    private Properties loadConfiguration(URL url) {
        Properties result;
        block6: {
            result = null;
            try {
                url = new URL(url, CONFIG_FILE);
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
            try {
                if (this.debug) {
                    System.out.print("Configuration file:\n    " + url.toString());
                }
                result = this.loadProperties(url);
                if (this.debug) {
                    System.out.println(" loaded");
                }
            }
            catch (IOException iOException) {
                if (!this.debug) break block6;
                System.out.println(" not found or not read");
            }
        }
        return result;
    }

    private Properties loadProperties(URL url) throws IOException {
        if (url == null) {
            return null;
        }
        Properties result = null;
        IOException originalException = null;
        try {
            result = this.load(url, null);
        }
        catch (IOException e1) {
            originalException = e1;
            try {
                result = this.load(url, CONFIG_FILE_TEMP_SUFFIX);
            }
            catch (IOException iOException) {
                try {
                    result = this.load(url, CONFIG_FILE_BAK_SUFFIX);
                }
                catch (IOException iOException2) {
                    throw originalException;
                }
            }
        }
        return result;
    }

    private Properties load(URL url, String suffix) throws IOException {
        if (suffix != null && !suffix.equals("")) {
            url = new URL(url.getProtocol(), url.getHost(), url.getPort(), String.valueOf(url.getFile()) + suffix);
        }
        Properties props = new Properties();
        InputStream is = null;
        try {
            is = url.openStream();
            props.load(is);
        }
        catch (Throwable throwable) {
            if (is != null) {
                try {
                    is.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (is != null) {
            try {
                is.close();
            }
            catch (IOException iOException) {}
        }
        return props;
    }

    private void handleSplash(URL[] defaultPath) {
        if (this.initialize || this.splashDown || this.bridge == null) {
            this.showSplash = false;
            this.endSplash = null;
            return;
        }
        if (this.showSplash || this.endSplash != null) {
            try {
                Runtime.getRuntime().addShutdownHook(this.splashHandler);
            }
            catch (Throwable throwable) {}
        }
        if (this.endSplash != null) {
            this.showSplash = false;
            return;
        }
        if (!this.showSplash) {
            return;
        }
        this.splashLocation = this.getSplashLocation(defaultPath);
        if (this.debug) {
            System.out.println("Splash location:\n    " + this.splashLocation);
        }
        if (this.splashLocation == null) {
            return;
        }
        this.bridge.setLauncherInfo(System.getProperty(PROP_LAUNCHER), System.getProperty(PROP_LAUNCHER_NAME));
        this.bridge.showSplash(this.splashLocation);
        long handle = this.bridge.getSplashHandle();
        if (handle != 0L && handle != -1L) {
            System.getProperties().put(SPLASH_HANDLE, String.valueOf(handle));
            System.getProperties().put(SPLASH_LOCATION, this.splashLocation);
            this.bridge.updateSplash();
        } else {
            this.splashDown = true;
        }
    }

    protected void takeDownSplash() {
        if (this.splashDown || this.bridge == null) {
            return;
        }
        this.splashDown = this.bridge.takeDownSplash();
        System.getProperties().remove(SPLASH_HANDLE);
        try {
            Runtime.getRuntime().removeShutdownHook(this.splashHandler);
        }
        catch (Throwable throwable) {}
    }

    private String getSplashLocation(URL[] bootPath) {
        if (this.splashLocation != null && !Character.isDigit(this.splashLocation.charAt(0)) && new File(this.splashLocation).exists()) {
            System.getProperties().put(PROP_SPLASHLOCATION, this.splashLocation);
            return this.splashLocation;
        }
        String result = System.getProperty(PROP_SPLASHLOCATION);
        if (result != null) {
            return result;
        }
        String splashPath = System.getProperty(PROP_SPLASHPATH);
        if (splashPath != null) {
            String[] entries = this.getArrayFromList(splashPath);
            ArrayList<String> path = new ArrayList<String>(entries.length);
            int i = 0;
            while (i < entries.length) {
                String entry = this.resolve(entries[i]);
                if (entry != null && entry.startsWith(FILE_SCHEME)) {
                    File entryFile = new File(entry.substring(5).replace('/', File.separatorChar));
                    if ((entry = this.searchFor(entryFile.getName(), entryFile.getParent())) != null) {
                        path.add(entry);
                    }
                } else {
                    this.log("Invalid splash path entry: " + entries[i]);
                }
                ++i;
            }
            result = this.searchForSplash(path.toArray(new String[path.size()]));
            if (result != null) {
                System.getProperties().put(PROP_SPLASHLOCATION, result);
                return result;
            }
        }
        return result;
    }

    private String searchForSplash(String[] searchPath) {
        if (searchPath == null) {
            return null;
        }
        String locale = (String)System.getProperties().get(PROP_NL);
        if (locale == null) {
            locale = Locale.getDefault().toString();
        }
        String[] nlVariants = Main.buildNLVariants(locale);
        int i = 0;
        while (i < nlVariants.length) {
            int j = 0;
            while (j < searchPath.length) {
                Object result;
                String path = searchPath[j];
                if (path.startsWith(FILE_SCHEME)) {
                    path = path.substring(5);
                }
                if (this.isJAR(path)) {
                    result = this.extractFromJAR(path, nlVariants[i]);
                    if (result != null) {
                        return result;
                    }
                } else {
                    if (!path.endsWith(File.separator)) {
                        path = String.valueOf(path) + File.separator;
                    }
                    if (((File)(result = new File(path = String.valueOf(path) + nlVariants[i]))).exists()) {
                        return ((File)result).getAbsolutePath();
                    }
                }
                ++j;
            }
            ++i;
        }
        return null;
    }

    /*
     * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void transferStreams(InputStream source, OutputStream destination) {
        byte[] buffer = new byte[8096];
        while (true) {
            int bytesRead;
            try {
                bytesRead = -1;
                try {
                    bytesRead = source.read(buffer);
                }
                catch (IOException iOException) {
                    try {
                        try {
                            source.close();
                        }
                        catch (IOException iOException2) {
                            try {
                                destination.close();
                                return;
                            }
                            catch (IOException iOException3) {
                                return;
                            }
                        }
                    }
                    catch (Throwable throwable) {
                        try {
                            destination.close();
                            throw throwable;
                        }
                        catch (IOException iOException4) {}
                        throw throwable;
                    }
                    try {
                        destination.close();
                        return;
                    }
                    catch (IOException iOException5) {}
                    return;
                }
            }
            catch (Throwable throwable) {
                try {
                    try {
                        source.close();
                    }
                    catch (IOException iOException) {
                        try {
                            destination.close();
                            throw throwable;
                        }
                        catch (IOException iOException6) {
                            throw throwable;
                        }
                    }
                }
                catch (Throwable throwable2) {
                    try {
                        destination.close();
                        throw throwable2;
                    }
                    catch (IOException iOException) {}
                    throw throwable2;
                }
                try {
                    destination.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            {
                if (bytesRead == -1) break;
                try {
                    destination.write(buffer, 0, bytesRead);
                }
                catch (IOException iOException) {
                    try {
                        try {
                            source.close();
                        }
                        catch (IOException iOException7) {
                            try {
                                destination.close();
                                return;
                            }
                            catch (IOException iOException8) {
                                return;
                            }
                        }
                    }
                    catch (Throwable throwable) {
                        try {
                            destination.close();
                            throw throwable;
                        }
                        catch (IOException iOException9) {}
                        throw throwable;
                    }
                    try {
                        destination.close();
                        return;
                    }
                    catch (IOException iOException10) {}
                    return;
                }
            }
        }
        try {
            try {
                source.close();
            }
            catch (IOException iOException) {
                try {
                    destination.close();
                    return;
                }
                catch (IOException iOException11) {
                    return;
                }
            }
        }
        catch (Throwable throwable) {
            try {
                destination.close();
                throw throwable;
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            destination.close();
            return;
        }
        catch (IOException iOException) {}
    }

    private String extractFromJAR(String jarPath, String jarEntry) {
        BufferedOutputStream output;
        ZipFile file;
        String configLocation = System.getProperty(PROP_CONFIG_AREA);
        if (configLocation == null) {
            this.log("Configuration area not set yet. Unable to extract " + jarEntry + " from JAR'd plug-in: " + jarPath);
            return null;
        }
        URL configURL = Main.buildURL(configLocation, false);
        if (configURL == null) {
            return null;
        }
        File splash = new File(configURL.getPath(), PLUGIN_ID);
        File jarFile = new File(jarPath);
        String cache = jarFile.getName();
        if (cache.endsWith(".jar")) {
            cache = cache.substring(0, cache.length() - 4);
        }
        splash = new File(splash, cache);
        if ((splash = new File(splash, jarEntry)).exists()) {
            boolean clean = false;
            int i = 0;
            while (i < this.commands.length) {
                if (CLEAN.equalsIgnoreCase(this.commands[i])) {
                    clean = true;
                    splash.delete();
                    break;
                }
                ++i;
            }
            if (!clean) {
                return splash.getAbsolutePath();
            }
        }
        try {
            file = new ZipFile(jarPath);
        }
        catch (IOException e) {
            this.log("Exception looking for " + jarEntry + " in JAR file: " + jarPath);
            this.log(e);
            return null;
        }
        ZipEntry entry = file.getEntry(jarEntry.replace(File.separatorChar, '/'));
        if (entry == null) {
            return null;
        }
        InputStream input = null;
        try {
            input = file.getInputStream(entry);
        }
        catch (IOException e) {
            this.log("Exception opening splash: " + entry.getName() + " in JAR file: " + jarPath);
            this.log(e);
            return null;
        }
        new File(splash.getParent()).mkdirs();
        try {
            output = new BufferedOutputStream(new FileOutputStream(splash));
        }
        catch (FileNotFoundException fileNotFoundException) {
            try {
                input.close();
            }
            catch (IOException iOException) {}
            return null;
        }
        Main.transferStreams(input, output);
        return splash.exists() ? splash.getAbsolutePath() : null;
    }

    private boolean isJAR(String path) {
        return new File(path).isFile();
    }

    private static String[] buildNLVariants(String locale) {
        String nl = locale;
        ArrayList<String> result = new ArrayList<String>(4);
        while (true) {
            result.add("nl" + File.separatorChar + nl.replace('_', File.separatorChar) + File.separatorChar + SPLASH_IMAGE);
            int lastSeparator = nl.lastIndexOf(95);
            if (lastSeparator == -1) break;
            nl = nl.substring(0, lastSeparator);
        }
        result.add(SPLASH_IMAGE);
        return result.toArray(new String[result.size()]);
    }

    private String resolve(String urlString) {
        if (urlString.startsWith(REFERENCE_SCHEME)) {
            urlString = urlString.substring(10);
        }
        if (urlString.startsWith(PLATFORM_URL)) {
            String path = urlString.substring(PLATFORM_URL.length());
            return this.getInstallLocation() + path;
        }
        return urlString;
    }

    protected synchronized void log(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            try {
                this.openLogFile();
                try {
                    if (this.newSession) {
                        this.log.write(SESSION);
                        this.log.write(32);
                        String timestamp = new Date().toString();
                        this.log.write(timestamp);
                        this.log.write(32);
                        int i = SESSION.length() + timestamp.length();
                        while (i < 78) {
                            this.log.write(45);
                            ++i;
                        }
                        this.log.newLine();
                        this.newSession = false;
                    }
                    this.write(obj);
                }
                finally {
                    if (this.logFile == null) {
                        if (this.log != null) {
                            this.log.flush();
                        }
                    } else {
                        this.closeLogFile();
                    }
                }
            }
            catch (Exception e) {
                System.err.println("An exception occurred while writing to the platform log:");
                e.printStackTrace(System.err);
                System.err.println("Logging to the console instead.");
                try {
                    this.log = this.logForStream(System.err);
                    this.write(obj);
                    this.log.flush();
                }
                catch (Exception e2) {
                    System.err.println("An exception occurred while logging to the console:");
                    e2.printStackTrace(System.err);
                }
                this.log = null;
            }
        }
        finally {
            this.log = null;
        }
    }

    private void write(Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof Throwable) {
            this.log.write(STACK);
            this.log.newLine();
            ((Throwable)obj).printStackTrace(new PrintWriter(this.log));
        } else {
            this.log.write(ENTRY);
            this.log.write(32);
            this.log.write(PLUGIN_ID);
            this.log.write(32);
            this.log.write(String.valueOf(4));
            this.log.write(32);
            this.log.write(String.valueOf(0));
            this.log.write(32);
            this.log.write(this.getDate(new Date()));
            this.log.newLine();
            this.log.write(MESSAGE);
            this.log.write(32);
            this.log.write(String.valueOf(obj));
        }
        this.log.newLine();
    }

    protected String getDate(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        StringBuffer sb = new StringBuffer();
        this.appendPaddedInt(c.get(1), 4, sb).append('-');
        this.appendPaddedInt(c.get(2) + 1, 2, sb).append('-');
        this.appendPaddedInt(c.get(5), 2, sb).append(' ');
        this.appendPaddedInt(c.get(11), 2, sb).append(':');
        this.appendPaddedInt(c.get(12), 2, sb).append(':');
        this.appendPaddedInt(c.get(13), 2, sb).append('.');
        this.appendPaddedInt(c.get(14), 3, sb);
        return sb.toString();
    }

    /*
     * Unable to fully structure code
     */
    private StringBuffer appendPaddedInt(int value, int pad, StringBuffer buffer) {
        if (--pad == 0) {
            return buffer.append(Integer.toString(value));
        }
        padding = (int)Math.pow(10.0, pad);
        if (value < padding) ** GOTO lbl9
        return buffer.append(Integer.toString(value));
lbl-1000:
        // 1 sources

        {
            buffer.append('0');
            padding /= 10;
lbl9:
            // 2 sources

            ** while (padding > value && padding > 1)
        }
lbl10:
        // 1 sources

        buffer.append(value);
        return buffer;
    }

    private void computeLogFileLocation() {
        String logFileProp = System.getProperty(PROP_LOGFILE);
        if (logFileProp != null) {
            if (this.logFile == null || !logFileProp.equals(this.logFile.getAbsolutePath())) {
                this.logFile = new File(logFileProp);
                new File(this.logFile.getParent()).mkdirs();
            }
            return;
        }
        URL base = Main.buildURL(System.getProperty(PROP_CONFIG_AREA), false);
        if (base == null) {
            return;
        }
        this.logFile = new File(base.getPath(), String.valueOf(Long.toString(System.currentTimeMillis())) + ".log");
        new File(this.logFile.getParent()).mkdirs();
        System.getProperties().put(PROP_LOGFILE, this.logFile.getAbsolutePath());
    }

    private int hexToByte(byte b) {
        switch (b) {
            case 48: {
                return 0;
            }
            case 49: {
                return 1;
            }
            case 50: {
                return 2;
            }
            case 51: {
                return 3;
            }
            case 52: {
                return 4;
            }
            case 53: {
                return 5;
            }
            case 54: {
                return 6;
            }
            case 55: {
                return 7;
            }
            case 56: {
                return 8;
            }
            case 57: {
                return 9;
            }
            case 65: 
            case 97: {
                return 10;
            }
            case 66: 
            case 98: {
                return 11;
            }
            case 67: 
            case 99: {
                return 12;
            }
            case 68: 
            case 100: {
                return 13;
            }
            case 69: 
            case 101: {
                return 14;
            }
            case 70: 
            case 102: {
                return 15;
            }
        }
        throw new IllegalArgumentException("Switch error decoding URL");
    }

    private void openLogFile() throws IOException {
        this.computeLogFileLocation();
        try {
            this.log = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(this.logFile.getAbsolutePath(), true), "UTF-8"));
        }
        catch (IOException e) {
            this.logFile = null;
            throw e;
        }
    }

    private BufferedWriter logForStream(OutputStream output) {
        try {
            return new BufferedWriter(new OutputStreamWriter(output, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new BufferedWriter(new OutputStreamWriter(output));
        }
    }

    private void closeLogFile() throws IOException {
        try {
            if (this.log != null) {
                this.log.flush();
                this.log.close();
            }
        }
        finally {
            this.log = null;
        }
    }

    private void mergeProperties(Properties destination, Properties source, Properties userConfiguration) {
        if (destination == null || source == null) {
            return;
        }
        Enumeration e = source.keys();
        while (e.hasMoreElements()) {
            String key = (String)e.nextElement();
            if (key.equals(PROP_CLASSPATH)) {
                String destinationClasspath = destination.getProperty(PROP_CLASSPATH);
                String sourceClasspath = source.getProperty(PROP_CLASSPATH);
                destinationClasspath = destinationClasspath == null ? sourceClasspath : String.valueOf(destinationClasspath) + sourceClasspath;
                destination.put(PROP_CLASSPATH, destinationClasspath);
                continue;
            }
            String value = source.getProperty(key);
            if (userConfiguration != null && !key.endsWith(".override.user")) {
                boolean shouldOverride;
                String overrideKey = String.valueOf(key) + ".override.user";
                boolean bl = shouldOverride = destination.getProperty(overrideKey) != null || source.getProperty(overrideKey) != null;
                if (shouldOverride && !userConfiguration.contains(key)) {
                    destination.put(key, value);
                    continue;
                }
            }
            if (destination.getProperty(key) != null) continue;
            destination.put(key, value);
        }
    }

    private void setupVMProperties() {
        if (this.vm != null) {
            System.getProperties().put(PROP_VM, this.vm);
        }
        this.setMultiValueProperty(PROP_VMARGS, this.vmargs);
        this.setMultiValueProperty(PROP_COMMANDS, this.commands);
    }

    private void setMultiValueProperty(String property, String[] value) {
        if (value != null) {
            StringBuffer result = new StringBuffer(300);
            int i = 0;
            while (i < value.length) {
                if (value[i] != null) {
                    result.append(value[i]);
                    result.append('\n');
                }
                ++i;
            }
            System.getProperties().put(property, result.toString());
        }
    }

    private class EclipsePolicy
    extends Policy {
        private Policy policy;
        private URL[] urls;
        private PermissionCollection allPermissions;
        Permission allPermission = new AllPermission();

        EclipsePolicy(Policy policy, URL[] urls) {
            this.policy = policy;
            this.urls = urls;
            this.allPermissions = new PermissionCollection(this){
                private static final long serialVersionUID = 3258131349494708277L;
                final /* synthetic */ EclipsePolicy this$1;
                {
                    this.this$1 = eclipsePolicy;
                }

                public void add(Permission permission) {
                }

                public boolean implies(Permission permission) {
                    return true;
                }

                public Enumeration elements() {
                    return new Enumeration(this){
                        int cur;
                        final /* synthetic */ 1 this$2;
                        {
                            this.this$2 = var1_1;
                            this.cur = 0;
                        }

                        public boolean hasMoreElements() {
                            return this.cur < 1;
                        }

                        public Object nextElement() {
                            if (this.cur == 0) {
                                this.cur = 1;
                                return 1.access$0(this.this$2).allPermission;
                            }
                            throw new NoSuchElementException();
                        }
                    };
                }

                static /* synthetic */ EclipsePolicy access$0(1 var0) {
                    return var0.this$1;
                }
            };
        }

        public PermissionCollection getPermissions(CodeSource codesource) {
            if (this.contains(codesource)) {
                return this.allPermissions;
            }
            return this.policy == null ? this.allPermissions : this.policy.getPermissions(codesource);
        }

        public PermissionCollection getPermissions(ProtectionDomain domain) {
            if (this.contains(domain.getCodeSource())) {
                return this.allPermissions;
            }
            return this.policy == null ? this.allPermissions : this.policy.getPermissions(domain);
        }

        public boolean implies(ProtectionDomain domain, Permission permission) {
            if (this.contains(domain.getCodeSource())) {
                return true;
            }
            return this.policy == null ? true : this.policy.implies(domain, permission);
        }

        public void refresh() {
            if (this.policy != null) {
                this.policy.refresh();
            }
        }

        private boolean contains(CodeSource codeSource) {
            if (codeSource == null) {
                return false;
            }
            URL url = codeSource.getLocation();
            if (url == null) {
                return false;
            }
            int i = 0;
            while (i < this.urls.length) {
                if (this.urls[i] == url) {
                    return true;
                }
                ++i;
            }
            return false;
        }
    }

    static class Identifier {
        private static final String DELIM = ". _-";
        private int major;
        private int minor;
        private int service;

        Identifier(int major, int minor, int service) {
            this.major = major;
            this.minor = minor;
            this.service = service;
        }

        Identifier(String versionString) {
            StringTokenizer tokenizer = new StringTokenizer(versionString, DELIM);
            if (tokenizer.hasMoreTokens()) {
                this.major = Integer.parseInt(tokenizer.nextToken());
            }
            if (tokenizer.hasMoreTokens()) {
                this.minor = Integer.parseInt(tokenizer.nextToken());
            }
            try {
                if (tokenizer.hasMoreTokens()) {
                    this.service = Integer.parseInt(tokenizer.nextToken());
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }

        boolean isGreaterEqualTo(Identifier minimum) {
            if (this.major < minimum.major) {
                return false;
            }
            if (this.major > minimum.major) {
                return true;
            }
            if (this.minor < minimum.minor) {
                return false;
            }
            if (this.minor > minimum.minor) {
                return true;
            }
            return this.service >= minimum.service;
        }
    }

    public final class SplashHandler
    extends Thread {
        public void run() {
            Main.this.takeDownSplash();
        }

        public void updateSplash() {
            if (Main.this.bridge != null && !Main.this.splashDown) {
                Main.this.bridge.updateSplash();
            }
        }
    }

    private class StartupClassLoader
    extends URLClassLoader {
        public StartupClassLoader(URL[] urls) {
            super(urls);
        }

        public StartupClassLoader(URL[] urls, ClassLoader parent) {
            super(urls, parent);
        }

        public StartupClassLoader(URL[] urls, ClassLoader parent, URLStreamHandlerFactory factory) {
            super(urls, parent, factory);
        }

        protected String findLibrary(String name) {
            if (Main.this.extensionPaths == null) {
                return super.findLibrary(name);
            }
            String libName = System.mapLibraryName(name);
            int i = 0;
            while (i < Main.this.extensionPaths.length) {
                File libFile = new File(Main.this.extensionPaths[i], libName);
                if (libFile.isFile()) {
                    return libFile.getAbsolutePath();
                }
                ++i;
            }
            return super.findLibrary(name);
        }
    }
}

