/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.processingunit.InterruptProduceHWPort;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PowerSupplyVoltageNotification
extends ARObject {
    public Double getHystereses();

    public void setHystereses(Double var1);

    public void unsetHystereses();

    public boolean isSetHystereses();

    public EList<InterruptProduceHWPort> getInterrupts();

    public Double getLevel();

    public void setLevel(Double var1);

    public void unsetLevel();

    public boolean isSetLevel();
}

