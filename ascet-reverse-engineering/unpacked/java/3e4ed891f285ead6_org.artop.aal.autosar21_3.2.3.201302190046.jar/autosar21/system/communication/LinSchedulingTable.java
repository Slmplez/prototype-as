/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.LinSchedulingTableEntry;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinSchedulingTable
extends Identifiable {
    public CommunicationMatrixType getCommunicationMatrixType();

    public void setCommunicationMatrixType(CommunicationMatrixType var1);

    public EList<LinSchedulingTableEntry> getEntries();
}

