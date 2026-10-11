/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.ModeDrivenTransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TransmissionModeDeclaration
extends ARObject {
    public IPduTiming getIPduTiming();

    public void setIPduTiming(IPduTiming var1);

    public EList<ModeDrivenTransmissionModeCondition> getModeDrivenFalseConditions();

    public EList<ModeDrivenTransmissionModeCondition> getModeDrivenTrueConditions();

    public EList<TransmissionModeCondition> getTransmissionModeConditions();

    public TransmissionModeTiming getTransmissionModeFalseTiming();

    public void setTransmissionModeFalseTiming(TransmissionModeTiming var1);

    public TransmissionModeTiming getTransmissionModeTrueTiming();

    public void setTransmissionModeTrueTiming(TransmissionModeTiming var1);
}

