/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CalibrationPortAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public CalprmElementPrototype getCalprmElement();

    public void setCalprmElement(CalprmElementPrototype var1);

    public boolean _ThecorrespondingportinterfacemustbeaCalprmInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

