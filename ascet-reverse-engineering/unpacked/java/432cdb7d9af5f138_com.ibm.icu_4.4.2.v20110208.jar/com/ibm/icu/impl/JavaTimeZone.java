/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import com.ibm.icu.impl.Grego;
import com.ibm.icu.impl.ZoneMeta;
import com.ibm.icu.util.TimeZone;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import java.util.TreeSet;

public class JavaTimeZone
extends TimeZone {
    private static final long serialVersionUID = 6977448185543929364L;
    private static final TreeSet<String> AVAILABLESET = new TreeSet();
    private java.util.TimeZone javatz;
    private transient Calendar javacal;

    static {
        String[] availableIds = java.util.TimeZone.getAvailableIDs();
        int i = 0;
        while (i < availableIds.length) {
            AVAILABLESET.add(availableIds[i]);
            ++i;
        }
    }

    public JavaTimeZone() {
        this.javatz = java.util.TimeZone.getDefault();
        this.setID(this.javatz.getID());
        this.javacal = new GregorianCalendar(this.javatz);
    }

    public JavaTimeZone(String id) {
        int[] fields;
        if (AVAILABLESET.contains(id)) {
            this.javatz = java.util.TimeZone.getTimeZone(id);
        }
        if (this.javatz == null) {
            boolean[] isSystemID = new boolean[1];
            String canonicalID = TimeZone.getCanonicalID(id, isSystemID);
            if (isSystemID[0] && AVAILABLESET.contains(canonicalID)) {
                this.javatz = java.util.TimeZone.getTimeZone(canonicalID);
            }
        }
        if (this.javatz == null && ZoneMeta.parseCustomID(id, fields = new int[4])) {
            id = ZoneMeta.formatCustomID(fields[1], fields[2], fields[3], fields[0] < 0);
            int offset = fields[0] * ((fields[1] * 60 + fields[2]) * 60 + fields[3]) * 1000;
            this.javatz = new SimpleTimeZone(offset, id);
        }
        if (this.javatz == null) {
            id = "GMT";
            this.javatz = java.util.TimeZone.getTimeZone(id);
        }
        this.setID(id);
        this.javacal = new GregorianCalendar(this.javatz);
    }

    public int getOffset(int era, int year, int month, int day, int dayOfWeek, int milliseconds) {
        return this.javatz.getOffset(era, year, month, day, dayOfWeek, milliseconds);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void getOffset(long date, boolean local, int[] offsets) {
        Calendar calendar = this.javacal;
        synchronized (calendar) {
            if (local) {
                int[] fields = new int[6];
                Grego.timeToFields(date, fields);
                int tmp = fields[5];
                int mil = tmp % 1000;
                int sec = (tmp /= 1000) % 60;
                int min = (tmp /= 60) % 60;
                int hour = tmp / 60;
                this.javacal.clear();
                this.javacal.set(fields[0], fields[1], fields[2], hour, min, sec);
                this.javacal.set(14, mil);
                int doy1 = this.javacal.get(6);
                int hour1 = this.javacal.get(11);
                int min1 = this.javacal.get(12);
                int sec1 = this.javacal.get(13);
                int mil1 = this.javacal.get(14);
                if (fields[4] != doy1 || hour != hour1 || min != min1 || sec != sec1 || mil != mil1) {
                    int dayDelta = Math.abs(doy1 - fields[4]) > 1 ? 1 : doy1 - fields[4];
                    int delta = (((dayDelta * 24 + hour1 - hour) * 60 + min1 - min) * 60 + sec1 - sec) * 1000 + mil1 - mil;
                    this.javacal.setTimeInMillis(this.javacal.getTimeInMillis() - (long)delta - 1L);
                }
            } else {
                this.javacal.setTimeInMillis(date);
            }
            offsets[0] = this.javacal.get(15);
            offsets[1] = this.javacal.get(16);
        }
    }

    public int getRawOffset() {
        return this.javatz.getRawOffset();
    }

    public boolean inDaylightTime(Date date) {
        return this.javatz.inDaylightTime(date);
    }

    public void setRawOffset(int offsetMillis) {
        this.javatz.setRawOffset(offsetMillis);
    }

    public boolean useDaylightTime() {
        return this.javatz.useDaylightTime();
    }

    public int getDSTSavings() {
        int dstSavings = super.getDSTSavings();
        try {
            Object[] args = new Object[]{};
            Class[] argtypes = new Class[]{};
            Method m = this.javatz.getClass().getMethod("getDSTSavings", argtypes);
            dstSavings = (Integer)m.invoke(this.javatz, args);
        }
        catch (Exception exception) {}
        return dstSavings;
    }

    public java.util.TimeZone unwrap() {
        return this.javatz;
    }

    public Object clone() {
        JavaTimeZone other = (JavaTimeZone)super.clone();
        other.javatz = (java.util.TimeZone)this.javatz.clone();
        return other;
    }

    public int hashCode() {
        return super.hashCode() + this.javatz.hashCode();
    }

    private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        this.javacal = new GregorianCalendar(this.javatz);
    }
}

