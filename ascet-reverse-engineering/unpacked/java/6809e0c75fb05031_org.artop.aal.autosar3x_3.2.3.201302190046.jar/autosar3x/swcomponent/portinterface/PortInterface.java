/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 */
package autosar3x.swcomponent.portinterface;

import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gswcomponents.gportinterface.GPortInterface;

public interface PortInterface
extends ARElement,
GPortInterface {
    public Boolean getIsService();

    public void setIsService(Boolean var1);

    public void unsetIsService();

    public boolean isSetIsService();
}

