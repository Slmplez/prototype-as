/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.system.datamapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.datamapping.ClientServerCompositeTypeMapping;
import autosar21.system.datamapping.DatamappingPackage;
import org.eclipse.emf.ecore.EClass;

public abstract class ClientServerCompositeTypeMappingImpl
extends ARObjectImpl
implements ClientServerCompositeTypeMapping {
    protected ClientServerCompositeTypeMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_COMPOSITE_TYPE_MAPPING;
    }
}

