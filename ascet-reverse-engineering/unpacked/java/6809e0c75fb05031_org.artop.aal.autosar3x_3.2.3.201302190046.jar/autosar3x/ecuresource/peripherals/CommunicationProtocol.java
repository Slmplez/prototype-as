/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.CommunicationPeripheral;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationProtocol
extends Identifiable {
    public CommunicationPeripheral getCommunicationPeripheral();

    public void setCommunicationPeripheral(CommunicationPeripheral var1);

    public EList<String> getVersions();

    public void unsetVersions();

    public boolean isSetVersions();
}

