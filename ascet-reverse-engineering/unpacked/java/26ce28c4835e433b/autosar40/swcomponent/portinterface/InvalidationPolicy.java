/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.communication.HandleInvalidEnum;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.SenderReceiverInterface;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InvalidationPolicy
extends ARObject {
    public SenderReceiverInterface getSenderReceiverInterface();

    public void setSenderReceiverInterface(SenderReceiverInterface var1);

    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public HandleInvalidEnum getHandleInvalid();

    public void setHandleInvalid(HandleInvalidEnum var1);

    public void unsetHandleInvalid();

    public boolean isSetHandleInvalid();

    public boolean atleastonedataelementormodegroup(DiagnosticChain var1, Map<Object, Object> var2);
}

