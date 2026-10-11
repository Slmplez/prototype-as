/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.swcinternalbehavior.trigger;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExternalTriggeringPoint
extends ARObject {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public PTriggerInAtomicSwcTypeInstanceRef getTrigger();

    public void setTrigger(PTriggerInAtomicSwcTypeInstanceRef var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

