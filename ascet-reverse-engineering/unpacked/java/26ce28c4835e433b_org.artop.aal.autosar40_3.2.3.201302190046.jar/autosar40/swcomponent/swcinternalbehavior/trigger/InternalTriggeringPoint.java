/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.swcinternalbehavior.trigger;

import autosar40.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalTriggeringPoint
extends Identifiable {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public SwImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

