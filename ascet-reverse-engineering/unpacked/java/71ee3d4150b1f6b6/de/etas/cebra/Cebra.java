/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra;

import de.etas.cebra.CebraSecurityManager;
import de.etas.cebra.scripts.EventScheduler;
import de.etas.cebra.scripts.EventScript;
import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.cebra.socket.CebraServer;
import de.etas.cebra.socket.CebraServerSocket;
import de.etas.cebra.socket.ClassMethodCall;
import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.socket.ServerScript;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolEntry;
import de.etas.cebra.view.CebraMainView;
import de.etas.multitasking.MessageBox;
import de.etas.types.Identifiable;
import de.etas.types.Set;
import de.etas.util.EtasGeneralDll;
import de.etas.util.IniFile;
import de.etas.util.LogFile;
import de.etas.util.Utilities;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;

public final class Cebra {
    private static long globalID = 0L;
    private static Hashtable listOfClasses = new Hashtable();
    private static MessageBox messageBox = new MessageBox();
    private static IniFile iniFile = null;
    private static IniFile defaultIniFile = null;
    public static String cebraLogPath = null;
    public static String cebraConfigPath = null;
    public static String cebraPrgPath = null;
    public static String cebraSharedPath = null;
    public static final String cebraConfigFileExtension = "ccf";
    public static String FS = System.getProperty("file.separator");
    public static String PS = System.getProperty("path.separator");
    public static String LF = System.getProperty("line.separator");
    public static String BIN = ".bin";
    public static boolean debug = false;
    public static boolean visible = false;
    private static LogFile commonLogFile = null;
    public static LogFile startupLogFile = null;
    public static final String registeredClassesName = "Registered Classes";
    private static CebraServerSocket cebraServerSocket;
    public static boolean initialized;

    static {
        initialized = false;
    }

    private Cebra() {
    }

    public static final synchronized void addClassNameAlias(String alias, Class clazz) {
        if (listOfClasses.containsKey(alias)) {
            Cebra.println("Warning: Class " + alias + " was used more the one time.");
        }
        listOfClasses.put(alias, clazz);
    }

    public static final void addClassPathToDefaultIniFile(String path) {
        if (defaultIniFile == null) {
            return;
        }
        String classPath = defaultIniFile.getItemFromSection("classPath", "java");
        if (classPath == null || classPath.length() == 0) {
            classPath = path;
        } else {
            String[] paths = Utilities.getStrings(classPath, 59);
            if (!Utilities.contains(paths, path)) {
                classPath = String.valueOf(classPath) + ";" + path;
            }
        }
        defaultIniFile.putItemToSection("classPath", "java", classPath);
        defaultIniFile.save();
    }

    public static String cebraIniFile() {
        return "cebra.ini";
    }

    public static final void closeConsole() {
        if (CebraMainView.cmv() != null) {
            CebraMainView.cmv().close();
        }
    }

    public static final void closeTool(String toolName) {
        long timeOut = Cebra.getShutDownTimeOut();
        ToolClient.shutDownToolClient(toolName, timeOut);
        String[] allRegisteredTools = ToolClient.getAllRegisteredTools();
        if (allRegisteredTools.length == 1 && allRegisteredTools[0].equals("undefined Tool Name")) {
            ToolClient.shutDownToolClient(allRegisteredTools[0], timeOut);
        }
        ServerScript serverScript = (ServerScript)Thread.currentThread();
        CebraServer.shutDownCebraServer(serverScript.getCebraServer(), false, timeOut);
    }

    public static void exit() {
        String[] tools = ToolClient.getAllRegisteredTools();
        int i = 0;
        while (i < tools.length) {
            ClientSender clientSender = ToolClient.initToolSocket(tools[i]);
            if (clientSender != null) {
                ClassMethodCall msg = new ClassMethodCall("SGPerformerClient", "shutDown", null);
                clientSender.sendMessage(msg.getMessage());
            }
            ++i;
        }
        System.exit(0);
    }

    public static final void exitConsole() {
        CebraMainView.cmv().exit();
    }

    public static final String getApplicationStartupPath(String tool, String prgID) {
        String pathOrFile = EtasGeneralDll.getCOMDLLPath(prgID);
        if (pathOrFile.length() == 0) {
            return System.getProperty("user.dir");
        }
        File f = new File(pathOrFile);
        if (f.isFile()) {
            pathOrFile = f.getParent();
        }
        do {
            if (!new File(String.valueOf((f = new File(pathOrFile)).getPath()) + FS + tool + BIN).exists()) continue;
            return f.getPath();
        } while ((pathOrFile = f.getParent()) != null);
        return System.getProperty("user.dir");
    }

    public static final synchronized Class getClassByName(String name) {
        if (name == null) {
            return null;
        }
        Class<?> ergeb = (Class<?>)listOfClasses.get(name);
        if (ergeb != null) {
            return ergeb;
        }
        try {
            ergeb = Class.forName(name);
        }
        catch (Exception exception) {
            return null;
        }
        return ergeb;
    }

    public static final String getDefaultHost() throws UnknownHostException {
        InetAddress address;
        try {
            address = InetAddress.getLocalHost();
        }
        catch (UnknownHostException unknownHostException) {
            address = InetAddress.getByName("127.0.0.1");
        }
        return Utilities.checkHostName(address.getHostAddress());
    }

    public static String getDefaultHost(String name) {
        if (defaultIniFile != null) {
            String host = defaultIniFile.getItemFromSection(name.toUpperCase(), "host");
            if (host == null) {
                try {
                    return Cebra.getDefaultHost();
                }
                catch (UnknownHostException unknownHostException) {
                    return null;
                }
            }
            return Utilities.checkHostName(host);
        }
        try {
            return Cebra.getDefaultHost();
        }
        catch (UnknownHostException unknownHostException) {
            return null;
        }
    }

    public static int getDefaultPort(String name) {
        if (defaultIniFile != null) {
            String port = defaultIniFile.getItemFromSection(name.toUpperCase(), "port");
            if (port == null) {
                return 30005;
            }
            return Integer.valueOf(port);
        }
        return 30005;
    }

    public static final int getDefaultServerPort() {
        String server;
        if (defaultIniFile != null && (server = defaultIniFile.getItemFromSection("SERVER", "port")) != null) {
            return Integer.valueOf(server);
        }
        return 30001;
    }

    public static final int getDefaultToolPort() {
        String server;
        if (defaultIniFile != null && (server = defaultIniFile.getItemFromSection("DEFAULT", "port")) != null) {
            return Integer.valueOf(server);
        }
        return 30005;
    }

    public static final String getItemFromSection(String item, String section) {
        if (iniFile == null) {
            return null;
        }
        return iniFile.getItemFromSection(item, section);
    }

    public static final Object getMessage(String name) {
        return messageBox.receiveMessage(name);
    }

    public static final synchronized void getNewIdentifier(Identifiable obj) {
        obj.setIdentifier(System.currentTimeMillis() + globalID++);
    }

    private static final Properties getSection(String section) {
        if (iniFile == null) {
            return null;
        }
        return iniFile.getSection(section);
    }

    public static final long getShutDownTimeOut() {
        String timeOut;
        if (defaultIniFile != null && (timeOut = defaultIniFile.getItemFromSection("TimeOut", "java")) != null) {
            return Integer.valueOf(timeOut).longValue();
        }
        return 1000L;
    }

    public static final void initCebra(boolean debug, boolean visible, String tool, String startupPath, String config, String classPath) {
        Cebra.initCebraToolIndependent(debug, visible, config, classPath);
        Cebra.initCebraToolDependent(tool, startupPath, false);
    }

    public static final void initCebraToolDependent(String toolName, String prgIdOrStartupPath, boolean automaticStart) {
        if (initialized) {
            return;
        }
        if (new File(prgIdOrStartupPath).isDirectory()) {
            EtasGeneralDll.registerApplication(toolName, prgIdOrStartupPath);
        } else {
            String startupPath = Cebra.getApplicationStartupPath(toolName, prgIdOrStartupPath);
            EtasGeneralDll.registerApplication(toolName, startupPath);
        }
        cebraSharedPath = EtasGeneralDll.getEtasSharedFilePath("Cebra");
        if (cebraSharedPath.length() == 0) {
            cebraSharedPath = System.getProperty("user.dir");
        }
        cebraConfigPath = (cebraConfigPath = EtasGeneralDll.getApplicationDataPath()).length() != 0 ? String.valueOf(cebraConfigPath) + "Cebra\\Configuration" : System.getProperty("user.dir");
        cebraPrgPath = EtasGeneralDll.getApplicationProgramPath();
        cebraPrgPath = cebraPrgPath.length() != 0 ? String.valueOf(cebraPrgPath) + "Cebra" : System.getProperty("user.dir");
        defaultIniFile = new IniFile(String.valueOf(cebraPrgPath) + FS + Cebra.cebraIniFile());
        startupLogFile.logMessage("Shared Path: " + cebraSharedPath);
        System.out.println("Shared File: " + cebraSharedPath);
        startupLogFile.logMessage("Program Path: " + cebraPrgPath);
        System.out.println("Program Path: " + cebraPrgPath);
        startupLogFile.logMessage("Data Path : " + cebraConfigPath);
        System.out.println("Data Path : " + cebraConfigPath);
        boolean localHost = true;
        String hostName = Cebra.getDefaultHost(toolName);
        if (hostName != null) {
            localHost = Utilities.isLocalHost(hostName);
        }
        if (localHost & automaticStart) {
            String arguments = defaultIniFile.getItemFromSection("arguments", "appstart");
            if (arguments == null) {
                arguments = "-ietas";
            }
            int timeout = defaultIniFile.getItemFromSection("timeout", "appstart") == null ? 450000 : Integer.valueOf(defaultIniFile.getItemFromSection("timeout", "appstart"));
            if (EtasGeneralDll.startApplication(EtasGeneralDll.getApplicationProgramPath(), toolName, arguments, timeout)) {
                startupLogFile.logMessage("Application Start: " + EtasGeneralDll.getApplicationProgramPath() + toolName + ".exe " + arguments + " (" + timeout + ")");
                System.out.println("Application Start: " + EtasGeneralDll.getApplicationProgramPath() + toolName + ".exe " + arguments + " (" + timeout + ")");
            }
        }
        initialized = true;
    }

    public static final void initCebraToolIndependent(boolean debug, boolean visible, String config, String classPath) {
        if (initialized) {
            return;
        }
        Cebra.debug = debug;
        LogFile.enableLogging(debug);
        Cebra.visible = visible;
        cebraLogPath = EtasGeneralDll.getEtasLogFilePath();
        if (cebraLogPath.length() != 0) {
            cebraLogPath = String.valueOf(cebraLogPath) + "Cebra";
            new File(cebraLogPath).mkdir();
        } else {
            cebraLogPath = System.getProperty("user.dir");
        }
        commonLogFile = new LogFile(String.valueOf(cebraLogPath) + FS + "CebraLog.log");
        startupLogFile = new LogFile(String.valueOf(cebraLogPath) + FS + "startupLog.log");
        if (config != null) {
            iniFile = new IniFile(config);
        }
        if (classPath != null) {
            Utilities.addToClassPath(classPath);
        }
        try {
            System.getProperties().save(new FileOutputStream(String.valueOf(cebraLogPath) + FS + "systemproperties.log"), "System properties at the start of cebra");
        }
        catch (IOException iOException) {}
        startupLogFile.logMessage("Log File: " + cebraLogPath);
        System.out.println("Log File: " + cebraLogPath);
    }

    private static void load() {
        if (iniFile == null) {
            iniFile = new IniFile("default.ccf");
        }
        Cebra.println("Loading Java options...");
        Cebra.loadJavaEntries();
        Cebra.println("done.");
        Cebra.println("Loading User options...");
        Cebra.loadUserEntries();
        Cebra.println("done.");
        Cebra.println("Loading Classes...");
        Cebra.loadClasses();
        Cebra.println("done.");
        Cebra.println("Loading Scripts...");
        Cebra.loadScripts();
        Cebra.println("done.");
        Cebra.println("Loading Events...");
        Cebra.loadEvents();
        Cebra.println("done.");
        Cebra.println("Loading Tools...");
        Cebra.loadTools();
        Cebra.println("done.");
        IniFile cebraIni = new IniFile(String.valueOf(cebraPrgPath) + FS + Cebra.cebraIniFile());
        cebraIni.putItemToSection("config", "user", iniFile.getName());
        cebraIni.save();
    }

    public static final synchronized void load(String fileName) {
        iniFile = new IniFile(fileName);
        Cebra.load();
    }

    private static final synchronized void loadClasses() {
        String klassenName = "";
        String pseudoName = "";
        Class<?> klasse = null;
        Properties scriptlist = iniFile.getSection("classes");
        if (scriptlist != null) {
            Enumeration pseudolist = scriptlist.keys();
            while (pseudolist.hasMoreElements()) {
                pseudoName = (String)pseudolist.nextElement();
                klassenName = scriptlist.getProperty(pseudoName);
                try {
                    klasse = null;
                    klasse = Class.forName(klassenName);
                }
                catch (ClassNotFoundException classNotFoundException) {
                    Cebra.println("Warning: Class " + pseudoName + " not found in " + klassenName + ".");
                }
                catch (Exception e) {
                    Cebra.println("Warning: Class " + pseudoName + " not found in " + klassenName + "." + LF + e);
                }
                if (klasse == null) continue;
                Cebra.addClassNameAlias(pseudoName, klasse);
            }
        } else {
            Cebra.println("No alias for classes defined.");
        }
    }

    private static final synchronized void loadEvents() {
        Properties prop = Cebra.getSection("events");
        if (prop != null) {
            Enumeration e = prop.keys();
            while (e.hasMoreElements()) {
                String scriptName;
                Script script;
                String code = (String)e.nextElement();
                int eventCode = -1;
                try {
                    eventCode = Integer.parseInt(code);
                }
                catch (Exception exception) {
                    eventCode = -1;
                }
                if (eventCode <= 0 || (script = Script.getScriptByName(scriptName = prop.getProperty(code))) == null || !EventScript.isEventScriptClass(script.getClass())) continue;
                EventScheduler.registerEvent(eventCode, (EventScript)script);
            }
        }
    }

    private static final synchronized void loadJavaEntries() {
        String newPath = iniFile.getItemFromSection("path", "java");
        if (newPath != null) {
            Utilities.addToClassPath(newPath);
        }
    }

    private static final synchronized void loadScripts() {
        String klassenName = "";
        String pseudoName = "";
        String sampleTime = "";
        Properties scriptlist = Cebra.getSection("scripts");
        Properties periodiclist = Cebra.getSection("periodic");
        if (scriptlist != null) {
            if (periodiclist == null) {
                periodiclist = new Properties();
            }
            Enumeration pseudolist = scriptlist.keys();
            while (pseudolist.hasMoreElements()) {
                pseudoName = (String)pseudolist.nextElement();
                klassenName = scriptlist.getProperty(pseudoName);
                Script s = ScriptScheduler.registerScript(pseudoName, klassenName, true);
                s.setStartup(ScriptScheduler.isStartupScript(pseudoName));
                sampleTime = periodiclist.getProperty(pseudoName);
                if (sampleTime == null) continue;
                try {
                    long t = Long.parseLong(sampleTime);
                    s.setSampleTime(t);
                    s.setPeriodic();
                }
                catch (Exception ex) {
                    Cebra.println(ex.toString());
                }
            }
        }
    }

    private static final synchronized void loadTools() {
        ToolEntry entry;
        String tool;
        Properties host = Cebra.getSection("host");
        Properties port = Cebra.getSection("port");
        Set regTools = new Set();
        if (host == null) {
            host = new Properties();
        }
        if (port == null) {
            port = new Properties();
        }
        Enumeration hostKeys = host.keys();
        while (hostKeys.hasMoreElements()) {
            tool = (String)hostKeys.nextElement();
            entry = new ToolEntry();
            entry.host0 = host.getProperty(tool);
            entry.port0 = port.getProperty(tool);
            if (!ToolClient.registerTool(tool, entry)) {
                Cebra.println("Could not register " + tool);
                continue;
            }
            regTools.add(tool);
        }
        Enumeration portKeys = port.keys();
        while (portKeys.hasMoreElements()) {
            tool = (String)portKeys.nextElement();
            if (regTools.contains(tool)) continue;
            entry = new ToolEntry();
            entry.host0 = null;
            entry.port0 = port.getProperty(tool);
            if (ToolClient.registerTool(tool, entry)) continue;
            Cebra.println("Could not register " + tool);
        }
    }

    private static final synchronized void loadUserEntries() {
        String sl = Cebra.getItemFromSection("startup", "user");
        ScriptScheduler.resetStartupScripts();
        if (sl != null) {
            StringTokenizer st = new StringTokenizer(sl, ";");
            int c = st.countTokens();
            int i = 0;
            while (i < c) {
                ScriptScheduler.addStartupScript(st.nextToken());
                ++i;
            }
        }
    }

    public static void main(String[] args) {
        if (!Cebra.readOptions(args)) {
            return;
        }
        if (visible) {
            Cebra.openConsole();
        }
        Cebra.println("*****************************************************************");
        Cebra.println("* CEBRA - Common Etas Backplane for Remote tool Access          *");
        Cebra.println("* Copyright by ETAS GmbH & Co. KG, Stuttgart, Germany, 1998-99  *");
        Cebra.println("*****************************************************************");
        Cebra.println("Reading configuration file");
        if (iniFile != null) {
            if (!iniFile.isInitialized()) {
                Cebra.println("Could not find " + iniFile.getName());
            } else {
                Cebra.load();
                Cebra.print("Setting up security control for Cebra...");
                Set hosts = new Set();
                Properties tools = Cebra.getSection("host");
                if (tools != null) {
                    Enumeration keys = tools.keys();
                    while (keys.hasMoreElements()) {
                        hosts.add((String)keys.nextElement());
                    }
                    String[] hostList = new String[hosts.size()];
                    int i = 0;
                    while (i < hosts.size()) {
                        try {
                            hostList[i] = InetAddress.getByName((String)hosts.elementAt(i)).getHostAddress();
                        }
                        catch (UnknownHostException unknownHostException) {
                            Cebra.println("Unknown host: " + (String)hosts.elementAt(i));
                        }
                        ++i;
                    }
                    CebraSecurityManager csm = new CebraSecurityManager();
                    csm.allowedHosts = hostList;
                }
                Cebra.println("done.");
            }
        }
        Cebra.startServer();
        Cebra.println("Starting CEBRA kernel.");
        ScriptScheduler.init();
    }

    public static final void openConsole() {
        CebraMainView.cmv().open();
    }

    public static final String pathForClass(Class clazz) {
        String clazzFile = String.valueOf(Utilities.changeToFilePath(clazz.getName())) + ".class";
        String[] clazzPath = Utilities.classPath();
        File fp = null;
        int i = 0;
        while (i < clazzPath.length) {
            fp = new File(String.valueOf(clazzPath[i]) + FS + clazzFile);
            if (fp.exists()) {
                return fp.getParent();
            }
            ++i;
        }
        return null;
    }

    public static final synchronized void print(int msg) {
        if (visible) {
            CebraMainView.cmv().print("" + msg);
        }
        try {
            commonLogFile.logMessage("" + msg);
        }
        catch (Throwable throwable) {}
    }

    public static final synchronized void print(String msg) {
        if (visible) {
            CebraMainView.cmv().print(msg);
        }
        try {
            commonLogFile.logMessage(msg);
        }
        catch (Throwable throwable) {}
    }

    public static final synchronized void println(int msg) {
        if (visible) {
            CebraMainView.cmv().println("" + msg);
        }
        try {
            commonLogFile.logMessage("" + msg);
        }
        catch (Throwable throwable) {}
    }

    public static final synchronized void println(String msg) {
        if (visible) {
            CebraMainView.cmv().println(msg);
        }
        try {
            commonLogFile.logMessage(msg);
        }
        catch (Throwable throwable) {}
    }

    public static final void putItemToSection(String item, String section, String value) {
        if (iniFile == null) {
            return;
        }
        iniFile.putItemToSection(item, section, value);
    }

    public static final void putMessage(String name, Object obj) {
        messageBox.sendMessage(name, obj);
    }

    private static boolean readOptions(String[] args) {
        boolean debug = false;
        boolean visible = false;
        String conf = null;
        String tool = "";
        String classPath = null;
        String startupPath = "";
        System.out.print("Program Arguments: ");
        int i = 0;
        while (i < args.length) {
            System.out.print(String.valueOf(args[i]) + " ");
            ++i;
        }
        System.out.println("");
        i = 0;
        while (i < args.length) {
            if (args[i].equalsIgnoreCase("-debug")) {
                debug = true;
            } else if (args[i].equalsIgnoreCase("-visible")) {
                visible = true;
            } else if (args[i].equalsIgnoreCase("-tool")) {
                if (++i < args.length) {
                    tool = args[i];
                }
            } else if (args[i].equalsIgnoreCase("-config")) {
                if (++i < args.length) {
                    conf = args[i];
                }
            } else if (args[i].equalsIgnoreCase("-classPath")) {
                if (++i < args.length) {
                    classPath = args[i];
                }
            } else if (args[i].equalsIgnoreCase("-startupPath") && ++i < args.length) {
                startupPath = args[i];
            }
            ++i;
        }
        Cebra.initCebra(debug, visible, tool, startupPath, conf, classPath);
        return true;
    }

    public static final Hashtable registeredScriptClasses() {
        Hashtable<String, Class> result = new Hashtable<String, Class>(3);
        Enumeration enumeration = listOfClasses.keys();
        while (enumeration.hasMoreElements()) {
            String clazzName = (String)enumeration.nextElement();
            Class clazz = (Class)listOfClasses.get(clazzName);
            if (!Script.isScriptClass(clazz)) continue;
            result.put(clazzName, clazz);
        }
        return result;
    }

    public static final synchronized void removeClassNameAlias(String alias) {
        if (!listOfClasses.containsKey(alias)) {
            Cebra.println("Warning: Class " + alias + " was used more the one time.");
        }
        listOfClasses.remove(alias);
    }

    public static final boolean removeClassPathFromDefaultIniFile(String path) {
        if (defaultIniFile == null) {
            return false;
        }
        String classPath = defaultIniFile.getItemFromSection("classPath", "java");
        if (classPath == null) {
            return false;
        }
        String[] paths = Utilities.getStrings(classPath, 59);
        if (!Utilities.contains(paths, path)) {
            return false;
        }
        Vector<String> newPaths = new Vector<String>();
        int i = 0;
        while (i < paths.length) {
            if (!paths[i].equals(path)) {
                newPaths.addElement(paths[i]);
            }
            ++i;
        }
        if (newPaths.size() == paths.length) {
            return false;
        }
        classPath = "";
        Enumeration enumeration = newPaths.elements();
        while (enumeration.hasMoreElements()) {
            classPath = classPath == "" ? (String)enumeration.nextElement() : String.valueOf(classPath) + ";" + (String)enumeration.nextElement();
        }
        defaultIniFile.putItemToSection("classPath", "java", classPath);
        defaultIniFile.save();
        return true;
    }

    public static final void save() {
        if (iniFile == null) {
            iniFile = new IniFile(String.valueOf(cebraConfigPath) + FS + "default." + cebraConfigFileExtension, false);
        }
        Cebra.saveJavaEntries();
        Cebra.saveUserEntries();
        Cebra.saveEvents();
        Cebra.saveClasses();
        Cebra.saveScripts();
        Cebra.saveTools();
        iniFile.save();
        IniFile cebraIni = new IniFile(String.valueOf(cebraPrgPath) + FS + Cebra.cebraIniFile());
        cebraIni.putItemToSection("config", "user", iniFile.getName());
        cebraIni.save();
    }

    public static final synchronized void save(String fileName) {
        if (fileName == null) {
            return;
        }
        if (iniFile == null) {
            iniFile = new IniFile(fileName, false);
        } else {
            iniFile.setName(fileName);
        }
        Cebra.save();
    }

    private static final synchronized void saveClasses() {
        Properties clazzes = new Properties();
        Enumeration enumeration = listOfClasses.keys();
        while (enumeration.hasMoreElements()) {
            String clazzName = (String)enumeration.nextElement();
            Class clazz = (Class)listOfClasses.get(clazzName);
            if (clazz == null) continue;
            clazzes.put(clazzName, clazz.getName());
        }
        iniFile.setSection("classes", clazzes);
    }

    private static final synchronized void saveEvents() {
    }

    private static final synchronized void saveJavaEntries() {
        Properties prop = iniFile.getSection("java");
        if (prop == null) {
            prop = new Properties();
        }
        prop.put("path", Utilities.userPath());
        iniFile.setSection("java", prop);
    }

    private static final synchronized void saveScripts() {
        String[] scripts = ScriptScheduler.registeredScripts();
        Properties prop = new Properties();
        Properties periodic = new Properties();
        int i = 0;
        while (i < scripts.length) {
            String script = scripts[i];
            prop.put(script, ScriptScheduler.registeredClass(scripts[i]));
            Script s = Script.getScriptByName(script);
            if (s != null && s.isPeriodic()) {
                periodic.put(script, "" + s.getSampleTime());
            }
            ++i;
        }
        iniFile.setSection("scripts", prop);
        iniFile.setSection("periodic", periodic);
    }

    private static final synchronized void saveTools() {
        Properties host = new Properties();
        Properties port = new Properties();
        String[] tools = ToolClient.getAllRegisteredTools();
        int i = 0;
        while (i < tools.length) {
            String tool = tools[i];
            ToolEntry entry = ToolClient.getEntryForTool(tool);
            if (entry.host0 != null) {
                host.put(tool, entry.host0);
            }
            if (entry.port0 != null) {
                port.put(tool, entry.port0);
            }
            ++i;
        }
        iniFile.setSection("host", host);
        iniFile.setSection("port", port);
    }

    private static final synchronized void saveUserEntries() {
        Properties prop = iniFile.getSection("user");
        if (prop == null) {
            prop = new Properties();
        }
        prop.put("startup", ScriptScheduler.startupScripts());
        iniFile.setSection("user", prop);
    }

    public static final void shutDown() {
        long timeOut = Cebra.getShutDownTimeOut();
        Cebra.save();
        Cebra.println("shutdown...");
        ScriptScheduler.stopAllThreads();
        ToolClient.shutDownAllToolClients(timeOut);
        cebraServerSocket.shutDown();
        CebraServer.shutDownAllCebraServers(true, timeOut);
        Cebra.println("done.");
    }

    public static final void startServer() {
        Cebra.print("Starting CEBRA server...");
        cebraServerSocket = new CebraServerSocket(Cebra.getDefaultServerPort());
        Cebra.println("done.");
    }
}

