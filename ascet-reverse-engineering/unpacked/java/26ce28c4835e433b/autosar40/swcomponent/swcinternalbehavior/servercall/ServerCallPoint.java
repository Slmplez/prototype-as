/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.swcinternalbehavior.servercall;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.instancerefs.ROperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.RunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServerCallPoint
extends Identifiable,
GServerCallPoint {
    public RunnableEntity getRunnableEntity();

    public void setRunnableEntity(RunnableEntity var1);

    public ROperationInAtomicSwcInstanceRef getOperation();

    public void setOperation(ROperationInAtomicSwcInstanceRef var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

