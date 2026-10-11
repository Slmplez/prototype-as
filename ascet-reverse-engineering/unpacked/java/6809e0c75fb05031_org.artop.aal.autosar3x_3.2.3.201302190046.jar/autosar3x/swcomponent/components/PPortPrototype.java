/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.components;

import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PPortPrototype
extends PortPrototype,
GPPortPrototype {
    public EList<PPortComSpec> getProvidedComSpecs();

    public PortInterface getProvidedInterface();

    public void setProvidedInterface(PortInterface var1);
}

