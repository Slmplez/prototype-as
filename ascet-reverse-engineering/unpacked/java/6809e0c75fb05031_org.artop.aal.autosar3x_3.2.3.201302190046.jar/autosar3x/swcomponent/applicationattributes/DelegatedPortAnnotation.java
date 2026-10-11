/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.swcomponent.applicationattributes.SignalFanEnum;
import autosar3x.swcomponent.components.PortPrototype;
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

    public boolean aggregatingPortPrototypeisaportofaCompositionTypeDelegatedPort(DiagnosticChain var1, Map<Object, Object> var2);
}

