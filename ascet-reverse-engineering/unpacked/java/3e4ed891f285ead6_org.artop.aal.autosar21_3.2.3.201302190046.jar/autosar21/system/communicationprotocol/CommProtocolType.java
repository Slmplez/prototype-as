/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communicationprotocol;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.communicationprotocol.CommProtocolElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommProtocolType
extends ARElement {
    public EList<CommProtocolElement> getProtocolElements();
}

