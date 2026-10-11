/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.scripts;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.ScriptEvent;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.cebra.view.CebraMainView;
import de.etas.multitasking.CountingSemaphore;
import de.etas.multitasking.Semaphore;
import de.etas.types.Identifiable;
import de.etas.types.Set;
import de.etas.util.LogFile;
import de.etas.util.Utilities;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Observable;

public abstract class Script
extends Observable
implements Runnable,
Identifiable {
    private static Hashtable listOfScripts = new Hashtable();
    private LogFile logFile;
    private String name;
    private Semaphore lockSema = new Semaphore(false);
    private CountingSemaphore countSema = new CountingSemaphore(0);
    private boolean blocked = false;
    private int numberOfCalls = 0;
    private Set listOfScriptsWaitingAnd = new Set();
    private Set listOfScriptsWaitingOr = new Set();
    private Set listOfScriptsWaitingBlocked = new Set();
    private Set waitingAtOr = new Set();
    private long sampleTime = 0L;
    private long nextActivation = 0L;
    private boolean periodic = false;
    private long objectIdent;
    private boolean registered;
    private String state;
    private String oldState;
    private Object starter = null;
    private boolean startup = false;
    private boolean auto = false;
    public static String UNDEFINED = "undefined";
    public static String PASSIVE = "passive";
    public static String BLOCKED = "blocked";
    public static String ACTIVE = "active";
    public static String RUNNING = "running";
    public static String SUSPENDED = "suspended";
    public static int maxLengthState = 9;
    static Class class$de$etas$cebra$scripts$Script;

    public Script() {
        this.setStatePassive();
        this.setOldStatePassive();
        Cebra.getNewIdentifier(this);
        this.setName("script" + this.objectIdent);
        this.logEntry("# Creation ");
        if (Cebra.visible) {
            this.addObserver(CebraMainView.cmv());
        }
    }

    public Script(String name) {
        this();
        this.setName(name);
    }

    private static final String addScriptByName(Script s, String name) {
        Script t = (Script)listOfScripts.get(name);
        if (t == null) {
            listOfScripts.put(name, s);
            return name;
        }
        if (t == s) {
            return name;
        }
        String pname = name;
        int i = 0;
        while (listOfScripts.containsKey(pname)) {
            pname = String.valueOf(name) + ++i;
        }
        if (i != 0) {
            Cebra.println("Using " + pname + " as " + name + " is already in use.");
        }
        listOfScripts.put(pname, s);
        return pname;
    }

    final void addScriptWaitingAnd(Script v) {
        this.listOfScriptsWaitingAnd.add(v);
    }

    final void addScriptWaitingBlocked(Script v) {
        this.listOfScriptsWaitingBlocked.add(v);
    }

    final void addScriptWaitingOr(Script v) {
        this.listOfScriptsWaitingOr.add(v);
    }

    public static Script[] allInstances() {
        String[] allNames = Script.allScripts();
        Script[] ergeb = new Script[allNames.length];
        int i = 0;
        while (i < allNames.length) {
            ergeb[i] = Script.getScriptByName(allNames[i]);
            ++i;
        }
        return ergeb;
    }

    public static final Hashtable allScriptPackages() {
        Hashtable search = Utilities.allPackages();
        Hashtable<String, Hashtable<String, Class>> result = new Hashtable<String, Hashtable<String, Class>>(3);
        Enumeration enumeration = search.keys();
        while (enumeration.hasMoreElements()) {
            String packageName = (String)enumeration.nextElement();
            Hashtable testPackage = (Hashtable)search.get(packageName);
            Enumeration innerLoop = testPackage.keys();
            while (innerLoop.hasMoreElements()) {
                String clazzName = (String)innerLoop.nextElement();
                Class clazz = (Class)testPackage.get(clazzName);
                if (!Script.isScriptClass(clazz)) continue;
                Hashtable<String, Class> pack = (Hashtable<String, Class>)result.get(packageName);
                if (pack == null) {
                    pack = new Hashtable<String, Class>(3);
                    result.put(packageName, pack);
                }
                pack.put(clazzName, clazz);
            }
        }
        return result;
    }

    public static final String[] allScripts() {
        return Utilities.sortStrings(listOfScripts.keys());
    }

    final void allScriptsWaitingRecursive(Set v) {
        Script s;
        int i;
        int n;
        if (!v.add(this)) {
            return;
        }
        if (!this.listOfScriptsWaitingAnd.isEmpty()) {
            n = this.listOfScriptsWaitingAnd.size();
            i = 0;
            while (i < n) {
                s = (Script)this.listOfScriptsWaitingAnd.elementAt(i);
                if (!v.contains(s)) {
                    s.allScriptsWaitingRecursive(v);
                }
                ++i;
            }
        }
        if (!this.listOfScriptsWaitingBlocked.isEmpty()) {
            n = this.listOfScriptsWaitingBlocked.size();
            i = 0;
            while (i < n) {
                s = (Script)this.listOfScriptsWaitingBlocked.elementAt(i);
                if (!v.contains(s)) {
                    s.allScriptsWaitingRecursive(v);
                }
                ++i;
            }
        }
    }

    public final void block() {
        this.setStateBlocked();
        this.lockSema.Wait();
    }

    public final boolean equals(Object hndl) {
        if (hndl == this) {
            return true;
        }
        if (!(hndl instanceof Script)) {
            return false;
        }
        if (hndl == null) {
            return this.objectIdent == 0L;
        }
        return this.objectIdent == ((Identifiable)hndl).getIdentifier();
    }

    protected final void execute(Script s) {
        if (s == null) {
            return;
        }
        ScriptScheduler.executeScript(s, this, false);
    }

    protected final void execute(String name) {
        this.execute(Script.getScriptByName(name));
    }

    protected final void executeBlocking(Script s) {
        if (s == null) {
            return;
        }
        this.blocked = true;
        ScriptScheduler.executeScript(s, this, true);
        this.block();
        this.blocked = false;
    }

    protected final void executeBlocking(String name) {
        this.executeBlocking(Script.getScriptByName(name));
    }

    protected final void executeCyclic(Script s) {
        this.executeCyclic(s, 0L);
    }

    protected final void executeCyclic(Script s, long T) {
        if (s == null) {
            return;
        }
        s.setSampleTime(T);
        s.setPeriodic();
        ScriptScheduler.executeScript(s, this, false);
    }

    protected final void executeCyclic(String name) {
        this.executeCyclic(Script.getScriptByName(name), 0L);
    }

    protected final void executeCyclic(String name, long T) {
        this.executeCyclic(Script.getScriptByName(name), T);
    }

    protected abstract void execution();

    protected final void exit() {
        ScriptScheduler.stopScript(this);
    }

    public final long getIdentifier() {
        return this.objectIdent;
    }

    protected final Object getMessage(String name) {
        return Cebra.getMessage(name);
    }

    public final String getName() {
        return this.name;
    }

    protected final int getNumberOfActivations() {
        return this.numberOfCalls;
    }

    public String getRegisteredClass() {
        String result = ScriptScheduler.registeredClass(this.getName());
        if (result != null) {
            return result;
        }
        return this.getClass().getName();
    }

    public final long getSampleTime() {
        return this.sampleTime;
    }

    public static final Script getScriptByName(String name) {
        if (name == null) {
            return null;
        }
        return (Script)listOfScripts.get(name);
    }

    final Set getScriptsWaitingAnd() {
        return this.listOfScriptsWaitingAnd;
    }

    final Set getScriptsWaitingBlocked() {
        return this.listOfScriptsWaitingBlocked;
    }

    final Set getScriptsWaitingOr() {
        return this.listOfScriptsWaitingOr;
    }

    public Object getStarter() {
        return this.starter;
    }

    public String getState() {
        return this.state;
    }

    final Set getWaitingList() {
        return this.waitingAtOr;
    }

    protected abstract void init();

    public boolean isAuto() {
        return this.auto;
    }

    public final boolean isBlocked() {
        return this.blocked;
    }

    public final boolean isFreeable(Set s) {
        return s.containsOneElement(this.waitingAtOr);
    }

    public final boolean isPeriodic() {
        return this.periodic;
    }

    public final boolean isRegistered() {
        return this.registered;
    }

    public static final boolean isScriptClass(Class klasse) {
        Class<?> clazz = class$de$etas$cebra$scripts$Script;
        if (clazz == null) {
            try {
                clazz = class$de$etas$cebra$scripts$Script = Class.forName("de.etas.cebra.scripts.Script");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return clazz.isAssignableFrom(klasse);
    }

    public boolean isStartup() {
        return this.startup;
    }

    protected final void logEntry(String msg) {
        this.logFile.logMessage(msg);
    }

    public static final Script newScript(String clazz) {
        return Script.newScript(clazz, null);
    }

    public static final Script newScript(String clazz, String name) {
        Script ergeb = Script.getScriptByName(name);
        if (ergeb != null) {
            return ergeb;
        }
        if (clazz == null) {
            return null;
        }
        Class klasse = Cebra.getClassByName(clazz);
        if (klasse == null) {
            Cebra.println("Error: Creating a new instance of " + clazz + " failed due to the fact that it was not found in the class table.");
            return null;
        }
        if (!Script.isScriptClass(klasse)) {
            Cebra.println("Error: " + clazz + " is not a script class.");
            return null;
        }
        try {
            ergeb = (Script)klasse.newInstance();
        }
        catch (Exception exception) {
            Cebra.println("Error: Creating a new instance of " + klasse + " failed.");
            return null;
        }
        if (name != null) {
            ergeb.setName(name);
        }
        return ergeb;
    }

    public final boolean nullHandle() {
        return this.objectIdent == 0L;
    }

    protected final void putMessage(String name, Object obj) {
        Cebra.putMessage(name, obj);
    }

    public final void release() {
        this.lockSema.Put();
        this.restoreState();
    }

    public final void releaseCounting() {
        this.countSema.Put();
    }

    public static final boolean removeScriptByName(String name) {
        return listOfScripts.remove(name) != null;
    }

    public final void removeScriptWaitingOr(Script v) {
        if (v == null) {
            return;
        }
        this.listOfScriptsWaitingOr.removeElement(v);
    }

    public final void resetPeriodic() {
        if (!this.periodic) {
            return;
        }
        this.periodic = false;
        this.setChanged();
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    public final void resetScriptsWaitingAnd() {
        this.listOfScriptsWaitingAnd = new Set();
    }

    public final void resetScriptsWaitingBlocked() {
        this.listOfScriptsWaitingBlocked = new Set();
    }

    public final void resetScriptsWaitingOr() {
        this.listOfScriptsWaitingOr = new Set();
    }

    public final void resetWaitingList() {
        this.waitingAtOr = new Set();
    }

    void restoreState() {
        this.state = this.oldState;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    protected final void resume(Script s) {
        if (s == null) {
            return;
        }
        ScriptScheduler.resumeScript(s);
    }

    public final void run() {
        Script.addScriptByName(this, this.name);
        boolean fertig = true;
        if (this.numberOfCalls == 0) {
            this.init();
        }
        this.nextActivation = System.currentTimeMillis();
        if (this.isPeriodic()) {
            this.setStateActive();
        } else {
            this.setStateRunning();
        }
        do {
            try {
                if (this.isPeriodic()) {
                    this.nextActivation += this.sampleTime;
                }
                ++this.numberOfCalls;
                this.execution();
                if (this.isPeriodic()) {
                    this.sleep(this.nextActivation - System.currentTimeMillis());
                    fertig = false;
                    continue;
                }
                fertig = true;
            }
            catch (Exception e) {
                this.logEntry("Exception in " + this + ".run : " + e.getClass() + Cebra.LF + "Objekt: " + this.toString() + Cebra.LF + "Message: " + e.getMessage() + Cebra.LF + e);
                if (Cebra.debug) {
                    Cebra.println("Exception in script '" + this.getName() + "': " + e.getClass());
                }
                fertig = true;
            }
        } while (!fertig);
        this.logEntry("End " + this + " call #" + this.getNumberOfActivations());
        ScriptScheduler.scriptEnded(this);
    }

    void setAuto(boolean t) {
        if (t != this.auto) {
            this.setChanged();
        }
        this.auto = t;
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    public final void setIdentifier(long id) {
        this.objectIdent = id;
    }

    public final void setIdentifier(Identifiable id) {
        this.objectIdent = id == null ? 0L : id.getIdentifier();
    }

    public final void setName(String n) {
        if (n == null) {
            return;
        }
        if (n.equals(this.name)) {
            return;
        }
        String nameAlt = this.name;
        this.name = Script.addScriptByName(this, n);
        if (nameAlt != null) {
            Script.removeScriptByName(nameAlt);
        }
        ScriptScheduler.renameRegisteredScript(nameAlt, this.name);
        if (this.logFile == null) {
            this.logFile = new LogFile(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + this.name + ".log");
        } else {
            this.logFile.setName(String.valueOf(Cebra.cebraLogPath) + Cebra.FS + this.name + ".log");
        }
        this.setChanged();
        this.notifyObservers(ScriptEvent.NAME_CHANGED);
    }

    final void setOldStatePassive() {
        this.oldState = PASSIVE;
    }

    public final void setPeriodic() {
        if (this.periodic) {
            return;
        }
        this.periodic = true;
        this.setChanged();
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    public final void setRegistered(boolean flag) {
        this.registered = flag;
    }

    public final void setSampleTime(long T) {
        if (this.sampleTime == T) {
            return;
        }
        this.sampleTime = T;
        this.setChanged();
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    public void setStarter(Object obj) {
        this.starter = obj;
        this.setChanged();
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    public void setStartup(boolean t) {
        if (t != this.startup) {
            this.setChanged();
        }
        this.startup = t;
        this.notifyObservers(ScriptEvent.DEFAULT);
    }

    final void setStateActive() {
        if (this.state == ACTIVE) {
            return;
        }
        this.state = ACTIVE;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    final void setStateBlocked() {
        this.oldState = this.state;
        this.state = BLOCKED;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    final void setStatePassive() {
        if (this.state == PASSIVE) {
            return;
        }
        this.state = PASSIVE;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    final void setStateRunning() {
        if (this.state == RUNNING) {
            return;
        }
        this.state = RUNNING;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    final void setStateSuspended() {
        this.oldState = this.state;
        this.state = SUSPENDED;
        this.setChanged();
        this.notifyObservers(ScriptEvent.STATE_CHANGED);
    }

    public final void setWaitingList(Set list) {
        this.waitingAtOr = list;
    }

    protected final void sleep(long ms) {
        block3: {
            if (ms < 0L) {
                return;
            }
            try {
                Thread.currentThread();
                Thread.sleep(ms);
            }
            catch (Exception e) {
                this.logEntry("Exception " + e.getClass() + " in the thread " + Thread.currentThread().getName());
                if (!Cebra.debug) break block3;
                Cebra.println("Exception " + e.getClass() + " in the thread " + Thread.currentThread().getName());
            }
        }
    }

    protected static final void sleep(Script s, long ms) {
        if (s == null) {
            return;
        }
        if (ms < 0L) {
            return;
        }
        s.sleep(ms);
    }

    protected static final void sleep(String name, long ms) {
        Script.sleep(Script.getScriptByName(name), ms);
    }

    protected final void stopScript(Script s) {
        if (s == null) {
            return;
        }
        ScriptScheduler.stopScript(s);
    }

    protected final void suspend() {
        ScriptScheduler.suspendScript(this);
    }

    protected final void suspend(Script s) {
        if (s == null) {
            return;
        }
        ScriptScheduler.suspendScript(this, s);
    }

    public String toString() {
        return "[script" + this.objectIdent + "]:" + this.getName();
    }

    protected final void waitFor(Script arg) {
        if (arg == null) {
            return;
        }
        this.blocked = true;
        ScriptScheduler.waitForScript(this, arg, false);
        this.lockSema.Wait();
        this.blocked = false;
    }

    protected final void waitParallelAnd(Script[] args) {
        if (args == null) {
            return;
        }
        this.blocked = true;
        int n = args.length;
        int i = 0;
        while (i < n) {
            ScriptScheduler.waitForScript(this, args[i], true);
            ++i;
        }
        i = 0;
        while (i < n) {
            this.countSema.Wait();
            ++i;
        }
        this.blocked = false;
    }

    protected final void waitParallelAnd(Set args) {
        if (args == null) {
            return;
        }
        this.blocked = true;
        int n = args.size();
        int i = 0;
        while (i < n) {
            ScriptScheduler.waitForScript(this, (Script)args.elementAt(i), true);
            ++i;
        }
        i = 0;
        while (i < n) {
            this.countSema.Wait();
            ++i;
        }
        this.blocked = false;
    }

    protected final void waitParallelOr(Script[] args) {
        if (args == null) {
            return;
        }
        this.blocked = true;
        ScriptScheduler.waitForScriptsOr(this, new Set(args));
        this.lockSema.Wait();
        this.blocked = false;
    }

    protected final void waitParallelOr(Set args) {
        if (args == null) {
            return;
        }
        this.blocked = true;
        ScriptScheduler.waitForScriptsOr(this, args);
        this.lockSema.Wait();
        this.blocked = false;
    }
}

