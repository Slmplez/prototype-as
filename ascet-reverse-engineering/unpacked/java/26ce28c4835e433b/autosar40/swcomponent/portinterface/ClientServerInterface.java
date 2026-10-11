/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerInterface
extends PortInterface,
GClientServerInterface {
    public EList<ClientServerOperation> getOperations();

    public EList<ApplicationError> getPossibleErrors();
}

