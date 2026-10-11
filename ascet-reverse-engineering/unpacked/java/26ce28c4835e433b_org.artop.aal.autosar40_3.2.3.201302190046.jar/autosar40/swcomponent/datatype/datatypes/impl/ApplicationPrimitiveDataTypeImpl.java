/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.datatype.datatypes.impl;

import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.datatypes.impl.ApplicationDataTypeImpl;
import org.eclipse.emf.ecore.EClass;

public class ApplicationPrimitiveDataTypeImpl
extends ApplicationDataTypeImpl
implements ApplicationPrimitiveDataType {
    protected ApplicationPrimitiveDataTypeImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.APPLICATION_PRIMITIVE_DATA_TYPE;
    }
}

