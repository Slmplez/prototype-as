/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GTriggerInterface
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gportinterface.GTriggerInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TriggerInterface
extends PortInterface,
GTriggerInterface {
    public EList<Trigger> getTriggers();
}

