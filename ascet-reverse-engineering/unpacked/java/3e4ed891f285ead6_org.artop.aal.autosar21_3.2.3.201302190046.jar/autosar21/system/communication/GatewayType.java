/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.instanceref.GatewayTypeGatewayLocation;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GatewayType
extends ARElement {
    public EList<GatewayEntry> getGatewayEntries();

    public GatewayTypeGatewayLocation getGatewayLocation();

    public void setGatewayLocation(GatewayTypeGatewayLocation var1);
}

