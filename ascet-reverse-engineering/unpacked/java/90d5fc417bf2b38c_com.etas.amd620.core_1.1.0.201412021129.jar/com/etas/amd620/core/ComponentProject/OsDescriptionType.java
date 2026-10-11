/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.OperationModesType;
import com.etas.amd620.core.ComponentProject.OsSettingsType;
import com.etas.amd620.core.ComponentProject.TasksType;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface OsDescriptionType
extends EObject {
    public OperationModesType getOperationModes();

    public void setOperationModes(OperationModesType var1);

    public TasksType getTasks();

    public void setTasks(TasksType var1);

    public OsSettingsType getOsSettings();

    public void setOsSettings(OsSettingsType var1);

    public BigInteger getCoopLevels();

    public void setCoopLevels(BigInteger var1);

    public boolean isEnableMonitoring();

    public void setEnableMonitoring(boolean var1);

    public void unsetEnableMonitoring();

    public boolean isSetEnableMonitoring();

    public boolean isEnableTickDuration();

    public void setEnableTickDuration(boolean var1);

    public void unsetEnableTickDuration();

    public boolean isSetEnableTickDuration();

    public BigInteger getEventLevels();

    public void setEventLevels(BigInteger var1);

    public String getOID();

    public void setOID(String var1);

    public BigInteger getPreempLevels();

    public void setPreempLevels(BigInteger var1);

    public BigInteger getTickDuration();

    public void setTickDuration(BigInteger var1);
}

