/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar3x.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar3x.swcomponent.components.ComponentType;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortPrototype
extends Identifiable,
GPortPrototype {
    public ComponentType getComponentType();

    public void setComponentType(ComponentType var1);

    public EList<CalibrationPortAnnotation> getCalibrationPortAnnotations();

    public DelegatedPortAnnotation getDelegatedPortAnnotation();

    public void setDelegatedPortAnnotation(DelegatedPortAnnotation var1);

    public EList<IoHwAbstractionServerAnnotation> getIoHwAbstractionServerAnnotations();

    public EList<SenderReceiverAnnotation> getSenderReceiverAnnotations();
}

