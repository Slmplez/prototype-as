/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.applicationattributes.ClientServerAnnotation;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar40.swcomponent.applicationattributes.ModePortAnnotation;
import autosar40.swcomponent.applicationattributes.NvDataPortAnnotation;
import autosar40.swcomponent.applicationattributes.ParameterPortAnnotation;
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar40.swcomponent.applicationattributes.TriggerPortAnnotation;
import autosar40.swcomponent.components.SwComponentType;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortPrototype
extends AtpBlueprintable,
AtpPrototype,
GPortPrototype {
    public SwComponentType getSwComponentType();

    public void setSwComponentType(SwComponentType var1);

    public EList<ClientServerAnnotation> getClientServerAnnotations();

    public DelegatedPortAnnotation getDelegatedPortAnnotation();

    public void setDelegatedPortAnnotation(DelegatedPortAnnotation var1);

    public EList<IoHwAbstractionServerAnnotation> getIoHwAbstractionServerAnnotations();

    public EList<ModePortAnnotation> getModePortAnnotations();

    public EList<NvDataPortAnnotation> getNvDataPortAnnotations();

    public EList<ParameterPortAnnotation> getParameterPortAnnotations();

    public EList<SenderReceiverAnnotation> getSenderReceiverAnnotations();

    public EList<TriggerPortAnnotation> getTriggerPortAnnotations();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

