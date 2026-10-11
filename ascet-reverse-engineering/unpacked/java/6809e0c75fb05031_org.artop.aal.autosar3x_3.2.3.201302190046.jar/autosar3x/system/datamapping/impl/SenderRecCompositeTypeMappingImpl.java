/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.datamapping.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.SenderRecCompositeTypeMapping;
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

