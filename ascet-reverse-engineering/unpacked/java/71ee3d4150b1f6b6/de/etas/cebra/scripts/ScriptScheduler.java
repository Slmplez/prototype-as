/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.EventScript;
import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.Suspender;
import de.etas.multitasking.Semaphore;
import de.etas.types.Set;
import de.etas.util.LogFile;
import de.etas.util.Utilities;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class ScriptScheduler {
    private static Set listOfActiveScripts = new Set();
    private static Set listOfSuspendedScripts = new Set();
    private static StringBuffer startupScripts = new StringBuffer();
    private static Hashtable autoScripts = new Hashtable();
    private static Set listOfRemoteScripts = new Set();
    private static Set listOfScriptsWaitingOr = new Set();
    private static boolean isActive = false;
    private static LogFile lf = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + "Scheduler.log");
    private static Hashtable threadIDs = new Hashtable(19);
    static Class class$de$etas$cebra$scripts$ScriptScheduler;

    private ScriptScheduler() {
    }

    public static synchronized void addStartupScript(String name) {
        if (name == null) {
            return;
        }
        if (startupScripts.toString().indexOf(name) != -1) {
            return;
        }
        startupScripts.append(name);
        startupScripts.append(Cebra.PS);
    }

    static synchronized void executeEventScript(EventScript s) {
        Thread t = new Thread((Runnable)s, s.getName());
        t.setPriority(5);
        ScriptScheduler.storeThreadForScript(s, t);
        t.start();
    }

    static synchronized void executeScript(Script s, Script caller, boolean blocking) {
        if (!listOfActiveScripts.add(s)) {
            lf.logMessage("Script " + s + " is already activated.");
            return;
        }
        Thread t = new Thread((Runnable)s, s.getName());
        t.setPriority(5);
        ScriptScheduler.storeThreadForScript(s, t);
        t.start();
        lf.logMessage("Start " + s + Cebra.LF + "Class: " + s.getClass().getName());
        if (blocking) {
            if (ScriptScheduler.isDeadlockAnd(s, caller)) {
                lf.logMessage("Deadlock: " + caller + " waiting for " + s + "." + Cebra.LF + caller + " will not be blocked.");
                caller.release();
            } else {
                s.addScriptWaitingBlocked(caller);
            }
        }
        if (caller == null) {
            listOfRemoteScripts.add(s);
        } else {
            s.setStarter(caller);
        }
    }

    public static Thread[] getAllThreads() {
        Thread[] allThreads = new Thread[threadIDs.size()];
        int i = 0;
        Enumeration enumeration = threadIDs.elements();
        while (enumeration.hasMoreElements()) {
            allThreads[i] = (Thread)enumeration.nextElement();
            ++i;
        }
        return allThreads;
    }

    public static synchronized String[] getStartupScripts() {
        if (startupScripts == null) {
            ScriptScheduler.resetStartupScripts();
        }
        return Utilities.sepPath(startupScripts.toString(), false);
    }

    private static Thread getThreadForScript(Script s) {
        return (Thread)threadIDs.get(s);
    }

    public static void init() {
        Vector<String> obsolete = new Vector<String>();
        StringBuffer stringBuffer = startupScripts;
        synchronized (stringBuffer) {
            String[] scripts = ScriptScheduler.getStartupScripts();
            int i = 0;
            while (i < scripts.length) {
                Script s = Script.getScriptByName(scripts[i]);
                if (s == null) {
                    obsolete.addElement(scripts[i]);
                    Cebra.println("Could not load script " + scripts[i]);
                } else {
                    s.setStartup(true);
                    ScriptScheduler.executeScript(s, null, false);
                }
                ++i;
            }
        }
        int i = 0;
        while (i < obsolete.size()) {
            ScriptScheduler.removeStartupScript((String)obsolete.elementAt(i));
            ++i;
        }
    }

    private static boolean isDeadlockAnd(Script s1, Script s2) {
        if (!s2.isBlocked()) {
            return false;
        }
        Set direkt_s1 = new Set();
        Set depend_or = new Set();
        s1.allScriptsWaitingRecursive(direkt_s1);
        if (direkt_s1.contains(s2)) {
            return true;
        }
        Set nichtfrei_or = (Set)listOfScriptsWaitingOr.clone();
        int m = nichtfrei_or.size();
        int i = 0;
        while (i < m) {
            Script s = (Script)nichtfrei_or.elementAt(i);
            s.allScriptsWaitingRecursive(depend_or);
            ++i;
        }
        Set frei_s1 = listOfActiveScripts.minus(direkt_s1).minus(depend_or);
        int n = frei_s1.size();
        int n_alt = n - 1;
        while (n_alt != n) {
            Script s;
            m = nichtfrei_or.size();
            int i2 = 0;
            while (i2 < m) {
                s = (Script)nichtfrei_or.elementAt(i2);
                if (s.isFreeable(frei_s1)) {
                    nichtfrei_or.removeElement(s);
                }
                ++i2;
            }
            depend_or = new Set();
            m = nichtfrei_or.size();
            i2 = 0;
            while (i2 < m) {
                s = (Script)nichtfrei_or.elementAt(i2);
                s.allScriptsWaitingRecursive(depend_or);
                ++i2;
            }
            frei_s1 = listOfActiveScripts.minus(direkt_s1).minus(depend_or);
            n_alt = n;
            n = frei_s1.size();
        }
        return !frei_s1.contains(s2);
    }

    private static boolean isDeadlockOr(Script s1, Vector s2) {
        if (s2.size() == 0) {
            return false;
        }
        if (!listOfActiveScripts.contains(s2)) {
            return true;
        }
        int i = 0;
        while (i < s2.size()) {
            Script s = (Script)s2.elementAt(i);
            if (!s.isBlocked()) {
                return false;
            }
            ++i;
        }
        Set direkt_s1 = new Set();
        Set depend_or = new Set();
        s1.allScriptsWaitingRecursive(direkt_s1);
        if (direkt_s1.contains(s2)) {
            return true;
        }
        Set nichtfrei_or = (Set)listOfScriptsWaitingOr.clone();
        int m = nichtfrei_or.size();
        int i2 = 0;
        while (i2 < m) {
            Script s = (Script)nichtfrei_or.elementAt(i2);
            s.allScriptsWaitingRecursive(depend_or);
            ++i2;
        }
        Set frei_s1 = listOfActiveScripts.minus(direkt_s1).minus(depend_or);
        int n = frei_s1.size();
        int n_alt = n - 1;
        while (n_alt != n) {
            Script s;
            m = nichtfrei_or.size();
            int i3 = 0;
            while (i3 < m) {
                s = (Script)nichtfrei_or.elementAt(i3);
                if (s.isFreeable(frei_s1)) {
                    nichtfrei_or.removeElement(s);
                }
                ++i3;
            }
            depend_or = new Set();
            i3 = 0;
            while (i3 < m) {
                s = (Script)nichtfrei_or.elementAt(i3);
                s.allScriptsWaitingRecursive(depend_or);
                ++i3;
            }
            frei_s1 = listOfActiveScripts.minus(direkt_s1).minus(depend_or);
            n_alt = n;
            n = frei_s1.size();
        }
        return !frei_s1.containsOneElement(s2);
    }

    public static synchronized boolean isStartupScript(String name) {
        String[] scriptName = ScriptScheduler.getStartupScripts();
        int i = 0;
        while (i < scriptName.length) {
            if (scriptName[i].equals(name)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private static void notifyScriptsWaitingAnd(Script u) {
        Set list = u.getScriptsWaitingAnd();
        int n = list.size();
        int i = 0;
        while (i < n) {
            ((Script)list.elementAt(i)).releaseCounting();
            ++i;
        }
        u.resetScriptsWaitingAnd();
    }

    private static void notifyScriptsWaitingBlocked(Script u) {
        Set list = u.getScriptsWaitingBlocked();
        int n = list.size();
        int i = 0;
        while (i < n) {
            ((Script)list.elementAt(i)).release();
            ++i;
        }
        u.resetScriptsWaitingBlocked();
    }

    private static void notifyScriptsWaitingOr(Script u) {
        Set list = u.getScriptsWaitingOr();
        int n = list.size();
        int i = 0;
        while (i < n) {
            Script s = (Script)list.elementAt(i);
            listOfScriptsWaitingOr.removeElement(s);
            Set t = s.getWaitingList();
            int v = t.size();
            int j = 0;
            while (j < v) {
                Script w = (Script)t.elementAt(j);
                if (w != u) {
                    w.removeScriptWaitingOr(s);
                }
                ++j;
            }
            s.resetWaitingList();
            s.release();
            ++i;
        }
        u.resetScriptsWaitingOr();
    }

    public static final synchronized String registeredClass(String name) {
        return (String)autoScripts.get(name);
    }

    public static final synchronized String[] registeredScripts() {
        return Utilities.sortStrings(autoScripts.keys());
    }

    public static final synchronized Script registerScript(String name, String clazz, boolean t) {
        Script result = Script.newScript(clazz, name);
        if (result == null) {
            return null;
        }
        result.setAuto(t);
        if (t) {
            autoScripts.put(name, clazz);
        } else {
            autoScripts.remove(name);
        }
        return result;
    }

    public static synchronized void removeStartupScript(String name) {
        if (name == null) {
            return;
        }
        int len = name.length();
        String list = startupScripts.toString();
        int pos = list.indexOf(name);
        if (pos == -1) {
            return;
        }
        if (pos == 0) {
            startupScripts = new StringBuffer(list.substring(len + 1));
            return;
        }
        StringBuffer buf = new StringBuffer();
        buf.append(list.substring(0, pos));
        buf.append(list.substring(pos + len + 1));
        startupScripts = buf;
    }

    private static void removeThreadForScript(Script s) {
        threadIDs.remove(s);
    }

    static final synchronized void renameRegisteredScript(String nameOld, String nameNew) {
        if (nameOld == null | nameNew == null) {
            return;
        }
        String clazz = (String)autoScripts.remove(nameOld);
        if (clazz == null) {
            return;
        }
        autoScripts.put(nameNew, clazz);
    }

    public static final synchronized void resetStartupScripts() {
        startupScripts = new StringBuffer();
    }

    static final void resumeAllScripts() {
        Object[] copyList = null;
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            copyList = new Script[listOfActiveScripts.size()];
            listOfActiveScripts.copyInto(copyList);
            // ** MonitorExit[var1_1] (shouldn't be in output)
            int i = copyList.length - 1;
            while (i >= 0) {
                Object s = copyList[i];
                ScriptScheduler.getThreadForScript((Script)s).resume();
                ((Script)s).restoreState();
                --i;
            }
            return;
        }
    }

    public static boolean resumeScript(Script s) {
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            boolean weiter = listOfSuspendedScripts.removeElement(s);
            // ** MonitorExit[var2_1] (shouldn't be in output)
            if (weiter) {
                Thread t = null;
                Class<?> clazz3 = class$de$etas$cebra$scripts$ScriptScheduler;
                if (clazz3 == null) {
                    try {
                        clazz3 = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class<?> clazz4 = clazz3;
                synchronized (clazz3) {
                    listOfActiveScripts.add(s);
                    t = ScriptScheduler.getThreadForScript(s);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    t.resume();
                    s.restoreState();
                    lf.logMessage("Resume script " + s.getName());
                    return true;
                }
            }
            lf.logMessage("Script " + s.getName() + " is not suspended.");
            return false;
        }
    }

    static void scriptEnded(Script s) {
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            ScriptScheduler.notifyScriptsWaitingAnd(s);
            ScriptScheduler.notifyScriptsWaitingOr(s);
            ScriptScheduler.notifyScriptsWaitingBlocked(s);
            listOfActiveScripts.removeElement(s);
            listOfSuspendedScripts.removeElement(s);
            ScriptScheduler.removeThreadForScript(s);
            if (listOfRemoteScripts.removeElement(s)) {
                lf.logMessage("Remote script " + s + " ended.");
            } else {
                lf.logMessage("Script " + s + " ended.");
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            System.gc();
            s.setStatePassive();
            return;
        }
    }

    public static final boolean scriptsRunning() {
        return !listOfActiveScripts.isEmpty();
    }

    public static final void startScript(Script s) {
        ScriptScheduler.executeScript(s, null, false);
    }

    public static synchronized String startupScripts() {
        return Utilities.trimPath(startupScripts.toString(), false);
    }

    public static void stopAllThreads() {
        Thread[] allThreads = ScriptScheduler.getAllThreads();
        int i = 0;
        while (i < allThreads.length) {
            Cebra.println("Stopping Script: " + allThreads[i].getName());
            allThreads[i].stop();
            ++i;
        }
    }

    public static void stopScript(Script s) {
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            Thread t = ScriptScheduler.getThreadForScript(s);
            ScriptScheduler.removeThreadForScript(s);
            t.stop();
            // ** MonitorExit[var1_1] (shouldn't be in output)
            lf.logMessage("Stop script " + s + ".");
            ScriptScheduler.scriptEnded(s);
            return;
        }
    }

    private static void storeThreadForScript(Script s, Thread t) {
        threadIDs.put(s, t);
    }

    static final void suspendAllScripts() {
        Object[] copyList = null;
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            listOfActiveScripts.copyInto(copyList);
            // ** MonitorExit[var1_1] (shouldn't be in output)
            int i = copyList.length - 1;
            while (i >= 0) {
                void s = copyList[i];
                ScriptScheduler.getThreadForScript((Script)s).suspend();
                s.setStateSuspended();
                --i;
            }
            return;
        }
    }

    public static boolean suspendScript(Script s) {
        return ScriptScheduler.suspendScript(s, s);
    }

    public static boolean suspendScript(Script c, Script s) {
        Suspender susp = new Suspender();
        Semaphore block = new Semaphore();
        susp.script = s;
        susp.sema = block;
        susp.start();
        block.Wait();
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static synchronized boolean suspendScript0(Script s) {
        Class<?> clazz = class$de$etas$cebra$scripts$ScriptScheduler;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            boolean weiter = listOfSuspendedScripts.contains(s);
            // ** MonitorExit[var2_1] (shouldn't be in output)
            if (weiter) {
                lf.logMessage("Script " + s.getName() + " is already suspended.");
                return true;
            }
            Class<?> clazz3 = class$de$etas$cebra$scripts$ScriptScheduler;
            if (clazz3 == null) {
                try {
                    clazz3 = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            clazz2 = clazz3;
            synchronized (clazz3) {
                weiter = listOfActiveScripts.removeElement(s);
                // ** MonitorExit[var2_1] (shouldn't be in output)
                if (!weiter) return true;
                Class<?> clazz4 = class$de$etas$cebra$scripts$ScriptScheduler;
                if (clazz4 == null) {
                    try {
                        clazz4 = class$de$etas$cebra$scripts$ScriptScheduler = Class.forName("de.etas.cebra.scripts.ScriptScheduler");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class<?> clazz5 = clazz4;
                synchronized (clazz4) {
                    Thread t = ScriptScheduler.getThreadForScript(s);
                    listOfSuspendedScripts.add(s);
                    // ** MonitorExit[var3_3] (shouldn't be in output)
                    s.setStateSuspended();
                    t.suspend();
                    lf.logMessage("Suspend script " + s.getName());
                    return true;
                }
            }
        }
    }

    public static final synchronized void terminateScriptScheduler(Object s) {
        if (s != null) {
            lf.logMessage("Termination of the script scheduler by " + s + ".");
        }
    }

    static synchronized void waitForScript(Script s1, Script s2, boolean waitAnd) {
        if (s1 == null) {
            return;
        }
        if (s2 == null) {
            return;
        }
        if (listOfActiveScripts.contains(s2)) {
            if (ScriptScheduler.isDeadlockAnd(s1, s2)) {
                lf.logMessage(String.valueOf(s1.getName()) + " cannot wait for " + s2.getName() + ".");
                if (waitAnd) {
                    s1.releaseCounting();
                } else {
                    s1.release();
                }
            } else {
                if (waitAnd) {
                    s2.addScriptWaitingAnd(s1);
                } else {
                    s2.addScriptWaitingBlocked(s1);
                }
                lf.logMessage(String.valueOf(s1.getName()) + " waits for " + s2.getName() + ".");
            }
        } else if (waitAnd) {
            s1.releaseCounting();
        } else {
            s1.release();
        }
    }

    /*
     * Unable to fully structure code
     */
    static synchronized void waitForScriptsOr(Script s1, Set scriptlist) {
        block3: {
            block4: {
                block5: {
                    block7: {
                        block6: {
                            block2: {
                                if (ScriptScheduler.listOfActiveScripts.contains(scriptlist)) break block2;
                                s1.release();
                                break block3;
                            }
                            if (!ScriptScheduler.isDeadlockOr(s1, scriptlist)) break block4;
                            errmsg = "";
                            t_size = scriptlist.size();
                            if (t_size == 0) break block5;
                            if (t_size != 1) break block6;
                            errmsg = String.valueOf(errmsg) + "Deadlock: " + s1.getName() + " waiting for " + ((Script)scriptlist.elementAt(0)).getName() + ".";
                            break block5;
                        }
                        if (t_size != 2) break block7;
                        errmsg = String.valueOf(errmsg) + "Deadlock: " + s1.getName() + " waiting for " + ((Script)scriptlist.elementAt(0)).getName() + " and " + ((Script)scriptlist.elementAt(1)).getName() + ".";
                        break block5;
                    }
                    errmsg = String.valueOf(errmsg) + "Deadlock: " + s1.getName() + " waiting for ";
                    if (true) ** GOTO lbl21
                    do {
                        errmsg = String.valueOf(errmsg) + ((Script)scriptlist.elementAt(t_size)).getName() + ", ";
lbl21:
                        // 2 sources

                        v0 = --t_size;
                        --t_size;
                    } while (v0 > 0);
                    errmsg = String.valueOf(errmsg) + "and " + ((Script)scriptlist.elementAt(0)).getName() + ".";
                }
                ScriptScheduler.lf.logMessage(errmsg);
                s1.release();
                break block3;
            }
            logmsg = "";
            ScriptScheduler.listOfScriptsWaitingOr.add(s1);
            s1.setWaitingList(scriptlist);
            n = scriptlist.size();
            logmsg = String.valueOf(logmsg) + s1.getName() + " waits for ";
            while (n-- > 0) {
                s = (Script)scriptlist.elementAt(n);
                s.addScriptWaitingOr(s1);
                logmsg = String.valueOf(logmsg) + s.getName() + " ";
            }
            ScriptScheduler.lf.logMessage(logmsg);
        }
    }
}

