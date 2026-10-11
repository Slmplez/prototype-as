/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.InitType;
import com.etas.amd620.core.ComponentProject.InterruptType;
import com.etas.amd620.core.ComponentProject.SoftwareType;
import com.etas.amd620.core.ComponentProject.TimetableType;
import org.eclipse.emf.ecore.EObject;

public interface TaskTypeType
extends EObject {
    public InterruptType getInterrupt();

    public void setInterrupt(InterruptType var1);

    public AlarmType getAlarm();

    public void setAlarm(AlarmType var1);

    public TimetableType getTimetable();

    public void setTimetable(TimetableType var1);

    public SoftwareType getSoftware();

    public void setSoftware(SoftwareType var1);

    public InitType getInit();

    public void setInit(InitType var1);
}

