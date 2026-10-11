/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.datatype.constants.impl;

import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.constants.impl.ValueSpecificationImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class PrimitiveSpecificationImpl
extends ValueSpecificationImpl
implements PrimitiveSpecification {
    protected PrimitiveSpecificationImpl() {
    }

    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.PRIMITIVE_SPECIFICATION;
    }
}

