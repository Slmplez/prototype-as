/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.ecuresource.ecuelectronics;

import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.basicelements.ElectricalRange;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PowerSupplyHWPort
extends HWPort {
    public Boolean getCanBeSwitchedOff();

    public void setCanBeSwitchedOff(Boolean var1);

    public void unsetCanBeSwitchedOff();

    public boolean isSetCanBeSwitchedOff();

    public ElectricalRange getSupplied();

    public void setSupplied(ElectricalRange var1);

    public boolean _directioninordirectionout(DiagnosticChain var1, Map<Object, Object> var2);
}

