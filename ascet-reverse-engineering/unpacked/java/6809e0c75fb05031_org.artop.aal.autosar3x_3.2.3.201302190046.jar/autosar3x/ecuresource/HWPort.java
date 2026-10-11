/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPin;
import autosar3x.ecuresource.peripherals.CommunicationDirectionEnum;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HWPort
extends Identifiable {
    public HWElement getHWElement();

    public void setHWElement(HWElement var1);

    public CommunicationDirectionEnum getDirection();

    public void setDirection(CommunicationDirectionEnum var1);

    public void unsetDirection();

    public boolean isSetDirection();

    public EList<HWPin> getPins();
}

