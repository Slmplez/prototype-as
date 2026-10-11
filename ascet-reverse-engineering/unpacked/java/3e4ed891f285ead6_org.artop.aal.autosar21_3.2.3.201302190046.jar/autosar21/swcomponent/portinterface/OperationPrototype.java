/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.portinterface;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.vfberrors.ApplicationError;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface OperationPrototype
extends Identifiable,
GClientServerOperation {
    public ClientServerInterface getClientServerInterface();

    public void setClientServerInterface(ClientServerInterface var1);

    public EList<ArgumentPrototype> getArguments();

    public EList<ApplicationError> getPossibleErrors();
}

