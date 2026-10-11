/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;

public interface FrameMapping
extends ARObject {
    public Gateway getGateway();

    public void setGateway(Gateway var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);

    public FrameTriggering getSourceFrame();

    public void setSourceFrame(FrameTriggering var1);

    public FrameTriggering getTargetFrame();

    public void setTargetFrame(FrameTriggering var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

