/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.application;

import java.util.Map;
import org.osgi.service.application.ApplicationDescriptor;

public interface ScheduledApplication {
    public static final String APPLICATION_PID = "service.pid";
    public static final String SCHEDULE_ID = "schedule.id";
    public static final String TRIGGERING_EVENT = "org.osgi.triggeringevent";
    public static final String TIMER_TOPIC = "org/osgi/application/timer";
    public static final String YEAR = "year";
    public static final String MONTH = "month";
    public static final String DAY_OF_MONTH = "day_of_month";
    public static final String DAY_OF_WEEK = "day_of_week";
    public static final String HOUR_OF_DAY = "hour_of_day";
    public static final String MINUTE = "minute";

    public String getScheduleId();

    public String getTopic();

    public String getEventFilter();

    public boolean isRecurring();

    public ApplicationDescriptor getApplicationDescriptor();

    public Map getArguments();

    public void remove();
}

