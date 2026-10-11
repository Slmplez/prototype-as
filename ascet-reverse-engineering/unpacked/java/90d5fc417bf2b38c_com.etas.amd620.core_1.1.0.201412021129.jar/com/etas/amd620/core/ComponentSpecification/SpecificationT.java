/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.BlockDiagramSpecificationT;
import com.etas.amd620.core.ComponentSpecification.CCodeSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ESDLSpecificationT;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.PublicType;
import com.etas.amd620.core.ComponentSpecification.StateMachineSpecificationT;
import com.etas.amd620.core.ComponentSpecification.TableSpecificationT;
import com.etas.amd620.core.ComponentSpecification.TimeStampT;
import org.eclipse.emf.ecore.EObject;

public interface SpecificationT
extends EObject {
    public TimeStampT getTimeStamp();

    public void setTimeStamp(TimeStampT var1);

    public BlockDiagramSpecificationT getBlockDiagramSpecification();

    public void setBlockDiagramSpecification(BlockDiagramSpecificationT var1);

    public BlockDiagramSpecificationT getAtomicSoftwareComponentSpecification();

    public void setAtomicSoftwareComponentSpecification(BlockDiagramSpecificationT var1);

    public ESDLSpecificationT getMethodInterfaceSpecification();

    public void setMethodInterfaceSpecification(ESDLSpecificationT var1);

    public TableSpecificationT getTableSpecification();

    public void setTableSpecification(TableSpecificationT var1);

    public ESDLSpecificationT getESDLSpecification();

    public void setESDLSpecification(ESDLSpecificationT var1);

    public CCodeSpecificationT getCCodeSpecification();

    public void setCCodeSpecification(CCodeSpecificationT var1);

    public StateMachineSpecificationT getStateMachineSpecification();

    public void setStateMachineSpecification(StateMachineSpecificationT var1);

    public ProjectSpecificationT getProjectSpecification();

    public void setProjectSpecification(ProjectSpecificationT var1);

    public String getName();

    public void setName(String var1);

    public PublicType getPublic();

    public void setPublic(PublicType var1);

    public void unsetPublic();

    public boolean isSetPublic();

    public String getUUID();

    public void setUUID(String var1);
}

