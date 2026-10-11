/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.platform.stats;

import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.internal.messages.Messages;

public class StatsEvent {
    private static final long NOT_STARTED = -1L;
    private Object blameObject;
    private String eventName;
    private String contextName;
    private int runCount = 0;
    private long runningTime = 0L;
    private double nanoRunningTime = 0.0;
    private long currentStartTime = -1L;
    private double nanoCurrentStartTime = -1.0;

    public StatsEvent(String name, Object blame) {
        this.eventName = name;
        this.blameObject = blame;
    }

    public void startRun(long time, boolean reset, String context) {
        this.currentStartTime = time;
        this.contextName = context;
        if (reset) {
            this.runCount = 0;
            this.runningTime = 0L;
        }
    }

    public void startNanoRun(double time, boolean reset, String context) {
        this.nanoCurrentStartTime = time;
        if (reset) {
            this.runCount = 0;
            this.nanoRunningTime = 0.0;
        }
    }

    public void endRun(long time) {
        this.addRun(time - this.currentStartTime);
        this.currentStartTime = -1L;
    }

    public void endNanoRun(double time) {
        this.addNanoRun(time - this.nanoCurrentStartTime);
        this.nanoCurrentStartTime = -1.0;
    }

    private void addRun(double elapsed) {
        ++this.runCount;
        this.runningTime = (long)((double)this.runningTime + elapsed);
    }

    private void addNanoRun(double elapsed) {
        this.nanoRunningTime += elapsed;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StatsEvent)) {
            return false;
        }
        StatsEvent that = (StatsEvent)obj;
        if (!this.eventName.equals(that.eventName)) {
            return false;
        }
        return this.getBlameString().equals(that.getBlameString());
    }

    public String getBlameString() {
        return this.blameObject.toString();
    }

    public String getEvent() {
        return this.eventName;
    }

    public int getRunCount() {
        return this.runCount;
    }

    public long getRunningTime() {
        return this.runningTime;
    }

    public double getNanoRunningTime() {
        return this.nanoRunningTime;
    }

    public int hashCode() {
        return this.eventName.hashCode() * 37 + this.getBlameString().hashCode();
    }

    public String toString() {
        if (this.runCount > 1) {
            return NLS.bind((String)Messages.perfLog_$0$1$2$3statEventToStringWithRunCount, (Object[])new String[]{this.eventName, this.blameObject.toString(), this.getConvertedRunningTime(), "" + this.runCount});
        }
        return NLS.bind((String)Messages.perfLog_$0$1$2$3statEventToStringSimple, (Object[])new String[]{this.eventName, this.blameObject.toString(), this.getConvertedRunningTime()});
    }

    public String printEventStat() {
        return this.printEventStat("");
    }

    public String printEventStat(String offset) {
        StringBuffer result = new StringBuffer("\n" + offset + " - Event: " + this.eventName);
        result.append(this.printEventStatProperties(offset));
        return result.toString();
    }

    public String getContextName() {
        return this.contextName;
    }

    private String getConvertedSecondes(long runningTime) {
        String result = "";
        double time = ((double)runningTime - (double)(runningTime % 1000L)) / 1000.0;
        double reste = (double)runningTime % 1000.0;
        result = String.valueOf((long)time) + " s";
        if (reste > 0.0) {
            result = String.valueOf(result) + ":" + (long)reste + " ms";
        }
        return result;
    }

    private String getConvertedRunningTime() {
        String result = "";
        if (this.runningTime >= 60000L) {
            double time = ((double)this.runningTime - (double)(this.runningTime % 60000L)) / 60000.0;
            double reste = this.runningTime % 60000L;
            result = String.valueOf((long)time) + " min";
            if (reste > 0.0) {
                result = String.valueOf(result) + ":" + this.getConvertedSecondes((long)reste);
            }
        } else {
            result = this.runningTime >= 1000L ? this.getConvertedSecondes(this.runningTime) : (this.runningTime > 0L ? String.valueOf(this.runningTime) + " ms" : String.valueOf(this.nanoRunningTime) + " ns");
        }
        return "[ " + result + " ]";
    }

    public String printEventStatProperties() {
        return this.printEventStatProperties("");
    }

    public String printEventStatProperties(String offset) {
        StringBuffer result = new StringBuffer("\n" + offset + " - Blame object: " + this.blameObject);
        result.append("\n" + offset + " - CPU running time: " + this.getConvertedRunningTime());
        if (this.runCount > 1) {
            result.append("\n" + offset + " - Run count: " + this.runCount);
        }
        return result.toString();
    }
}

