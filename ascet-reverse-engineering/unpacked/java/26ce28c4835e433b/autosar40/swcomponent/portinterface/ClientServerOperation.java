/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerOperation
extends AtpStructureElement,
GClientServerOperation {
    public ClientServerInterface getClientServerInterface();

    public void setClientServerInterface(ClientServerInterface var1);

    public EList<ArgumentDataPrototype> getArguments();

    public EList<ApplicationError> getPossibleErrors();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

