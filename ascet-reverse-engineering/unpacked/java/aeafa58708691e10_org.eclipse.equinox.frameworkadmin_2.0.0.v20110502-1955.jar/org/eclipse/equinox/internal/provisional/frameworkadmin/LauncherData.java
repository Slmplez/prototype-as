/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class LauncherData {
    private File fwPersistentDataLocation = null;
    private File jvm = null;
    private List jvmArgs = new LinkedList();
    private List programArgs = new LinkedList();
    private boolean clean;
    private File fwConfigLocation;
    private File home = null;
    private File fwJar = null;
    private File launcher = null;
    private File launcherConfigLocation = null;
    private String fwName;
    private String fwVersion;
    private String launcherName;
    private String launcherVersion;
    private String os;

    public LauncherData(String fwName, String fwVersion, String launcherName, String launcherVersion) {
        this.fwName = fwName;
        this.fwVersion = fwVersion;
        this.launcherName = launcherName;
        this.launcherVersion = launcherVersion;
        this.initialize();
    }

    public void addJvmArg(String arg) {
        if (arg == null) {
            return;
        }
        this.jvmArgs.add(arg);
    }

    public void addProgramArg(String arg) {
        if (arg == null) {
            return;
        }
        this.programArgs.add(arg);
    }

    public File getFwConfigLocation() {
        return this.fwConfigLocation;
    }

    public File getFwJar() {
        return this.fwJar;
    }

    public String getFwName() {
        return this.fwName;
    }

    public File getFwPersistentDataLocation() {
        return this.fwPersistentDataLocation;
    }

    public String getFwVersion() {
        return this.fwVersion;
    }

    public File getHome() {
        return this.home;
    }

    public File getJvm() {
        return this.jvm;
    }

    public String[] getJvmArgs() {
        String[] args = new String[this.jvmArgs.size()];
        this.jvmArgs.toArray(args);
        return args;
    }

    public File getLauncher() {
        return this.launcher;
    }

    public File getLauncherConfigLocation() {
        return this.launcherConfigLocation;
    }

    public String getLauncherName() {
        return this.launcherName;
    }

    public String getLauncherVersion() {
        return this.launcherVersion;
    }

    public String[] getProgramArgs() {
        String[] args = new String[this.programArgs.size()];
        this.programArgs.toArray(args);
        return args;
    }

    public void initialize() {
        this.fwPersistentDataLocation = null;
        this.jvm = null;
        this.jvmArgs.clear();
        this.programArgs.clear();
        this.clean = false;
        this.fwConfigLocation = null;
        this.fwJar = null;
        this.launcher = null;
    }

    public boolean isClean() {
        return this.clean;
    }

    public void removeJvmArg(String arg) {
        this.jvmArgs.remove(arg);
    }

    public void removeProgramArg(String arg) {
        if (!arg.startsWith("-")) {
            return;
        }
        int index = this.programArgs.indexOf(arg);
        if (index == -1) {
            return;
        }
        this.programArgs.remove(index);
        while (index < this.programArgs.size()) {
            String next = (String)this.programArgs.get(index);
            if (next.charAt(0) == '-') {
                return;
            }
            this.programArgs.remove(index);
        }
    }

    public void setFwConfigLocation(File fwConfigLocation) {
        this.fwConfigLocation = fwConfigLocation;
    }

    public void setFwJar(File fwJar) {
        this.fwJar = fwJar;
    }

    public void setFwPersistentDataLocation(File fwPersistentDataLocation, boolean clean) {
        this.fwPersistentDataLocation = fwPersistentDataLocation;
        this.clean = clean;
    }

    public void setHome(File home) {
        this.home = home;
    }

    public void setJvm(File file) {
        this.jvm = file;
        if (file == null) {
            this.removeProgramArg("-vm");
        }
    }

    public void setJvmArgs(String[] args) {
        if (args == null || args.length == 0) {
            this.jvmArgs.clear();
            return;
        }
        int i = 0;
        while (i < args.length) {
            this.addJvmArg(args[i]);
            ++i;
        }
    }

    public void setLauncher(File launcherFile) {
        this.launcher = launcherFile;
    }

    public void setLauncherConfigLocation(File launcherConfigLocation) {
        this.launcherConfigLocation = launcherConfigLocation;
    }

    public void setOS(String os) {
        this.os = os;
    }

    public String getOS() {
        return this.os;
    }

    public void setProgramArgs(String[] args) {
        if (args == null || args.length == 0) {
            this.programArgs.clear();
            return;
        }
        int i = 0;
        while (i < args.length) {
            this.addProgramArg(args[i]);
            ++i;
        }
    }

    public String toString() {
        Iterator iterator;
        int i;
        StringBuffer sb = new StringBuffer();
        sb.append("Class:" + this.getClass().getName() + "\n");
        sb.append("fwName=" + this.fwName + "\n");
        sb.append("fwVersion=" + this.fwVersion + "\n");
        sb.append("launcherName=" + this.launcherName + "\n");
        sb.append("launcherVersion=" + this.launcherVersion + "\n");
        sb.append("jvm=" + this.jvm + "\n");
        if (this.jvmArgs.size() == 0) {
            sb.append("jvmArgs = null\n");
        } else {
            sb.append("jvmArgs=\n");
            i = 0;
            iterator = this.jvmArgs.iterator();
            while (iterator.hasNext()) {
                sb.append("\tjvmArgs[" + i++ + "]=" + iterator + "\n");
                iterator.next();
            }
        }
        if (this.programArgs.size() == 0) {
            sb.append("programArgs = null\n");
        } else {
            sb.append("programArgs=\n");
            i = 0;
            iterator = this.programArgs.iterator();
            while (iterator.hasNext()) {
                sb.append("\tprogramArgs[" + i++ + "]=" + iterator + "\n");
                iterator.next();
            }
        }
        sb.append("fwConfigLocation=" + this.fwConfigLocation + "\n");
        sb.append("fwJar=" + this.fwJar + "\n");
        sb.append("fwPersistentDataLocation=" + this.fwPersistentDataLocation + "\n");
        sb.append("home=" + this.home + "\n");
        sb.append("launcher=" + this.launcher + "\n");
        sb.append("launcherConfigLocation=" + this.launcherConfigLocation + "\n");
        sb.append("clean=" + this.isClean() + "\n");
        return sb.toString();
    }
}

