/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface IPduMapping
extends ARObject {
    public Gateway getGateway();

    public void setGateway(Gateway var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);

    public Long getPdurTpChunkSize();

    public void setPdurTpChunkSize(Long var1);

    public void unsetPdurTpChunkSize();

    public boolean isSetPdurTpChunkSize();

    public PduTriggering getSourceIPdu();

    public void setSourceIPdu(PduTriggering var1);

    public TargetIPduRef getTargetIPdu();

    public void setTargetIPdu(TargetIPduRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getPdurTpChunkSizeData();

    public void setPdurTpChunkSizeData(PositiveIntegerDatatype var1);
}

