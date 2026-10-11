/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.repository;

import java.net.URI;
import java.text.NumberFormat;
import java.util.Iterator;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.equinox.internal.p2.repository.Messages;
import org.eclipse.osgi.util.NLS;

public class ProgressStatistics {
    private static final int DEFAULT_REPORT_INTERVAL = 1000;
    private static final int SPEED_INTERVAL = 5000;
    private static final int SPEED_RESOLUTION = 1000;
    private final String m_fileName;
    private final long m_total;
    private final long m_startTime = System.currentTimeMillis();
    private long m_current;
    private long m_lastReportTime;
    private int m_reportInterval;
    private SortedMap<Long, Long> m_recentSpeedMap;
    private long m_recentSpeedMapKey;
    private URI m_uri;

    private static String convert(long amount) {
        NumberFormat fmt = NumberFormat.getInstance();
        if (amount < 1024L) {
            return String.valueOf(fmt.format(amount)) + "B";
        }
        fmt.setMaximumFractionDigits(2);
        if (amount < 0x100000L) {
            return String.valueOf(fmt.format((double)amount / 1024.0)) + "kB";
        }
        return String.valueOf(fmt.format((double)amount / 1048576.0)) + "MB";
    }

    public ProgressStatistics(URI uri, String fileName, long total) {
        this.m_fileName = fileName;
        this.m_total = total;
        this.m_current = 0L;
        this.m_lastReportTime = 0L;
        this.m_reportInterval = 1000;
        this.m_recentSpeedMap = new TreeMap<Long, Long>();
        this.m_recentSpeedMapKey = 0L;
        this.m_uri = uri;
    }

    public long getAverageSpeed() {
        long dur = this.getDuration();
        if (dur > 0L) {
            return (int)((double)this.m_current / ((double)dur / 1000.0));
        }
        return 0L;
    }

    public long getDuration() {
        return System.currentTimeMillis() - this.m_startTime;
    }

    public double getPercentage() {
        if (this.m_total > 0L) {
            return (double)this.m_current / (double)this.m_total;
        }
        return 0.0;
    }

    public synchronized long getRecentSpeed() {
        this.removeObsoleteRecentSpeedData(this.getDuration() / 1000L);
        long dur = 0L;
        long amount = 0L;
        SortedMap<Long, Long> relevantData = this.m_recentSpeedMap.headMap(new Long(this.m_recentSpeedMapKey));
        if (!relevantData.isEmpty()) {
            Iterator<Long> iterator = relevantData.values().iterator();
            while (iterator.hasNext()) {
                Long rl = iterator.next();
                dur += 1000L;
                amount += rl.longValue();
            }
        }
        if (dur >= 1000L) {
            return amount / (dur / 1000L);
        }
        return 0L;
    }

    public int getReportInterval() {
        return this.m_reportInterval;
    }

    public long getTotal() {
        return this.m_total;
    }

    public void increase(long inc) {
        this.registerRecentSpeed(this.getDuration() / 1000L, inc);
        this.m_current += inc;
    }

    public synchronized String report() {
        String uriString = this.m_uri.toString();
        if (this.m_fileName != null && uriString.endsWith(this.m_fileName)) {
            uriString = uriString.substring(0, uriString.lastIndexOf(this.m_fileName));
        }
        return this.m_total != -1L ? NLS.bind((String)Messages.fetching_0_from_1_2_of_3_at_4, (Object[])new String[]{this.m_fileName, uriString, ProgressStatistics.convert(this.m_current), ProgressStatistics.convert(this.m_total), ProgressStatistics.convert(this.getRecentSpeed())}) : NLS.bind((String)Messages.fetching_0_from_1_2_at_3, (Object[])new String[]{this.m_fileName, uriString, ProgressStatistics.convert(this.m_current), ProgressStatistics.convert(this.getRecentSpeed())});
    }

    public void setReportInterval(int reportInterval) {
        this.m_reportInterval = reportInterval;
    }

    public boolean shouldReport() {
        long currentTime = System.currentTimeMillis();
        if (this.m_lastReportTime == 0L || currentTime - this.m_lastReportTime >= (long)this.m_reportInterval) {
            this.m_lastReportTime = currentTime;
            return true;
        }
        return false;
    }

    public String toString() {
        return this.report();
    }

    private synchronized void registerRecentSpeed(long key, long inc) {
        Long keyL = new Long(key);
        Long currentValueL = (Long)this.m_recentSpeedMap.get(keyL);
        long currentValue = 0L;
        if (currentValueL != null) {
            currentValue = currentValueL;
        }
        this.m_recentSpeedMap.put(keyL, new Long(inc + currentValue));
        if (this.m_recentSpeedMapKey != key) {
            this.m_recentSpeedMapKey = key;
            this.removeObsoleteRecentSpeedData(key);
        }
    }

    private synchronized void removeObsoleteRecentSpeedData(long lastKey) {
        long threshold = lastKey - 5L;
        this.m_recentSpeedMap.headMap(new Long(threshold)).clear();
    }
}

