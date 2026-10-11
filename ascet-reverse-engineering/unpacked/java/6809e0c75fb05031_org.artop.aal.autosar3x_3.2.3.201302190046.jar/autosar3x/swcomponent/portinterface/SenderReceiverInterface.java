/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GModeSwitchInterface
 *  gautosar.gswcomponents.gportinterface.GSenderReceiverInterface
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.portinterface;

import autosar3x.swcomponent.portinterface.DataElementPrototype;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderReceiverInterface
extends PortInterface,
GSenderReceiverInterface,
GModeSwitchInterface {
    public EList<DataElementPrototype> getDataElements();

    public EList<ModeDeclarationGroupPrototype> getModeGroups();

    public boolean atleastonedataelementormodegroup(DiagnosticChain var1, Map<Object, Object> var2);
}

