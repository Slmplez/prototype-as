/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.portinterface.DataInterface;
import autosar40.swcomponent.portinterface.InvalidationPolicy;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderReceiverInterface
extends DataInterface,
GSenderReceiverInterface {
    public EList<VariableDataPrototype> getDataElements();

    public EList<InvalidationPolicy> getInvalidationPolicies();

    public boolean atleastonedataelementormodegroup(DiagnosticChain var1, Map<Object, Object> var2);
}

