/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;

public interface SenderReceiverAnnotationDataElement
extends ARObject {
    public SenderReceiverAnnotation getSenderReceiverAnnotation();

    public void setSenderReceiverAnnotation(SenderReceiverAnnotation var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

