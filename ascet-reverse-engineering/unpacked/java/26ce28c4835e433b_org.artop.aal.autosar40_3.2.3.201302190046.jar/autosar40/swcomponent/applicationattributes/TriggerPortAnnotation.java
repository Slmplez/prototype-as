/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.swcomponent.components.PortPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TriggerPortAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public Trigger getTrigger();

    public void setTrigger(Trigger var1);

    public boolean _ThecorrespondingportinterfacemustbeatriggerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

