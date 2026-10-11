/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.datamapping.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import org.eclipse.emf.ecore.EClass;

public abstract class SenderRecCompositeTypeMappingImpl
extends ARObjectImpl
implements SenderRecCompositeTypeMapping {
    protected SenderRecCompositeTypeMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_REC_COMPOSITE_TYPE_MAPPING;
    }
}

