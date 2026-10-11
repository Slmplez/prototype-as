/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.measurementandcalibration.basetypes.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import org.eclipse.emf.ecore.EClass;

public abstract class BaseTypeDefinitionImpl
extends ARObjectImpl
implements BaseTypeDefinition {
    protected BaseTypeDefinitionImpl() {
    }

    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_DEFINITION;
    }
}

