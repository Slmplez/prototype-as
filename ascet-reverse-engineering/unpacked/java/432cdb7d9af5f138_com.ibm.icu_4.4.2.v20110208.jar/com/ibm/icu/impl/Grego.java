/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

public class Grego {
    public static final long MIN_MILLIS = -184303902528000000L;
    public static final long MAX_MILLIS = 183882168921600000L;
    public static final int MILLIS_PER_SECOND = 1000;
    public static final int MILLIS_PER_MINUTE = 60000;
    public static final int MILLIS_PER_HOUR = 3600000;
    public static final int MILLIS_PER_DAY = 86400000;
    private static final int JULIAN_1_CE = 1721426;
    private static final int JULIAN_1970_CE = 2440588;
    private static final int[] MONTH_LENGTH = new int[]{31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private static final int[] DAYS_BEFORE;

    static {
        int[] nArray = new int[24];
        nArray[1] = 31;
        nArray[2] = 59;
        nArray[3] = 90;
        nArray[4] = 120;
        nArray[5] = 151;
        nArray[6] = 181;
        nArray[7] = 212;
        nArray[8] = 243;
        nArray[9] = 273;
        nArray[10] = 304;
        nArray[11] = 334;
        nArray[13] = 31;
        nArray[14] = 60;
        nArray[15] = 91;
        nArray[16] = 121;
        nArray[17] = 152;
        nArray[18] = 182;
        nArray[19] = 213;
        nArray[20] = 244;
        nArray[21] = 274;
        nArray[22] = 305;
        nArray[23] = 335;
        DAYS_BEFORE = nArray;
    }

    public static final boolean isLeapYear(int year) {
        return (year & 3) == 0 && (year % 100 != 0 || year % 400 == 0);
    }

    public static final int monthLength(int year, int month) {
        return MONTH_LENGTH[month + (Grego.isLeapYear(year) ? 12 : 0)];
    }

    public static final int previousMonthLength(int year, int month) {
        return month > 0 ? Grego.monthLength(year, month - 1) : 31;
    }

    public static long fieldsToDay(int year, int month, int dom) {
        int y = year - 1;
        long julian = (long)(365 * y) + Grego.floorDivide(y, 4L) + 1721423L + Grego.floorDivide(y, 400L) - Grego.floorDivide(y, 100L) + 2L + (long)DAYS_BEFORE[month + (Grego.isLeapYear(year) ? 12 : 0)] + (long)dom;
        return julian - 2440588L;
    }

    public static int dayOfWeek(long day) {
        long[] remainder = new long[1];
        Grego.floorDivide(day + 5L, 7L, remainder);
        int dayOfWeek = (int)remainder[0];
        dayOfWeek = dayOfWeek == 0 ? 7 : dayOfWeek;
        return dayOfWeek;
    }

    public static int[] dayToFields(long day, int[] fields) {
        int march1;
        if (fields == null || fields.length < 5) {
            fields = new int[5];
        }
        long[] rem = new long[1];
        long n400 = Grego.floorDivide(day += 719162L, 146097L, rem);
        long n100 = Grego.floorDivide(rem[0], 36524L, rem);
        long n4 = Grego.floorDivide(rem[0], 1461L, rem);
        long n1 = Grego.floorDivide(rem[0], 365L, rem);
        int year = (int)(400L * n400 + 100L * n100 + 4L * n4 + n1);
        int dayOfYear = (int)rem[0];
        if (n100 == 4L || n1 == 4L) {
            dayOfYear = 365;
        } else {
            ++year;
        }
        boolean isLeap = Grego.isLeapYear(year);
        int correction = 0;
        int n = march1 = isLeap ? 60 : 59;
        if (dayOfYear >= march1) {
            correction = isLeap ? 1 : 2;
        }
        int month = (12 * (dayOfYear + correction) + 6) / 367;
        int dayOfMonth = dayOfYear - DAYS_BEFORE[isLeap ? month + 12 : month] + 1;
        int dayOfWeek = (int)((day + 2L) % 7L);
        if (dayOfWeek < 1) {
            dayOfWeek += 7;
        }
        fields[0] = year;
        fields[1] = month;
        fields[2] = dayOfMonth;
        fields[3] = dayOfWeek;
        fields[4] = ++dayOfYear;
        return fields;
    }

    public static int[] timeToFields(long time, int[] fields) {
        if (fields == null || fields.length < 6) {
            fields = new int[6];
        }
        long[] remainder = new long[1];
        long day = Grego.floorDivide(time, 86400000L, remainder);
        Grego.dayToFields(day, fields);
        fields[5] = (int)remainder[0];
        return fields;
    }

    public static long floorDivide(long numerator, long denominator) {
        return numerator >= 0L ? numerator / denominator : (numerator + 1L) / denominator - 1L;
    }

    private static long floorDivide(long numerator, long denominator, long[] remainder) {
        if (numerator >= 0L) {
            remainder[0] = numerator % denominator;
            return numerator / denominator;
        }
        long quotient = (numerator + 1L) / denominator - 1L;
        remainder[0] = numerator - quotient * denominator;
        return quotient;
    }

    public static int getDayOfWeekInMonth(int year, int month, int dayOfMonth) {
        int weekInMonth = (dayOfMonth + 6) / 7;
        if (weekInMonth == 4) {
            if (dayOfMonth + 7 > Grego.monthLength(year, month)) {
                weekInMonth = -1;
            }
        } else if (weekInMonth == 5) {
            weekInMonth = -1;
        }
        return weekInMonth;
    }
}

