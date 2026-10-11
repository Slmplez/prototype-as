/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.datatype.datatypes.impl;

import autosar40.swcomponent.datatype.datatypes.ApplicationCompositeDataType;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationDataTypeImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ApplicationCompositeDataTypeImpl
extends ApplicationDataTypeImpl
implements ApplicationCompositeDataType {
    protected ApplicationCompositeDataTypeImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.APPLICATION_COMPOSITE_DATA_TYPE;
    }
}

