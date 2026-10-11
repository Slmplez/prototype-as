/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.profile;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.profile.ProfileLogger;

public class DefaultProfileLogger
implements ProfileLogger {
    protected static final String DEFAULTPROFILE_PROP = "osgi.defaultprofile.";
    protected static final String PROP_FILENAME = "osgi.defaultprofile.logfilename";
    protected static final String PROP_LOGSYNCHRONOUSLY = "osgi.defaultprofile.logsynchronously";
    protected static final String PROP_BUFFERSIZE = "osgi.defaultprofile.buffersize";
    protected static final String DEFAULTPROFILE_OPTION = "org.eclipse.osgi/defaultprofile/";
    protected static final String OPTION_FILENAME = "org.eclipse.osgi/defaultprofile/logfilename";
    protected static final String OPTION_LOGSYNCHRONOUSLY = "org.eclipse.osgi/defaultprofile/logsynchronously";
    protected static final String OPTION_BUFFERSIZE = "org.eclipse.osgi/defaultprofile/buffersize";
    protected boolean logSynchronously = false;
    protected long startTime = 0L;
    protected static final int DEFAULT_BUFFER_SIZE = 256;
    protected TimeEntry[] timeLogEntries = null;
    protected int timeEntriesIndex = 0;
    protected StringBuffer timelog = null;
    protected long launchTime = -1L;
    protected int bufferSize = 256;
    protected String logFileName = null;
    protected File logFile = null;
    private StringBuffer entryReport = new StringBuffer(120);
    private StringBuffer padsb = new StringBuffer(16);
    protected int indent;
    protected int timePaddingLength;
    protected Stack<AccumPerfScope> scopeStack;
    protected Map<String, AccumPerfData> scopeToAccumPerfDataMap;

    public DefaultProfileLogger() {
        this.initProps();
        int size = this.getBufferSize();
        this.timeLogEntries = new TimeEntry[size];
        this.timelog = new StringBuffer(4096);
        int i = 0;
        while (i < size) {
            this.timeLogEntries[i] = this.timeEntryFactory();
            ++i;
        }
        this.timeEntriesIndex = 0;
        this.launchTime = this.getLaunchTime();
        this.startTime = this.launchTime == -1L ? this.getMainStartTime() : this.launchTime;
        long freq = this.getTimerFrequency();
        this.timePaddingLength = 3;
        while (freq > 9L) {
            freq /= 10L;
            ++this.timePaddingLength;
        }
        this.logInitMessages();
    }

    protected void logInitMessages() {
        int index = 0;
        if (this.launchTime != -1L) {
            this.logTime(0, "DefaultProfileLogger.init()", "launch time initialized", null);
            this.timeLogEntries[index++].time = this.launchTime;
        }
        this.logTime(0, "DefaultProfileLogger.init()", "start time initialized", null);
        this.timeLogEntries[index++].time = this.getMainStartTime();
    }

    protected long getLaunchTime() {
        String launchTimeString = FrameworkProperties.getProperty("launch.startMillis");
        if (launchTimeString != null) {
            return Long.parseLong(launchTimeString);
        }
        return -1L;
    }

    protected long getMainStartTime() {
        String timeString = FrameworkProperties.getProperty("eclipse.startTime");
        if (timeString != null) {
            return Long.parseLong(timeString);
        }
        return System.currentTimeMillis();
    }

    public void initProps() {
        String prop;
        FrameworkDebugOptions dbgOptions = null;
        if (FrameworkProperties.getProperty("osgi.debug") != null && (dbgOptions = FrameworkDebugOptions.getDefault()) != null) {
            this.logFileName = dbgOptions.getOption(OPTION_FILENAME);
            this.logSynchronously = dbgOptions.getBooleanOption(OPTION_LOGSYNCHRONOUSLY, false);
            int size = dbgOptions.getIntegerOption(OPTION_BUFFERSIZE, 0);
            if (size > 0) {
                this.bufferSize = size;
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_FILENAME)) != null) {
            this.logFileName = prop;
            if (dbgOptions != null) {
                dbgOptions.setOption(OPTION_FILENAME, this.logFileName);
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_LOGSYNCHRONOUSLY)) != null) {
            this.logSynchronously = Boolean.valueOf(prop);
            if (dbgOptions != null) {
                dbgOptions.setOption(OPTION_LOGSYNCHRONOUSLY, new Boolean(this.logSynchronously).toString());
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_BUFFERSIZE)) != null) {
            try {
                int value = Integer.parseInt(prop);
                if (value > 0) {
                    this.bufferSize = value;
                    if (dbgOptions != null) {
                        dbgOptions.setOption(OPTION_BUFFERSIZE, Integer.toString(this.bufferSize));
                    }
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
    }

    public synchronized void logTime(int flag, String id, String msg, String description) {
        if (this.timeEntriesIndex == this.timeLogEntries.length) {
            this.makeLog();
            this.logTime(0, "Profile.logTime()", "log entries rolled", null);
        }
        TimeEntry entry = this.timeLogEntries[this.timeEntriesIndex++];
        entry.time = this.getTime();
        entry.id = id;
        entry.msg = msg;
        entry.flag = flag;
        entry.description = description;
        if (this.logSynchronously) {
            System.out.print(this.getProfileLog().substring(2));
        }
    }

    public synchronized String getProfileLog() {
        String log = this.getProfileLogReport();
        this.writeToProfileLogFile(log);
        return log;
    }

    public synchronized void accumLogEnter(String scope) {
        if (this.scopeStack == null) {
            this.scopeStack = new Stack();
        }
        if (this.scopeToAccumPerfDataMap == null) {
            this.scopeToAccumPerfDataMap = new TreeMap<String, AccumPerfData>();
        }
        this.scopeStack.push(new AccumPerfScope(scope, this.getTime()));
    }

    public synchronized void accumLogExit(String scope) {
        AccumPerfScope then;
        long exit = this.getTime();
        if (this.scopeStack == null) {
            this.scopeStack = new Stack();
        }
        if (this.scopeToAccumPerfDataMap == null) {
            this.scopeToAccumPerfDataMap = new TreeMap<String, AccumPerfData>();
        }
        if ((then = this.scopeStack.pop()) == null) {
            System.err.println("ACCUM PERF ERROR: Scope stack empty: " + scope);
        } else {
            AccumPerfData now;
            if (!then.scope.equals(scope)) {
                System.err.println("ACCUM PERF ERROR: Scope mismatch: then='" + then.scope + "', now='" + scope + "'");
            }
            if ((now = this.scopeToAccumPerfDataMap.get(scope)) == null) {
                now = new AccumPerfData(scope);
                this.scopeToAccumPerfDataMap.put(scope, now);
            }
            now.time += exit - then.enter;
            ++now.enters;
        }
    }

    protected long getTime() {
        return System.currentTimeMillis();
    }

    protected long getTimerFrequency() {
        return 1000L;
    }

    protected TimeEntry findCompareEntry(int index, String id, int flag) {
        if (index > 0) {
            --index;
        }
        int prev = index;
        if (flag != 1) {
            while (index >= 0) {
                TimeEntry entry = this.timeLogEntries[index];
                if (entry.id.equals(id)) {
                    switch (flag) {
                        case 0: {
                            return entry;
                        }
                        case 2: {
                            if (entry.flag != 1) break;
                            return entry;
                        }
                    }
                }
                --index;
            }
        }
        return this.timeLogEntries[prev];
    }

    protected String entryReport(TimeEntry entry, TimeEntry compareWith) {
        this.entryReport.setLength(0);
        if (entry.flag == 1) {
            ++this.indent;
        }
        long zeroTime = this.getRelativeTime(this.getStartTime());
        this.entryReport.append('-');
        long entryTime = this.getRelativeTime(entry.time);
        long diff = entryTime - zeroTime;
        this.entryReport.append(this.pad(Long.toString(diff), this.timePaddingLength));
        this.entryReport.append(" :");
        diff = entry.time - compareWith.time;
        this.entryReport.append(this.pad(Long.toString(diff), this.timePaddingLength));
        this.entryReport.append(this.pad("", this.indent * 2));
        if (entry.flag == 1) {
            this.entryReport.append(" >> ");
        } else if (entry.flag == 2) {
            this.entryReport.append(" << ");
        } else if (entry.flag == 0) {
            this.entryReport.append(" -- ");
        }
        this.entryReport.append(entry.id);
        this.entryReport.append(" > ");
        this.entryReport.append(entry.msg);
        if (entry.description != null) {
            this.entryReport.append(" :: ");
            this.entryReport.append(entry.description);
        }
        this.entryReport.append("\r\n");
        if (entry.flag == 2) {
            --this.indent;
        }
        return this.entryReport.toString();
    }

    protected String accumEntryReport(AccumPerfData d) {
        return "     " + d.scope + ":enters=" + d.enters + ";time=" + d.time + ";\r\n";
    }

    protected void makeLog() {
        this.indent = 0;
        this.timelog.append("\r\n");
        int i = 0;
        while (i < this.timeEntriesIndex) {
            TimeEntry entry = this.timeLogEntries[i];
            TimeEntry cmpEntry = this.findCompareEntry(i, entry.id, entry.flag);
            this.timelog.append(this.entryReport(entry, cmpEntry));
            ++i;
        }
        this.timeEntriesIndex = 0;
        if (this.scopeToAccumPerfDataMap == null || this.scopeToAccumPerfDataMap.isEmpty()) {
            return;
        }
        this.timelog.append("\r\n");
        this.timelog.append("Cumulative Log:\r\n");
        Iterator<AccumPerfData> iterator = this.scopeToAccumPerfDataMap.values().iterator();
        while (iterator.hasNext()) {
            AccumPerfData d = iterator.next();
            this.timelog.append(this.accumEntryReport(d));
        }
        this.scopeToAccumPerfDataMap.clear();
    }

    protected String pad(String str, int size) {
        this.padsb.setLength(0);
        int len = str.length();
        int count = size - len;
        int i = 0;
        while (i < count) {
            this.padsb.append(' ');
            ++i;
        }
        this.padsb.append(str);
        return this.padsb.toString();
    }

    protected String getProfileLogReport() {
        if (this.timelog == null) {
            return "";
        }
        this.makeLog();
        String log = this.timelog.toString();
        this.timelog.setLength(0);
        return log;
    }

    protected void writeToProfileLogFile(String log) {
        block15: {
            File profileLog = this.getProfileLogFile();
            if (profileLog == null) {
                return;
            }
            OutputStreamWriter fw = null;
            try {
                try {
                    fw = new FileWriter(profileLog.getAbsolutePath(), true);
                    fw.write(log);
                }
                catch (IOException e) {
                    e.printStackTrace();
                    if (fw != null) {
                        try {
                            fw.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block15;
                }
            }
            catch (Throwable throwable) {
                if (fw != null) {
                    try {
                        fw.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (fw != null) {
                try {
                    fw.close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    protected File getProfileLogFile() {
        if (this.logFile == null && this.logFileName != null && this.logFileName.length() > 0) {
            this.logFile = new File(this.logFileName);
        }
        return this.logFile;
    }

    protected long getStartTime() {
        return this.startTime;
    }

    protected long getRelativeTime(long absoluteTime) {
        return absoluteTime;
    }

    protected int getBufferSize() {
        if (this.bufferSize < 2) {
            return 256;
        }
        return this.bufferSize;
    }

    protected TimeEntry timeEntryFactory() {
        return new TimeEntry();
    }

    protected static class AccumPerfData {
        public String scope;
        public long time;
        public long enters;

        public AccumPerfData(String scope) {
            this.scope = scope;
        }
    }

    protected static class AccumPerfScope {
        public String scope;
        public long enter;

        public AccumPerfScope(String scope, long enter) {
            this.scope = scope;
            this.enter = enter;
        }
    }

    protected class TimeEntry {
        public long time;
        public String id;
        public String msg;
        public String description;
        public int flag;

        protected TimeEntry() {
        }
    }
}

