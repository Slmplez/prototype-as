/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.portinterface;

import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortInterface;
import autosar21.swcomponent.vfberrors.ApplicationError;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerInterface
extends PortInterface,
GClientServerInterface {
    public EList<OperationPrototype> getOperations();

    public EList<ApplicationError> getPossibleErrors();
}

