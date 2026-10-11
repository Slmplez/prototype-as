/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.AssignedOperationModesType;
import com.etas.amd620.core.ComponentProject.ProcessType;
import com.etas.amd620.core.ComponentProject.TaskTypeType;
import java.math.BigInteger;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface TaskType
extends EObject {
    public EList<ProcessType> getProcess();

    public AssignedOperationModesType getAssignedOperationModes();

    public void setAssignedOperationModes(AssignedOperationModesType var1);

    public TaskTypeType getTaskType();

    public void setTaskType(TaskTypeType var1);

    public BigInteger getId();

    public void setId(BigInteger var1);

    public boolean isIsContinuousTime();

    public void setIsContinuousTime(boolean var1);

    public void unsetIsContinuousTime();

    public boolean isSetIsContinuousTime();

    public String getName();

    public void setName(String var1);
}

