/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.ecuresource.basicelements;

import autosar3x.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ElectricalRange
extends ARObject {
    public Double getMaxCurrent();

    public void setMaxCurrent(Double var1);

    public void unsetMaxCurrent();

    public boolean isSetMaxCurrent();

    public Double getMaxVoltage();

    public void setMaxVoltage(Double var1);

    public void unsetMaxVoltage();

    public boolean isSetMaxVoltage();

    public Double getMinCurrent();

    public void setMinCurrent(Double var1);

    public void unsetMinCurrent();

    public boolean isSetMinCurrent();

    public Double getMinVoltage();

    public void setMinVoltage(Double var1);

    public void unsetMinVoltage();

    public boolean isSetMinVoltage();

    public Double getTypicalCurrent();

    public void setTypicalCurrent(Double var1);

    public void unsetTypicalCurrent();

    public boolean isSetTypicalCurrent();

    public Double getTypicalVoltage();

    public void setTypicalVoltage(Double var1);

    public void unsetTypicalVoltage();

    public boolean isSetTypicalVoltage();

    public boolean _minCurrenttypicalCurrentandtypicalCurrentmaxCurrent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean _minVoltagetypicalVoltageandtypicalVoltagemaxVoltage(DiagnosticChain var1, Map<Object, Object> var2);
}

