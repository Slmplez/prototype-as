/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.datamapping;

import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.ClientServerRecordElementMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClientServerRecordTypeMapping
extends ClientServerCompositeTypeMapping {
    public EList<ClientServerRecordElementMapping> getRecordElementMappings();
}

