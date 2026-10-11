/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.swcomponent.applicationattributes.SignalFanEnum;
import autosar40.swcomponent.components.PortPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DelegatedPortAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public SignalFanEnum getSignalFan();

    public void setSignalFan(SignalFanEnum var1);

    public void unsetSignalFan();

    public boolean isSetSignalFan();

    public boolean aggregatingPortPrototypeisaportofaCompositionSwComponentTypeDelegatedPort(DiagnosticChain var1, Map<Object, Object> var2);
}

