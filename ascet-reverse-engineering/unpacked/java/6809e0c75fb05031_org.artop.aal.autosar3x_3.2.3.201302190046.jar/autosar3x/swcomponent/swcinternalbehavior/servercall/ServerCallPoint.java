/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.ServerCallPointOperation;
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

    public ServerCallPointOperation getOperation();

    public void setOperation(ServerCallPointOperation var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();

    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

