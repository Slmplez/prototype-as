/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.util.Calendar;
import com.ibm.icu.util.TimeZone;
import com.ibm.icu.util.ULocale;
import java.util.Date;
import java.util.Locale;

abstract class CECalendar
extends Calendar {
    private static final long serialVersionUID = -999547623066414271L;
    private static final int[][] LIMITS;

    static {
        int[][] nArrayArray = new int[22][];
        int[] nArray = new int[4];
        nArray[2] = 1;
        nArray[3] = 1;
        nArrayArray[0] = nArray;
        nArrayArray[1] = new int[]{1, 1, 5000000, 5000000};
        int[] nArray2 = new int[4];
        nArray2[2] = 12;
        nArray2[3] = 12;
        nArrayArray[2] = nArray2;
        nArrayArray[3] = new int[]{1, 1, 52, 53};
        nArrayArray[4] = new int[0];
        nArrayArray[5] = new int[]{1, 1, 5, 30};
        nArrayArray[6] = new int[]{1, 1, 365, 366};
        nArrayArray[7] = new int[0];
        nArrayArray[8] = new int[]{-1, -1, 1, 5};
        nArrayArray[9] = new int[0];
        nArrayArray[10] = new int[0];
        nArrayArray[11] = new int[0];
        nArrayArray[12] = new int[0];
        nArrayArray[13] = new int[0];
        nArrayArray[14] = new int[0];
        nArrayArray[15] = new int[0];
        nArrayArray[16] = new int[0];
        nArrayArray[17] = new int[]{-5000000, -5000000, 5000000, 5000000};
        nArrayArray[18] = new int[0];
        nArrayArray[19] = new int[]{-5000000, -5000000, 5000000, 5000000};
        nArrayArray[20] = new int[0];
        nArrayArray[21] = new int[0];
        LIMITS = nArrayArray;
    }

    protected CECalendar() {
        this(TimeZone.getDefault(), ULocale.getDefault());
    }

    protected CECalendar(TimeZone zone) {
        this(zone, ULocale.getDefault());
    }

    protected CECalendar(Locale aLocale) {
        this(TimeZone.getDefault(), aLocale);
    }

    protected CECalendar(ULocale locale) {
        this(TimeZone.getDefault(), locale);
    }

    protected CECalendar(TimeZone zone, Locale aLocale) {
        super(zone, aLocale);
        this.setTimeInMillis(System.currentTimeMillis());
    }

    protected CECalendar(TimeZone zone, ULocale locale) {
        super(zone, locale);
        this.setTimeInMillis(System.currentTimeMillis());
    }

    protected CECalendar(int year, int month, int date) {
        super(TimeZone.getDefault(), ULocale.getDefault());
        this.set(year, month, date);
    }

    protected CECalendar(Date date) {
        super(TimeZone.getDefault(), ULocale.getDefault());
        this.setTime(date);
    }

    protected CECalendar(int year, int month, int date, int hour, int minute, int second) {
        super(TimeZone.getDefault(), ULocale.getDefault());
        this.set(year, month, date, hour, minute, second);
    }

    protected abstract int getJDEpochOffset();

    protected int handleComputeMonthStart(int eyear, int emonth, boolean useMonth) {
        return CECalendar.ceToJD(eyear, emonth, 0, this.getJDEpochOffset());
    }

    protected int handleGetLimit(int field, int limitType) {
        return LIMITS[field][limitType];
    }

    protected int handleGetMonthLength(int extendedYear, int month) {
        if ((month + 1) % 13 != 0) {
            return 30;
        }
        return extendedYear % 4 / 3 + 5;
    }

    public static int ceToJD(long year, int month, int day, int jdEpochOffset) {
        if (month >= 0) {
            year += (long)(month / 13);
            month %= 13;
        } else {
            year += (long)(++month / 13 - 1);
            month = month % 13 + 12;
        }
        return (int)((long)jdEpochOffset + 365L * year + CECalendar.floorDivide(year, 4L) + (long)(30 * month) + (long)day - 1L);
    }

    public static void jdToCE(int julianDay, int jdEpochOffset, int[] fields) {
        int[] r4 = new int[1];
        int c4 = CECalendar.floorDivide(julianDay - jdEpochOffset, 1461, r4);
        fields[0] = 4 * c4 + (r4[0] / 365 - r4[0] / 1460);
        int doy = r4[0] == 1460 ? 365 : r4[0] % 365;
        fields[1] = doy / 30;
        fields[2] = doy % 30 + 1;
    }
}

