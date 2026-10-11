/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.CompositeType;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.impl.DatatypeImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class CompositeTypeImpl
extends DatatypeImpl
implements CompositeType {
    protected CompositeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.COMPOSITE_TYPE;
    }
}

