/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components;

import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RPortPrototype
extends PortPrototype,
GRPortPrototype {
    public EList<RPortComSpec> getRequiredComSpecs();

    public PortInterface getRequiredInterface();

    public void setRequiredInterface(PortInterface var1);
}

